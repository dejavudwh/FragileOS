; Disassembly of file: ckernel.o
; Thu Aug  8 23:00:40 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    esi                                     ; 0003 _ 56
        push    ebx                                     ; 0004 _ 53
        sub     esp, 208                                ; 0005 _ 81. EC, 000000D0
        mov     dword [esp], _bootInfo                  ; 000B _ C7. 04 24, 0000000C(d)
        call    _initBootInfo                           ; 0012 _ E8, 00000E52
        mov     eax, dword [_bootInfo]                  ; 0017 _ A1, 0000000C(d)
        mov     dword [ebp-1CH], eax                    ; 001C _ 89. 45, E4
        movzx   eax, word [?_185]                       ; 001F _ 0F B7. 05, 00000010(d)
        cwde                                            ; 0026 _ 98
        mov     dword [_xsize], eax                     ; 0027 _ A3, 0000013C(d)
        movzx   eax, word [?_186]                       ; 002C _ 0F B7. 05, 00000012(d)
        cwde                                            ; 0033 _ 98
        mov     dword [_ysize], eax                     ; 0034 _ A3, 00000140(d)
        call    _init_pit                               ; 0039 _ E8, 00000000(rel)
        mov     dword [esp+8H], _timerbuf               ; 003E _ C7. 44 24, 08, 00000128(d)
        mov     dword [esp+4H], 8                       ; 0046 _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 004E _ C7. 04 24, 00000110(d)
        call    _fifo8_init                             ; 0055 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 005A _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 005F _ 89. 45, E0
        mov     dword [esp+8H], 10                      ; 0062 _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 006A _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-20H]                    ; 0072 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0075 _ 89. 04 24
        call    _timer_init                             ; 0078 _ E8, 00000000(rel)
        mov     dword [esp+4H], 500                     ; 007D _ C7. 44 24, 04, 000001F4
        mov     eax, dword [ebp-20H]                    ; 0085 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0088 _ 89. 04 24
        call    _timer_settime                          ; 008B _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0090 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0095 _ 89. 45, DC
        mov     dword [esp+8H], 2                       ; 0098 _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00A0 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 00A8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00AB _ 89. 04 24
        call    _timer_init                             ; 00AE _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00B3 _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-24H]                    ; 00BB _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00BE _ 89. 04 24
        call    _timer_settime                          ; 00C1 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00C6 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 00CB _ 89. 45, D8
        mov     dword [esp+8H], 1                       ; 00CE _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00D6 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 00DE _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00E1 _ 89. 04 24
        call    _timer_init                             ; 00E4 _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00E9 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 00F1 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00F4 _ 89. 04 24
        call    _timer_settime                          ; 00F7 _ E8, 00000000(rel)
        mov     dword [esp+8H], _keybuf                 ; 00FC _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 32                      ; 0104 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 010C _ C7. 04 24, 00000014(d)
        call    _fifo8_init                             ; 0113 _ E8, 00000000(rel)
        mov     dword [esp+8H], _mousebuf               ; 0118 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0120 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0128 _ C7. 04 24, 0000002C(d)
        call    _fifo8_init                             ; 012F _ E8, 00000000(rel)
        call    _init_palette                           ; 0134 _ E8, 00000DF3
        call    _init_keyboard                          ; 0139 _ E8, 0000135C
        call    _get_memory_block_count                 ; 013E _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 0143 _ 89. 45, D4
        call    _get_addr_buffer                        ; 0146 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 014B _ 89. 45, D0
        mov     eax, dword [_memman]                    ; 014E _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 0153 _ 89. 04 24
        call    _memman_init                            ; 0156 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 015B _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 0160 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 0168 _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 0170 _ 89. 04 24
        call    _memman_free                            ; 0173 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0178 _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 017E _ 8B. 15, 0000013C(d)
        mov     eax, dword [_memman]                    ; 0184 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 0189 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 018D _ 89. 54 24, 08
        mov     edx, dword [ebp-1CH]                    ; 0191 _ 8B. 55, E4
        mov     dword [esp+4H], edx                     ; 0194 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0198 _ 89. 04 24
        call    _shtctl_init                            ; 019B _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 01A0 _ A3, 00000000(d)
        mov     eax, dword [_shtctl]                    ; 01A5 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 01AA _ 89. 04 24
        call    _sheet_alloc                            ; 01AD _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01B2 _ A3, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 01B7 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 01BC _ 89. 04 24
        call    _sheet_alloc                            ; 01BF _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01C4 _ A3, 00000008(d)
        mov     edx, dword [_xsize]                     ; 01C9 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_ysize]                     ; 01CF _ A1, 00000140(d)
        imul    eax, edx                                ; 01D4 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01D7 _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01DD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01E1 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01E4 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 01E9 _ A3, 00000144(d)
        mov     ebx, dword [_ysize]                     ; 01EE _ 8B. 1D, 00000140(d)
        mov     ecx, dword [_xsize]                     ; 01F4 _ 8B. 0D, 0000013C(d)
        mov     edx, dword [_buf_back]                  ; 01FA _ 8B. 15, 00000144(d)
        mov     eax, dword [_sht_back]                  ; 0200 _ A1, 00000004(d)
        mov     dword [esp+10H], 99                     ; 0205 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 020D _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0211 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0215 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0219 _ 89. 04 24
        call    _sheet_setbuf                           ; 021C _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 0221 _ A1, 00000008(d)
        mov     dword [esp+10H], 99                     ; 0226 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 022E _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0236 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 023E _ C7. 44 24, 04, 00000160(d)
        mov     dword [esp], eax                        ; 0246 _ 89. 04 24
        call    _sheet_setbuf                           ; 0249 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 024E _ 8B. 0D, 00000140(d)
        mov     edx, dword [_xsize]                     ; 0254 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_buf_back]                  ; 025A _ A1, 00000144(d)
        mov     dword [esp+8H], ecx                     ; 025F _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0263 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0267 _ 89. 04 24
        call    _init_screen8                           ; 026A _ E8, 00000732
        mov     dword [esp+4H], 99                      ; 026F _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 0277 _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 027E _ E8, 00000F45
        mov     edx, dword [_sht_back]                  ; 0283 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0289 _ A1, 00000000(d)
        mov     dword [esp+0CH], 0                      ; 028E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0296 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 029E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02A2 _ 89. 04 24
        call    _sheet_slide                            ; 02A5 _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02AA _ A1, 0000013C(d)
        sub     eax, 16                                 ; 02AF _ 83. E8, 10
        mov     edx, eax                                ; 02B2 _ 89. C2
        shr     edx, 31                                 ; 02B4 _ C1. EA, 1F
        add     eax, edx                                ; 02B7 _ 01. D0
        sar     eax, 1                                  ; 02B9 _ D1. F8
        mov     dword [_mx], eax                        ; 02BB _ A3, 00000134(d)
        mov     eax, dword [_ysize]                     ; 02C0 _ A1, 00000140(d)
        sub     eax, 44                                 ; 02C5 _ 83. E8, 2C
        mov     edx, eax                                ; 02C8 _ 89. C2
        shr     edx, 31                                 ; 02CA _ C1. EA, 1F
        add     eax, edx                                ; 02CD _ 01. D0
        sar     eax, 1                                  ; 02CF _ D1. F8
        mov     dword [_my], eax                        ; 02D1 _ A3, 00000138(d)
        mov     ebx, dword [_my]                        ; 02D6 _ 8B. 1D, 00000138(d)
        mov     ecx, dword [_mx]                        ; 02DC _ 8B. 0D, 00000134(d)
        mov     edx, dword [_sht_mouse]                 ; 02E2 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 02E8 _ A1, 00000000(d)
        mov     dword [esp+0CH], ebx                    ; 02ED _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 02F1 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 02F5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02F9 _ 89. 04 24
        call    _sheet_slide                            ; 02FC _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 0301 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 0308 _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 030F _ A1, 00000000(d)
        mov     dword [esp+4H], ?_174                   ; 0314 _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 031C _ 89. 04 24
        call    _message_box                            ; 031F _ E8, 00001691
        mov     dword [_shtMsgBox], eax                 ; 0324 _ A3, 00000130(d)
        mov     edx, dword [_sht_back]                  ; 0329 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 032F _ A1, 00000000(d)
        mov     dword [esp+8H], 0                       ; 0334 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 033C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0340 _ 89. 04 24
        call    _sheet_updown                           ; 0343 _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 0348 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 034E _ A1, 00000000(d)
        mov     dword [esp+8H], 100                     ; 0353 _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 035B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 035F _ 89. 04 24
        call    _sheet_updown                           ; 0362 _ E8, 00000000(rel)
        call    _io_sti                                 ; 0367 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 036C _ C7. 04 24, 00000100(d)
        call    _enable_mouse                           ; 0373 _ E8, 0000115D
        call    _get_addr_code32                        ; 0378 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 037D _ 89. 45, CC
        call    _get_addr_gdt                           ; 0380 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0385 _ 89. 45, C8
        mov     eax, dword [_memman]                    ; 0388 _ A1, 00000000(d)
        mov     dword [esp+4H], 103                     ; 038D _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 0395 _ 89. 04 24
        call    _memman_alloc_4k                        ; 0398 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 039D _ 89. 45, C4
        mov     eax, dword [_memman]                    ; 03A0 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A5 _ 89. 04 24
        call    _task_init                              ; 03A8 _ E8, 00000000(rel)
        mov     dword [_task_a.2254], eax               ; 03AD _ A3, 00000260(d)
        call    _task_alloc                             ; 03B2 _ E8, 00000000(rel)
        mov     dword [_task_b.2255], eax               ; 03B7 _ A3, 00000264(d)
        mov     eax, dword [_task_b.2255]               ; 03BC _ A1, 00000264(d)
        mov     dword [eax+68H], 0                      ; 03C1 _ C7. 40, 68, 00000000
        mov     eax, dword [_task_b.2255]               ; 03C8 _ A1, 00000264(d)
        mov     dword [eax+6CH], 1073741824             ; 03CD _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-34H]                    ; 03D4 _ 8B. 45, CC
        neg     eax                                     ; 03D7 _ F7. D8
        lea     edx, [_task_b_func+eax]                 ; 03D9 _ 8D. 90, 0000087A(d)
        mov     eax, dword [_task_b.2255]               ; 03DF _ A1, 00000264(d)
        mov     dword [eax+28H], edx                    ; 03E4 _ 89. 50, 28
        mov     eax, dword [_task_b.2255]               ; 03E7 _ A1, 00000264(d)
        mov     dword [eax+50H], 0                      ; 03EC _ C7. 40, 50, 00000000
        mov     eax, dword [_task_b.2255]               ; 03F3 _ A1, 00000264(d)
        mov     dword [eax+54H], 8                      ; 03F8 _ C7. 40, 54, 00000008
        mov     eax, dword [_task_b.2255]               ; 03FF _ A1, 00000264(d)
        mov     dword [eax+58H], 32                     ; 0404 _ C7. 40, 58, 00000020
        mov     eax, dword [_task_b.2255]               ; 040B _ A1, 00000264(d)
        mov     dword [eax+5CH], 24                     ; 0410 _ C7. 40, 5C, 00000018
        mov     eax, dword [_task_b.2255]               ; 0417 _ A1, 00000264(d)
        mov     dword [eax+60H], 0                      ; 041C _ C7. 40, 60, 00000000
        mov     eax, dword [_task_b.2255]               ; 0423 _ A1, 00000264(d)
        mov     dword [eax+64H], 16                     ; 0428 _ C7. 40, 64, 00000010
        mov     eax, dword [_task_b.2255]               ; 042F _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 0434 _ 89. 04 24
        call    _task_run                               ; 0437 _ E8, 00000000(rel)
        mov     dword [ebp-40H], 0                      ; 043C _ C7. 45, C0, 00000000
        mov     dword [ebp-14H], 0                      ; 0443 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 044A _ C7. 45, E8, 00000000
?_001:  call    _io_cli                                 ; 0451 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0456 _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 045D _ E8, 00000000(rel)
        mov     ebx, eax                                ; 0462 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0464 _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 046B _ E8, 00000000(rel)
        add     ebx, eax                                ; 0470 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 0472 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0479 _ E8, 00000000(rel)
        add     eax, ebx                                ; 047E _ 01. D8
        test    eax, eax                                ; 0480 _ 85. C0
        jnz     ?_002                                   ; 0482 _ 75, 07
        call    _io_sti                                 ; 0484 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0489 _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 048B _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 0492 _ E8, 00000000(rel)
        test    eax, eax                                ; 0497 _ 85. C0
        je      ?_004                                   ; 0499 _ 0F 84, 000001FF
        call    _io_sti                                 ; 049F _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04A4 _ C7. 04 24, 00000014(d)
        call    _fifo8_get                              ; 04AB _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 04B0 _ 89. 45, C0
        cmp     dword [ebp-40H], 28                     ; 04B3 _ 83. 7D, C0, 1C
        jnz     ?_003                                   ; 04B7 _ 75, 6F
        mov     esi, dword [_xsize]                     ; 04B9 _ 8B. 35, 0000013C(d)
        mov     ebx, dword [_buf_back]                  ; 04BF _ 8B. 1D, 00000144(d)
        mov     edx, dword [ebp-14H]                    ; 04C5 _ 8B. 55, EC
        mov     eax, edx                                ; 04C8 _ 89. D0
        shl     eax, 2                                  ; 04CA _ C1. E0, 02
        add     eax, edx                                ; 04CD _ 01. D0
        shl     eax, 2                                  ; 04CF _ C1. E0, 02
        mov     edx, eax                                ; 04D2 _ 89. C2
        mov     eax, dword [ebp-30H]                    ; 04D4 _ 8B. 45, D0
        lea     ecx, [edx+eax]                          ; 04D7 _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 04DA _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 04E0 _ A1, 00000000(d)
        mov     dword [esp+18H], 7                      ; 04E5 _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 04ED _ 89. 74 24, 14
        mov     esi, dword [ebp-14H]                    ; 04F1 _ 8B. 75, EC
        mov     dword [esp+10H], esi                    ; 04F4 _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 04F8 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 04FC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0500 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0504 _ 89. 04 24
        call    _showMemoryInfo                         ; 0507 _ E8, 0000119E
        add     dword [ebp-14H], 1                      ; 050C _ 83. 45, EC, 01
        mov     eax, dword [ebp-14H]                    ; 0510 _ 8B. 45, EC
        cmp     eax, dword [ebp-2CH]                    ; 0513 _ 3B. 45, D4
        jle     ?_001                                   ; 0516 _ 0F 8E, FFFFFF35
        mov     dword [ebp-14H], 0                      ; 051C _ C7. 45, EC, 00000000
        jmp     ?_001                                   ; 0523 _ E9, FFFFFF29

?_003:  mov     eax, dword [ebp-40H]                    ; 0528 _ 8B. 45, C0
        add     eax, _keytable                          ; 052B _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0530 _ 0F B6. 00
        test    al, al                                  ; 0533 _ 84. C0
        je      ?_001                                   ; 0535 _ 0F 84, FFFFFF16
        cmp     dword [ebp-0CH], 143                    ; 053B _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 0542 _ 0F 8F, FFFFFF09
        mov     eax, dword [ebp-0CH]                    ; 0548 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 054B _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 054E _ A1, 00000130(d)
        mov     edx, dword [eax+4H]                     ; 0553 _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 0556 _ A1, 00000130(d)
        mov     eax, dword [eax]                        ; 055B _ 8B. 00
        mov     dword [esp+18H], 43                     ; 055D _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 0565 _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0569 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0571 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 0574 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0578 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0580 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0584 _ 89. 04 24
        call    _boxfill8                               ; 0587 _ E8, 00000A6B
        mov     eax, dword [ebp-0CH]                    ; 058C _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 058F _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0592 _ 8B. 15, 00000130(d)
        mov     eax, dword [_shtctl]                    ; 0598 _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 059D _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 05A5 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 05A9 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 05B1 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 05B4 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 05B8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05BC _ 89. 04 24
        call    _sheet_refresh                          ; 05BF _ E8, 00000000(rel)
        mov     eax, dword [ebp-40H]                    ; 05C4 _ 8B. 45, C0
        add     eax, _keytable                          ; 05C7 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 05CC _ 0F B6. 00
        mov     byte [ebp-0AEH], al                     ; 05CF _ 88. 85, FFFFFF52
        mov     byte [ebp-0ADH], 0                      ; 05D5 _ C6. 85, FFFFFF53, 00
        mov     ecx, dword [_shtMsgBox]                 ; 05DC _ 8B. 0D, 00000130(d)
        mov     edx, dword [_shtctl]                    ; 05E2 _ 8B. 15, 00000000(d)
        lea     eax, [ebp-0AEH]                         ; 05E8 _ 8D. 85, FFFFFF52
        mov     dword [esp+14H], eax                    ; 05EE _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 05F2 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 05FA _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 0602 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0605 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0609 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 060D _ 89. 14 24
        call    _showString                             ; 0610 _ E8, 00000875
        add     dword [ebp-0CH], 8                      ; 0615 _ 83. 45, F4, 08
        mov     eax, dword [ebp-0CH]                    ; 0619 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 061C _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 061F _ 8B. 45, F0
        movzx   eax, al                                 ; 0622 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0625 _ 8B. 15, 00000130(d)
        mov     ecx, dword [edx+4H]                     ; 062B _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 062E _ 8B. 15, 00000130(d)
        mov     edx, dword [edx]                        ; 0634 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0636 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 063E _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0642 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 064A _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 064D _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0651 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0655 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0659 _ 89. 14 24
        call    _boxfill8                               ; 065C _ E8, 00000996
        mov     eax, dword [ebp-0CH]                    ; 0661 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0664 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0667 _ 8B. 15, 00000130(d)
        mov     eax, dword [_shtctl]                    ; 066D _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 0672 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 067A _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 067E _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0686 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0689 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 068D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0691 _ 89. 04 24
        call    _sheet_refresh                          ; 0694 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0699 _ E9, FFFFFDB3

?_004:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 069E _ C7. 04 24, 0000002C(d)
        call    _fifo8_status                           ; 06A5 _ E8, 00000000(rel)
        test    eax, eax                                ; 06AA _ 85. C0
        jz      ?_005                                   ; 06AC _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 06AE _ 8B. 0D, 00000008(d)
        mov     edx, dword [_sht_back]                  ; 06B4 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 06BA _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 06BF _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06C3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06C7 _ 89. 04 24
        call    _show_mouse_info                        ; 06CA _ E8, 000006E2
        jmp     ?_001                                   ; 06CF _ E9, FFFFFD7D

?_005:  ; Local function
        mov     dword [esp], _timerinfo                 ; 06D4 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 06DB _ E8, 00000000(rel)
        test    eax, eax                                ; 06E0 _ 85. C0
        je      ?_001                                   ; 06E2 _ 0F 84, FFFFFD69
        call    _io_sti                                 ; 06E8 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 06ED _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 06F4 _ E8, 00000000(rel)
        mov     dword [ebp-44H], eax                    ; 06F9 _ 89. 45, BC
        cmp     dword [ebp-44H], 10                     ; 06FC _ 83. 7D, BC, 0A
        jnz     ?_006                                   ; 0700 _ 75, 52
        mov     edx, dword [_sht_back]                  ; 0702 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0708 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_175                  ; 070D _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 0715 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 071D _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-18H]                    ; 0725 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 0728 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 072C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0730 _ 89. 04 24
        call    _showString                             ; 0733 _ E8, 00000752
        mov     dword [esp+4H], 100                     ; 0738 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-20H]                    ; 0740 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0743 _ 89. 04 24
        call    _timer_settime                          ; 0746 _ E8, 00000000(rel)
        add     dword [ebp-18H], 8                      ; 074B _ 83. 45, E8, 08
        jmp     ?_001                                   ; 074F _ E9, FFFFFCFD

?_006:  ; Local function
        cmp     dword [ebp-44H], 2                      ; 0754 _ 83. 7D, BC, 02
        jnz     ?_007                                   ; 0758 _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 075A _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0760 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_176                  ; 0765 _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 076D _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 16                     ; 0775 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 0                       ; 077D _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0785 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0789 _ 89. 04 24
        call    _showString                             ; 078C _ E8, 000006F9
        jmp     ?_001                                   ; 0791 _ E9, FFFFFCBB

?_007:  ; Local function
        cmp     dword [ebp-44H], 0                      ; 0796 _ 83. 7D, BC, 00
        jz      ?_008                                   ; 079A _ 74, 24
        mov     dword [esp+8H], 0                       ; 079C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 07A4 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 07AC _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07AF _ 89. 04 24
        call    _timer_init                             ; 07B2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 07B7 _ C7. 45, F0, 00000000
        jmp     ?_009                                   ; 07BE _ EB, 22

?_008:  mov     dword [esp+8H], 1                       ; 07C0 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 07C8 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 07D0 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07D3 _ 89. 04 24
        call    _timer_init                             ; 07D6 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 07DB _ C7. 45, F0, 00000007
?_009:  mov     dword [esp+4H], 50                      ; 07E2 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-28H]                    ; 07EA _ 8B. 45, D8
        mov     dword [esp], eax                        ; 07ED _ 89. 04 24
        call    _timer_settime                          ; 07F0 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 07F5 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 07F8 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 07FB _ 8B. 45, F0
        movzx   eax, al                                 ; 07FE _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0801 _ 8B. 15, 00000130(d)
        mov     ecx, dword [edx+4H]                     ; 0807 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 080A _ 8B. 15, 00000130(d)
        mov     edx, dword [edx]                        ; 0810 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0812 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 081A _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 081E _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0826 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0829 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 082D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0831 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0835 _ 89. 14 24
        call    _boxfill8                               ; 0838 _ E8, 000007BA
        mov     eax, dword [ebp-0CH]                    ; 083D _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0840 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0843 _ 8B. 15, 00000130(d)
        mov     eax, dword [_shtctl]                    ; 0849 _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 084E _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0856 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 085A _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0862 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0865 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0869 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 086D _ 89. 04 24
        call    _sheet_refresh                          ; 0870 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0875 _ E9, FFFFFBD7

_task_b_func:; Function begin
        push    ebp                                     ; 087A _ 55
        mov     ebp, esp                                ; 087B _ 89. E5
        sub     esp, 88                                 ; 087D _ 83. EC, 58
        mov     edx, dword [_sht_back]                  ; 0880 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0886 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_177                  ; 088B _ C7. 44 24, 14, 00000011(d)
        mov     dword [esp+10H], 7                      ; 0893 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 089B _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 08A3 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 08AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08AF _ 89. 04 24
        call    _showString                             ; 08B2 _ E8, 000005D3
        mov     dword [ebp-10H], 0                      ; 08B7 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 0                      ; 08BE _ C7. 45, EC, 00000000
        lea     eax, [ebp-34H]                          ; 08C5 _ 8D. 45, CC
        mov     dword [esp+8H], eax                     ; 08C8 _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 08CC _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-2CH]                          ; 08D4 _ 8D. 45, D4
        mov     dword [esp], eax                        ; 08D7 _ 89. 04 24
        call    _fifo8_init                             ; 08DA _ E8, 00000000(rel)
        call    _timer_alloc                            ; 08DF _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 08E4 _ 89. 45, F0
        mov     dword [esp+8H], 123                     ; 08E7 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-2CH]                          ; 08EF _ 8D. 45, D4
        mov     dword [esp+4H], eax                     ; 08F2 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 08F6 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 08F9 _ 89. 04 24
        call    _timer_init                             ; 08FC _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0901 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-10H]                    ; 0909 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 090C _ 89. 04 24
        call    _timer_settime                          ; 090F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0914 _ C7. 45, F4, 00000000
?_010:  call    _io_cli                                 ; 091B _ E8, 00000000(rel)
        lea     eax, [ebp-2CH]                          ; 0920 _ 8D. 45, D4
        mov     dword [esp], eax                        ; 0923 _ 89. 04 24
        call    _fifo8_status                           ; 0926 _ E8, 00000000(rel)
        test    eax, eax                                ; 092B _ 85. C0
        jnz     ?_011                                   ; 092D _ 75, 07
        call    _io_sti                                 ; 092F _ E8, 00000000(rel)
        jmp     ?_010                                   ; 0934 _ EB, E5
; _task_b_func End of function

?_011:  ; Local function
        lea     eax, [ebp-2CH]                          ; 0936 _ 8D. 45, D4
        mov     dword [esp], eax                        ; 0939 _ 89. 04 24
        call    _fifo8_get                              ; 093C _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0941 _ 89. 45, EC
        call    _io_sti                                 ; 0944 _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 123                    ; 0949 _ 83. 7D, EC, 7B
        jnz     ?_010                                   ; 094D _ 75, CC
        mov     edx, dword [_sht_back]                  ; 094F _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0955 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_178                  ; 095A _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], 7                      ; 0962 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 176                    ; 096A _ C7. 44 24, 0C, 000000B0
        mov     ecx, dword [ebp-0CH]                    ; 0972 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 0975 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0979 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 097D _ 89. 04 24
        call    _showString                             ; 0980 _ E8, 00000505
        mov     dword [esp+4H], 100                     ; 0985 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-10H]                    ; 098D _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0990 _ 89. 04 24
        call    _timer_settime                          ; 0993 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 8                      ; 0998 _ 83. 45, F4, 08
        jmp     ?_010                                   ; 099C _ E9, FFFFFF7A

_init_screen8:; Function begin
        push    ebp                                     ; 09A1 _ 55
        mov     ebp, esp                                ; 09A2 _ 89. E5
        push    ebx                                     ; 09A4 _ 53
        sub     esp, 36                                 ; 09A5 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 09A8 _ 8B. 45, 10
        lea     edx, [eax-2AH]                          ; 09AB _ 8D. 50, D6
        mov     eax, dword [ebp+0CH]                    ; 09AE _ 8B. 45, 0C
        sub     eax, 1                                  ; 09B1 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 09B4 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 09B8 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 09BC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 09C4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 09CC _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 09D4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 09D7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 09DB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 09DE _ 89. 04 24
        call    _boxfill8                               ; 09E1 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 09E6 _ 8B. 45, 10
        lea     ecx, [eax-29H]                          ; 09E9 _ 8D. 48, D7
        mov     eax, dword [ebp+0CH]                    ; 09EC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 09EF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 09F2 _ 8B. 45, 10
        sub     eax, 41                                 ; 09F5 _ 83. E8, 29
        mov     dword [esp+18H], ecx                    ; 09F8 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 09FC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A00 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0A04 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0A0C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0A14 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A17 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A1B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A1E _ 89. 04 24
        call    _boxfill8                               ; 0A21 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0A26 _ 8B. 45, 10
        lea     ecx, [eax-28H]                          ; 0A29 _ 8D. 48, D8
        mov     eax, dword [ebp+0CH]                    ; 0A2C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0A2F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0A32 _ 8B. 45, 10
        sub     eax, 40                                 ; 0A35 _ 83. E8, 28
        mov     dword [esp+18H], ecx                    ; 0A38 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0A3C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A40 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0A44 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0A4C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0A54 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A5E _ 89. 04 24
        call    _boxfill8                               ; 0A61 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0A66 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0A69 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0A6C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0A6F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0A72 _ 8B. 45, 10
        sub     eax, 39                                 ; 0A75 _ 83. E8, 27
        mov     dword [esp+18H], ecx                    ; 0A78 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0A7C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A80 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0A84 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0A8C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0A94 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A97 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A9B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A9E _ 89. 04 24
        call    _boxfill8                               ; 0AA1 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0AA6 _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0AA9 _ 8D. 50, DB
        mov     eax, dword [ebp+10H]                    ; 0AAC _ 8B. 45, 10
        sub     eax, 37                                 ; 0AAF _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0AB2 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0AB6 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0ABE _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0AC2 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0ACA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0AD2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AD5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AD9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0ADC _ 89. 04 24
        call    _boxfill8                               ; 0ADF _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0AE4 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0AE7 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0AEA _ 8B. 45, 10
        sub     eax, 37                                 ; 0AED _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0AF0 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0AF4 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0AFC _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0B00 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0B08 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B10 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B13 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B17 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B1A _ 89. 04 24
        call    _boxfill8                               ; 0B1D _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0B22 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0B25 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0B28 _ 8B. 45, 10
        sub     eax, 4                                  ; 0B2B _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0B2E _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0B32 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0B3A _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0B3E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0B46 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0B4E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B51 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B55 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B58 _ 89. 04 24
        call    _boxfill8                               ; 0B5B _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0B60 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0B63 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0B66 _ 8B. 45, 10
        sub     eax, 36                                 ; 0B69 _ 83. E8, 24
        mov     dword [esp+18H], edx                    ; 0B6C _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0B70 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0B78 _ 89. 44 24, 10
        mov     dword [esp+0CH], 72                     ; 0B7C _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 15                      ; 0B84 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0B8C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B8F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B96 _ 89. 04 24
        call    _boxfill8                               ; 0B99 _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0B9E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0BA1 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0BA4 _ 8B. 45, 10
        sub     eax, 3                                  ; 0BA7 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0BAA _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0BAE _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0BB6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0BBA _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0BC2 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0BCA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BCD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BD1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BD4 _ 89. 04 24
        call    _boxfill8                               ; 0BD7 _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0BDC _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0BDF _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0BE2 _ 8B. 45, 10
        sub     eax, 37                                 ; 0BE5 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0BE8 _ 89. 54 24, 18
        mov     dword [esp+14H], 73                     ; 0BEC _ C7. 44 24, 14, 00000049
        mov     dword [esp+10H], eax                    ; 0BF4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 73                     ; 0BF8 _ C7. 44 24, 0C, 00000049
        mov     dword [esp+8H], 0                       ; 0C00 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0C08 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C0B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C0F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C12 _ 89. 04 24
        call    _boxfill8                               ; 0C15 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0C1A _ 8B. 45, 10
        lea     ebx, [eax-25H]                          ; 0C1D _ 8D. 58, DB
        mov     eax, dword [ebp+0CH]                    ; 0C20 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0C23 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0C26 _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0C29 _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 0C2C _ 8B. 45, 0C
        sub     eax, 61                                 ; 0C2F _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0C32 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0C36 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0C3A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0C3E _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0C42 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C4A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C4D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C51 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C54 _ 89. 04 24
        call    _boxfill8                               ; 0C57 _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0C5C _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0C5F _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0C62 _ 8B. 45, 0C
        lea     ecx, [eax-3DH]                          ; 0C65 _ 8D. 48, C3
        mov     eax, dword [ebp+10H]                    ; 0C68 _ 8B. 45, 10
        lea     edx, [eax-24H]                          ; 0C6B _ 8D. 50, DC
        mov     eax, dword [ebp+0CH]                    ; 0C6E _ 8B. 45, 0C
        sub     eax, 61                                 ; 0C71 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0C74 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0C78 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0C7C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0C80 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0C84 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C8C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C8F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C96 _ 89. 04 24
        call    _boxfill8                               ; 0C99 _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0C9E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0CA1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0CA4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0CA7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0CAA _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CAD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0CB0 _ 8B. 45, 0C
        sub     eax, 61                                 ; 0CB3 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0CB6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0CBA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0CBE _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0CC2 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0CC6 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0CCE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CD1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CD5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CD8 _ 89. 04 24
        call    _boxfill8                               ; 0CDB _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0CE0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0CE3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0CE6 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0CE9 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0CEC _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0CEF _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 0CF2 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0CF5 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0CF8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0CFC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D00 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D04 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0D08 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D10 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D13 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D17 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D1A _ 89. 04 24
        call    _boxfill8                               ; 0D1D _ E8, 000002D5
        nop                                             ; 0D22 _ 90
        add     esp, 36                                 ; 0D23 _ 83. C4, 24
        pop     ebx                                     ; 0D26 _ 5B
        pop     ebp                                     ; 0D27 _ 5D
        ret                                             ; 0D28 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0D29 _ 55
        mov     ebp, esp                                ; 0D2A _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0D2C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0D2F _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0D32 _ A1, 00000134(d)
        add     eax, edx                                ; 0D37 _ 01. D0
        mov     dword [_mx], eax                        ; 0D39 _ A3, 00000134(d)
        mov     eax, dword [ebp+10H]                    ; 0D3E _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0D41 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0D44 _ A1, 00000138(d)
        add     eax, edx                                ; 0D49 _ 01. D0
        mov     dword [_my], eax                        ; 0D4B _ A3, 00000138(d)
        mov     eax, dword [_mx]                        ; 0D50 _ A1, 00000134(d)
        test    eax, eax                                ; 0D55 _ 85. C0
        jns     ?_012                                   ; 0D57 _ 79, 0A
        mov     dword [_mx], 0                          ; 0D59 _ C7. 05, 00000134(d), 00000000
?_012:  mov     eax, dword [_my]                        ; 0D63 _ A1, 00000138(d)
        test    eax, eax                                ; 0D68 _ 85. C0
        jns     ?_013                                   ; 0D6A _ 79, 0A
        mov     dword [_my], 0                          ; 0D6C _ C7. 05, 00000138(d), 00000000
?_013:  mov     edx, dword [_xsize]                     ; 0D76 _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 0D7C _ A1, 00000134(d)
        cmp     edx, eax                                ; 0D81 _ 39. C2
        jg      ?_014                                   ; 0D83 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0D85 _ A1, 0000013C(d)
        sub     eax, 1                                  ; 0D8A _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0D8D _ A3, 00000134(d)
?_014:  mov     edx, dword [_ysize]                     ; 0D92 _ 8B. 15, 00000140(d)
        mov     eax, dword [_my]                        ; 0D98 _ A1, 00000138(d)
        cmp     edx, eax                                ; 0D9D _ 39. C2
        jg      ?_015                                   ; 0D9F _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0DA1 _ A1, 00000140(d)
        sub     eax, 1                                  ; 0DA6 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0DA9 _ A3, 00000138(d)
?_015:  nop                                             ; 0DAE _ 90
        pop     ebp                                     ; 0DAF _ 5D
        ret                                             ; 0DB0 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0DB1 _ 55
        mov     ebp, esp                                ; 0DB2 _ 89. E5
        sub     esp, 40                                 ; 0DB4 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0DB7 _ A1, 00000144(d)
        mov     dword [ebp-0CH], eax                    ; 0DBC _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0DBF _ C6. 45, F3, 00
        call    _io_sti                                 ; 0DC3 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0DC8 _ C7. 04 24, 0000002C(d)
        call    _fifo8_get                              ; 0DCF _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0DD4 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0DD7 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0DDB _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0DDF _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 0DE6 _ E8, 00000780
        test    eax, eax                                ; 0DEB _ 85. C0
        jz      ?_016                                   ; 0DED _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0DEF _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 0DF7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0DFA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0DFE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E01 _ 89. 04 24
        call    _computeMousePosition                   ; 0E04 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0E09 _ 8B. 15, 00000138(d)
        mov     eax, dword [_mx]                        ; 0E0F _ A1, 00000134(d)
        mov     dword [esp+0CH], edx                    ; 0E14 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0E18 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0E1C _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0E1F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E23 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E26 _ 89. 04 24
        call    _sheet_slide                            ; 0E29 _ E8, 00000000(rel)
        mov     eax, dword [?_187]                      ; 0E2E _ A1, 0000010C(d)
        and     eax, 01H                                ; 0E33 _ 83. E0, 01
        test    eax, eax                                ; 0E36 _ 85. C0
        jz      ?_016                                   ; 0E38 _ 74, 2C
        mov     eax, dword [_my]                        ; 0E3A _ A1, 00000138(d)
        lea     ecx, [eax-8H]                           ; 0E3F _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 0E42 _ A1, 00000134(d)
        lea     edx, [eax-50H]                          ; 0E47 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 0E4A _ A1, 00000130(d)
        mov     dword [esp+0CH], ecx                    ; 0E4F _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0E53 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0E57 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E5B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E5E _ 89. 04 24
        call    _sheet_slide                            ; 0E61 _ E8, 00000000(rel)
?_016:  nop                                             ; 0E66 _ 90
        leave                                           ; 0E67 _ C9
        ret                                             ; 0E68 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0E69 _ 55
        mov     ebp, esp                                ; 0E6A _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E6C _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0E6F _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0E75 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 800                      ; 0E78 _ 66: C7. 40, 04, 0320
        mov     eax, dword [ebp+8H]                     ; 0E7E _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 600                      ; 0E81 _ 66: C7. 40, 06, 0258
        nop                                             ; 0E87 _ 90
        pop     ebp                                     ; 0E88 _ 5D
        ret                                             ; 0E89 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0E8A _ 55
        mov     ebp, esp                                ; 0E8B _ 89. E5
        push    ebx                                     ; 0E8D _ 53
        sub     esp, 68                                 ; 0E8E _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0E91 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0E94 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0E97 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0E9A _ 89. 45, F4
        jmp     ?_018                                   ; 0E9D _ EB, 4B

?_017:  mov     eax, dword [ebp+1CH]                    ; 0E9F _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0EA2 _ 0F B6. 00
        movzx   eax, al                                 ; 0EA5 _ 0F B6. C0
        shl     eax, 4                                  ; 0EA8 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0EAB _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0EB1 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0EB5 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0EB8 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0EBB _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0EBE _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0EC0 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0EC4 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0EC8 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0ECB _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0ECF _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0ED2 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0ED6 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0EDA _ 89. 14 24
        call    _showFont8                              ; 0EDD _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0EE2 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0EE6 _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 0EEA _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0EED _ 0F B6. 00
        test    al, al                                  ; 0EF0 _ 84. C0
        jnz     ?_017                                   ; 0EF2 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0EF4 _ 8B. 45, 14
        add     eax, 16                                 ; 0EF7 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0EFA _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0EFE _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0F01 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0F05 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0F08 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0F0C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0F0F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0F13 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F16 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F1A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F1D _ 89. 04 24
        call    _sheet_refresh                          ; 0F20 _ E8, 00000000(rel)
        nop                                             ; 0F25 _ 90
        add     esp, 68                                 ; 0F26 _ 83. C4, 44
        pop     ebx                                     ; 0F29 _ 5B
        pop     ebp                                     ; 0F2A _ 5D
        ret                                             ; 0F2B _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0F2C _ 55
        mov     ebp, esp                                ; 0F2D _ 89. E5
        sub     esp, 24                                 ; 0F2F _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2309         ; 0F32 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 0F3A _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0F42 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0F49 _ E8, 00000003
        nop                                             ; 0F4E _ 90
        leave                                           ; 0F4F _ C9
        ret                                             ; 0F50 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0F51 _ 55
        mov     ebp, esp                                ; 0F52 _ 89. E5
        sub     esp, 40                                 ; 0F54 _ 83. EC, 28
        call    _io_load_eflags                         ; 0F57 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0F5C _ 89. 45, F0
        call    _io_cli                                 ; 0F5F _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0F64 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0F67 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0F6B _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0F72 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0F77 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0F7A _ 89. 45, F4
        jmp     ?_020                                   ; 0F7D _ EB, 62

?_019:  mov     eax, dword [ebp+10H]                    ; 0F7F _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0F82 _ 0F B6. 00
        shr     al, 2                                   ; 0F85 _ C0. E8, 02
        movzx   eax, al                                 ; 0F88 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0F8B _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0F8F _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0F96 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0F9B _ 8B. 45, 10
        add     eax, 1                                  ; 0F9E _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0FA1 _ 0F B6. 00
        shr     al, 2                                   ; 0FA4 _ C0. E8, 02
        movzx   eax, al                                 ; 0FA7 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0FAA _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0FAE _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0FB5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0FBA _ 8B. 45, 10
        add     eax, 2                                  ; 0FBD _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0FC0 _ 0F B6. 00
        shr     al, 2                                   ; 0FC3 _ C0. E8, 02
        movzx   eax, al                                 ; 0FC6 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0FC9 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0FCD _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0FD4 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0FD9 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0FDD _ 83. 45, F4, 01
?_020:  mov     eax, dword [ebp-0CH]                    ; 0FE1 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0FE4 _ 3B. 45, 0C
        jle     ?_019                                   ; 0FE7 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0FE9 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0FEC _ 89. 04 24
        call    _io_store_eflags                        ; 0FEF _ E8, 00000000(rel)
        nop                                             ; 0FF4 _ 90
        leave                                           ; 0FF5 _ C9
        ret                                             ; 0FF6 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0FF7 _ 55
        mov     ebp, esp                                ; 0FF8 _ 89. E5
        sub     esp, 20                                 ; 0FFA _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0FFD _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1000 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1003 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 1006 _ 89. 45, F8
        jmp     ?_024                                   ; 1009 _ EB, 31

?_021:  mov     eax, dword [ebp+14H]                    ; 100B _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 100E _ 89. 45, FC
        jmp     ?_023                                   ; 1011 _ EB, 1D

?_022:  mov     eax, dword [ebp-8H]                     ; 1013 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 1016 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 101A _ 8B. 55, FC
        add     eax, edx                                ; 101D _ 01. D0
        mov     edx, eax                                ; 101F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1021 _ 8B. 45, 08
        add     edx, eax                                ; 1024 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1026 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 102A _ 88. 02
        add     dword [ebp-4H], 1                       ; 102C _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 1030 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 1033 _ 3B. 45, 1C
        jle     ?_022                                   ; 1036 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 1038 _ 83. 45, F8, 01
?_024:  mov     eax, dword [ebp-8H]                     ; 103C _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 103F _ 3B. 45, 20
        jle     ?_021                                   ; 1042 _ 7E, C7
        nop                                             ; 1044 _ 90
        leave                                           ; 1045 _ C9
        ret                                             ; 1046 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 1047 _ 55
        mov     ebp, esp                                ; 1048 _ 89. E5
        sub     esp, 20                                 ; 104A _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 104D _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 1050 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1053 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 105A _ E9, 0000015C

?_025:  mov     edx, dword [ebp-4H]                     ; 105F _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 1062 _ 8B. 45, 1C
        add     eax, edx                                ; 1065 _ 01. D0
        movzx   eax, byte [eax]                         ; 1067 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 106A _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 106D _ 80. 7D, FB, 00
        jns     ?_026                                   ; 1071 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 1073 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1076 _ 8B. 45, FC
        add     eax, edx                                ; 1079 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 107B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 107F _ 8B. 55, 10
        add     eax, edx                                ; 1082 _ 01. D0
        mov     edx, eax                                ; 1084 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1086 _ 8B. 45, 08
        add     edx, eax                                ; 1089 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 108B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 108F _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 1091 _ 0F BE. 45, FB
        and     eax, 40H                                ; 1095 _ 83. E0, 40
        test    eax, eax                                ; 1098 _ 85. C0
        jz      ?_027                                   ; 109A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 109C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 109F _ 8B. 45, FC
        add     eax, edx                                ; 10A2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10A4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 10A8 _ 8B. 55, 10
        add     eax, edx                                ; 10AB _ 01. D0
        lea     edx, [eax+1H]                           ; 10AD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 10B0 _ 8B. 45, 08
        add     edx, eax                                ; 10B3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10B5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10B9 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 10BB _ 0F BE. 45, FB
        and     eax, 20H                                ; 10BF _ 83. E0, 20
        test    eax, eax                                ; 10C2 _ 85. C0
        jz      ?_028                                   ; 10C4 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 10C6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 10C9 _ 8B. 45, FC
        add     eax, edx                                ; 10CC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10CE _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 10D2 _ 8B. 55, 10
        add     eax, edx                                ; 10D5 _ 01. D0
        lea     edx, [eax+2H]                           ; 10D7 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 10DA _ 8B. 45, 08
        add     edx, eax                                ; 10DD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10DF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10E3 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 10E5 _ 0F BE. 45, FB
        and     eax, 10H                                ; 10E9 _ 83. E0, 10
        test    eax, eax                                ; 10EC _ 85. C0
        jz      ?_029                                   ; 10EE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 10F0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 10F3 _ 8B. 45, FC
        add     eax, edx                                ; 10F6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10F8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 10FC _ 8B. 55, 10
        add     eax, edx                                ; 10FF _ 01. D0
        lea     edx, [eax+3H]                           ; 1101 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1104 _ 8B. 45, 08
        add     edx, eax                                ; 1107 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1109 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 110D _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 110F _ 0F BE. 45, FB
        and     eax, 08H                                ; 1113 _ 83. E0, 08
        test    eax, eax                                ; 1116 _ 85. C0
        jz      ?_030                                   ; 1118 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 111A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 111D _ 8B. 45, FC
        add     eax, edx                                ; 1120 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1122 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1126 _ 8B. 55, 10
        add     eax, edx                                ; 1129 _ 01. D0
        lea     edx, [eax+4H]                           ; 112B _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 112E _ 8B. 45, 08
        add     edx, eax                                ; 1131 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1133 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1137 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 1139 _ 0F BE. 45, FB
        and     eax, 04H                                ; 113D _ 83. E0, 04
        test    eax, eax                                ; 1140 _ 85. C0
        jz      ?_031                                   ; 1142 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1144 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1147 _ 8B. 45, FC
        add     eax, edx                                ; 114A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 114C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1150 _ 8B. 55, 10
        add     eax, edx                                ; 1153 _ 01. D0
        lea     edx, [eax+5H]                           ; 1155 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 1158 _ 8B. 45, 08
        add     edx, eax                                ; 115B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 115D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1161 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 1163 _ 0F BE. 45, FB
        and     eax, 02H                                ; 1167 _ 83. E0, 02
        test    eax, eax                                ; 116A _ 85. C0
        jz      ?_032                                   ; 116C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 116E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1171 _ 8B. 45, FC
        add     eax, edx                                ; 1174 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1176 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 117A _ 8B. 55, 10
        add     eax, edx                                ; 117D _ 01. D0
        lea     edx, [eax+6H]                           ; 117F _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 1182 _ 8B. 45, 08
        add     edx, eax                                ; 1185 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1187 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 118B _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 118D _ 0F BE. 45, FB
        and     eax, 01H                                ; 1191 _ 83. E0, 01
        test    eax, eax                                ; 1194 _ 85. C0
        jz      ?_033                                   ; 1196 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1198 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 119B _ 8B. 45, FC
        add     eax, edx                                ; 119E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11A0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11A4 _ 8B. 55, 10
        add     eax, edx                                ; 11A7 _ 01. D0
        lea     edx, [eax+7H]                           ; 11A9 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 11AC _ 8B. 45, 08
        add     edx, eax                                ; 11AF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11B1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11B5 _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 11B7 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 11BB _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 11BF _ 0F 8E, FFFFFE9A
        nop                                             ; 11C5 _ 90
        leave                                           ; 11C6 _ C9
        ret                                             ; 11C7 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 11C8 _ 55
        mov     ebp, esp                                ; 11C9 _ 89. E5
        sub     esp, 20                                 ; 11CB _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 11CE _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 11D1 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 11D4 _ C7. 45, F8, 00000000
        jmp     ?_041                                   ; 11DB _ E9, 000000B1

?_035:  mov     dword [ebp-4H], 0                       ; 11E0 _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 11E7 _ E9, 00000097

?_036:  mov     eax, dword [ebp-8H]                     ; 11EC _ 8B. 45, F8
        shl     eax, 4                                  ; 11EF _ C1. E0, 04
        mov     edx, eax                                ; 11F2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 11F4 _ 8B. 45, FC
        add     eax, edx                                ; 11F7 _ 01. D0
        add     eax, _cursor.2356                       ; 11F9 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 11FE _ 0F B6. 00
        cmp     al, 42                                  ; 1201 _ 3C, 2A
        jnz     ?_037                                   ; 1203 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1205 _ 8B. 45, F8
        shl     eax, 4                                  ; 1208 _ C1. E0, 04
        mov     edx, eax                                ; 120B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 120D _ 8B. 45, FC
        add     eax, edx                                ; 1210 _ 01. D0
        mov     edx, eax                                ; 1212 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1214 _ 8B. 45, 08
        add     eax, edx                                ; 1217 _ 01. D0
        mov     byte [eax], 0                           ; 1219 _ C6. 00, 00
?_037:  mov     eax, dword [ebp-8H]                     ; 121C _ 8B. 45, F8
        shl     eax, 4                                  ; 121F _ C1. E0, 04
        mov     edx, eax                                ; 1222 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1224 _ 8B. 45, FC
        add     eax, edx                                ; 1227 _ 01. D0
        add     eax, _cursor.2356                       ; 1229 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 122E _ 0F B6. 00
        cmp     al, 79                                  ; 1231 _ 3C, 4F
        jnz     ?_038                                   ; 1233 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1235 _ 8B. 45, F8
        shl     eax, 4                                  ; 1238 _ C1. E0, 04
        mov     edx, eax                                ; 123B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 123D _ 8B. 45, FC
        add     eax, edx                                ; 1240 _ 01. D0
        mov     edx, eax                                ; 1242 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1244 _ 8B. 45, 08
        add     eax, edx                                ; 1247 _ 01. D0
        mov     byte [eax], 7                           ; 1249 _ C6. 00, 07
?_038:  mov     eax, dword [ebp-8H]                     ; 124C _ 8B. 45, F8
        shl     eax, 4                                  ; 124F _ C1. E0, 04
        mov     edx, eax                                ; 1252 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1254 _ 8B. 45, FC
        add     eax, edx                                ; 1257 _ 01. D0
        add     eax, _cursor.2356                       ; 1259 _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 125E _ 0F B6. 00
        cmp     al, 46                                  ; 1261 _ 3C, 2E
        jnz     ?_039                                   ; 1263 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 1265 _ 8B. 45, F8
        shl     eax, 4                                  ; 1268 _ C1. E0, 04
        mov     edx, eax                                ; 126B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 126D _ 8B. 45, FC
        add     eax, edx                                ; 1270 _ 01. D0
        mov     edx, eax                                ; 1272 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1274 _ 8B. 45, 08
        add     edx, eax                                ; 1277 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1279 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 127D _ 88. 02
?_039:  add     dword [ebp-4H], 1                       ; 127F _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 1283 _ 83. 7D, FC, 0F
        jle     ?_036                                   ; 1287 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 128D _ 83. 45, F8, 01
?_041:  cmp     dword [ebp-8H], 15                      ; 1291 _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 1295 _ 0F 8E, FFFFFF45
        nop                                             ; 129B _ 90
        leave                                           ; 129C _ C9
        ret                                             ; 129D _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 129E _ 55
        mov     ebp, esp                                ; 129F _ 89. E5
        push    ebx                                     ; 12A1 _ 53
        sub     esp, 16                                 ; 12A2 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 12A5 _ C7. 45, F4, 00000000
        jmp     ?_045                                   ; 12AC _ EB, 4E

?_042:  mov     dword [ebp-8H], 0                       ; 12AE _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 12B5 _ EB, 39

?_043:  mov     eax, dword [ebp-0CH]                    ; 12B7 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 12BA _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 12BE _ 8B. 55, F8
        add     eax, edx                                ; 12C1 _ 01. D0
        mov     edx, eax                                ; 12C3 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 12C5 _ 8B. 45, 20
        add     eax, edx                                ; 12C8 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 12CA _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 12CD _ 8B. 55, F4
        add     edx, ecx                                ; 12D0 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 12D2 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 12D6 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 12D9 _ 8B. 4D, F8
        add     ecx, ebx                                ; 12DC _ 01. D9
        add     edx, ecx                                ; 12DE _ 01. CA
        mov     ecx, edx                                ; 12E0 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 12E2 _ 8B. 55, 08
        add     edx, ecx                                ; 12E5 _ 01. CA
        movzx   eax, byte [eax]                         ; 12E7 _ 0F B6. 00
        mov     byte [edx], al                          ; 12EA _ 88. 02
        add     dword [ebp-8H], 1                       ; 12EC _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 12F0 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 12F3 _ 3B. 45, 10
        jl      ?_043                                   ; 12F6 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 12F8 _ 83. 45, F4, 01
?_045:  mov     eax, dword [ebp-0CH]                    ; 12FC _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 12FF _ 3B. 45, 14
        jl      ?_042                                   ; 1302 _ 7C, AA
        nop                                             ; 1304 _ 90
        add     esp, 16                                 ; 1305 _ 83. C4, 10
        pop     ebx                                     ; 1308 _ 5B
        pop     ebp                                     ; 1309 _ 5D
        ret                                             ; 130A _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 130B _ 55
        mov     ebp, esp                                ; 130C _ 89. E5
        sub     esp, 40                                 ; 130E _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 1311 _ A1, 0000000C(d)
        mov     dword [ebp-0CH], eax                    ; 1316 _ 89. 45, F4
        movzx   eax, word [?_185]                       ; 1319 _ 0F B7. 05, 00000010(d)
        cwde                                            ; 1320 _ 98
        mov     dword [ebp-10H], eax                    ; 1321 _ 89. 45, F0
        movzx   eax, word [?_186]                       ; 1324 _ 0F B7. 05, 00000012(d)
        cwde                                            ; 132B _ 98
        mov     dword [ebp-14H], eax                    ; 132C _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 132F _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1337 _ C7. 04 24, 00000020
        call    _io_out8                                ; 133E _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 1343 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 1347 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 134E _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 1353 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1356 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 135A _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 135E _ C7. 04 24, 00000014(d)
        call    _fifo8_put                              ; 1365 _ E8, 00000000(rel)
        nop                                             ; 136A _ 90
        leave                                           ; 136B _ C9
        ret                                             ; 136C _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 136D _ 55
        mov     ebp, esp                                ; 136E _ 89. E5
        sub     esp, 4                                  ; 1370 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1373 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1376 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 1379 _ 80. 7D, FC, 09
        jle     ?_046                                   ; 137D _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 137F _ 0F B6. 45, FC
        add     eax, 55                                 ; 1383 _ 83. C0, 37
        jmp     ?_047                                   ; 1386 _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 1388 _ 0F B6. 45, FC
        add     eax, 48                                 ; 138C _ 83. C0, 30
?_047:  leave                                           ; 138F _ C9
        ret                                             ; 1390 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1391 _ 55
        mov     ebp, esp                                ; 1392 _ 89. E5
        sub     esp, 24                                 ; 1394 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 1397 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 139A _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 139D _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 13A4 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 13A8 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 13AB _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 13AE _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 13B2 _ 89. 04 24
        call    _charToHexVal                           ; 13B5 _ E8, FFFFFFB3
        mov     byte [?_173], al                        ; 13BA _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 13BF _ 0F B6. 45, EC
        shr     al, 4                                   ; 13C3 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 13C6 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 13C9 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 13CD _ 0F BE. C0
        mov     dword [esp], eax                        ; 13D0 _ 89. 04 24
        call    _charToHexVal                           ; 13D3 _ E8, FFFFFF95
        mov     byte [?_172], al                        ; 13D8 _ A2, 00000006(d)
        mov     eax, _keyval                            ; 13DD _ B8, 00000004(d)
        leave                                           ; 13E2 _ C9
        ret                                             ; 13E3 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 13E4 _ 55
        mov     ebp, esp                                ; 13E5 _ 89. E5
        sub     esp, 16                                 ; 13E7 _ 83. EC, 10
        mov     byte [_str.2404], 48                    ; 13EA _ C6. 05, 00000268(d), 30
        mov     byte [?_188], 88                        ; 13F1 _ C6. 05, 00000269(d), 58
        mov     byte [?_189], 0                         ; 13F8 _ C6. 05, 00000272(d), 00
        mov     dword [ebp-4H], 2                       ; 13FF _ C7. 45, FC, 00000002
        jmp     ?_049                                   ; 1406 _ EB, 0F

?_048:  mov     eax, dword [ebp-4H]                     ; 1408 _ 8B. 45, FC
        add     eax, _str.2404                          ; 140B _ 05, 00000268(d)
        mov     byte [eax], 48                          ; 1410 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1413 _ 83. 45, FC, 01
?_049:  cmp     dword [ebp-4H], 9                       ; 1417 _ 83. 7D, FC, 09
        jle     ?_048                                   ; 141B _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 141D _ C7. 45, F8, 00000009
        jmp     ?_053                                   ; 1424 _ EB, 42

?_050:  mov     eax, dword [ebp+8H]                     ; 1426 _ 8B. 45, 08
        and     eax, 0FH                                ; 1429 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 142C _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 142F _ 8B. 45, 08
        shr     eax, 4                                  ; 1432 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1435 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 1438 _ 83. 7D, F4, 09
        jle     ?_051                                   ; 143C _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 143E _ 8B. 45, F4
        add     eax, 55                                 ; 1441 _ 83. C0, 37
        mov     edx, eax                                ; 1444 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1446 _ 8B. 45, F8
        add     eax, _str.2404                          ; 1449 _ 05, 00000268(d)
        mov     byte [eax], dl                          ; 144E _ 88. 10
        jmp     ?_052                                   ; 1450 _ EB, 12

?_051:  mov     eax, dword [ebp-0CH]                    ; 1452 _ 8B. 45, F4
        add     eax, 48                                 ; 1455 _ 83. C0, 30
        mov     edx, eax                                ; 1458 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 145A _ 8B. 45, F8
        add     eax, _str.2404                          ; 145D _ 05, 00000268(d)
        mov     byte [eax], dl                          ; 1462 _ 88. 10
?_052:  sub     dword [ebp-8H], 1                       ; 1464 _ 83. 6D, F8, 01
?_053:  cmp     dword [ebp-8H], 1                       ; 1468 _ 83. 7D, F8, 01
        jle     ?_054                                   ; 146C _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 146E _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 1472 _ 75, B2
?_054:  mov     eax, _str.2404                          ; 1474 _ B8, 00000268(d)
        leave                                           ; 1479 _ C9
        ret                                             ; 147A _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 147B _ 55
        mov     ebp, esp                                ; 147C _ 89. E5
        sub     esp, 24                                 ; 147E _ 83. EC, 18
?_055:  mov     dword [esp], 100                        ; 1481 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 1488 _ E8, 00000000(rel)
        and     eax, 02H                                ; 148D _ 83. E0, 02
        test    eax, eax                                ; 1490 _ 85. C0
        jz      ?_056                                   ; 1492 _ 74, 02
        jmp     ?_055                                   ; 1494 _ EB, EB
; _wait_KBC_sendready End of function

?_056:  ; Local function
        nop                                             ; 1496 _ 90
        nop                                             ; 1497 _ 90
        leave                                           ; 1498 _ C9
        ret                                             ; 1499 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 149A _ 55
        mov     ebp, esp                                ; 149B _ 89. E5
        sub     esp, 24                                 ; 149D _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 14A0 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 14A5 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 14AD _ C7. 04 24, 00000064
        call    _io_out8                                ; 14B4 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 14B9 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 14BE _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 14C6 _ C7. 04 24, 00000060
        call    _io_out8                                ; 14CD _ E8, 00000000(rel)
        nop                                             ; 14D2 _ 90
        leave                                           ; 14D3 _ C9
        ret                                             ; 14D4 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 14D5 _ 55
        mov     ebp, esp                                ; 14D6 _ 89. E5
        sub     esp, 24                                 ; 14D8 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 14DB _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 14E0 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 14E8 _ C7. 04 24, 00000064
        call    _io_out8                                ; 14EF _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 14F4 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 14F9 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1501 _ C7. 04 24, 00000060
        call    _io_out8                                ; 1508 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 150D _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1510 _ C6. 40, 03, 00
        nop                                             ; 1514 _ 90
        leave                                           ; 1515 _ C9
        ret                                             ; 1516 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1517 _ 55
        mov     ebp, esp                                ; 1518 _ 89. E5
        sub     esp, 40                                 ; 151A _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 151D _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1525 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 152C _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1531 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1539 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1540 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1545 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 154C _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1551 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1554 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1558 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 155C _ C7. 04 24, 0000002C(d)
        call    _fifo8_put                              ; 1563 _ E8, 00000000(rel)
        nop                                             ; 1568 _ 90
        leave                                           ; 1569 _ C9
        ret                                             ; 156A _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 156B _ 55
        mov     ebp, esp                                ; 156C _ 89. E5
        sub     esp, 4                                  ; 156E _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1571 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1574 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1577 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 157A _ 0F B6. 40, 03
        test    al, al                                  ; 157E _ 84. C0
        jnz     ?_058                                   ; 1580 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1582 _ 80. 7D, FC, FA
        jnz     ?_057                                   ; 1586 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1588 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 158B _ C6. 40, 03, 01
?_057:  mov     eax, 0                                  ; 158F _ B8, 00000000
        jmp     ?_065                                   ; 1594 _ E9, 0000010F

?_058:  mov     eax, dword [ebp+8H]                     ; 1599 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 159C _ 0F B6. 40, 03
        cmp     al, 1                                   ; 15A0 _ 3C, 01
        jnz     ?_060                                   ; 15A2 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 15A4 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 15A8 _ 25, 000000C8
        cmp     eax, 8                                  ; 15AD _ 83. F8, 08
        jnz     ?_059                                   ; 15B0 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 15B2 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 15B5 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 15B9 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 15BB _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 15BE _ C6. 40, 03, 02
?_059:  mov     eax, 0                                  ; 15C2 _ B8, 00000000
        jmp     ?_065                                   ; 15C7 _ E9, 000000DC

?_060:  mov     eax, dword [ebp+8H]                     ; 15CC _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 15CF _ 0F B6. 40, 03
        cmp     al, 2                                   ; 15D3 _ 3C, 02
        jnz     ?_061                                   ; 15D5 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 15D7 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 15DA _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 15DE _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 15E1 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 15E4 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 15E8 _ B8, 00000000
        jmp     ?_065                                   ; 15ED _ E9, 000000B6

?_061:  mov     eax, dword [ebp+8H]                     ; 15F2 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 15F5 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 15F9 _ 3C, 03
        jne     ?_064                                   ; 15FB _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1601 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1604 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1608 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 160B _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 160E _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1612 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1615 _ 0F B6. 00
        movzx   eax, al                                 ; 1618 _ 0F B6. C0
        and     eax, 07H                                ; 161B _ 83. E0, 07
        mov     edx, eax                                ; 161E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1620 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1623 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1626 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1629 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 162D _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1630 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1633 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1636 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1639 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 163D _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1640 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1643 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1646 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1649 _ 0F B6. 00
        movzx   eax, al                                 ; 164C _ 0F B6. C0
        and     eax, 10H                                ; 164F _ 83. E0, 10
        test    eax, eax                                ; 1652 _ 85. C0
        jz      ?_062                                   ; 1654 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1656 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1659 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 165C _ 0D, FFFFFF00
        mov     edx, eax                                ; 1661 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1663 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1666 _ 89. 50, 04
?_062:  mov     eax, dword [ebp+8H]                     ; 1669 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 166C _ 0F B6. 00
        movzx   eax, al                                 ; 166F _ 0F B6. C0
        and     eax, 20H                                ; 1672 _ 83. E0, 20
        test    eax, eax                                ; 1675 _ 85. C0
        jz      ?_063                                   ; 1677 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1679 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 167C _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 167F _ 0D, FFFFFF00
        mov     edx, eax                                ; 1684 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1686 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1689 _ 89. 50, 08
?_063:  mov     eax, dword [ebp+8H]                     ; 168C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 168F _ 8B. 40, 08
        neg     eax                                     ; 1692 _ F7. D8
        mov     edx, eax                                ; 1694 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1696 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1699 _ 89. 50, 08
        mov     eax, 1                                  ; 169C _ B8, 00000001
        jmp     ?_065                                   ; 16A1 _ EB, 05

?_064:  mov     eax, 4294967295                         ; 16A3 _ B8, FFFFFFFF
?_065:  leave                                           ; 16A8 _ C9
        ret                                             ; 16A9 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 16AA _ 55
        mov     ebp, esp                                ; 16AB _ 89. E5
        sub     esp, 88                                 ; 16AD _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 16B0 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 16B7 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 16BE _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 16C5 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 16CC _ 8B. 15, 00000140(d)
        mov     eax, dword [ebp+0CH]                    ; 16D2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16D5 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 16D7 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 16DB _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 16DE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16E2 _ 89. 04 24
        call    _init_screen8                           ; 16E5 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 16EA _ 8B. 45, 20
        movsx   eax, al                                 ; 16ED _ 0F BE. C0
        mov     dword [esp+14H], ?_179                  ; 16F0 _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 16F8 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 16FC _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 16FF _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1703 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1706 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 170A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 170D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1711 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1714 _ 89. 04 24
        call    _showString                             ; 1717 _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 171C _ 8B. 45, 18
        mov     dword [esp], eax                        ; 171F _ 89. 04 24
        call    _intToHexStr                            ; 1722 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 1727 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 172A _ 8B. 45, 20
        movsx   eax, al                                 ; 172D _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1730 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1733 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1737 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 173B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 173E _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1742 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1745 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1749 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 174C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1750 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1753 _ 89. 04 24
        call    _showString                             ; 1756 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 175B _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 175F _ 8B. 45, 20
        movsx   eax, al                                 ; 1762 _ 0F BE. C0
        mov     dword [esp+14H], ?_180                  ; 1765 _ C7. 44 24, 14, 0000002A(d)
        mov     dword [esp+10H], eax                    ; 176D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1771 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1774 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1778 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 177B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 177F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1782 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1786 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1789 _ 89. 04 24
        call    _showString                             ; 178C _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1791 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1794 _ 8B. 00
        mov     dword [esp], eax                        ; 1796 _ 89. 04 24
        call    _intToHexStr                            ; 1799 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 179E _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 17A1 _ 8B. 45, 20
        movsx   eax, al                                 ; 17A4 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 17A7 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 17AA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 17AE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 17B2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 17B5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 17B9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 17BC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 17C0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17CA _ 89. 04 24
        call    _showString                             ; 17CD _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 17D2 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 17D6 _ 8B. 45, 20
        movsx   eax, al                                 ; 17D9 _ 0F BE. C0
        mov     dword [esp+14H], ?_181                  ; 17DC _ C7. 44 24, 14, 00000036(d)
        mov     dword [esp+10H], eax                    ; 17E4 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 17E8 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 17EB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 17EF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 17F2 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 17F6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17F9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17FD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1800 _ 89. 04 24
        call    _showString                             ; 1803 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1808 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 180B _ 8B. 40, 04
        mov     dword [esp], eax                        ; 180E _ 89. 04 24
        call    _intToHexStr                            ; 1811 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1816 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1819 _ 8B. 45, 20
        movsx   eax, al                                 ; 181C _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 181F _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1822 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1826 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 182A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 182D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1831 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1834 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1838 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 183B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 183F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1842 _ 89. 04 24
        call    _showString                             ; 1845 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 184A _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 184E _ 8B. 45, 20
        movsx   eax, al                                 ; 1851 _ 0F BE. C0
        mov     dword [esp+14H], ?_182                  ; 1854 _ C7. 44 24, 14, 00000042(d)
        mov     dword [esp+10H], eax                    ; 185C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1860 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1863 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1867 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 186A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 186E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1871 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1875 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1878 _ 89. 04 24
        call    _showString                             ; 187B _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1880 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1883 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1886 _ 89. 04 24
        call    _intToHexStr                            ; 1889 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 188E _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1891 _ 8B. 45, 20
        movsx   eax, al                                 ; 1894 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1897 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 189A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 189E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18A2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18A5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 18A9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 18AC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18B0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18B3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18B7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18BA _ 89. 04 24
        call    _showString                             ; 18BD _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 18C2 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 18C6 _ 8B. 45, 20
        movsx   eax, al                                 ; 18C9 _ 0F BE. C0
        mov     dword [esp+14H], ?_183                  ; 18CC _ C7. 44 24, 14, 0000004E(d)
        mov     dword [esp+10H], eax                    ; 18D4 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18D8 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18DB _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 18DF _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 18E2 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18E6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18E9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18ED _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18F0 _ 89. 04 24
        call    _showString                             ; 18F3 _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 18F8 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 18FB _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 18FE _ 89. 04 24
        call    _intToHexStr                            ; 1901 _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 1906 _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 1909 _ 8B. 45, 20
        movsx   eax, al                                 ; 190C _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 190F _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 1912 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1916 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 191A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 191D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1921 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1924 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1928 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 192B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 192F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1932 _ 89. 04 24
        call    _showString                             ; 1935 _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 193A _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 193E _ 8B. 45, 20
        movsx   eax, al                                 ; 1941 _ 0F BE. C0
        mov     dword [esp+14H], ?_184                  ; 1944 _ C7. 44 24, 14, 0000005B(d)
        mov     dword [esp+10H], eax                    ; 194C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1950 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1953 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1957 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 195A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 195E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1961 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1965 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1968 _ 89. 04 24
        call    _showString                             ; 196B _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 1970 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1973 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 1976 _ 89. 04 24
        call    _intToHexStr                            ; 1979 _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 197E _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 1981 _ 8B. 45, 20
        movsx   eax, al                                 ; 1984 _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 1987 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 198A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 198E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1992 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1995 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1999 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 199C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19A0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19A3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19A7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19AA _ 89. 04 24
        call    _showString                             ; 19AD _ E8, FFFFF4D8
        nop                                             ; 19B2 _ 90
        leave                                           ; 19B3 _ C9
        ret                                             ; 19B4 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 19B5 _ 55
        mov     ebp, esp                                ; 19B6 _ 89. E5
        sub     esp, 56                                 ; 19B8 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 19BB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19BE _ 89. 04 24
        call    _sheet_alloc                            ; 19C1 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 19C6 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 19C9 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 19CE _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 19D6 _ 89. 04 24
        call    _memman_alloc_4k                        ; 19D9 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 19DE _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 19E1 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 19E9 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 19F1 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 19F9 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 19FC _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1A00 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1A03 _ 89. 04 24
        call    _sheet_setbuf                           ; 1A06 _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1A0B _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1A0E _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1A12 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A15 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A19 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A1C _ 89. 04 24
        call    _make_window8                           ; 1A1F _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1A24 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1A2C _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1A34 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1A3C _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1A44 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1A4C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1A4F _ 89. 04 24
        call    _make_textbox8                          ; 1A52 _ E8, 000003AA
        mov     dword [esp+0CH], 72                     ; 1A57 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 1A5F _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 1A67 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A6A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A6E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A71 _ 89. 04 24
        call    _sheet_slide                            ; 1A74 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1A79 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1A81 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A84 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A88 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A8B _ 89. 04 24
        call    _sheet_updown                           ; 1A8E _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1A93 _ 8B. 45, F4
        leave                                           ; 1A96 _ C9
        ret                                             ; 1A97 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1A98 _ 55
        mov     ebp, esp                                ; 1A99 _ 89. E5
        push    ebx                                     ; 1A9B _ 53
        sub     esp, 68                                 ; 1A9C _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1A9F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1AA2 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1AA5 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1AA8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1AAB _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1AAE _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1AB1 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1AB4 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AB7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1ABA _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1ABC _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1AC4 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1AC8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1AD0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1AD8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1AE0 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1AE3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AE7 _ 89. 04 24
        call    _boxfill8                               ; 1AEA _ E8, FFFFF508
        mov     eax, dword [ebp-18H]                    ; 1AEF _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1AF2 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1AF5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AF8 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1AFA _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1B02 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1B06 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B0E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B16 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1B1E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B21 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B25 _ 89. 04 24
        call    _boxfill8                               ; 1B28 _ E8, FFFFF4CA
        mov     eax, dword [ebp-1CH]                    ; 1B2D _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1B30 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B33 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B36 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B38 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1B3C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1B44 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B4C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B54 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1B5C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B5F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B63 _ 89. 04 24
        call    _boxfill8                               ; 1B66 _ E8, FFFFF48C
        mov     eax, dword [ebp-1CH]                    ; 1B6B _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1B6E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B71 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B74 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B76 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1B7A _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1B82 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B8A _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B92 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1B9A _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B9D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BA1 _ 89. 04 24
        call    _boxfill8                               ; 1BA4 _ E8, FFFFF44E
        mov     eax, dword [ebp-1CH]                    ; 1BA9 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1BAC _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1BAF _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1BB2 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 1BB5 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1BB8 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1BBB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BBE _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1BC0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1BC4 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1BC8 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1BD0 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1BD4 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1BDC _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1BDF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BE3 _ 89. 04 24
        call    _boxfill8                               ; 1BE6 _ E8, FFFFF40C
        mov     eax, dword [ebp-1CH]                    ; 1BEB _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1BEE _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1BF1 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1BF4 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1BF7 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1BFA _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BFD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C00 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C02 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C06 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1C0A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1C12 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1C16 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1C1E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C21 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C25 _ 89. 04 24
        call    _boxfill8                               ; 1C28 _ E8, FFFFF3CA
        mov     eax, dword [ebp-1CH]                    ; 1C2D _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1C30 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1C33 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1C36 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1C39 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C3C _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1C3E _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1C42 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1C46 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1C4E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1C56 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1C5E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C61 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C65 _ 89. 04 24
        call    _boxfill8                               ; 1C68 _ E8, FFFFF38A
        mov     eax, dword [ebp-18H]                    ; 1C6D _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1C70 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1C73 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C76 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1C78 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1C80 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1C84 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1C8C _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1C94 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1C9C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C9F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CA3 _ 89. 04 24
        call    _boxfill8                               ; 1CA6 _ E8, FFFFF34C
        mov     eax, dword [ebp-1CH]                    ; 1CAB _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1CAE _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1CB1 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1CB4 _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1CB7 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1CBA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1CBD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CC0 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1CC2 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1CC6 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1CCA _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1CCE _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1CD6 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1CDE _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CE1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CE5 _ 89. 04 24
        call    _boxfill8                               ; 1CE8 _ E8, FFFFF30A
        mov     eax, dword [ebp-1CH]                    ; 1CED _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1CF0 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1CF3 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1CF6 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1CF9 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1CFC _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1CFF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D02 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D04 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D08 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D0C _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1D10 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1D18 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1D20 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D23 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D27 _ 89. 04 24
        call    _boxfill8                               ; 1D2A _ E8, FFFFF2C8
        mov     eax, dword [ebp+10H]                    ; 1D2F _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1D32 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1D36 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1D3E _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1D46 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1D4E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1D51 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D55 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D58 _ 89. 04 24
        call    _showString                             ; 1D5B _ E8, FFFFF12A
        mov     dword [ebp-10H], 0                      ; 1D60 _ C7. 45, F0, 00000000
        jmp     ?_073                                   ; 1D67 _ E9, 00000084

?_066:  mov     dword [ebp-0CH], 0                      ; 1D6C _ C7. 45, F4, 00000000
        jmp     ?_072                                   ; 1D73 _ EB, 71

?_067:  mov     eax, dword [ebp-10H]                    ; 1D75 _ 8B. 45, F0
        shl     eax, 4                                  ; 1D78 _ C1. E0, 04
        mov     edx, eax                                ; 1D7B _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1D7D _ 8B. 45, F4
        add     eax, edx                                ; 1D80 _ 01. D0
        add     eax, _closebtn.2468                     ; 1D82 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1D87 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1D8A _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1D8D _ 80. 7D, EF, 40
        jnz     ?_068                                   ; 1D91 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1D93 _ C6. 45, EF, 00
        jmp     ?_071                                   ; 1D97 _ EB, 1C

?_068:  cmp     byte [ebp-11H], 36                      ; 1D99 _ 80. 7D, EF, 24
        jnz     ?_069                                   ; 1D9D _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1D9F _ C6. 45, EF, 0F
        jmp     ?_071                                   ; 1DA3 _ EB, 10

?_069:  cmp     byte [ebp-11H], 81                      ; 1DA5 _ 80. 7D, EF, 51
        jnz     ?_070                                   ; 1DA9 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1DAB _ C6. 45, EF, 08
        jmp     ?_071                                   ; 1DAF _ EB, 04

?_070:  mov     byte [ebp-11H], 7                       ; 1DB1 _ C6. 45, EF, 07
?_071:  mov     eax, dword [ebp+0CH]                    ; 1DB5 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1DB8 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1DBA _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1DBD _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1DC0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DC3 _ 8B. 40, 04
        imul    eax, edx                                ; 1DC6 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1DC9 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1DCC _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1DCF _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1DD2 _ 8B. 55, F4
        add     edx, ebx                                ; 1DD5 _ 01. DA
        add     eax, edx                                ; 1DD7 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1DD9 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1DDC _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1DE0 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1DE2 _ 83. 45, F4, 01
?_072:  cmp     dword [ebp-0CH], 15                     ; 1DE6 _ 83. 7D, F4, 0F
        jle     ?_067                                   ; 1DEA _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1DEC _ 83. 45, F0, 01
?_073:  cmp     dword [ebp-10H], 13                     ; 1DF0 _ 83. 7D, F0, 0D
        jle     ?_066                                   ; 1DF4 _ 0F 8E, FFFFFF72
        nop                                             ; 1DFA _ 90
        add     esp, 68                                 ; 1DFB _ 83. C4, 44
        pop     ebx                                     ; 1DFE _ 5B
        pop     ebp                                     ; 1DFF _ 5D
        ret                                             ; 1E00 _ C3
; _make_window8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1E01 _ 55
        mov     ebp, esp                                ; 1E02 _ 89. E5
        push    edi                                     ; 1E04 _ 57
        push    esi                                     ; 1E05 _ 56
        push    ebx                                     ; 1E06 _ 53
        sub     esp, 44                                 ; 1E07 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1E0A _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1E0D _ 8B. 45, 14
        add     eax, edx                                ; 1E10 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1E12 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1E15 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1E18 _ 8B. 45, 18
        add     eax, edx                                ; 1E1B _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1E1D _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1E20 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1E23 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1E26 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1E29 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1E2C _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E2F _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E32 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1E35 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1E38 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E3B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E3E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E41 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E43 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E47 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E4B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E4F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1E53 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1E5B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E5F _ 89. 04 24
        call    _boxfill8                               ; 1E62 _ E8, FFFFF190
        mov     eax, dword [ebp-14H]                    ; 1E67 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1E6A _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1E6D _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1E70 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1E73 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E76 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E79 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1E7C _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1E7F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E82 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E85 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E88 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E8A _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E8E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E92 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E96 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1E9A _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1EA2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EA6 _ 89. 04 24
        call    _boxfill8                               ; 1EA9 _ E8, FFFFF149
        mov     eax, dword [ebp-14H]                    ; 1EAE _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1EB1 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1EB4 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1EB7 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1EBA _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 1EBD _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1EC0 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1EC3 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1EC6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1EC9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1ECC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1ECF _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1ED1 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1ED5 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1ED9 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EDD _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1EE1 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1EE9 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EED _ 89. 04 24
        call    _boxfill8                               ; 1EF0 _ E8, FFFFF102
        mov     eax, dword [ebp-14H]                    ; 1EF5 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1EF8 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1EFB _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 1EFE _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1F01 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1F04 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 1F07 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 1F0A _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1F0D _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F10 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F13 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F16 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F18 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F1C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F20 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F24 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1F28 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1F30 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F34 _ 89. 04 24
        call    _boxfill8                               ; 1F37 _ E8, FFFFF0BB
        mov     eax, dword [ebp+10H]                    ; 1F3C _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1F3F _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1F42 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1F45 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1F48 _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1F4B _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1F4E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F51 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F54 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F57 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1F59 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1F5D _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1F60 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F64 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F68 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1F6C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1F74 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F78 _ 89. 04 24
        call    _boxfill8                               ; 1F7B _ E8, FFFFF077
        mov     eax, dword [ebp+0CH]                    ; 1F80 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1F83 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1F86 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1F89 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1F8C _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1F8F _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1F92 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F95 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F98 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F9B _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 1F9D _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 1FA0 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1FA4 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FA8 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FAC _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1FB0 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1FB8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FBC _ 89. 04 24
        call    _boxfill8                               ; 1FBF _ E8, FFFFF033
        mov     eax, dword [ebp-14H]                    ; 1FC4 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1FC7 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1FCA _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 1FCD _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1FD0 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1FD3 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1FD6 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FD9 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FDC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FDF _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1FE1 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1FE5 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1FE8 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FEC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FF0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 1FF4 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1FFC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2000 _ 89. 04 24
        call    _boxfill8                               ; 2003 _ E8, FFFFEFEF
        mov     eax, dword [ebp-14H]                    ; 2008 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 200B _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 200E _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2011 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2014 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2017 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 201A _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 201D _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2020 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2023 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2026 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2029 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 202B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 202F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2033 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2037 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 203B _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 2043 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2047 _ 89. 04 24
        call    _boxfill8                               ; 204A _ E8, FFFFEFA8
        mov     eax, dword [ebp+10H]                    ; 204F _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 2052 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2055 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 2058 _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 205B _ 8B. 45, 1C
        movzx   eax, al                                 ; 205E _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 2061 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 2064 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 2067 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 206A _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 206C _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 206F _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 2073 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 2076 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 207A _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 207E _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 2082 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 2086 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 208A _ 89. 14 24
        call    _boxfill8                               ; 208D _ E8, FFFFEF65
        nop                                             ; 2092 _ 90
        add     esp, 44                                 ; 2093 _ 83. C4, 2C
        pop     ebx                                     ; 2096 _ 5B
        pop     esi                                     ; 2097 _ 5E
        pop     edi                                     ; 2098 _ 5F
        pop     ebp                                     ; 2099 _ 5D
        ret                                             ; 209A _ C3
; _make_textbox8 End of function

        nop                                             ; 209B _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 209C _ 55
        mov     ebp, esp                                ; 209D _ 89. E5
        sub     esp, 40                                 ; 209F _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 20A2 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 20AA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 20AD _ 89. 04 24
        call    _memman_alloc_4k                        ; 20B0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 20B5 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 20B8 _ 83. 7D, F0, 00
        jnz     ?_074                                   ; 20BC _ 75, 0A
        mov     eax, 0                                  ; 20BE _ B8, 00000000
        jmp     ?_078                                   ; 20C3 _ E9, 0000009D

?_074:  mov     eax, dword [ebp+10H]                    ; 20C8 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 20CB _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 20CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 20D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 20D6 _ 89. 04 24
        call    _memman_alloc_4k                        ; 20D9 _ E8, 00000000(rel)
        mov     edx, eax                                ; 20DE _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 20E0 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 20E3 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 20E6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 20E9 _ 8B. 40, 04
        test    eax, eax                                ; 20EC _ 85. C0
        jnz     ?_075                                   ; 20EE _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 20F0 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 20F3 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 20FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 20FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2102 _ 89. 04 24
        call    _memman_free_4k                         ; 2105 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 210A _ B8, 00000000
        jmp     ?_078                                   ; 210F _ EB, 54

?_075:  mov     eax, dword [ebp-10H]                    ; 2111 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2114 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2117 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 2119 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 211C _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 211F _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2122 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 2125 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 2128 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 212B _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 212E _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 2135 _ C7. 45, F4, 00000000
        jmp     ?_077                                   ; 213C _ EB, 1B

?_076:  mov     edx, dword [ebp-10H]                    ; 213E _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 2141 _ 8B. 45, F4
        add     eax, 33                                 ; 2144 _ 83. C0, 21
        shl     eax, 5                                  ; 2147 _ C1. E0, 05
        add     eax, edx                                ; 214A _ 01. D0
        add     eax, 16                                 ; 214C _ 83. C0, 10
        mov     dword [eax], 0                          ; 214F _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2155 _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 255                    ; 2159 _ 81. 7D, F4, 000000FF
        jle     ?_076                                   ; 2160 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 2162 _ 8B. 45, F0
?_078:  leave                                           ; 2165 _ C9
        ret                                             ; 2166 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 2167 _ 55
        mov     ebp, esp                                ; 2168 _ 89. E5
        sub     esp, 16                                 ; 216A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 216D _ C7. 45, FC, 00000000
        jmp     ?_081                                   ; 2174 _ EB, 5B

?_079:  mov     edx, dword [ebp+8H]                     ; 2176 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 2179 _ 8B. 45, FC
        add     eax, 33                                 ; 217C _ 83. C0, 21
        shl     eax, 5                                  ; 217F _ C1. E0, 05
        add     eax, edx                                ; 2182 _ 01. D0
        add     eax, 16                                 ; 2184 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 2187 _ 8B. 00
        test    eax, eax                                ; 2189 _ 85. C0
        jnz     ?_080                                   ; 218B _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 218D _ 8B. 45, FC
        shl     eax, 5                                  ; 2190 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 2193 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 2199 _ 8B. 45, 08
        add     eax, edx                                ; 219C _ 01. D0
        add     eax, 4                                  ; 219E _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 21A1 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 21A4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 21A7 _ 8B. 55, FC
        add     edx, 4                                  ; 21AA _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 21AD _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 21B0 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 21B4 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 21B7 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 21BE _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 21C1 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 21C8 _ 8B. 45, F8
        jmp     ?_082                                   ; 21CB _ EB, 12

?_080:  add     dword [ebp-4H], 1                       ; 21CD _ 83. 45, FC, 01
?_081:  cmp     dword [ebp-4H], 255                     ; 21D1 _ 81. 7D, FC, 000000FF
        jle     ?_079                                   ; 21D8 _ 7E, 9C
        mov     eax, 0                                  ; 21DA _ B8, 00000000
?_082:  leave                                           ; 21DF _ C9
        ret                                             ; 21E0 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 21E1 _ 55
        mov     ebp, esp                                ; 21E2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 21E4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 21E7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 21EA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 21EC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 21EF _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 21F2 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 21F5 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 21F8 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 21FB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 21FE _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2201 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2204 _ 89. 50, 14
        nop                                             ; 2207 _ 90
        pop     ebp                                     ; 2208 _ 5D
        ret                                             ; 2209 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 220A _ 55
        mov     ebp, esp                                ; 220B _ 89. E5
        push    edi                                     ; 220D _ 57
        push    esi                                     ; 220E _ 56
        push    ebx                                     ; 220F _ 53
        sub     esp, 60                                 ; 2210 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2213 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2216 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 2219 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 221C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 221F _ 8B. 40, 10
        add     eax, 1                                  ; 2222 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2225 _ 39. 45, 10
        jle     ?_083                                   ; 2228 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 222A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 222D _ 8B. 40, 10
        add     eax, 1                                  ; 2230 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2233 _ 89. 45, 10
?_083:  cmp     dword [ebp+10H], -1                     ; 2236 _ 83. 7D, 10, FF
        jge     ?_084                                   ; 223A _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 223C _ C7. 45, 10, FFFFFFFF
?_084:  mov     eax, dword [ebp+0CH]                    ; 2243 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2246 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 2249 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 224C _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 224F _ 3B. 45, 10
        jle     ?_091                                   ; 2252 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 2258 _ 83. 7D, 10, 00
        js      ?_087                                   ; 225C _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 2262 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2265 _ 89. 45, E4
        jmp     ?_086                                   ; 2268 _ EB, 34

?_085:  mov     eax, dword [ebp-1CH]                    ; 226A _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 226D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2270 _ 8B. 45, 08
        add     edx, 4                                  ; 2273 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2276 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 227A _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 227D _ 8B. 55, E4
        add     edx, 4                                  ; 2280 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2283 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2287 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 228A _ 8B. 55, E4
        add     edx, 4                                  ; 228D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2290 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2294 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2297 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 229A _ 83. 6D, E4, 01
?_086:  mov     eax, dword [ebp-1CH]                    ; 229E _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 22A1 _ 3B. 45, 10
        jg      ?_085                                   ; 22A4 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 22A6 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 22A9 _ 8B. 55, 10
        add     edx, 4                                  ; 22AC _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 22AF _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 22B2 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 22B6 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 22B9 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 22BC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 22BF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 22C2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 22C5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 22C8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 22CB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 22CE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 22D1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 22D4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 22D7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 22DA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 22DD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 22E0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 22E3 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 22E6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 22EA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 22EE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 22F2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 22F6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22FD _ 89. 04 24
        call    _sheet_refreshmap                       ; 2300 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 2305 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 2308 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 230B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 230E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2311 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2314 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2317 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 231A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 231D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2320 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2323 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2326 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2329 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 232C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 232F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2332 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2335 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 2338 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 233C _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2340 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2344 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2348 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 234C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2350 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2353 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2356 _ E8, 00000465
        jmp     ?_098                                   ; 235B _ E9, 0000027D

?_087:  mov     eax, dword [ebp+8H]                     ; 2360 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2363 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 2366 _ 39. 45, E0
        jge     ?_090                                   ; 2369 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 236B _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 236E _ 89. 45, E4
        jmp     ?_089                                   ; 2371 _ EB, 34

?_088:  mov     eax, dword [ebp-1CH]                    ; 2373 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2376 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2379 _ 8B. 45, 08
        add     edx, 4                                  ; 237C _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 237F _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2383 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2386 _ 8B. 55, E4
        add     edx, 4                                  ; 2389 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 238C _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2390 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2393 _ 8B. 55, E4
        add     edx, 4                                  ; 2396 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2399 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 239D _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 23A0 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 23A3 _ 83. 45, E4, 01
?_089:  mov     eax, dword [ebp+8H]                     ; 23A7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23AA _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 23AD _ 39. 45, E4
        jl      ?_088                                   ; 23B0 _ 7C, C1
?_090:  mov     eax, dword [ebp+8H]                     ; 23B2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23B5 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 23B8 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 23BB _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 23BE _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23C1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23C4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23C7 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 23CA _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 23CD _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 23D0 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 23D3 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 23D6 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 23D9 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 23DC _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 23DF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23E2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23E5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 23E8 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 23EB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 23F3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 23F7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 23FB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 23FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2403 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2406 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2409 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 240E _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 2411 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2414 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2417 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 241A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 241D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2420 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2423 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2426 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2429 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 242C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 242F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2432 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2435 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2438 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 243B _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 243E _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 2442 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 244A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 244E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2452 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2456 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 245A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 245D _ 89. 04 24
        call    _sheet_refreshsub                       ; 2460 _ E8, 0000035B
        jmp     ?_098                                   ; 2465 _ E9, 00000173

?_091:  mov     eax, dword [ebp-20H]                    ; 246A _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 246D _ 3B. 45, 10
        jge     ?_098                                   ; 2470 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 2476 _ 83. 7D, E0, 00
        js      ?_094                                   ; 247A _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 247C _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 247F _ 89. 45, E4
        jmp     ?_093                                   ; 2482 _ EB, 34

?_092:  mov     eax, dword [ebp-1CH]                    ; 2484 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2487 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 248A _ 8B. 45, 08
        add     edx, 4                                  ; 248D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2490 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2494 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2497 _ 8B. 55, E4
        add     edx, 4                                  ; 249A _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 249D _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 24A1 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 24A4 _ 8B. 55, E4
        add     edx, 4                                  ; 24A7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 24AA _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 24AE _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 24B1 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 24B4 _ 83. 45, E4, 01
?_093:  mov     eax, dword [ebp-1CH]                    ; 24B8 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 24BB _ 3B. 45, 10
        jl      ?_092                                   ; 24BE _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 24C0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 24C3 _ 8B. 55, 10
        add     edx, 4                                  ; 24C6 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 24C9 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 24CC _ 89. 4C 90, 04
        jmp     ?_097                                   ; 24D0 _ EB, 6C

?_094:  mov     eax, dword [ebp+8H]                     ; 24D2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 24D5 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 24D8 _ 89. 45, E4
        jmp     ?_096                                   ; 24DB _ EB, 3A

?_095:  mov     eax, dword [ebp-1CH]                    ; 24DD _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 24E0 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 24E3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 24E6 _ 8B. 55, E4
        add     edx, 4                                  ; 24E9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 24EC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 24F0 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 24F3 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 24F6 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 24FA _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 24FD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2500 _ 8B. 45, 08
        add     edx, 4                                  ; 2503 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2506 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 250A _ 8B. 55, E4
        add     edx, 1                                  ; 250D _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2510 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2513 _ 83. 6D, E4, 01
?_096:  mov     eax, dword [ebp-1CH]                    ; 2517 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 251A _ 3B. 45, 10
        jge     ?_095                                   ; 251D _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 251F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2522 _ 8B. 55, 10
        add     edx, 4                                  ; 2525 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2528 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 252B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 252F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2532 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2535 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2538 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 253B _ 89. 50, 10
?_097:  mov     eax, dword [ebp+0CH]                    ; 253E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2541 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2544 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2547 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 254A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 254D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2550 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2553 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2556 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2559 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 255C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 255F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2562 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2565 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2568 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 256B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 256F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2573 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2577 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 257B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 257F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2582 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2585 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 258A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 258D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2590 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2593 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2596 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2599 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 259C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 259F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25A2 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25A5 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25A8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25AB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25AE _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25B1 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 25B4 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 25B7 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 25BB _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 25BE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 25C2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 25C6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 25CA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 25CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25D5 _ 89. 04 24
        call    _sheet_refreshsub                       ; 25D8 _ E8, 000001E3
?_098:  nop                                             ; 25DD _ 90
        add     esp, 60                                 ; 25DE _ 83. C4, 3C
        pop     ebx                                     ; 25E1 _ 5B
        pop     esi                                     ; 25E2 _ 5E
        pop     edi                                     ; 25E3 _ 5F
        pop     ebp                                     ; 25E4 _ 5D
        ret                                             ; 25E5 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 25E6 _ 55
        mov     ebp, esp                                ; 25E7 _ 89. E5
        push    edi                                     ; 25E9 _ 57
        push    esi                                     ; 25EA _ 56
        push    ebx                                     ; 25EB _ 53
        sub     esp, 60                                 ; 25EC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 25EF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 25F2 _ 8B. 40, 18
        test    eax, eax                                ; 25F5 _ 85. C0
        js      ?_099                                   ; 25F7 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 25F9 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 25FC _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 25FF _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 2602 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 2605 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2608 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 260B _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 260E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2611 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2614 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 2617 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 261A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 261D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2620 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2623 _ 8B. 45, 14
        add     edx, eax                                ; 2626 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2628 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 262B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 262E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2631 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2634 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 2637 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 263B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 263F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2643 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2647 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 264B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 264F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2652 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2655 _ E8, 00000166
?_099:  mov     eax, 0                                  ; 265A _ B8, 00000000
        add     esp, 60                                 ; 265F _ 83. C4, 3C
        pop     ebx                                     ; 2662 _ 5B
        pop     esi                                     ; 2663 _ 5E
        pop     edi                                     ; 2664 _ 5F
        pop     ebp                                     ; 2665 _ 5D
        ret                                             ; 2666 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 2667 _ 55
        mov     ebp, esp                                ; 2668 _ 89. E5
        push    esi                                     ; 266A _ 56
        push    ebx                                     ; 266B _ 53
        sub     esp, 48                                 ; 266C _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 266F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2672 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 2675 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2678 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 267B _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 267E _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2681 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2684 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2687 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 268A _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 268D _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2690 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2693 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2696 _ 8B. 40, 18
        test    eax, eax                                ; 2699 _ 85. C0
        js      ?_100                                   ; 269B _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 26A1 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 26A4 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 26A7 _ 8B. 45, F0
        add     edx, eax                                ; 26AA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 26AC _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 26AF _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 26B2 _ 8B. 45, F4
        add     eax, ecx                                ; 26B5 _ 01. C8
        mov     dword [esp+14H], 0                      ; 26B7 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 26BF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 26C3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 26C7 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 26CA _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 26CE _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 26D1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26D5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26D8 _ 89. 04 24
        call    _sheet_refreshmap                       ; 26DB _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 26E0 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 26E3 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 26E6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 26E9 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 26EC _ 8B. 45, 14
        add     edx, eax                                ; 26EF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 26F1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 26F4 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 26F7 _ 8B. 45, 10
        add     eax, ebx                                ; 26FA _ 01. D8
        mov     dword [esp+14H], ecx                    ; 26FC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2700 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2704 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2708 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 270B _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 270F _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2712 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2716 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2719 _ 89. 04 24
        call    _sheet_refreshmap                       ; 271C _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 2721 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2724 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 2727 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 272A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 272D _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2730 _ 8B. 45, F0
        add     edx, eax                                ; 2733 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2735 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2738 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 273B _ 8B. 45, F4
        add     eax, ebx                                ; 273E _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2740 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2744 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 274C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2750 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2754 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2757 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 275B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 275E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2762 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2765 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2768 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 276D _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2770 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2773 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2776 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2779 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 277C _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 277F _ 8B. 45, 14
        add     edx, eax                                ; 2782 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2784 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 2787 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 278A _ 8B. 45, 10
        add     eax, esi                                ; 278D _ 01. F0
        mov     dword [esp+18H], ebx                    ; 278F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2793 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2797 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 279B _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 279F _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 27A2 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 27A6 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 27A9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27AD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27B0 _ 89. 04 24
        call    _sheet_refreshsub                       ; 27B3 _ E8, 00000008
?_100:  nop                                             ; 27B8 _ 90
        add     esp, 48                                 ; 27B9 _ 83. C4, 30
        pop     ebx                                     ; 27BC _ 5B
        pop     esi                                     ; 27BD _ 5E
        pop     ebp                                     ; 27BE _ 5D
        ret                                             ; 27BF _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 27C0 _ 55
        mov     ebp, esp                                ; 27C1 _ 89. E5
        sub     esp, 48                                 ; 27C3 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 27C6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 27C9 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 27CB _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 27CE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27D1 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 27D4 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 27D7 _ 83. 7D, 0C, 00
        jns     ?_101                                   ; 27DB _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 27DD _ C7. 45, 0C, 00000000
?_101:  cmp     dword [ebp+10H], 8                      ; 27E4 _ 83. 7D, 10, 08
        jg      ?_102                                   ; 27E8 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 27EA _ C7. 45, 10, 00000000
?_102:  mov     eax, dword [ebp+8H]                     ; 27F1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27F4 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 27F7 _ 39. 45, 14
        jle     ?_103                                   ; 27FA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 27FC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27FF _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2802 _ 89. 45, 14
?_103:  mov     eax, dword [ebp+8H]                     ; 2805 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2808 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 280B _ 39. 45, 18
        jle     ?_104                                   ; 280E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2810 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2813 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2816 _ 89. 45, 18
?_104:  mov     eax, dword [ebp+1CH]                    ; 2819 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 281C _ 89. 45, FC
        jmp     ?_111                                   ; 281F _ E9, 0000010F

?_105:  mov     eax, dword [ebp+8H]                     ; 2824 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2827 _ 8B. 55, FC
        add     edx, 4                                  ; 282A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 282D _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2831 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2834 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 2837 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2839 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 283C _ 8B. 45, 08
        add     eax, 1044                               ; 283F _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2844 _ 8B. 55, E8
        sub     edx, eax                                ; 2847 _ 29. C2
        mov     eax, edx                                ; 2849 _ 89. D0
        sar     eax, 5                                  ; 284B _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 284E _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2851 _ C7. 45, F4, 00000000
        jmp     ?_110                                   ; 2858 _ E9, 000000C3

?_106:  mov     eax, dword [ebp-18H]                    ; 285D _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2860 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2863 _ 8B. 45, F4
        add     eax, edx                                ; 2866 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2868 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 286B _ C7. 45, F8, 00000000
        jmp     ?_109                                   ; 2872 _ E9, 00000096

?_107:  mov     eax, dword [ebp-18H]                    ; 2877 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 287A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 287D _ 8B. 45, F8
        add     eax, edx                                ; 2880 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2882 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2885 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2888 _ 3B. 45, D8
        jg      ?_108                                   ; 288B _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 288D _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2890 _ 3B. 45, 14
        jge     ?_108                                   ; 2893 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2895 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2898 _ 3B. 45, DC
        jg      ?_108                                   ; 289B _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 289D _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 28A0 _ 3B. 45, 18
        jge     ?_108                                   ; 28A3 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 28A5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 28A8 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 28AB _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 28AF _ 8B. 55, F8
        add     eax, edx                                ; 28B2 _ 01. D0
        mov     edx, eax                                ; 28B4 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 28B6 _ 8B. 45, E4
        add     eax, edx                                ; 28B9 _ 01. D0
        movzx   eax, byte [eax]                         ; 28BB _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 28BE _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 28C1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 28C4 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 28C7 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 28CB _ 8B. 55, D8
        add     eax, edx                                ; 28CE _ 01. D0
        mov     edx, eax                                ; 28D0 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 28D2 _ 8B. 45, EC
        add     eax, edx                                ; 28D5 _ 01. D0
        movzx   eax, byte [eax]                         ; 28D7 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 28DA _ 38. 45, E3
        jnz     ?_108                                   ; 28DD _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 28DF _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 28E3 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 28E6 _ 8B. 52, 14
        cmp     eax, edx                                ; 28E9 _ 39. D0
        jz      ?_108                                   ; 28EB _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 28ED _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 28F0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 28F3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 28F7 _ 8B. 55, D8
        add     eax, edx                                ; 28FA _ 01. D0
        mov     edx, eax                                ; 28FC _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 28FE _ 8B. 45, F0
        add     edx, eax                                ; 2901 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 2903 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 2907 _ 88. 02
?_108:  add     dword [ebp-8H], 1                       ; 2909 _ 83. 45, F8, 01
?_109:  mov     eax, dword [ebp-18H]                    ; 290D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2910 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2913 _ 39. 45, F8
        jl      ?_107                                   ; 2916 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 291C _ 83. 45, F4, 01
?_110:  mov     eax, dword [ebp-18H]                    ; 2920 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2923 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 2926 _ 39. 45, F4
        jl      ?_106                                   ; 2929 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 292F _ 83. 45, FC, 01
?_111:  mov     eax, dword [ebp-4H]                     ; 2933 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 2936 _ 3B. 45, 20
        jle     ?_105                                   ; 2939 _ 0F 8E, FFFFFEE5
        nop                                             ; 293F _ 90
        leave                                           ; 2940 _ C9
        ret                                             ; 2941 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2942 _ 55
        mov     ebp, esp                                ; 2943 _ 89. E5
        sub     esp, 64                                 ; 2945 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2948 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 294B _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 294E _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2951 _ 83. 7D, 0C, 00
        jns     ?_112                                   ; 2955 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2957 _ C7. 45, 0C, 00000000
?_112:  cmp     dword [ebp+10H], 0                      ; 295E _ 83. 7D, 10, 00
        jns     ?_113                                   ; 2962 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2964 _ C7. 45, 10, 00000000
?_113:  mov     eax, dword [ebp+8H]                     ; 296B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 296E _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2971 _ 39. 45, 14
        jle     ?_114                                   ; 2974 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2976 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2979 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 297C _ 89. 45, 14
?_114:  mov     eax, dword [ebp+8H]                     ; 297F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2982 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2985 _ 39. 45, 18
        jle     ?_115                                   ; 2988 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 298A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 298D _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2990 _ 89. 45, 18
?_115:  mov     eax, dword [ebp+1CH]                    ; 2993 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2996 _ 89. 45, FC
        jmp     ?_126                                   ; 2999 _ E9, 00000139

?_116:  mov     eax, dword [ebp+8H]                     ; 299E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 29A1 _ 8B. 55, FC
        add     edx, 4                                  ; 29A4 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29A7 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 29AB _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 29AE _ 8B. 45, 08
        add     eax, 1044                               ; 29B1 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 29B6 _ 8B. 55, DC
        sub     edx, eax                                ; 29B9 _ 29. C2
        mov     eax, edx                                ; 29BB _ 89. D0
        sar     eax, 5                                  ; 29BD _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 29C0 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 29C3 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 29C6 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 29C8 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 29CB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 29CE _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 29D1 _ 8B. 55, 0C
        sub     edx, eax                                ; 29D4 _ 29. C2
        mov     eax, edx                                ; 29D6 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 29D8 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 29DB _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 29DE _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 29E1 _ 8B. 55, 10
        sub     edx, eax                                ; 29E4 _ 29. C2
        mov     eax, edx                                ; 29E6 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 29E8 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 29EB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 29EE _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 29F1 _ 8B. 55, 14
        sub     edx, eax                                ; 29F4 _ 29. C2
        mov     eax, edx                                ; 29F6 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 29F8 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 29FB _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 29FE _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2A01 _ 8B. 55, 18
        sub     edx, eax                                ; 2A04 _ 29. C2
        mov     eax, edx                                ; 2A06 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2A08 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 2A0B _ 83. 7D, F0, 00
        jns     ?_117                                   ; 2A0F _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2A11 _ C7. 45, F0, 00000000
?_117:  cmp     dword [ebp-14H], 0                      ; 2A18 _ 83. 7D, EC, 00
        jns     ?_118                                   ; 2A1C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 2A1E _ C7. 45, EC, 00000000
?_118:  mov     eax, dword [ebp-24H]                    ; 2A25 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2A28 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 2A2B _ 39. 45, E8
        jle     ?_119                                   ; 2A2E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2A30 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2A33 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 2A36 _ 89. 45, E8
?_119:  mov     eax, dword [ebp-24H]                    ; 2A39 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2A3C _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2A3F _ 39. 45, E4
        jle     ?_120                                   ; 2A42 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2A44 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2A47 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2A4A _ 89. 45, E4
?_120:  mov     eax, dword [ebp-14H]                    ; 2A4D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2A50 _ 89. 45, F4
        jmp     ?_125                                   ; 2A53 _ EB, 76

?_121:  mov     eax, dword [ebp-24H]                    ; 2A55 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2A58 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2A5B _ 8B. 45, F4
        add     eax, edx                                ; 2A5E _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2A60 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2A63 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2A66 _ 89. 45, F8
        jmp     ?_124                                   ; 2A69 _ EB, 54

?_122:  mov     eax, dword [ebp-24H]                    ; 2A6B _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2A6E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2A71 _ 8B. 45, F8
        add     eax, edx                                ; 2A74 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2A76 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2A79 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2A7C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2A7F _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2A83 _ 8B. 55, F8
        add     eax, edx                                ; 2A86 _ 01. D0
        mov     edx, eax                                ; 2A88 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2A8A _ 8B. 45, D4
        add     eax, edx                                ; 2A8D _ 01. D0
        movzx   eax, byte [eax]                         ; 2A8F _ 0F B6. 00
        movzx   eax, al                                 ; 2A92 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2A95 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2A98 _ 8B. 52, 14
        cmp     eax, edx                                ; 2A9B _ 39. D0
        jz      ?_123                                   ; 2A9D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2A9F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AA2 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2AA5 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2AA9 _ 8B. 55, CC
        add     eax, edx                                ; 2AAC _ 01. D0
        mov     edx, eax                                ; 2AAE _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2AB0 _ 8B. 45, E0
        add     edx, eax                                ; 2AB3 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2AB5 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2AB9 _ 88. 02
?_123:  add     dword [ebp-8H], 1                       ; 2ABB _ 83. 45, F8, 01
?_124:  mov     eax, dword [ebp-8H]                     ; 2ABF _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2AC2 _ 3B. 45, E8
        jl      ?_122                                   ; 2AC5 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2AC7 _ 83. 45, F4, 01
?_125:  mov     eax, dword [ebp-0CH]                    ; 2ACB _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2ACE _ 3B. 45, E4
        jl      ?_121                                   ; 2AD1 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2AD3 _ 83. 45, FC, 01
?_126:  mov     eax, dword [ebp+8H]                     ; 2AD7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2ADA _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 2ADD _ 39. 45, FC
        jle     ?_116                                   ; 2AE0 _ 0F 8E, FFFFFEB8
        nop                                             ; 2AE6 _ 90
        leave                                           ; 2AE7 _ C9
        ret                                             ; 2AE8 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 2AE9 _ 90
        nop                                             ; 2AEA _ 90
        nop                                             ; 2AEB _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 2AEC _ 55
        mov     ebp, esp                                ; 2AED _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2AEF _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2AF2 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2AF8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2AFB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2B02 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2B05 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2B0C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2B0F _ C7. 40, 0C, 00000000
        nop                                             ; 2B16 _ 90
        pop     ebp                                     ; 2B17 _ 5D
        ret                                             ; 2B18 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2B19 _ 55
        mov     ebp, esp                                ; 2B1A _ 89. E5
        sub     esp, 16                                 ; 2B1C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2B1F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2B26 _ C7. 45, FC, 00000000
        jmp     ?_128                                   ; 2B2D _ EB, 14

?_127:  mov     eax, dword [ebp+8H]                     ; 2B2F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B32 _ 8B. 55, FC
        add     edx, 2                                  ; 2B35 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2B38 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2B3C _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2B3F _ 83. 45, FC, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 2B43 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B46 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2B48 _ 39. 45, FC
        jc      ?_127                                   ; 2B4B _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2B4D _ 8B. 45, F8
        leave                                           ; 2B50 _ C9
        ret                                             ; 2B51 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2B52 _ 55
        mov     ebp, esp                                ; 2B53 _ 89. E5
        sub     esp, 16                                 ; 2B55 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2B58 _ C7. 45, FC, 00000000
        jmp     ?_132                                   ; 2B5F _ E9, 00000083

?_129:  mov     eax, dword [ebp+8H]                     ; 2B64 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B67 _ 8B. 55, FC
        add     edx, 2                                  ; 2B6A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2B6D _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2B71 _ 39. 45, 0C
        ja      ?_131                                   ; 2B74 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2B76 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B79 _ 8B. 55, FC
        add     edx, 2                                  ; 2B7C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2B7F _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2B82 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2B85 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B88 _ 8B. 55, FC
        add     edx, 2                                  ; 2B8B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2B8E _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2B91 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2B94 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2B97 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B9A _ 8B. 55, FC
        add     edx, 2                                  ; 2B9D _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2BA0 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2BA3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BA6 _ 8B. 55, FC
        add     edx, 2                                  ; 2BA9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2BAC _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2BB0 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2BB3 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2BB6 _ 8B. 4D, FC
        add     ecx, 2                                  ; 2BB9 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2BBC _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2BC0 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BC3 _ 8B. 55, FC
        add     edx, 2                                  ; 2BC6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2BC9 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2BCD _ 85. C0
        jnz     ?_130                                   ; 2BCF _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2BD1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2BD4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2BD6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2BD9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2BDC _ 89. 10
?_130:  mov     eax, dword [ebp-8H]                     ; 2BDE _ 8B. 45, F8
        jmp     ?_133                                   ; 2BE1 _ EB, 17

?_131:  add     dword [ebp-4H], 1                       ; 2BE3 _ 83. 45, FC, 01
?_132:  mov     eax, dword [ebp+8H]                     ; 2BE7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2BEA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2BEC _ 39. 45, FC
        jc      ?_129                                   ; 2BEF _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2BF5 _ B8, 00000000
?_133:  leave                                           ; 2BFA _ C9
        ret                                             ; 2BFB _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2BFC _ 55
        mov     ebp, esp                                ; 2BFD _ 89. E5
        push    ebx                                     ; 2BFF _ 53
        sub     esp, 16                                 ; 2C00 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2C03 _ C7. 45, F8, 00000000
        jmp     ?_135                                   ; 2C0A _ EB, 15

?_134:  mov     eax, dword [ebp+8H]                     ; 2C0C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2C0F _ 8B. 55, F8
        add     edx, 2                                  ; 2C12 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2C15 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2C18 _ 39. 45, 0C
        jc      ?_136                                   ; 2C1B _ 72, 10
        add     dword [ebp-8H], 1                       ; 2C1D _ 83. 45, F8, 01
?_135:  mov     eax, dword [ebp+8H]                     ; 2C21 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C24 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2C26 _ 39. 45, F8
        jl      ?_134                                   ; 2C29 _ 7C, E1
        jmp     ?_137                                   ; 2C2B _ EB, 01

?_136:  nop                                             ; 2C2D _ 90
?_137:  cmp     dword [ebp-8H], 0                       ; 2C2E _ 83. 7D, F8, 00
        jle     ?_139                                   ; 2C32 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2C38 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2C3B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C3E _ 8B. 45, 08
        add     edx, 2                                  ; 2C41 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2C44 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2C47 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2C4A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C4D _ 8B. 45, 08
        add     edx, 2                                  ; 2C50 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2C53 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2C57 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2C59 _ 39. 45, 0C
        jne     ?_139                                   ; 2C5C _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2C62 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2C65 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C68 _ 8B. 45, 08
        add     edx, 2                                  ; 2C6B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2C6E _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2C72 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2C75 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2C78 _ 8B. 45, 10
        add     ecx, eax                                ; 2C7B _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2C7D _ 8B. 45, 08
        add     edx, 2                                  ; 2C80 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2C83 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2C87 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C8A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2C8C _ 39. 45, F8
        jge     ?_138                                   ; 2C8F _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2C91 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2C94 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2C97 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2C9A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2C9D _ 8B. 55, F8
        add     edx, 2                                  ; 2CA0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2CA3 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2CA6 _ 39. C1
        jnz     ?_138                                   ; 2CA8 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 2CAA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2CAD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CB0 _ 8B. 45, 08
        add     edx, 2                                  ; 2CB3 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2CB6 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2CBA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CBD _ 8B. 55, F8
        add     edx, 2                                  ; 2CC0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2CC3 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2CC7 _ 8B. 55, F8
        sub     edx, 1                                  ; 2CCA _ 83. EA, 01
        add     ecx, eax                                ; 2CCD _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2CCF _ 8B. 45, 08
        add     edx, 2                                  ; 2CD2 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2CD5 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2CD9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2CDC _ 8B. 00
        lea     edx, [eax-1H]                           ; 2CDE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CE1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2CE4 _ 89. 10
?_138:  mov     eax, 0                                  ; 2CE6 _ B8, 00000000
        jmp     ?_145                                   ; 2CEB _ E9, 0000011C

?_139:  mov     eax, dword [ebp+8H]                     ; 2CF0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2CF3 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2CF5 _ 39. 45, F8
        jge     ?_140                                   ; 2CF8 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2CFA _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2CFD _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2D00 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2D03 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D06 _ 8B. 55, F8
        add     edx, 2                                  ; 2D09 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2D0C _ 8B. 04 D0
        cmp     ecx, eax                                ; 2D0F _ 39. C1
        jnz     ?_140                                   ; 2D11 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2D13 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D16 _ 8B. 55, F8
        add     edx, 2                                  ; 2D19 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2D1C _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2D1F _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2D22 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D25 _ 8B. 55, F8
        add     edx, 2                                  ; 2D28 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2D2B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2D2F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2D32 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2D35 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D38 _ 8B. 55, F8
        add     edx, 2                                  ; 2D3B _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2D3E _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2D42 _ B8, 00000000
        jmp     ?_145                                   ; 2D47 _ E9, 000000C0

?_140:  mov     eax, dword [ebp+8H]                     ; 2D4C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D4F _ 8B. 00
        cmp     eax, 4095                               ; 2D51 _ 3D, 00000FFF
        jg      ?_144                                   ; 2D56 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2D5C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D5F _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2D61 _ 89. 45, F4
        jmp     ?_142                                   ; 2D64 _ EB, 28

?_141:  mov     eax, dword [ebp-0CH]                    ; 2D66 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2D69 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2D6C _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2D6F _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2D72 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2D75 _ 8B. 45, 08
        add     edx, 2                                  ; 2D78 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2D7B _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2D7E _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2D80 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2D83 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2D86 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2D8A _ 83. 6D, F4, 01
?_142:  mov     eax, dword [ebp-0CH]                    ; 2D8E _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2D91 _ 3B. 45, F8
        jg      ?_141                                   ; 2D94 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2D96 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D99 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2D9B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D9E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2DA1 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2DA3 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2DA6 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2DA9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DAC _ 8B. 00
        cmp     edx, eax                                ; 2DAE _ 39. C2
        jge     ?_143                                   ; 2DB0 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2DB2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2DB5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2DB7 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2DBA _ 89. 50, 04
?_143:  mov     eax, dword [ebp+8H]                     ; 2DBD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DC0 _ 8B. 55, F8
        add     edx, 2                                  ; 2DC3 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2DC6 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2DC9 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2DCC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2DCF _ 8B. 55, F8
        add     edx, 2                                  ; 2DD2 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2DD5 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2DD8 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2DDC _ B8, 00000000
        jmp     ?_145                                   ; 2DE1 _ EB, 29

?_144:  mov     eax, dword [ebp+8H]                     ; 2DE3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2DE6 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2DE9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2DEC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2DEF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2DF2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2DF5 _ 8B. 40, 08
        mov     edx, eax                                ; 2DF8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2DFA _ 8B. 45, 10
        add     eax, edx                                ; 2DFD _ 01. D0
        mov     edx, eax                                ; 2DFF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2E01 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2E04 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2E07 _ B8, FFFFFFFF
?_145:  add     esp, 16                                 ; 2E0C _ 83. C4, 10
        pop     ebx                                     ; 2E0F _ 5B
        pop     ebp                                     ; 2E10 _ 5D
        ret                                             ; 2E11 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2E12 _ 55
        mov     ebp, esp                                ; 2E13 _ 89. E5
        sub     esp, 24                                 ; 2E15 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2E18 _ 8B. 45, 0C
        add     eax, 4095                               ; 2E1B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2E20 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2E25 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E28 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E2B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E2F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E32 _ 89. 04 24
        call    _memman_alloc                           ; 2E35 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 2E3A _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2E3D _ 8B. 45, FC
        leave                                           ; 2E40 _ C9
        ret                                             ; 2E41 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 2E42 _ 55
        mov     ebp, esp                                ; 2E43 _ 89. E5
        sub     esp, 28                                 ; 2E45 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2E48 _ 8B. 45, 10
        add     eax, 4095                               ; 2E4B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2E50 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2E55 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2E58 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2E5B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2E5F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E62 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E66 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E69 _ 89. 04 24
        call    _memman_free                            ; 2E6C _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 2E71 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2E74 _ 8B. 45, FC
        leave                                           ; 2E77 _ C9
        ret                                             ; 2E78 _ C3
; _memman_free_4k End of function

        nop                                             ; 2E79 _ 90
        nop                                             ; 2E7A _ 90
        nop                                             ; 2E7B _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 2E7C _ 55
        mov     ebp, esp                                ; 2E7D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2E7F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E82 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2E85 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2E88 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2E8B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2E8E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2E90 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E93 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2E96 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2E99 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2E9C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2EA3 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2EA6 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2EAD _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2EB0 _ C7. 40, 08, 00000000
        nop                                             ; 2EB7 _ 90
        pop     ebp                                     ; 2EB8 _ 5D
        ret                                             ; 2EB9 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 2EBA _ 55
        mov     ebp, esp                                ; 2EBB _ 89. E5
        sub     esp, 4                                  ; 2EBD _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2EC0 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2EC3 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2EC6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2EC9 _ 8B. 40, 10
        test    eax, eax                                ; 2ECC _ 85. C0
        jnz     ?_146                                   ; 2ECE _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2ED0 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2ED3 _ 8B. 40, 14
        or      eax, 01H                                ; 2ED6 _ 83. C8, 01
        mov     edx, eax                                ; 2ED9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2EDB _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2EDE _ 89. 50, 14
        mov     eax, 4294967295                         ; 2EE1 _ B8, FFFFFFFF
        jmp     ?_148                                   ; 2EE6 _ EB, 50

?_146:  mov     eax, dword [ebp+8H]                     ; 2EE8 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2EEB _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2EED _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2EF0 _ 8B. 40, 04
        add     edx, eax                                ; 2EF3 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2EF5 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2EF9 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2EFB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2EFE _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2F01 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F04 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F07 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F0A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F0D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F10 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F13 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2F16 _ 39. C2
        jnz     ?_147                                   ; 2F18 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2F1A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2F1D _ C7. 40, 04, 00000000
?_147:  mov     eax, dword [ebp+8H]                     ; 2F24 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F27 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2F2A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F2D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2F30 _ 89. 50, 10
        mov     eax, 0                                  ; 2F33 _ B8, 00000000
?_148:  leave                                           ; 2F38 _ C9
        ret                                             ; 2F39 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 2F3A _ 55
        mov     ebp, esp                                ; 2F3B _ 89. E5
        sub     esp, 16                                 ; 2F3D _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2F40 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2F43 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2F46 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F49 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2F4C _ 39. C2
        jnz     ?_149                                   ; 2F4E _ 75, 07
        mov     eax, 4294967295                         ; 2F50 _ B8, FFFFFFFF
        jmp     ?_151                                   ; 2F55 _ EB, 51

?_149:  mov     eax, dword [ebp+8H]                     ; 2F57 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2F5A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2F5C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F5F _ 8B. 40, 08
        add     eax, edx                                ; 2F62 _ 01. D0
        movzx   eax, byte [eax]                         ; 2F64 _ 0F B6. 00
        movzx   eax, al                                 ; 2F67 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2F6A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2F6D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2F70 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2F73 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F76 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2F79 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2F7C _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2F7F _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2F82 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F85 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2F88 _ 39. C2
        jnz     ?_150                                   ; 2F8A _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2F8C _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2F8F _ C7. 40, 08, 00000000
?_150:  mov     eax, dword [ebp+8H]                     ; 2F96 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F99 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2F9C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F9F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2FA2 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2FA5 _ 8B. 45, FC
?_151:  leave                                           ; 2FA8 _ C9
        ret                                             ; 2FA9 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 2FAA _ 55
        mov     ebp, esp                                ; 2FAB _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2FAD _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2FB0 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2FB3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2FB6 _ 8B. 40, 10
        sub     edx, eax                                ; 2FB9 _ 29. C2
        mov     eax, edx                                ; 2FBB _ 89. D0
        pop     ebp                                     ; 2FBD _ 5D
        ret                                             ; 2FBE _ C3
; _fifo8_status End of function

        nop                                             ; 2FBF _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 2FC0 _ 55
        mov     ebp, esp                                ; 2FC1 _ 89. E5
        sub     esp, 40                                 ; 2FC3 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 2FC6 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 2FCE _ C7. 04 24, 00000043
        call    _io_out8                                ; 2FD5 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 2FDA _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 2FE2 _ C7. 04 24, 00000040
        call    _io_out8                                ; 2FE9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 2FEE _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 2FF6 _ C7. 04 24, 00000040
        call    _io_out8                                ; 2FFD _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3002 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 300C _ C7. 45, F4, 00000000
        jmp     ?_153                                   ; 3013 _ EB, 15

?_152:  mov     eax, dword [ebp-0CH]                    ; 3015 _ 8B. 45, F4
        shl     eax, 4                                  ; 3018 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 301B _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 3020 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 3026 _ 83. 45, F4, 01
?_153:  cmp     dword [ebp-0CH], 499                    ; 302A _ 81. 7D, F4, 000001F3
        jle     ?_152                                   ; 3031 _ 7E, E2
        nop                                             ; 3033 _ 90
        leave                                           ; 3034 _ C9
        ret                                             ; 3035 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 3036 _ 55
        mov     ebp, esp                                ; 3037 _ 89. E5
        sub     esp, 16                                 ; 3039 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 303C _ C7. 45, FC, 00000000
        jmp     ?_156                                   ; 3043 _ EB, 36

?_154:  mov     eax, dword [ebp-4H]                     ; 3045 _ 8B. 45, FC
        shl     eax, 4                                  ; 3048 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 304B _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3050 _ 8B. 00
        test    eax, eax                                ; 3052 _ 85. C0
        jnz     ?_155                                   ; 3054 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 3056 _ 8B. 45, FC
        shl     eax, 4                                  ; 3059 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 305C _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3061 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 3067 _ 8B. 45, FC
        shl     eax, 4                                  ; 306A _ C1. E0, 04
        add     eax, _timerctl                               ; 306D _ 05, 00000000(d)
        add     eax, 4                                  ; 3072 _ 83. C0, 04
        jmp     ?_157                                   ; 3075 _ EB, 12

?_155:  add     dword [ebp-4H], 1                       ; 3077 _ 83. 45, FC, 01
?_156:  cmp     dword [ebp-4H], 499                     ; 307B _ 81. 7D, FC, 000001F3
        jle     ?_154                                   ; 3082 _ 7E, C1
        mov     eax, 0                                  ; 3084 _ B8, 00000000
?_157:  leave                                           ; 3089 _ C9
        ret                                             ; 308A _ C3
; _timer_alloc End of function

_timer_init:; Function begin
        push    ebp                                     ; 308B _ 55
        mov     ebp, esp                                ; 308C _ 89. E5
        sub     esp, 4                                  ; 308E _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3091 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3094 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3097 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 309A _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 309D _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 30A0 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 30A3 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 30A7 _ 88. 42, 0C
        nop                                             ; 30AA _ 90
        leave                                           ; 30AB _ C9
        ret                                             ; 30AC _ C3
; _timer_init End of function

_timer_free:; Function begin
        push    ebp                                     ; 30AD _ 55
        mov     ebp, esp                                ; 30AE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30B0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 30B3 _ C7. 40, 04, 00000000
        nop                                             ; 30BA _ 90
        pop     ebp                                     ; 30BB _ 5D
        ret                                             ; 30BC _ C3
; _timer_free End of function

_timer_settime:; Function begin
        push    ebp                                     ; 30BD _ 55
        mov     ebp, esp                                ; 30BE _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 30C0 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 30C3 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 30C6 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 30C8 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 30CB _ C7. 40, 04, 00000002
        nop                                             ; 30D2 _ 90
        pop     ebp                                     ; 30D3 _ 5D
        ret                                             ; 30D4 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 30D5 _ 55
        mov     ebp, esp                                ; 30D6 _ 89. E5
        push    ebx                                     ; 30D8 _ 53
        sub     esp, 36                                 ; 30D9 _ 83. EC, 24
        mov     dword [esp+4H], 96                      ; 30DC _ C7. 44 24, 04, 00000060
        mov     dword [esp], 32                         ; 30E4 _ C7. 04 24, 00000020
        call    _io_out8                                ; 30EB _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 30F0 _ A1, 00000000(d)
        add     eax, 1                                  ; 30F5 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 30F8 _ A3, 00000000(d)
        mov     byte [ebp-9H], 0                        ; 30FD _ C6. 45, F7, 00
        mov     dword [ebp-10H], 0                      ; 3101 _ C7. 45, F0, 00000000
        jmp     ?_162                                   ; 3108 _ E9, 000000AE

?_158:  mov     eax, dword [ebp-10H]                    ; 310D _ 8B. 45, F0
        shl     eax, 4                                  ; 3110 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3113 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 3118 _ 8B. 00
        cmp     eax, 2                                  ; 311A _ 83. F8, 02
        jne     ?_160                                   ; 311D _ 0F 85, 00000089
        mov     eax, dword [ebp-10H]                    ; 3123 _ 8B. 45, F0
        shl     eax, 4                                  ; 3126 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3129 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 312E _ 8B. 00
        lea     edx, [eax-1H]                           ; 3130 _ 8D. 50, FF
        mov     eax, dword [ebp-10H]                    ; 3133 _ 8B. 45, F0
        shl     eax, 4                                  ; 3136 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3139 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 313E _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 3140 _ 8B. 45, F0
        shl     eax, 4                                  ; 3143 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 3146 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 314B _ 8B. 00
        test    eax, eax                                ; 314D _ 85. C0
        jnz     ?_160                                   ; 314F _ 75, 5B
        mov     eax, dword [ebp-10H]                    ; 3151 _ 8B. 45, F0
        shl     eax, 4                                  ; 3154 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3157 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 315C _ C7. 00, 00000001
        mov     eax, dword [ebp-10H]                    ; 3162 _ 8B. 45, F0
        shl     eax, 4                                  ; 3165 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 3168 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 316D _ 0F B6. 00
        movzx   eax, al                                 ; 3170 _ 0F B6. C0
        mov     edx, dword [ebp-10H]                    ; 3173 _ 8B. 55, F0
        shl     edx, 4                                  ; 3176 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 3179 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 317F _ 8B. 12
        mov     dword [esp+4H], eax                     ; 3181 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 3185 _ 89. 14 24
        call    _fifo8_put                              ; 3188 _ E8, 00000000(rel)
        mov     eax, dword [ebp-10H]                    ; 318D _ 8B. 45, F0
        shl     eax, 4                                  ; 3190 _ C1. E0, 04
        add     eax, _timerctl                               ; 3193 _ 05, 00000000(d)
        lea     ebx, [eax+4H]                           ; 3198 _ 8D. 58, 04
        call    _get_task_timer                         ; 319B _ E8, 00000000(rel)
        cmp     ebx, eax                                ; 31A0 _ 39. C3
        jnz     ?_159                                   ; 31A2 _ 75, 04
        mov     byte [ebp-9H], 1                        ; 31A4 _ C6. 45, F7, 01
?_159:  mov     byte [ebp-9H], 1                        ; 31A8 _ C6. 45, F7, 01
?_160:  cmp     byte [ebp-9H], 0                        ; 31AC _ 80. 7D, F7, 00
        jz      ?_161                                   ; 31B0 _ 74, 05
        call    _task_switch                            ; 31B2 _ E8, 00000000(rel)
?_161:  add     dword [ebp-10H], 1                      ; 31B7 _ 83. 45, F0, 01
?_162:  cmp     dword [ebp-10H], 499                    ; 31BB _ 81. 7D, F0, 000001F3
        jle     ?_158                                   ; 31C2 _ 0F 8E, FFFFFF45
        nop                                             ; 31C8 _ 90
        add     esp, 36                                 ; 31C9 _ 83. C4, 24
        pop     ebx                                     ; 31CC _ 5B
        pop     ebp                                     ; 31CD _ 5D
        ret                                             ; 31CE _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 31CF _ B8, 00000000(d)
        ret                                             ; 31D4 _ C3
; _getTimerController End of function

        nop                                             ; 31D5 _ 90
        nop                                             ; 31D6 _ 90
        nop                                             ; 31D7 _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 31D8 _ 55
        mov     ebp, esp                                ; 31D9 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 31DB _ 81. 7D, 0C, 000FFFFF
        jbe     ?_163                                   ; 31E2 _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 31E4 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 31EB _ 8B. 45, 0C
        shr     eax, 12                                 ; 31EE _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 31F1 _ 89. 45, 0C
?_163:  mov     eax, dword [ebp+0CH]                    ; 31F4 _ 8B. 45, 0C
        mov     edx, eax                                ; 31F7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 31F9 _ 8B. 45, 08
        mov     word [eax], dx                          ; 31FC _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 31FF _ 8B. 45, 10
        mov     edx, eax                                ; 3202 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3204 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 3207 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 320B _ 8B. 45, 10
        sar     eax, 16                                 ; 320E _ C1. F8, 10
        mov     edx, eax                                ; 3211 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3213 _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 3216 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 3219 _ 8B. 45, 14
        mov     edx, eax                                ; 321C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 321E _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 3221 _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 3224 _ 8B. 45, 0C
        shr     eax, 16                                 ; 3227 _ C1. E8, 10
        and     eax, 0FH                                ; 322A _ 83. E0, 0F
        mov     edx, eax                                ; 322D _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 322F _ 8B. 45, 14
        sar     eax, 8                                  ; 3232 _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 3235 _ 83. E0, F0
        or      eax, edx                                ; 3238 _ 09. D0
        mov     edx, eax                                ; 323A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 323C _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 323F _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 3242 _ 8B. 45, 10
        shr     eax, 24                                 ; 3245 _ C1. E8, 18
        mov     edx, eax                                ; 3248 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 324A _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 324D _ 88. 50, 07
        nop                                             ; 3250 _ 90
        pop     ebp                                     ; 3251 _ 5D
        ret                                             ; 3252 _ C3

_task_init:; Function begin
        push    ebp                                     ; 3253 _ 55
        mov     ebp, esp                                ; 3254 _ 89. E5
        sub     esp, 40                                 ; 3256 _ 83. EC, 28
        call    _get_addr_gdt                           ; 3259 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 325E _ 89. 45, F0
        mov     dword [esp+4H], 240                     ; 3261 _ C7. 44 24, 04, 000000F0
        mov     eax, dword [ebp+8H]                     ; 3269 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 326C _ 89. 04 24
        call    _memman_alloc_4k                        ; 326F _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3274 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3279 _ C7. 45, F4, 00000000
        jmp     ?_165                                   ; 3280 _ EB, 7F

?_164:  mov     edx, dword [_taskctl]                   ; 3282 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3288 _ 8B. 45, F4
        imul    eax, eax, 112                           ; 328B _ 6B. C0, 70
        add     eax, edx                                ; 328E _ 01. D0
        add     eax, 20                                 ; 3290 _ 83. C0, 14
        mov     dword [eax], 0                          ; 3293 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3299 _ 8B. 45, F4
        add     eax, 7                                  ; 329C _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 329F _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 32A5 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 32AC _ 8B. 45, F4
        imul    eax, eax, 112                           ; 32AF _ 6B. C0, 70
        add     eax, ecx                                ; 32B2 _ 01. C8
        add     eax, 16                                 ; 32B4 _ 83. C0, 10
        mov     dword [eax], edx                        ; 32B7 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 32B9 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 32BF _ 8B. 45, F4
        imul    eax, eax, 112                           ; 32C2 _ 6B. C0, 70
        add     eax, 16                                 ; 32C5 _ 83. C0, 10
        add     eax, edx                                ; 32C8 _ 01. D0
        add     eax, 8                                  ; 32CA _ 83. C0, 08
        mov     ecx, eax                                ; 32CD _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 32CF _ 8B. 45, F4
        add     eax, 7                                  ; 32D2 _ 83. C0, 07
        lea     edx, [eax*8]                            ; 32D5 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 32DC _ 8B. 45, F0
        add     eax, edx                                ; 32DF _ 01. D0
        mov     dword [esp+0CH], 137                    ; 32E1 _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 32E9 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 32ED _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 32F5 _ 89. 04 24
        call    _set_segmdesc                           ; 32F8 _ E8, FFFFFEDB
        add     dword [ebp-0CH], 1                      ; 32FD _ 83. 45, F4, 01
?_165:  cmp     dword [ebp-0CH], 1                      ; 3301 _ 83. 7D, F4, 01
        jle     ?_164                                   ; 3305 _ 0F 8E, FFFFFF77
        call    _task_alloc                             ; 330B _ E8, 00000060
        mov     dword [ebp-14H], eax                    ; 3310 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 3313 _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 3316 _ C7. 40, 04, 00000002
        mov     eax, dword [_taskctl]                   ; 331D _ A1, 00000004(d)
        mov     dword [eax], 1                          ; 3322 _ C7. 00, 00000001
        mov     eax, dword [_taskctl]                   ; 3328 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 332D _ C7. 40, 04, 00000000
        mov     eax, dword [_taskctl]                   ; 3334 _ A1, 00000004(d)
        mov     edx, dword [ebp-14H]                    ; 3339 _ 8B. 55, EC
        mov     dword [eax+8H], edx                     ; 333C _ 89. 50, 08
        mov     eax, dword [ebp-14H]                    ; 333F _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 3342 _ 8B. 00
        mov     dword [esp], eax                        ; 3344 _ 89. 04 24
        call    _load_tr                                ; 3347 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 334C _ E8, 00000000(rel)
        mov     dword [_timerctl], eax                       ; 3351 _ A3, 00000000(d)
        mov     eax, dword [_timerctl]                       ; 3356 _ A1, 00000000(d)
        mov     dword [esp+4H], 100                     ; 335B _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 3363 _ 89. 04 24
        call    _timer_settime                          ; 3366 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 336B _ 8B. 45, EC
        leave                                           ; 336E _ C9
        ret                                             ; 336F _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 3370 _ 55
        mov     ebp, esp                                ; 3371 _ 89. E5
        sub     esp, 16                                 ; 3373 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3376 _ C7. 45, FC, 00000000
        jmp     ?_168                                   ; 337D _ E9, 000000DF

?_166:  mov     edx, dword [_taskctl]                   ; 3382 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3388 _ 8B. 45, FC
        imul    eax, eax, 112                           ; 338B _ 6B. C0, 70
        add     eax, edx                                ; 338E _ 01. D0
        add     eax, 20                                 ; 3390 _ 83. C0, 14
        mov     eax, dword [eax]                        ; 3393 _ 8B. 00
        test    eax, eax                                ; 3395 _ 85. C0
        jne     ?_167                                   ; 3397 _ 0F 85, 000000C0
        mov     edx, dword [_taskctl]                   ; 339D _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 33A3 _ 8B. 45, FC
        imul    eax, eax, 112                           ; 33A6 _ 6B. C0, 70
        add     eax, 16                                 ; 33A9 _ 83. C0, 10
        add     eax, edx                                ; 33AC _ 01. D0
        mov     dword [ebp-8H], eax                     ; 33AE _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 33B1 _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 33B4 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 33BB _ 8B. 45, F8
        mov     dword [eax+2CH], 514                    ; 33BE _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-8H]                     ; 33C5 _ 8B. 45, F8
        mov     dword [eax+30H], 0                      ; 33C8 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-8H]                     ; 33CF _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 33D2 _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 33D9 _ 8B. 45, F8
        mov     dword [eax+38H], 0                      ; 33DC _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-8H]                     ; 33E3 _ 8B. 45, F8
        mov     dword [eax+3CH], 0                      ; 33E6 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-8H]                     ; 33ED _ 8B. 45, F8
        mov     dword [eax+44H], 0                      ; 33F0 _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 33F7 _ 8B. 45, FC
        add     eax, 1                                  ; 33FA _ 83. C0, 01
        shl     eax, 9                                  ; 33FD _ C1. E0, 09
        mov     edx, eax                                ; 3400 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 3402 _ 8B. 45, F8
        mov     dword [eax+40H], edx                    ; 3405 _ 89. 50, 40
        mov     eax, dword [ebp-8H]                     ; 3408 _ 8B. 45, F8
        mov     dword [eax+48H], 0                      ; 340B _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-8H]                     ; 3412 _ 8B. 45, F8
        mov     dword [eax+4CH], 0                      ; 3415 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 341C _ 8B. 45, F8
        mov     dword [eax+50H], 0                      ; 341F _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 3426 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 3429 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3430 _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 3433 _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 343A _ 8B. 45, F8
        mov     dword [eax+64H], 0                      ; 343D _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-8H]                     ; 3444 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 3447 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-8H]                     ; 344E _ 8B. 45, F8
        mov     dword [eax+6CH], 1073741824             ; 3451 _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-8H]                     ; 3458 _ 8B. 45, F8
        jmp     ?_169                                   ; 345B _ EB, 13

?_167:  add     dword [ebp-4H], 1                       ; 345D _ 83. 45, FC, 01
?_168:  cmp     dword [ebp-4H], 1                       ; 3461 _ 83. 7D, FC, 01
        jle     ?_166                                   ; 3465 _ 0F 8E, FFFFFF17
        mov     eax, 0                                  ; 346B _ B8, 00000000
?_169:  leave                                           ; 3470 _ C9
        ret                                             ; 3471 _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 3472 _ 55
        mov     ebp, esp                                ; 3473 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3475 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3478 _ C7. 40, 04, 00000002
        mov     eax, dword [_taskctl]                   ; 347F _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 3484 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx]                        ; 348A _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 348C _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 348F _ 89. 4C 90, 08
        mov     eax, dword [_taskctl]                   ; 3493 _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3498 _ 8B. 10
        add     edx, 1                                  ; 349A _ 83. C2, 01
        mov     dword [eax], edx                        ; 349D _ 89. 10
        nop                                             ; 349F _ 90
        pop     ebp                                     ; 34A0 _ 5D
        ret                                             ; 34A1 _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 34A2 _ 55
        mov     ebp, esp                                ; 34A3 _ 89. E5
        sub     esp, 24                                 ; 34A5 _ 83. EC, 18
        mov     eax, dword [_timerctl]                       ; 34A8 _ A1, 00000000(d)
        mov     dword [esp+4H], 100                     ; 34AD _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 34B5 _ 89. 04 24
        call    _timer_settime                          ; 34B8 _ E8, 00000000(rel)
        mov     eax, dword [_taskctl]                   ; 34BD _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 34C2 _ 8B. 00
        cmp     eax, 1                                  ; 34C4 _ 83. F8, 01
        jle     ?_171                                   ; 34C7 _ 7E, 52
        mov     eax, dword [_taskctl]                   ; 34C9 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 34CE _ 8B. 50, 04
        add     edx, 1                                  ; 34D1 _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 34D4 _ 89. 50, 04
        mov     eax, dword [_taskctl]                   ; 34D7 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 34DC _ 8B. 50, 04
        mov     eax, dword [_taskctl]                   ; 34DF _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 34E4 _ 8B. 00
        cmp     edx, eax                                ; 34E6 _ 39. C2
        jnz     ?_170                                   ; 34E8 _ 75, 0C
        mov     eax, dword [_taskctl]                   ; 34EA _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 34EF _ C7. 40, 04, 00000000
?_170:  mov     eax, dword [_taskctl]                   ; 34F6 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 34FB _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 3501 _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 3504 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 3508 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 350A _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 350E _ C7. 04 24, 00000000
        call    _farjmp                                 ; 3515 _ E8, 00000000(rel)
        nop                                             ; 351A _ 90
?_171:  nop                                             ; 351B _ 90
        leave                                           ; 351C _ C9
        ret                                             ; 351D _ C3
; _task_switch End of function

_get_task_timer:; Function begin
        mov     eax, dword [_timerctl]                       ; 351E _ A1, 00000000(d)
        ret                                             ; 3523 _ C3
; _get_task_timer End of function



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_172:  db 00H                                          ; 0006 _ .

?_173:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
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

_table_rgb.2309:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2356:                                           ; byte
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

_closebtn.2468:                                         ; byte
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



?_174:                                                  ; byte
        db 6DH, 65H, 73H, 73H, 61H, 67H, 65H, 00H       ; 0000 _ message.

?_175:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_176:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_177:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0011 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0019 _ sk b.

?_178:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_179:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ page is:
        db 20H, 00H                                     ; 0028 _  .

?_180:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0032 _ L: .

?_181:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0036 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003E _ H: .

?_182:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0042 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 004A _ w: .

?_183:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004E _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0056 _ gh: .

?_184:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H, 00H       ; 005B _ type: ..
        db 00H                                          ; 0063 _ .



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

?_185:  resw    1                                       ; 0010

?_186:  resw    1                                       ; 0012

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

?_187:  resd    1                                       ; 010C

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

_task_a.2254:                                           ; dword
        resd    1                                       ; 0260

_task_b.2255:                                           ; dword
        resd    1                                       ; 0264

_str.2404:                                              ; byte
        resb    1                                       ; 0268

?_188:  resb    9                                       ; 0269

?_189:  resb    14                                      ; 0272

_timerctl:                                              ; byte
        resb    8032                                    ; 0280

_task_timer:                                            ; byte
        resb    4                                       ; 21E0

_taskctl:                                               ; byte
        resb    4                                       ; 21E4


