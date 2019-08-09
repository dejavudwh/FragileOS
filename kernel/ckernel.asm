; Disassembly of file: ckernel.o
; Fri Aug  9 16:11:40 2019
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
        call    _initBootInfo                           ; 0012 _ E8, 00000EA4
        mov     eax, dword [_bootInfo]                  ; 0017 _ A1, 0000000C(d)
        mov     dword [ebp-20H], eax                    ; 001C _ 89. 45, E0
        movzx   eax, word [?_195]                       ; 001F _ 0F B7. 05, 00000010(d)
        cwde                                            ; 0026 _ 98
        mov     dword [_xsize], eax                     ; 0027 _ A3, 00000140(d)
        movzx   eax, word [?_196]                       ; 002C _ 0F B7. 05, 00000012(d)
        cwde                                            ; 0033 _ 98
        mov     dword [_ysize], eax                     ; 0034 _ A3, 00000144(d)
        call    _init_pit                               ; 0039 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 003E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _timerbuf               ; 0046 _ C7. 44 24, 08, 0000012C(d)
        mov     dword [esp+4H], 8                       ; 004E _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0056 _ C7. 04 24, 00000110(d)
        call    _fifo8_init                             ; 005D _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0062 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0067 _ 89. 45, DC
        mov     dword [esp+8H], 10                      ; 006A _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 0072 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-24H]                    ; 007A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 007D _ 89. 04 24
        call    _timer_init                             ; 0080 _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0085 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-24H]                    ; 008D _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0090 _ 89. 04 24
        call    _timer_settime                          ; 0093 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0098 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 009D _ 89. 45, D8
        mov     dword [esp+8H], 2                       ; 00A0 _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00A8 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-28H]                    ; 00B0 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00B3 _ 89. 04 24
        call    _timer_init                             ; 00B6 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00BB _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-28H]                    ; 00C3 _ 8B. 45, D8
        mov     dword [esp], eax                        ; 00C6 _ 89. 04 24
        call    _timer_settime                          ; 00C9 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00CE _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 00D3 _ 89. 45, D4
        mov     dword [esp+8H], 1                       ; 00D6 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00DE _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-2CH]                    ; 00E6 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00E9 _ 89. 04 24
        call    _timer_init                             ; 00EC _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00F1 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 00F9 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00FC _ 89. 04 24
        call    _timer_settime                          ; 00FF _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0104 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _keybuf                 ; 010C _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 32                      ; 0114 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 011C _ C7. 04 24, 00000014(d)
        call    _fifo8_init                             ; 0123 _ E8, 00000000(rel)
        mov     dword [esp+0CH], 0                      ; 0128 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], _mousebuf               ; 0130 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 128                     ; 0138 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0140 _ C7. 04 24, 00000030(d)
        call    _fifo8_init                             ; 0147 _ E8, 00000000(rel)
        call    _init_palette                           ; 014C _ E8, 00000E2D
        call    _init_keyboard                          ; 0151 _ E8, 00001396
        call    _get_memory_block_count                 ; 0156 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 015B _ 89. 45, D0
        call    _get_addr_buffer                        ; 015E _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 0163 _ 89. 45, CC
        mov     eax, dword [_memman]                    ; 0166 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 016B _ 89. 04 24
        call    _memman_init                            ; 016E _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0173 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 0178 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 0180 _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 0188 _ 89. 04 24
        call    _memman_free                            ; 018B _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0190 _ 8B. 0D, 00000144(d)
        mov     edx, dword [_xsize]                     ; 0196 _ 8B. 15, 00000140(d)
        mov     eax, dword [_memman]                    ; 019C _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 01A1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 01A5 _ 89. 54 24, 08
        mov     edx, dword [ebp-20H]                    ; 01A9 _ 8B. 55, E0
        mov     dword [esp+4H], edx                     ; 01AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01B0 _ 89. 04 24
        call    _shtctl_init                            ; 01B3 _ E8, 00000000(rel)
        mov     dword [_shtctl], eax                    ; 01B8 _ A3, 00000000(d)
        mov     eax, dword [_shtctl]                    ; 01BD _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 01C2 _ 89. 04 24
        call    _sheet_alloc                            ; 01C5 _ E8, 00000000(rel)
        mov     dword [_sht_back], eax                  ; 01CA _ A3, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 01CF _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 01D4 _ 89. 04 24
        call    _sheet_alloc                            ; 01D7 _ E8, 00000000(rel)
        mov     dword [_sht_mouse], eax                 ; 01DC _ A3, 00000008(d)
        mov     edx, dword [_xsize]                     ; 01E1 _ 8B. 15, 00000140(d)
        mov     eax, dword [_ysize]                     ; 01E7 _ A1, 00000144(d)
        imul    eax, edx                                ; 01EC _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01EF _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01F5 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01F9 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01FC _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 0201 _ A3, 00000148(d)
        mov     ebx, dword [_ysize]                     ; 0206 _ 8B. 1D, 00000144(d)
        mov     ecx, dword [_xsize]                     ; 020C _ 8B. 0D, 00000140(d)
        mov     edx, dword [_buf_back]                  ; 0212 _ 8B. 15, 00000148(d)
        mov     eax, dword [_sht_back]                  ; 0218 _ A1, 00000004(d)
        mov     dword [esp+10H], 99                     ; 021D _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ebx                    ; 0225 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0229 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 022D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0231 _ 89. 04 24
        call    _sheet_setbuf                           ; 0234 _ E8, 00000000(rel)
        mov     eax, dword [_sht_mouse]                 ; 0239 _ A1, 00000008(d)
        mov     dword [esp+10H], 99                     ; 023E _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0246 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 024E _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0256 _ C7. 44 24, 04, 00000160(d)
        mov     dword [esp], eax                        ; 025E _ 89. 04 24
        call    _sheet_setbuf                           ; 0261 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0266 _ 8B. 0D, 00000144(d)
        mov     edx, dword [_xsize]                     ; 026C _ 8B. 15, 00000140(d)
        mov     eax, dword [_buf_back]                  ; 0272 _ A1, 00000148(d)
        mov     dword [esp+8H], ecx                     ; 0277 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 027B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 027F _ 89. 04 24
        call    _init_screen8                           ; 0282 _ E8, 0000076C
        mov     dword [esp+4H], 99                      ; 0287 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 028F _ C7. 04 24, 00000160(d)
        call    _init_mouse_cursor                      ; 0296 _ E8, 00000F7F
        mov     edx, dword [_sht_back]                  ; 029B _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 02A1 _ A1, 00000000(d)
        mov     dword [esp+0CH], 0                      ; 02A6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 02AE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 02B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 02BA _ 89. 04 24
        call    _sheet_slide                            ; 02BD _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02C2 _ A1, 00000140(d)
        sub     eax, 16                                 ; 02C7 _ 83. E8, 10
        mov     edx, eax                                ; 02CA _ 89. C2
        shr     edx, 31                                 ; 02CC _ C1. EA, 1F
        add     eax, edx                                ; 02CF _ 01. D0
        sar     eax, 1                                  ; 02D1 _ D1. F8
        mov     dword [_mx], eax                        ; 02D3 _ A3, 00000138(d)
        mov     eax, dword [_ysize]                     ; 02D8 _ A1, 00000144(d)
        sub     eax, 44                                 ; 02DD _ 83. E8, 2C
        mov     edx, eax                                ; 02E0 _ 89. C2
        shr     edx, 31                                 ; 02E2 _ C1. EA, 1F
        add     eax, edx                                ; 02E5 _ 01. D0
        sar     eax, 1                                  ; 02E7 _ D1. F8
        mov     dword [_my], eax                        ; 02E9 _ A3, 0000013C(d)
        mov     ebx, dword [_my]                        ; 02EE _ 8B. 1D, 0000013C(d)
        mov     ecx, dword [_mx]                        ; 02F4 _ 8B. 0D, 00000138(d)
        mov     edx, dword [_sht_mouse]                 ; 02FA _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0300 _ A1, 00000000(d)
        mov     dword [esp+0CH], ebx                    ; 0305 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0309 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 030D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0311 _ 89. 04 24
        call    _sheet_slide                            ; 0314 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 0319 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 0320 _ C7. 45, F0, 00000007
        mov     eax, dword [_shtctl]                    ; 0327 _ A1, 00000000(d)
        mov     dword [esp+4H], ?_184                   ; 032C _ C7. 44 24, 04, 00000000(d)
        mov     dword [esp], eax                        ; 0334 _ 89. 04 24
        call    _message_box                            ; 0337 _ E8, 000016CB
        mov     dword [_shtMsgBox], eax                 ; 033C _ A3, 00000134(d)
        mov     edx, dword [_sht_back]                  ; 0341 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0347 _ A1, 00000000(d)
        mov     dword [esp+8H], 0                       ; 034C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0354 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0358 _ 89. 04 24
        call    _sheet_updown                           ; 035B _ E8, 00000000(rel)
        mov     edx, dword [_sht_mouse]                 ; 0360 _ 8B. 15, 00000008(d)
        mov     eax, dword [_shtctl]                    ; 0366 _ A1, 00000000(d)
        mov     dword [esp+8H], 100                     ; 036B _ C7. 44 24, 08, 00000064
        mov     dword [esp+4H], edx                     ; 0373 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0377 _ 89. 04 24
        call    _sheet_updown                           ; 037A _ E8, 00000000(rel)
        call    _io_sti                                 ; 037F _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0384 _ C7. 04 24, 00000100(d)
        call    _enable_mouse                           ; 038B _ E8, 00001197
        call    _get_addr_code32                        ; 0390 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0395 _ 89. 45, C8
        call    _get_addr_gdt                           ; 0398 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 039D _ 89. 45, C4
        mov     eax, dword [_memman]                    ; 03A0 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 03A5 _ 89. 04 24
        call    _task_init                              ; 03A8 _ E8, 00000000(rel)
        mov     dword [_task_a.2258], eax               ; 03AD _ A3, 00000260(d)
        mov     eax, dword [_task_a.2258]               ; 03B2 _ A1, 00000260(d)
        mov     dword [?_197], eax                      ; 03B7 _ A3, 0000002C(d)
        call    _task_alloc                             ; 03BC _ E8, 00000000(rel)
        mov     dword [_task_b.2259], eax               ; 03C1 _ A3, 00000264(d)
        mov     eax, dword [_task_b.2259]               ; 03C6 _ A1, 00000264(d)
        mov     dword [eax+68H], 0                      ; 03CB _ C7. 40, 68, 00000000
        mov     eax, dword [_task_b.2259]               ; 03D2 _ A1, 00000264(d)
        mov     dword [eax+6CH], 1073741824             ; 03D7 _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-38H]                    ; 03DE _ 8B. 45, C8
        neg     eax                                     ; 03E1 _ F7. D8
        lea     edx, [_task_b_func+eax]                 ; 03E3 _ 8D. 90, 000008C4(d)
        mov     eax, dword [_task_b.2259]               ; 03E9 _ A1, 00000264(d)
        mov     dword [eax+28H], edx                    ; 03EE _ 89. 50, 28
        mov     eax, dword [_task_b.2259]               ; 03F1 _ A1, 00000264(d)
        mov     dword [eax+50H], 0                      ; 03F6 _ C7. 40, 50, 00000000
        mov     eax, dword [_task_b.2259]               ; 03FD _ A1, 00000264(d)
        mov     dword [eax+54H], 8                      ; 0402 _ C7. 40, 54, 00000008
        mov     eax, dword [_task_b.2259]               ; 0409 _ A1, 00000264(d)
        mov     dword [eax+58H], 32                     ; 040E _ C7. 40, 58, 00000020
        mov     eax, dword [_task_b.2259]               ; 0415 _ A1, 00000264(d)
        mov     dword [eax+5CH], 24                     ; 041A _ C7. 40, 5C, 00000018
        mov     eax, dword [_task_b.2259]               ; 0421 _ A1, 00000264(d)
        mov     dword [eax+60H], 0                      ; 0426 _ C7. 40, 60, 00000000
        mov     eax, dword [_task_b.2259]               ; 042D _ A1, 00000264(d)
        mov     dword [eax+64H], 16                     ; 0432 _ C7. 40, 64, 00000010
        mov     eax, dword [_task_b.2259]               ; 0439 _ A1, 00000264(d)
        mov     dword [esp], eax                        ; 043E _ 89. 04 24
        call    _task_run                               ; 0441 _ E8, 00000000(rel)
        mov     dword [ebp-40H], 0                      ; 0446 _ C7. 45, C0, 00000000
        mov     dword [ebp-14H], 0                      ; 044D _ C7. 45, EC, 00000000
        mov     dword [ebp-44H], 0                      ; 0454 _ C7. 45, BC, 00000000
        mov     dword [ebp-18H], 0                      ; 045B _ C7. 45, E8, 00000000
        mov     dword [ebp-1CH], 0                      ; 0462 _ C7. 45, E4, 00000000
?_001:  call    _io_cli                                 ; 0469 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 046E _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 0475 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 047A _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 047C _ C7. 04 24, 00000030(d)
        call    _fifo8_status                           ; 0483 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0488 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 048A _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 0491 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0496 _ 01. D8
        test    eax, eax                                ; 0498 _ 85. C0
        jnz     ?_002                                   ; 049A _ 75, 07
        call    _io_sti                                 ; 049C _ E8, 00000000(rel)
        jmp     ?_001                                   ; 04A1 _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 04A3 _ C7. 04 24, 00000014(d)
        call    _fifo8_status                           ; 04AA _ E8, 00000000(rel)
        test    eax, eax                                ; 04AF _ 85. C0
        je      ?_004                                   ; 04B1 _ 0F 84, 00000206
        call    _io_sti                                 ; 04B7 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04BC _ C7. 04 24, 00000014(d)
        call    _fifo8_get                              ; 04C3 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 04C8 _ 89. 45, C0
        cmp     dword [ebp-40H], 28                     ; 04CB _ 83. 7D, C0, 1C
        jnz     ?_003                                   ; 04CF _ 75, 6F
        mov     esi, dword [_xsize]                     ; 04D1 _ 8B. 35, 00000140(d)
        mov     ebx, dword [_buf_back]                  ; 04D7 _ 8B. 1D, 00000148(d)
        mov     edx, dword [ebp-14H]                    ; 04DD _ 8B. 55, EC
        mov     eax, edx                                ; 04E0 _ 89. D0
        shl     eax, 2                                  ; 04E2 _ C1. E0, 02
        add     eax, edx                                ; 04E5 _ 01. D0
        shl     eax, 2                                  ; 04E7 _ C1. E0, 02
        mov     edx, eax                                ; 04EA _ 89. C2
        mov     eax, dword [ebp-34H]                    ; 04EC _ 8B. 45, CC
        lea     ecx, [edx+eax]                          ; 04EF _ 8D. 0C 02
        mov     edx, dword [_sht_back]                  ; 04F2 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 04F8 _ A1, 00000000(d)
        mov     dword [esp+18H], 7                      ; 04FD _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], esi                    ; 0505 _ 89. 74 24, 14
        mov     esi, dword [ebp-14H]                    ; 0509 _ 8B. 75, EC
        mov     dword [esp+10H], esi                    ; 050C _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 0510 _ 89. 5C 24, 0C
        mov     dword [esp+8H], ecx                     ; 0514 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 0518 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 051C _ 89. 04 24
        call    _showMemoryInfo                         ; 051F _ E8, 000011D8
        add     dword [ebp-14H], 1                      ; 0524 _ 83. 45, EC, 01
        mov     eax, dword [ebp-14H]                    ; 0528 _ 8B. 45, EC
        cmp     eax, dword [ebp-30H]                    ; 052B _ 3B. 45, D0
        jle     ?_001                                   ; 052E _ 0F 8E, FFFFFF35
        mov     dword [ebp-14H], 0                      ; 0534 _ C7. 45, EC, 00000000
        jmp     ?_001                                   ; 053B _ E9, FFFFFF29

?_003:  mov     eax, dword [ebp-40H]                    ; 0540 _ 8B. 45, C0
        add     eax, _keytable                          ; 0543 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0548 _ 0F B6. 00
        test    al, al                                  ; 054B _ 84. C0
        je      ?_001                                   ; 054D _ 0F 84, FFFFFF16
        cmp     dword [ebp-0CH], 143                    ; 0553 _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 055A _ 0F 8F, FFFFFF09
        mov     eax, dword [ebp-0CH]                    ; 0560 _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 0563 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 0566 _ A1, 00000134(d)
        mov     edx, dword [eax+4H]                     ; 056B _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 056E _ A1, 00000134(d)
        mov     eax, dword [eax]                        ; 0573 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 0575 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 057D _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 0581 _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 0589 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 058C _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 0590 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 0598 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 059C _ 89. 04 24
        call    _boxfill8                               ; 059F _ E8, 00000AA5
        mov     eax, dword [ebp-0CH]                    ; 05A4 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 05A7 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 05AA _ 8B. 15, 00000134(d)
        mov     eax, dword [_shtctl]                    ; 05B0 _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 05B5 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 05BD _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 05C1 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 05C9 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 05CC _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 05D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05D4 _ 89. 04 24
        call    _sheet_refresh                          ; 05D7 _ E8, 00000000(rel)
        mov     eax, dword [ebp-40H]                    ; 05DC _ 8B. 45, C0
        add     eax, _keytable                          ; 05DF _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 05E4 _ 0F B6. 00
        mov     byte [ebp-0B2H], al                     ; 05E7 _ 88. 85, FFFFFF4E
        mov     byte [ebp-0B1H], 0                      ; 05ED _ C6. 85, FFFFFF4F, 00
        mov     ecx, dword [_shtMsgBox]                 ; 05F4 _ 8B. 0D, 00000134(d)
        mov     edx, dword [_shtctl]                    ; 05FA _ 8B. 15, 00000000(d)
        lea     eax, [ebp-0B2H]                         ; 0600 _ 8D. 85, FFFFFF4E
        mov     dword [esp+14H], eax                    ; 0606 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 060A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 0612 _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 061A _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 061D _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0621 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0625 _ 89. 14 24
        call    _showString                             ; 0628 _ E8, 000008AF
        add     dword [ebp-0CH], 8                      ; 062D _ 83. 45, F4, 08
        mov     dword [ebp-1CH], 1                      ; 0631 _ C7. 45, E4, 00000001
        mov     eax, dword [ebp-0CH]                    ; 0638 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 063B _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 063E _ 8B. 45, F0
        movzx   eax, al                                 ; 0641 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 0644 _ 8B. 15, 00000134(d)
        mov     ecx, dword [edx+4H]                     ; 064A _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 064D _ 8B. 15, 00000134(d)
        mov     edx, dword [edx]                        ; 0653 _ 8B. 12
        mov     dword [esp+18H], 43                     ; 0655 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 065D _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0661 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0669 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 066C _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0670 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0674 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0678 _ 89. 14 24
        call    _boxfill8                               ; 067B _ E8, 000009C9
        mov     eax, dword [ebp-0CH]                    ; 0680 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 0683 _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 0686 _ 8B. 15, 00000134(d)
        mov     eax, dword [_shtctl]                    ; 068C _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 0691 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 0699 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 069D _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 06A5 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 06A8 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06B0 _ 89. 04 24
        call    _sheet_refresh                          ; 06B3 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 06B8 _ E9, FFFFFDAC

?_004:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 06BD _ C7. 04 24, 00000030(d)
        call    _fifo8_status                           ; 06C4 _ E8, 00000000(rel)
        test    eax, eax                                ; 06C9 _ 85. C0
        jz      ?_005                                   ; 06CB _ 74, 26
        mov     ecx, dword [_sht_mouse]                 ; 06CD _ 8B. 0D, 00000008(d)
        mov     edx, dword [_sht_back]                  ; 06D3 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 06D9 _ A1, 00000000(d)
        mov     dword [esp+8H], ecx                     ; 06DE _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 06E2 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 06E6 _ 89. 04 24
        call    _show_mouse_info                        ; 06E9 _ E8, 00000715
        jmp     ?_001                                   ; 06EE _ E9, FFFFFD76

?_005:  ; Local function
        mov     dword [esp], _timerinfo                 ; 06F3 _ C7. 04 24, 00000110(d)
        call    _fifo8_status                           ; 06FA _ E8, 00000000(rel)
        test    eax, eax                                ; 06FF _ 85. C0
        je      ?_001                                   ; 0701 _ 0F 84, FFFFFD62
        call    _io_sti                                 ; 0707 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 070C _ C7. 04 24, 00000110(d)
        call    _fifo8_get                              ; 0713 _ E8, 00000000(rel)
        mov     dword [ebp-48H], eax                    ; 0718 _ 89. 45, B8
        cmp     dword [ebp-48H], 10                     ; 071B _ 83. 7D, B8, 0A
        jnz     ?_006                                   ; 071F _ 75, 7D
        mov     edx, dword [_sht_back]                  ; 0721 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 0727 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_185                  ; 072C _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 0734 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 144                    ; 073C _ C7. 44 24, 0C, 00000090
        mov     ecx, dword [ebp-18H]                    ; 0744 _ 8B. 4D, E8
        mov     dword [esp+8H], ecx                     ; 0747 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 074B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 074F _ 89. 04 24
        call    _showString                             ; 0752 _ E8, 00000785
        mov     dword [esp+4H], 100                     ; 0757 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-24H]                    ; 075F _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0762 _ 89. 04 24
        call    _timer_settime                          ; 0765 _ E8, 00000000(rel)
        add     dword [ebp-18H], 8                      ; 076A _ 83. 45, E8, 08
        cmp     dword [ebp-18H], 40                     ; 076E _ 83. 7D, E8, 28
        jle     ?_001                                   ; 0772 _ 0F 8E, FFFFFCF1
        cmp     dword [ebp-1CH], 0                      ; 0778 _ 83. 7D, E4, 00
        jne     ?_001                                   ; 077C _ 0F 85, FFFFFCE7
        call    _io_cli                                 ; 0782 _ E8, 00000000(rel)
        mov     eax, dword [_task_a.2258]               ; 0787 _ A1, 00000260(d)
        mov     dword [esp], eax                        ; 078C _ 89. 04 24
        call    _task_sleep                             ; 078F _ E8, 00000000(rel)
        call    _io_sti                                 ; 0794 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0799 _ E9, FFFFFCCB

?_006:  ; Local function
        cmp     dword [ebp-48H], 2                      ; 079E _ 83. 7D, B8, 02
        jnz     ?_007                                   ; 07A2 _ 75, 3C
        mov     edx, dword [_sht_back]                  ; 07A4 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 07AA _ A1, 00000000(d)
        mov     dword [esp+14H], ?_186                  ; 07AF _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 07B7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 32                     ; 07BF _ C7. 44 24, 0C, 00000020
        mov     dword [esp+8H], 0                       ; 07C7 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 07CF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07D3 _ 89. 04 24
        call    _showString                             ; 07D6 _ E8, 00000701
        jmp     ?_001                                   ; 07DB _ E9, FFFFFC89

?_007:  ; Local function
        cmp     dword [ebp-48H], 0                      ; 07E0 _ 83. 7D, B8, 00
        jz      ?_008                                   ; 07E4 _ 74, 24
        mov     dword [esp+8H], 0                       ; 07E6 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 07EE _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-2CH]                    ; 07F6 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 07F9 _ 89. 04 24
        call    _timer_init                             ; 07FC _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 0801 _ C7. 45, F0, 00000000
        jmp     ?_009                                   ; 0808 _ EB, 22

?_008:  mov     dword [esp+8H], 1                       ; 080A _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0812 _ C7. 44 24, 04, 00000110(d)
        mov     eax, dword [ebp-2CH]                    ; 081A _ 8B. 45, D4
        mov     dword [esp], eax                        ; 081D _ 89. 04 24
        call    _timer_init                             ; 0820 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 0825 _ C7. 45, F0, 00000007
?_009:  mov     dword [esp+4H], 50                      ; 082C _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-2CH]                    ; 0834 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 0837 _ 89. 04 24
        call    _timer_settime                          ; 083A _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 083F _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 0842 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 0845 _ 8B. 45, F0
        movzx   eax, al                                 ; 0848 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 084B _ 8B. 15, 00000134(d)
        mov     ecx, dword [edx+4H]                     ; 0851 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0854 _ 8B. 15, 00000134(d)
        mov     edx, dword [edx]                        ; 085A _ 8B. 12
        mov     dword [esp+18H], 43                     ; 085C _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0864 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0868 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0870 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0873 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0877 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 087B _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 087F _ 89. 14 24
        call    _boxfill8                               ; 0882 _ E8, 000007C2
        mov     eax, dword [ebp-0CH]                    ; 0887 _ 8B. 45, F4
        lea     ecx, [eax+8H]                           ; 088A _ 8D. 48, 08
        mov     edx, dword [_shtMsgBox]                 ; 088D _ 8B. 15, 00000134(d)
        mov     eax, dword [_shtctl]                    ; 0893 _ A1, 00000000(d)
        mov     dword [esp+14H], 44                     ; 0898 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], ecx                    ; 08A0 _ 89. 4C 24, 10
        mov     dword [esp+0CH], 28                     ; 08A4 _ C7. 44 24, 0C, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 08AC _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 08AF _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 08B3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08B7 _ 89. 04 24
        call    _sheet_refresh                          ; 08BA _ E8, 00000000(rel)
        jmp     ?_001                                   ; 08BF _ E9, FFFFFBA5

_task_b_func:; Function begin
        push    ebp                                     ; 08C4 _ 55
        mov     ebp, esp                                ; 08C5 _ 89. E5
        sub     esp, 88                                 ; 08C7 _ 83. EC, 58
        mov     edx, dword [_sht_back]                  ; 08CA _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 08D0 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_187                  ; 08D5 _ C7. 44 24, 14, 00000011(d)
        mov     dword [esp+10H], 7                      ; 08DD _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 160                    ; 08E5 _ C7. 44 24, 0C, 000000A0
        mov     dword [esp+8H], 0                       ; 08ED _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 08F5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 08F9 _ 89. 04 24
        call    _showString                             ; 08FC _ E8, 000005DB
        mov     dword [ebp-10H], 0                      ; 0901 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 0                      ; 0908 _ C7. 45, EC, 00000000
        mov     dword [esp+0CH], 0                      ; 090F _ C7. 44 24, 0C, 00000000
        lea     eax, [ebp-38H]                          ; 0917 _ 8D. 45, C8
        mov     dword [esp+8H], eax                     ; 091A _ 89. 44 24, 08
        mov     dword [esp+4H], 8                       ; 091E _ C7. 44 24, 04, 00000008
        lea     eax, [ebp-30H]                          ; 0926 _ 8D. 45, D0
        mov     dword [esp], eax                        ; 0929 _ 89. 04 24
        call    _fifo8_init                             ; 092C _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0931 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0936 _ 89. 45, F0
        mov     dword [esp+8H], 123                     ; 0939 _ C7. 44 24, 08, 0000007B
        lea     eax, [ebp-30H]                          ; 0941 _ 8D. 45, D0
        mov     dword [esp+4H], eax                     ; 0944 _ 89. 44 24, 04
        mov     eax, dword [ebp-10H]                    ; 0948 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 094B _ 89. 04 24
        call    _timer_init                             ; 094E _ E8, 00000000(rel)
        mov     dword [esp+4H], 100                     ; 0953 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-10H]                    ; 095B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 095E _ 89. 04 24
        call    _timer_settime                          ; 0961 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 0                      ; 0966 _ C7. 45, F4, 00000000
?_010:  call    _io_cli                                 ; 096D _ E8, 00000000(rel)
        lea     eax, [ebp-30H]                          ; 0972 _ 8D. 45, D0
        mov     dword [esp], eax                        ; 0975 _ 89. 04 24
        call    _fifo8_status                           ; 0978 _ E8, 00000000(rel)
        test    eax, eax                                ; 097D _ 85. C0
        jnz     ?_011                                   ; 097F _ 75, 07
        call    _io_sti                                 ; 0981 _ E8, 00000000(rel)
        jmp     ?_010                                   ; 0986 _ EB, E5
; _task_b_func End of function

?_011:  ; Local function
        lea     eax, [ebp-30H]                          ; 0988 _ 8D. 45, D0
        mov     dword [esp], eax                        ; 098B _ 89. 04 24
        call    _fifo8_get                              ; 098E _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0993 _ 89. 45, EC
        call    _io_sti                                 ; 0996 _ E8, 00000000(rel)
        cmp     dword [ebp-14H], 123                    ; 099B _ 83. 7D, EC, 7B
        jnz     ?_010                                   ; 099F _ 75, CC
        mov     edx, dword [_sht_back]                  ; 09A1 _ 8B. 15, 00000004(d)
        mov     eax, dword [_shtctl]                    ; 09A7 _ A1, 00000000(d)
        mov     dword [esp+14H], ?_188                  ; 09AC _ C7. 44 24, 14, 0000001E(d)
        mov     dword [esp+10H], 7                      ; 09B4 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 192                    ; 09BC _ C7. 44 24, 0C, 000000C0
        mov     ecx, dword [ebp-0CH]                    ; 09C4 _ 8B. 4D, F4
        mov     dword [esp+8H], ecx                     ; 09C7 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 09CB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 09CF _ 89. 04 24
        call    _showString                             ; 09D2 _ E8, 00000505
        mov     dword [esp+4H], 100                     ; 09D7 _ C7. 44 24, 04, 00000064
        mov     eax, dword [ebp-10H]                    ; 09DF _ 8B. 45, F0
        mov     dword [esp], eax                        ; 09E2 _ 89. 04 24
        call    _timer_settime                          ; 09E5 _ E8, 00000000(rel)
        add     dword [ebp-0CH], 8                      ; 09EA _ 83. 45, F4, 08
        jmp     ?_010                                   ; 09EE _ E9, FFFFFF7A

_init_screen8:; Function begin
        push    ebp                                     ; 09F3 _ 55
        mov     ebp, esp                                ; 09F4 _ 89. E5
        push    ebx                                     ; 09F6 _ 53
        sub     esp, 36                                 ; 09F7 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 09FA _ 8B. 45, 10
        lea     edx, [eax-2AH]                          ; 09FD _ 8D. 50, D6
        mov     eax, dword [ebp+0CH]                    ; 0A00 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0A03 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0A06 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0A0A _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0A0E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0A16 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0A1E _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0A26 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A29 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A2D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A30 _ 89. 04 24
        call    _boxfill8                               ; 0A33 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 0A38 _ 8B. 45, 10
        lea     ecx, [eax-29H]                          ; 0A3B _ 8D. 48, D7
        mov     eax, dword [ebp+0CH]                    ; 0A3E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0A41 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0A44 _ 8B. 45, 10
        sub     eax, 41                                 ; 0A47 _ 83. E8, 29
        mov     dword [esp+18H], ecx                    ; 0A4A _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0A4E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A52 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0A56 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0A5E _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0A66 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A69 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A6D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A70 _ 89. 04 24
        call    _boxfill8                               ; 0A73 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0A78 _ 8B. 45, 10
        lea     ecx, [eax-28H]                          ; 0A7B _ 8D. 48, D8
        mov     eax, dword [ebp+0CH]                    ; 0A7E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0A81 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0A84 _ 8B. 45, 10
        sub     eax, 40                                 ; 0A87 _ 83. E8, 28
        mov     dword [esp+18H], ecx                    ; 0A8A _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0A8E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0A92 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0A96 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0A9E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0AA6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AA9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AAD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0AB0 _ 89. 04 24
        call    _boxfill8                               ; 0AB3 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0AB8 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0ABB _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0ABE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0AC1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0AC4 _ 8B. 45, 10
        sub     eax, 39                                 ; 0AC7 _ 83. E8, 27
        mov     dword [esp+18H], ecx                    ; 0ACA _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0ACE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0AD2 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0AD6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0ADE _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0AE6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AE9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AED _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0AF0 _ 89. 04 24
        call    _boxfill8                               ; 0AF3 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0AF8 _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0AFB _ 8D. 50, DB
        mov     eax, dword [ebp+10H]                    ; 0AFE _ 8B. 45, 10
        sub     eax, 37                                 ; 0B01 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0B04 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0B08 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0B10 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0B14 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0B1C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B24 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B27 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B2B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B2E _ 89. 04 24
        call    _boxfill8                               ; 0B31 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 0B36 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0B39 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0B3C _ 8B. 45, 10
        sub     eax, 37                                 ; 0B3F _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0B42 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0B46 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0B4E _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0B52 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0B5A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B62 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B65 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B69 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B6C _ 89. 04 24
        call    _boxfill8                               ; 0B6F _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0B74 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0B77 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0B7A _ 8B. 45, 10
        sub     eax, 4                                  ; 0B7D _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0B80 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0B84 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0B8C _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0B90 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0B98 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0BA0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BA3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BA7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BAA _ 89. 04 24
        call    _boxfill8                               ; 0BAD _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0BB2 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0BB5 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0BB8 _ 8B. 45, 10
        sub     eax, 36                                 ; 0BBB _ 83. E8, 24
        mov     dword [esp+18H], edx                    ; 0BBE _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0BC2 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0BCA _ 89. 44 24, 10
        mov     dword [esp+0CH], 72                     ; 0BCE _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 15                      ; 0BD6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0BDE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BE1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BE5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BE8 _ 89. 04 24
        call    _boxfill8                               ; 0BEB _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0BF0 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0BF3 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0BF6 _ 8B. 45, 10
        sub     eax, 3                                  ; 0BF9 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0BFC _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0C00 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 0C08 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0C0C _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0C14 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0C1C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C1F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C23 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C26 _ 89. 04 24
        call    _boxfill8                               ; 0C29 _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 0C2E _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0C31 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0C34 _ 8B. 45, 10
        sub     eax, 37                                 ; 0C37 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 0C3A _ 89. 54 24, 18
        mov     dword [esp+14H], 73                     ; 0C3E _ C7. 44 24, 14, 00000049
        mov     dword [esp+10H], eax                    ; 0C46 _ 89. 44 24, 10
        mov     dword [esp+0CH], 73                     ; 0C4A _ C7. 44 24, 0C, 00000049
        mov     dword [esp+8H], 0                       ; 0C52 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0C5A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C5D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C61 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C64 _ 89. 04 24
        call    _boxfill8                               ; 0C67 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0C6C _ 8B. 45, 10
        lea     ebx, [eax-25H]                          ; 0C6F _ 8D. 58, DB
        mov     eax, dword [ebp+0CH]                    ; 0C72 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0C75 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0C78 _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0C7B _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 0C7E _ 8B. 45, 0C
        sub     eax, 61                                 ; 0C81 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0C84 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0C88 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0C8C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0C90 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0C94 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0C9C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0C9F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CA3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CA6 _ 89. 04 24
        call    _boxfill8                               ; 0CA9 _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0CAE _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0CB1 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0CB4 _ 8B. 45, 0C
        lea     ecx, [eax-3DH]                          ; 0CB7 _ 8D. 48, C3
        mov     eax, dword [ebp+10H]                    ; 0CBA _ 8B. 45, 10
        lea     edx, [eax-24H]                          ; 0CBD _ 8D. 50, DC
        mov     eax, dword [ebp+0CH]                    ; 0CC0 _ 8B. 45, 0C
        sub     eax, 61                                 ; 0CC3 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0CC6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0CCA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0CCE _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0CD2 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0CD6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0CDE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0CE1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0CE5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0CE8 _ 89. 04 24
        call    _boxfill8                               ; 0CEB _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0CF0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0CF3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0CF6 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0CF9 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0CFC _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0CFF _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0D02 _ 8B. 45, 0C
        sub     eax, 61                                 ; 0D05 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0D08 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D0C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D10 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D14 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0D18 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D20 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D23 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D27 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D2A _ 89. 04 24
        call    _boxfill8                               ; 0D2D _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0D32 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0D35 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0D38 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0D3B _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0D3E _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0D41 _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 0D44 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0D47 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0D4A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0D4E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0D52 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0D56 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0D5A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0D62 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D65 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D69 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D6C _ 89. 04 24
        call    _boxfill8                               ; 0D6F _ E8, 000002D5
        nop                                             ; 0D74 _ 90
        add     esp, 36                                 ; 0D75 _ 83. C4, 24
        pop     ebx                                     ; 0D78 _ 5B
        pop     ebp                                     ; 0D79 _ 5D
        ret                                             ; 0D7A _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0D7B _ 55
        mov     ebp, esp                                ; 0D7C _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0D7E _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0D81 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0D84 _ A1, 00000138(d)
        add     eax, edx                                ; 0D89 _ 01. D0
        mov     dword [_mx], eax                        ; 0D8B _ A3, 00000138(d)
        mov     eax, dword [ebp+10H]                    ; 0D90 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0D93 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0D96 _ A1, 0000013C(d)
        add     eax, edx                                ; 0D9B _ 01. D0
        mov     dword [_my], eax                        ; 0D9D _ A3, 0000013C(d)
        mov     eax, dword [_mx]                        ; 0DA2 _ A1, 00000138(d)
        test    eax, eax                                ; 0DA7 _ 85. C0
        jns     ?_012                                   ; 0DA9 _ 79, 0A
        mov     dword [_mx], 0                          ; 0DAB _ C7. 05, 00000138(d), 00000000
?_012:  mov     eax, dword [_my]                        ; 0DB5 _ A1, 0000013C(d)
        test    eax, eax                                ; 0DBA _ 85. C0
        jns     ?_013                                   ; 0DBC _ 79, 0A
        mov     dword [_my], 0                          ; 0DBE _ C7. 05, 0000013C(d), 00000000
?_013:  mov     edx, dword [_xsize]                     ; 0DC8 _ 8B. 15, 00000140(d)
        mov     eax, dword [_mx]                        ; 0DCE _ A1, 00000138(d)
        cmp     edx, eax                                ; 0DD3 _ 39. C2
        jg      ?_014                                   ; 0DD5 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0DD7 _ A1, 00000140(d)
        sub     eax, 1                                  ; 0DDC _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0DDF _ A3, 00000138(d)
?_014:  mov     edx, dword [_ysize]                     ; 0DE4 _ 8B. 15, 00000144(d)
        mov     eax, dword [_my]                        ; 0DEA _ A1, 0000013C(d)
        cmp     edx, eax                                ; 0DEF _ 39. C2
        jg      ?_015                                   ; 0DF1 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0DF3 _ A1, 00000144(d)
        sub     eax, 1                                  ; 0DF8 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0DFB _ A3, 0000013C(d)
?_015:  nop                                             ; 0E00 _ 90
        pop     ebp                                     ; 0E01 _ 5D
        ret                                             ; 0E02 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0E03 _ 55
        mov     ebp, esp                                ; 0E04 _ 89. E5
        sub     esp, 40                                 ; 0E06 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0E09 _ A1, 00000148(d)
        mov     dword [ebp-0CH], eax                    ; 0E0E _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0E11 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0E15 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0E1A _ C7. 04 24, 00000030(d)
        call    _fifo8_get                              ; 0E21 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0E26 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0E29 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0E2D _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0E31 _ C7. 04 24, 00000100(d)
        call    _mouse_decode                           ; 0E38 _ E8, 00000780
        test    eax, eax                                ; 0E3D _ 85. C0
        jz      ?_016                                   ; 0E3F _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0E41 _ C7. 44 24, 08, 00000100(d)
        mov     eax, dword [ebp+0CH]                    ; 0E49 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0E4C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E50 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E53 _ 89. 04 24
        call    _computeMousePosition                   ; 0E56 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0E5B _ 8B. 15, 0000013C(d)
        mov     eax, dword [_mx]                        ; 0E61 _ A1, 00000138(d)
        mov     dword [esp+0CH], edx                    ; 0E66 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0E6A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0E6E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0E71 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0E75 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0E78 _ 89. 04 24
        call    _sheet_slide                            ; 0E7B _ E8, 00000000(rel)
        mov     eax, dword [?_198]                      ; 0E80 _ A1, 0000010C(d)
        and     eax, 01H                                ; 0E85 _ 83. E0, 01
        test    eax, eax                                ; 0E88 _ 85. C0
        jz      ?_016                                   ; 0E8A _ 74, 2C
        mov     eax, dword [_my]                        ; 0E8C _ A1, 0000013C(d)
        lea     ecx, [eax-8H]                           ; 0E91 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 0E94 _ A1, 00000138(d)
        lea     edx, [eax-50H]                          ; 0E99 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 0E9C _ A1, 00000134(d)
        mov     dword [esp+0CH], ecx                    ; 0EA1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0EA5 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0EA9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0EAD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0EB0 _ 89. 04 24
        call    _sheet_slide                            ; 0EB3 _ E8, 00000000(rel)
?_016:  nop                                             ; 0EB8 _ 90
        leave                                           ; 0EB9 _ C9
        ret                                             ; 0EBA _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0EBB _ 55
        mov     ebp, esp                                ; 0EBC _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0EBE _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0EC1 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0EC7 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 800                      ; 0ECA _ 66: C7. 40, 04, 0320
        mov     eax, dword [ebp+8H]                     ; 0ED0 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 600                      ; 0ED3 _ 66: C7. 40, 06, 0258
        nop                                             ; 0ED9 _ 90
        pop     ebp                                     ; 0EDA _ 5D
        ret                                             ; 0EDB _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0EDC _ 55
        mov     ebp, esp                                ; 0EDD _ 89. E5
        push    ebx                                     ; 0EDF _ 53
        sub     esp, 68                                 ; 0EE0 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0EE3 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0EE6 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0EE9 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0EEC _ 89. 45, F4
        jmp     ?_018                                   ; 0EEF _ EB, 4B

?_017:  mov     eax, dword [ebp+1CH]                    ; 0EF1 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0EF4 _ 0F B6. 00
        movzx   eax, al                                 ; 0EF7 _ 0F B6. C0
        shl     eax, 4                                  ; 0EFA _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0EFD _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0F03 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0F07 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0F0A _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0F0D _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0F10 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0F12 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0F16 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0F1A _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0F1D _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0F21 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0F24 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0F28 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0F2C _ 89. 14 24
        call    _showFont8                              ; 0F2F _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0F34 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0F38 _ 83. 45, 1C, 01
?_018:  mov     eax, dword [ebp+1CH]                    ; 0F3C _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0F3F _ 0F B6. 00
        test    al, al                                  ; 0F42 _ 84. C0
        jnz     ?_017                                   ; 0F44 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0F46 _ 8B. 45, 14
        add     eax, 16                                 ; 0F49 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0F4C _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0F50 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0F53 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0F57 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0F5A _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0F5E _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0F61 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0F65 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0F68 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0F6C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0F6F _ 89. 04 24
        call    _sheet_refresh                          ; 0F72 _ E8, 00000000(rel)
        nop                                             ; 0F77 _ 90
        add     esp, 68                                 ; 0F78 _ 83. C4, 44
        pop     ebx                                     ; 0F7B _ 5B
        pop     ebp                                     ; 0F7C _ 5D
        ret                                             ; 0F7D _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0F7E _ 55
        mov     ebp, esp                                ; 0F7F _ 89. E5
        sub     esp, 24                                 ; 0F81 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2315         ; 0F84 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 0F8C _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0F94 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0F9B _ E8, 00000003
        nop                                             ; 0FA0 _ 90
        leave                                           ; 0FA1 _ C9
        ret                                             ; 0FA2 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0FA3 _ 55
        mov     ebp, esp                                ; 0FA4 _ 89. E5
        sub     esp, 40                                 ; 0FA6 _ 83. EC, 28
        call    _io_load_eflags                         ; 0FA9 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0FAE _ 89. 45, F0
        call    _io_cli                                 ; 0FB1 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0FB6 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0FB9 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0FBD _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0FC4 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0FC9 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0FCC _ 89. 45, F4
        jmp     ?_020                                   ; 0FCF _ EB, 62

?_019:  mov     eax, dword [ebp+10H]                    ; 0FD1 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0FD4 _ 0F B6. 00
        shr     al, 2                                   ; 0FD7 _ C0. E8, 02
        movzx   eax, al                                 ; 0FDA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0FDD _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0FE1 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0FE8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0FED _ 8B. 45, 10
        add     eax, 1                                  ; 0FF0 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0FF3 _ 0F B6. 00
        shr     al, 2                                   ; 0FF6 _ C0. E8, 02
        movzx   eax, al                                 ; 0FF9 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0FFC _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 1000 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1007 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 100C _ 8B. 45, 10
        add     eax, 2                                  ; 100F _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 1012 _ 0F B6. 00
        shr     al, 2                                   ; 1015 _ C0. E8, 02
        movzx   eax, al                                 ; 1018 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 101B _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 101F _ C7. 04 24, 000003C9
        call    _io_out8                                ; 1026 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 102B _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 102F _ 83. 45, F4, 01
?_020:  mov     eax, dword [ebp-0CH]                    ; 1033 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 1036 _ 3B. 45, 0C
        jle     ?_019                                   ; 1039 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 103B _ 8B. 45, F0
        mov     dword [esp], eax                        ; 103E _ 89. 04 24
        call    _io_store_eflags                        ; 1041 _ E8, 00000000(rel)
        nop                                             ; 1046 _ 90
        leave                                           ; 1047 _ C9
        ret                                             ; 1048 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 1049 _ 55
        mov     ebp, esp                                ; 104A _ 89. E5
        sub     esp, 20                                 ; 104C _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 104F _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 1052 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 1055 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 1058 _ 89. 45, F8
        jmp     ?_024                                   ; 105B _ EB, 31

?_021:  mov     eax, dword [ebp+14H]                    ; 105D _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 1060 _ 89. 45, FC
        jmp     ?_023                                   ; 1063 _ EB, 1D

?_022:  mov     eax, dword [ebp-8H]                     ; 1065 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 1068 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 106C _ 8B. 55, FC
        add     eax, edx                                ; 106F _ 01. D0
        mov     edx, eax                                ; 1071 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1073 _ 8B. 45, 08
        add     edx, eax                                ; 1076 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1078 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 107C _ 88. 02
        add     dword [ebp-4H], 1                       ; 107E _ 83. 45, FC, 01
?_023:  mov     eax, dword [ebp-4H]                     ; 1082 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 1085 _ 3B. 45, 1C
        jle     ?_022                                   ; 1088 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 108A _ 83. 45, F8, 01
?_024:  mov     eax, dword [ebp-8H]                     ; 108E _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 1091 _ 3B. 45, 20
        jle     ?_021                                   ; 1094 _ 7E, C7
        nop                                             ; 1096 _ 90
        leave                                           ; 1097 _ C9
        ret                                             ; 1098 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 1099 _ 55
        mov     ebp, esp                                ; 109A _ 89. E5
        sub     esp, 20                                 ; 109C _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 109F _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 10A2 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 10A5 _ C7. 45, FC, 00000000
        jmp     ?_034                                   ; 10AC _ E9, 0000015C

?_025:  mov     edx, dword [ebp-4H]                     ; 10B1 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 10B4 _ 8B. 45, 1C
        add     eax, edx                                ; 10B7 _ 01. D0
        movzx   eax, byte [eax]                         ; 10B9 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 10BC _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 10BF _ 80. 7D, FB, 00
        jns     ?_026                                   ; 10C3 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 10C5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 10C8 _ 8B. 45, FC
        add     eax, edx                                ; 10CB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10CD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 10D1 _ 8B. 55, 10
        add     eax, edx                                ; 10D4 _ 01. D0
        mov     edx, eax                                ; 10D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10D8 _ 8B. 45, 08
        add     edx, eax                                ; 10DB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 10DD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 10E1 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 10E3 _ 0F BE. 45, FB
        and     eax, 40H                                ; 10E7 _ 83. E0, 40
        test    eax, eax                                ; 10EA _ 85. C0
        jz      ?_027                                   ; 10EC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 10EE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 10F1 _ 8B. 45, FC
        add     eax, edx                                ; 10F4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 10F6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 10FA _ 8B. 55, 10
        add     eax, edx                                ; 10FD _ 01. D0
        lea     edx, [eax+1H]                           ; 10FF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1102 _ 8B. 45, 08
        add     edx, eax                                ; 1105 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1107 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 110B _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 110D _ 0F BE. 45, FB
        and     eax, 20H                                ; 1111 _ 83. E0, 20
        test    eax, eax                                ; 1114 _ 85. C0
        jz      ?_028                                   ; 1116 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1118 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 111B _ 8B. 45, FC
        add     eax, edx                                ; 111E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1120 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1124 _ 8B. 55, 10
        add     eax, edx                                ; 1127 _ 01. D0
        lea     edx, [eax+2H]                           ; 1129 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 112C _ 8B. 45, 08
        add     edx, eax                                ; 112F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1131 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1135 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 1137 _ 0F BE. 45, FB
        and     eax, 10H                                ; 113B _ 83. E0, 10
        test    eax, eax                                ; 113E _ 85. C0
        jz      ?_029                                   ; 1140 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1142 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1145 _ 8B. 45, FC
        add     eax, edx                                ; 1148 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 114A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 114E _ 8B. 55, 10
        add     eax, edx                                ; 1151 _ 01. D0
        lea     edx, [eax+3H]                           ; 1153 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 1156 _ 8B. 45, 08
        add     edx, eax                                ; 1159 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 115B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 115F _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 1161 _ 0F BE. 45, FB
        and     eax, 08H                                ; 1165 _ 83. E0, 08
        test    eax, eax                                ; 1168 _ 85. C0
        jz      ?_030                                   ; 116A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 116C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 116F _ 8B. 45, FC
        add     eax, edx                                ; 1172 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 1174 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1178 _ 8B. 55, 10
        add     eax, edx                                ; 117B _ 01. D0
        lea     edx, [eax+4H]                           ; 117D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1180 _ 8B. 45, 08
        add     edx, eax                                ; 1183 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1185 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1189 _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 118B _ 0F BE. 45, FB
        and     eax, 04H                                ; 118F _ 83. E0, 04
        test    eax, eax                                ; 1192 _ 85. C0
        jz      ?_031                                   ; 1194 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 1196 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 1199 _ 8B. 45, FC
        add     eax, edx                                ; 119C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 119E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11A2 _ 8B. 55, 10
        add     eax, edx                                ; 11A5 _ 01. D0
        lea     edx, [eax+5H]                           ; 11A7 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 11AA _ 8B. 45, 08
        add     edx, eax                                ; 11AD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11AF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11B3 _ 88. 02
?_031:  movsx   eax, byte [ebp-5H]                      ; 11B5 _ 0F BE. 45, FB
        and     eax, 02H                                ; 11B9 _ 83. E0, 02
        test    eax, eax                                ; 11BC _ 85. C0
        jz      ?_032                                   ; 11BE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11C0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11C3 _ 8B. 45, FC
        add     eax, edx                                ; 11C6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11C8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11CC _ 8B. 55, 10
        add     eax, edx                                ; 11CF _ 01. D0
        lea     edx, [eax+6H]                           ; 11D1 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 11D4 _ 8B. 45, 08
        add     edx, eax                                ; 11D7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 11D9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 11DD _ 88. 02
?_032:  movsx   eax, byte [ebp-5H]                      ; 11DF _ 0F BE. 45, FB
        and     eax, 01H                                ; 11E3 _ 83. E0, 01
        test    eax, eax                                ; 11E6 _ 85. C0
        jz      ?_033                                   ; 11E8 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 11EA _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 11ED _ 8B. 45, FC
        add     eax, edx                                ; 11F0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 11F2 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 11F6 _ 8B. 55, 10
        add     eax, edx                                ; 11F9 _ 01. D0
        lea     edx, [eax+7H]                           ; 11FB _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 11FE _ 8B. 45, 08
        add     edx, eax                                ; 1201 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 1203 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 1207 _ 88. 02
?_033:  add     dword [ebp-4H], 1                       ; 1209 _ 83. 45, FC, 01
?_034:  cmp     dword [ebp-4H], 15                      ; 120D _ 83. 7D, FC, 0F
        jle     ?_025                                   ; 1211 _ 0F 8E, FFFFFE9A
        nop                                             ; 1217 _ 90
        leave                                           ; 1218 _ C9
        ret                                             ; 1219 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 121A _ 55
        mov     ebp, esp                                ; 121B _ 89. E5
        sub     esp, 20                                 ; 121D _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 1220 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 1223 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 1226 _ C7. 45, F8, 00000000
        jmp     ?_041                                   ; 122D _ E9, 000000B1

?_035:  mov     dword [ebp-4H], 0                       ; 1232 _ C7. 45, FC, 00000000
        jmp     ?_040                                   ; 1239 _ E9, 00000097

?_036:  mov     eax, dword [ebp-8H]                     ; 123E _ 8B. 45, F8
        shl     eax, 4                                  ; 1241 _ C1. E0, 04
        mov     edx, eax                                ; 1244 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1246 _ 8B. 45, FC
        add     eax, edx                                ; 1249 _ 01. D0
        add     eax, _cursor.2362                       ; 124B _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1250 _ 0F B6. 00
        cmp     al, 42                                  ; 1253 _ 3C, 2A
        jnz     ?_037                                   ; 1255 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1257 _ 8B. 45, F8
        shl     eax, 4                                  ; 125A _ C1. E0, 04
        mov     edx, eax                                ; 125D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 125F _ 8B. 45, FC
        add     eax, edx                                ; 1262 _ 01. D0
        mov     edx, eax                                ; 1264 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1266 _ 8B. 45, 08
        add     eax, edx                                ; 1269 _ 01. D0
        mov     byte [eax], 0                           ; 126B _ C6. 00, 00
?_037:  mov     eax, dword [ebp-8H]                     ; 126E _ 8B. 45, F8
        shl     eax, 4                                  ; 1271 _ C1. E0, 04
        mov     edx, eax                                ; 1274 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1276 _ 8B. 45, FC
        add     eax, edx                                ; 1279 _ 01. D0
        add     eax, _cursor.2362                       ; 127B _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1280 _ 0F B6. 00
        cmp     al, 79                                  ; 1283 _ 3C, 4F
        jnz     ?_038                                   ; 1285 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1287 _ 8B. 45, F8
        shl     eax, 4                                  ; 128A _ C1. E0, 04
        mov     edx, eax                                ; 128D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 128F _ 8B. 45, FC
        add     eax, edx                                ; 1292 _ 01. D0
        mov     edx, eax                                ; 1294 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1296 _ 8B. 45, 08
        add     eax, edx                                ; 1299 _ 01. D0
        mov     byte [eax], 7                           ; 129B _ C6. 00, 07
?_038:  mov     eax, dword [ebp-8H]                     ; 129E _ 8B. 45, F8
        shl     eax, 4                                  ; 12A1 _ C1. E0, 04
        mov     edx, eax                                ; 12A4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12A6 _ 8B. 45, FC
        add     eax, edx                                ; 12A9 _ 01. D0
        add     eax, _cursor.2362                       ; 12AB _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 12B0 _ 0F B6. 00
        cmp     al, 46                                  ; 12B3 _ 3C, 2E
        jnz     ?_039                                   ; 12B5 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 12B7 _ 8B. 45, F8
        shl     eax, 4                                  ; 12BA _ C1. E0, 04
        mov     edx, eax                                ; 12BD _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 12BF _ 8B. 45, FC
        add     eax, edx                                ; 12C2 _ 01. D0
        mov     edx, eax                                ; 12C4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12C6 _ 8B. 45, 08
        add     edx, eax                                ; 12C9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 12CB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 12CF _ 88. 02
?_039:  add     dword [ebp-4H], 1                       ; 12D1 _ 83. 45, FC, 01
?_040:  cmp     dword [ebp-4H], 15                      ; 12D5 _ 83. 7D, FC, 0F
        jle     ?_036                                   ; 12D9 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 12DF _ 83. 45, F8, 01
?_041:  cmp     dword [ebp-8H], 15                      ; 12E3 _ 83. 7D, F8, 0F
        jle     ?_035                                   ; 12E7 _ 0F 8E, FFFFFF45
        nop                                             ; 12ED _ 90
        leave                                           ; 12EE _ C9
        ret                                             ; 12EF _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 12F0 _ 55
        mov     ebp, esp                                ; 12F1 _ 89. E5
        push    ebx                                     ; 12F3 _ 53
        sub     esp, 16                                 ; 12F4 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 12F7 _ C7. 45, F4, 00000000
        jmp     ?_045                                   ; 12FE _ EB, 4E

?_042:  mov     dword [ebp-8H], 0                       ; 1300 _ C7. 45, F8, 00000000
        jmp     ?_044                                   ; 1307 _ EB, 39

?_043:  mov     eax, dword [ebp-0CH]                    ; 1309 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 130C _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 1310 _ 8B. 55, F8
        add     eax, edx                                ; 1313 _ 01. D0
        mov     edx, eax                                ; 1315 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 1317 _ 8B. 45, 20
        add     eax, edx                                ; 131A _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 131C _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 131F _ 8B. 55, F4
        add     edx, ecx                                ; 1322 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 1324 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 1328 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 132B _ 8B. 4D, F8
        add     ecx, ebx                                ; 132E _ 01. D9
        add     edx, ecx                                ; 1330 _ 01. CA
        mov     ecx, edx                                ; 1332 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 1334 _ 8B. 55, 08
        add     edx, ecx                                ; 1337 _ 01. CA
        movzx   eax, byte [eax]                         ; 1339 _ 0F B6. 00
        mov     byte [edx], al                          ; 133C _ 88. 02
        add     dword [ebp-8H], 1                       ; 133E _ 83. 45, F8, 01
?_044:  mov     eax, dword [ebp-8H]                     ; 1342 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 1345 _ 3B. 45, 10
        jl      ?_043                                   ; 1348 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 134A _ 83. 45, F4, 01
?_045:  mov     eax, dword [ebp-0CH]                    ; 134E _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 1351 _ 3B. 45, 14
        jl      ?_042                                   ; 1354 _ 7C, AA
        nop                                             ; 1356 _ 90
        add     esp, 16                                 ; 1357 _ 83. C4, 10
        pop     ebx                                     ; 135A _ 5B
        pop     ebp                                     ; 135B _ 5D
        ret                                             ; 135C _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 135D _ 55
        mov     ebp, esp                                ; 135E _ 89. E5
        sub     esp, 40                                 ; 1360 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 1363 _ A1, 0000000C(d)
        mov     dword [ebp-0CH], eax                    ; 1368 _ 89. 45, F4
        movzx   eax, word [?_195]                       ; 136B _ 0F B7. 05, 00000010(d)
        cwde                                            ; 1372 _ 98
        mov     dword [ebp-10H], eax                    ; 1373 _ 89. 45, F0
        movzx   eax, word [?_196]                       ; 1376 _ 0F B7. 05, 00000012(d)
        cwde                                            ; 137D _ 98
        mov     dword [ebp-14H], eax                    ; 137E _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 1381 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1389 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1390 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 1395 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 1399 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 13A0 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 13A5 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 13A8 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 13AC _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 13B0 _ C7. 04 24, 00000014(d)
        call    _fifo8_put                              ; 13B7 _ E8, 00000000(rel)
        nop                                             ; 13BC _ 90
        leave                                           ; 13BD _ C9
        ret                                             ; 13BE _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 13BF _ 55
        mov     ebp, esp                                ; 13C0 _ 89. E5
        sub     esp, 4                                  ; 13C2 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 13C5 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 13C8 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 13CB _ 80. 7D, FC, 09
        jle     ?_046                                   ; 13CF _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 13D1 _ 0F B6. 45, FC
        add     eax, 55                                 ; 13D5 _ 83. C0, 37
        jmp     ?_047                                   ; 13D8 _ EB, 07

?_046:  movzx   eax, byte [ebp-4H]                      ; 13DA _ 0F B6. 45, FC
        add     eax, 48                                 ; 13DE _ 83. C0, 30
?_047:  leave                                           ; 13E1 _ C9
        ret                                             ; 13E2 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 13E3 _ 55
        mov     ebp, esp                                ; 13E4 _ 89. E5
        sub     esp, 24                                 ; 13E6 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 13E9 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 13EC _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 13EF _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 13F6 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 13FA _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 13FD _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 1400 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 1404 _ 89. 04 24
        call    _charToHexVal                           ; 1407 _ E8, FFFFFFB3
        mov     byte [?_183], al                        ; 140C _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 1411 _ 0F B6. 45, EC
        shr     al, 4                                   ; 1415 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 1418 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 141B _ 0F B6. 45, EC
        movsx   eax, al                                 ; 141F _ 0F BE. C0
        mov     dword [esp], eax                        ; 1422 _ 89. 04 24
        call    _charToHexVal                           ; 1425 _ E8, FFFFFF95
        mov     byte [?_182], al                        ; 142A _ A2, 00000006(d)
        mov     eax, _keyval                            ; 142F _ B8, 00000004(d)
        leave                                           ; 1434 _ C9
        ret                                             ; 1435 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1436 _ 55
        mov     ebp, esp                                ; 1437 _ 89. E5
        sub     esp, 16                                 ; 1439 _ 83. EC, 10
        mov     byte [_str.2410], 48                    ; 143C _ C6. 05, 00000268(d), 30
        mov     byte [?_199], 88                        ; 1443 _ C6. 05, 00000269(d), 58
        mov     byte [?_200], 0                         ; 144A _ C6. 05, 00000272(d), 00
        mov     dword [ebp-4H], 2                       ; 1451 _ C7. 45, FC, 00000002
        jmp     ?_049                                   ; 1458 _ EB, 0F

?_048:  mov     eax, dword [ebp-4H]                     ; 145A _ 8B. 45, FC
        add     eax, _str.2410                          ; 145D _ 05, 00000268(d)
        mov     byte [eax], 48                          ; 1462 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1465 _ 83. 45, FC, 01
?_049:  cmp     dword [ebp-4H], 9                       ; 1469 _ 83. 7D, FC, 09
        jle     ?_048                                   ; 146D _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 146F _ C7. 45, F8, 00000009
        jmp     ?_053                                   ; 1476 _ EB, 42

?_050:  mov     eax, dword [ebp+8H]                     ; 1478 _ 8B. 45, 08
        and     eax, 0FH                                ; 147B _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 147E _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1481 _ 8B. 45, 08
        shr     eax, 4                                  ; 1484 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1487 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 148A _ 83. 7D, F4, 09
        jle     ?_051                                   ; 148E _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1490 _ 8B. 45, F4
        add     eax, 55                                 ; 1493 _ 83. C0, 37
        mov     edx, eax                                ; 1496 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1498 _ 8B. 45, F8
        add     eax, _str.2410                          ; 149B _ 05, 00000268(d)
        mov     byte [eax], dl                          ; 14A0 _ 88. 10
        jmp     ?_052                                   ; 14A2 _ EB, 12

?_051:  mov     eax, dword [ebp-0CH]                    ; 14A4 _ 8B. 45, F4
        add     eax, 48                                 ; 14A7 _ 83. C0, 30
        mov     edx, eax                                ; 14AA _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 14AC _ 8B. 45, F8
        add     eax, _str.2410                          ; 14AF _ 05, 00000268(d)
        mov     byte [eax], dl                          ; 14B4 _ 88. 10
?_052:  sub     dword [ebp-8H], 1                       ; 14B6 _ 83. 6D, F8, 01
?_053:  cmp     dword [ebp-8H], 1                       ; 14BA _ 83. 7D, F8, 01
        jle     ?_054                                   ; 14BE _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 14C0 _ 83. 7D, 08, 00
        jnz     ?_050                                   ; 14C4 _ 75, B2
?_054:  mov     eax, _str.2410                          ; 14C6 _ B8, 00000268(d)
        leave                                           ; 14CB _ C9
        ret                                             ; 14CC _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 14CD _ 55
        mov     ebp, esp                                ; 14CE _ 89. E5
        sub     esp, 24                                 ; 14D0 _ 83. EC, 18
?_055:  mov     dword [esp], 100                        ; 14D3 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 14DA _ E8, 00000000(rel)
        and     eax, 02H                                ; 14DF _ 83. E0, 02
        test    eax, eax                                ; 14E2 _ 85. C0
        jz      ?_056                                   ; 14E4 _ 74, 02
        jmp     ?_055                                   ; 14E6 _ EB, EB
; _wait_KBC_sendready End of function

?_056:  ; Local function
        nop                                             ; 14E8 _ 90
        nop                                             ; 14E9 _ 90
        leave                                           ; 14EA _ C9
        ret                                             ; 14EB _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 14EC _ 55
        mov     ebp, esp                                ; 14ED _ 89. E5
        sub     esp, 24                                 ; 14EF _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 14F2 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 14F7 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 14FF _ C7. 04 24, 00000064
        call    _io_out8                                ; 1506 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 150B _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1510 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 1518 _ C7. 04 24, 00000060
        call    _io_out8                                ; 151F _ E8, 00000000(rel)
        nop                                             ; 1524 _ 90
        leave                                           ; 1525 _ C9
        ret                                             ; 1526 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 1527 _ 55
        mov     ebp, esp                                ; 1528 _ 89. E5
        sub     esp, 24                                 ; 152A _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 152D _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1532 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 153A _ C7. 04 24, 00000064
        call    _io_out8                                ; 1541 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1546 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 154B _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1553 _ C7. 04 24, 00000060
        call    _io_out8                                ; 155A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 155F _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1562 _ C6. 40, 03, 00
        nop                                             ; 1566 _ 90
        leave                                           ; 1567 _ C9
        ret                                             ; 1568 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1569 _ 55
        mov     ebp, esp                                ; 156A _ 89. E5
        sub     esp, 40                                 ; 156C _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 156F _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1577 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 157E _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1583 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 158B _ C7. 04 24, 00000020
        call    _io_out8                                ; 1592 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1597 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 159E _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 15A3 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 15A6 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 15AA _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 15AE _ C7. 04 24, 00000030(d)
        call    _fifo8_put                              ; 15B5 _ E8, 00000000(rel)
        nop                                             ; 15BA _ 90
        leave                                           ; 15BB _ C9
        ret                                             ; 15BC _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 15BD _ 55
        mov     ebp, esp                                ; 15BE _ 89. E5
        sub     esp, 4                                  ; 15C0 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 15C3 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 15C6 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 15C9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 15CC _ 0F B6. 40, 03
        test    al, al                                  ; 15D0 _ 84. C0
        jnz     ?_058                                   ; 15D2 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 15D4 _ 80. 7D, FC, FA
        jnz     ?_057                                   ; 15D8 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 15DA _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 15DD _ C6. 40, 03, 01
?_057:  mov     eax, 0                                  ; 15E1 _ B8, 00000000
        jmp     ?_065                                   ; 15E6 _ E9, 0000010F

?_058:  mov     eax, dword [ebp+8H]                     ; 15EB _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 15EE _ 0F B6. 40, 03
        cmp     al, 1                                   ; 15F2 _ 3C, 01
        jnz     ?_060                                   ; 15F4 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 15F6 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 15FA _ 25, 000000C8
        cmp     eax, 8                                  ; 15FF _ 83. F8, 08
        jnz     ?_059                                   ; 1602 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1604 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1607 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 160B _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 160D _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1610 _ C6. 40, 03, 02
?_059:  mov     eax, 0                                  ; 1614 _ B8, 00000000
        jmp     ?_065                                   ; 1619 _ E9, 000000DC

?_060:  mov     eax, dword [ebp+8H]                     ; 161E _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1621 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1625 _ 3C, 02
        jnz     ?_061                                   ; 1627 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1629 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 162C _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1630 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1633 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1636 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 163A _ B8, 00000000
        jmp     ?_065                                   ; 163F _ E9, 000000B6

?_061:  mov     eax, dword [ebp+8H]                     ; 1644 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1647 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 164B _ 3C, 03
        jne     ?_064                                   ; 164D _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1653 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1656 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 165A _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 165D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1660 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1664 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1667 _ 0F B6. 00
        movzx   eax, al                                 ; 166A _ 0F B6. C0
        and     eax, 07H                                ; 166D _ 83. E0, 07
        mov     edx, eax                                ; 1670 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1672 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1675 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1678 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 167B _ 0F B6. 40, 01
        movzx   eax, al                                 ; 167F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1682 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1685 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1688 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 168B _ 0F B6. 40, 02
        movzx   eax, al                                 ; 168F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1692 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1695 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1698 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 169B _ 0F B6. 00
        movzx   eax, al                                 ; 169E _ 0F B6. C0
        and     eax, 10H                                ; 16A1 _ 83. E0, 10
        test    eax, eax                                ; 16A4 _ 85. C0
        jz      ?_062                                   ; 16A6 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 16A8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 16AB _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 16AE _ 0D, FFFFFF00
        mov     edx, eax                                ; 16B3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16B5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 16B8 _ 89. 50, 04
?_062:  mov     eax, dword [ebp+8H]                     ; 16BB _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 16BE _ 0F B6. 00
        movzx   eax, al                                 ; 16C1 _ 0F B6. C0
        and     eax, 20H                                ; 16C4 _ 83. E0, 20
        test    eax, eax                                ; 16C7 _ 85. C0
        jz      ?_063                                   ; 16C9 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 16CB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 16CE _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 16D1 _ 0D, FFFFFF00
        mov     edx, eax                                ; 16D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16D8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 16DB _ 89. 50, 08
?_063:  mov     eax, dword [ebp+8H]                     ; 16DE _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 16E1 _ 8B. 40, 08
        neg     eax                                     ; 16E4 _ F7. D8
        mov     edx, eax                                ; 16E6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 16E8 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 16EB _ 89. 50, 08
        mov     eax, 1                                  ; 16EE _ B8, 00000001
        jmp     ?_065                                   ; 16F3 _ EB, 05

?_064:  mov     eax, 4294967295                         ; 16F5 _ B8, FFFFFFFF
?_065:  leave                                           ; 16FA _ C9
        ret                                             ; 16FB _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 16FC _ 55
        mov     ebp, esp                                ; 16FD _ 89. E5
        sub     esp, 88                                 ; 16FF _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 1702 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 1709 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1710 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 1717 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 171E _ 8B. 15, 00000144(d)
        mov     eax, dword [ebp+0CH]                    ; 1724 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1727 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 1729 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 172D _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1730 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1734 _ 89. 04 24
        call    _init_screen8                           ; 1737 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 173C _ 8B. 45, 20
        movsx   eax, al                                 ; 173F _ 0F BE. C0
        mov     dword [esp+14H], ?_189                  ; 1742 _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 174A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 174E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1751 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1755 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1758 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 175C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 175F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1763 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1766 _ 89. 04 24
        call    _showString                             ; 1769 _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 176E _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1771 _ 89. 04 24
        call    _intToHexStr                            ; 1774 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 1779 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 177C _ 8B. 45, 20
        movsx   eax, al                                 ; 177F _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1782 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1785 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1789 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 178D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1790 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1794 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1797 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 179B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 179E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17A2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17A5 _ 89. 04 24
        call    _showString                             ; 17A8 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 17AD _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 17B1 _ 8B. 45, 20
        movsx   eax, al                                 ; 17B4 _ 0F BE. C0
        mov     dword [esp+14H], ?_190                  ; 17B7 _ C7. 44 24, 14, 0000002A(d)
        mov     dword [esp+10H], eax                    ; 17BF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 17C3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 17C6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 17CA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 17CD _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 17D1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 17D4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 17D8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17DB _ 89. 04 24
        call    _showString                             ; 17DE _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 17E3 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 17E6 _ 8B. 00
        mov     dword [esp], eax                        ; 17E8 _ 89. 04 24
        call    _intToHexStr                            ; 17EB _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 17F0 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 17F3 _ 8B. 45, 20
        movsx   eax, al                                 ; 17F6 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 17F9 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 17FC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1800 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1804 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1807 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 180B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 180E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1812 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1815 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1819 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 181C _ 89. 04 24
        call    _showString                             ; 181F _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1824 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1828 _ 8B. 45, 20
        movsx   eax, al                                 ; 182B _ 0F BE. C0
        mov     dword [esp+14H], ?_191                  ; 182E _ C7. 44 24, 14, 00000036(d)
        mov     dword [esp+10H], eax                    ; 1836 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 183A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 183D _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1841 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1844 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1848 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 184B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 184F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1852 _ 89. 04 24
        call    _showString                             ; 1855 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 185A _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 185D _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1860 _ 89. 04 24
        call    _intToHexStr                            ; 1863 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1868 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 186B _ 8B. 45, 20
        movsx   eax, al                                 ; 186E _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1871 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1874 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1878 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 187C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 187F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1883 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1886 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 188A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 188D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1891 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1894 _ 89. 04 24
        call    _showString                             ; 1897 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 189C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 18A0 _ 8B. 45, 20
        movsx   eax, al                                 ; 18A3 _ 0F BE. C0
        mov     dword [esp+14H], ?_192                  ; 18A6 _ C7. 44 24, 14, 00000042(d)
        mov     dword [esp+10H], eax                    ; 18AE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18B2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18B5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 18B9 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 18BC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 18C0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18CA _ 89. 04 24
        call    _showString                             ; 18CD _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 18D2 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 18D5 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 18D8 _ 89. 04 24
        call    _intToHexStr                            ; 18DB _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 18E0 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 18E3 _ 8B. 45, 20
        movsx   eax, al                                 ; 18E6 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 18E9 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 18EC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 18F0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 18F4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 18F7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 18FB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 18FE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1902 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1905 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1909 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 190C _ 89. 04 24
        call    _showString                             ; 190F _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 1914 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1918 _ 8B. 45, 20
        movsx   eax, al                                 ; 191B _ 0F BE. C0
        mov     dword [esp+14H], ?_193                  ; 191E _ C7. 44 24, 14, 0000004E(d)
        mov     dword [esp+10H], eax                    ; 1926 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 192A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 192D _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1931 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1934 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1938 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 193B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 193F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1942 _ 89. 04 24
        call    _showString                             ; 1945 _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 194A _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 194D _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1950 _ 89. 04 24
        call    _intToHexStr                            ; 1953 _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 1958 _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 195B _ 8B. 45, 20
        movsx   eax, al                                 ; 195E _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1961 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 1964 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1968 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 196C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 196F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1973 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1976 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 197A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 197D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1981 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1984 _ 89. 04 24
        call    _showString                             ; 1987 _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 198C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1990 _ 8B. 45, 20
        movsx   eax, al                                 ; 1993 _ 0F BE. C0
        mov     dword [esp+14H], ?_194                  ; 1996 _ C7. 44 24, 14, 0000005B(d)
        mov     dword [esp+10H], eax                    ; 199E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19A2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19A5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 19A9 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 19AC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19B0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19B3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19B7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19BA _ 89. 04 24
        call    _showString                             ; 19BD _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 19C2 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 19C5 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 19C8 _ 89. 04 24
        call    _intToHexStr                            ; 19CB _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 19D0 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 19D3 _ 8B. 45, 20
        movsx   eax, al                                 ; 19D6 _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 19D9 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 19DC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 19E0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 19E4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 19E7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 19EB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 19EE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 19F2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19F5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19FC _ 89. 04 24
        call    _showString                             ; 19FF _ E8, FFFFF4D8
        nop                                             ; 1A04 _ 90
        leave                                           ; 1A05 _ C9
        ret                                             ; 1A06 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1A07 _ 55
        mov     ebp, esp                                ; 1A08 _ 89. E5
        sub     esp, 56                                 ; 1A0A _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1A0D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A10 _ 89. 04 24
        call    _sheet_alloc                            ; 1A13 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1A18 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1A1B _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1A20 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1A28 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1A2B _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1A30 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1A33 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1A3B _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1A43 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1A4B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1A4E _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1A52 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1A55 _ 89. 04 24
        call    _sheet_setbuf                           ; 1A58 _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1A5D _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1A60 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1A64 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1A67 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A6B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A6E _ 89. 04 24
        call    _make_window8                           ; 1A71 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1A76 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 1A7E _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1A86 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 1A8E _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1A96 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 1A9E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1AA1 _ 89. 04 24
        call    _make_textbox8                          ; 1AA4 _ E8, 000003AA
        mov     dword [esp+0CH], 72                     ; 1AA9 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 1AB1 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 1AB9 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1ABC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1AC0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AC3 _ 89. 04 24
        call    _sheet_slide                            ; 1AC6 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1ACB _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1AD3 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1AD6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1ADA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1ADD _ 89. 04 24
        call    _sheet_updown                           ; 1AE0 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1AE5 _ 8B. 45, F4
        leave                                           ; 1AE8 _ C9
        ret                                             ; 1AE9 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1AEA _ 55
        mov     ebp, esp                                ; 1AEB _ 89. E5
        push    ebx                                     ; 1AED _ 53
        sub     esp, 68                                 ; 1AEE _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1AF1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1AF4 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1AF7 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1AFA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1AFD _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1B00 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1B03 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1B06 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B09 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B0C _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1B0E _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1B16 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1B1A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B22 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1B2A _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1B32 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B35 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B39 _ 89. 04 24
        call    _boxfill8                               ; 1B3C _ E8, FFFFF508
        mov     eax, dword [ebp-18H]                    ; 1B41 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1B44 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1B47 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B4A _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1B4C _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1B54 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1B58 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1B60 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1B68 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1B70 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B73 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B77 _ 89. 04 24
        call    _boxfill8                               ; 1B7A _ E8, FFFFF4CA
        mov     eax, dword [ebp-1CH]                    ; 1B7F _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1B82 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1B85 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1B88 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1B8A _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1B8E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1B96 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1B9E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1BA6 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1BAE _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1BB1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BB5 _ 89. 04 24
        call    _boxfill8                               ; 1BB8 _ E8, FFFFF48C
        mov     eax, dword [ebp-1CH]                    ; 1BBD _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1BC0 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1BC3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1BC6 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1BC8 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1BCC _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1BD4 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1BDC _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1BE4 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1BEC _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1BEF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1BF3 _ 89. 04 24
        call    _boxfill8                               ; 1BF6 _ E8, FFFFF44E
        mov     eax, dword [ebp-1CH]                    ; 1BFB _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1BFE _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1C01 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1C04 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 1C07 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1C0A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1C0D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C10 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C12 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C16 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1C1A _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1C22 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1C26 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1C2E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C31 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C35 _ 89. 04 24
        call    _boxfill8                               ; 1C38 _ E8, FFFFF40C
        mov     eax, dword [ebp-1CH]                    ; 1C3D _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1C40 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1C43 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1C46 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1C49 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1C4C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1C4F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C52 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1C54 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1C58 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1C5C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1C64 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1C68 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1C70 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1C73 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C77 _ 89. 04 24
        call    _boxfill8                               ; 1C7A _ E8, FFFFF3CA
        mov     eax, dword [ebp-1CH]                    ; 1C7F _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1C82 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1C85 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1C88 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1C8B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1C8E _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1C90 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1C94 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1C98 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1CA0 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1CA8 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1CB0 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CB3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CB7 _ 89. 04 24
        call    _boxfill8                               ; 1CBA _ E8, FFFFF38A
        mov     eax, dword [ebp-18H]                    ; 1CBF _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1CC2 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1CC5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1CC8 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1CCA _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1CD2 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1CD6 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1CDE _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1CE6 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1CEE _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1CF1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CF5 _ 89. 04 24
        call    _boxfill8                               ; 1CF8 _ E8, FFFFF34C
        mov     eax, dword [ebp-1CH]                    ; 1CFD _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1D00 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1D03 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1D06 _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1D09 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1D0C _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1D0F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D12 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D14 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D18 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D1C _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1D20 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1D28 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1D30 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D33 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D37 _ 89. 04 24
        call    _boxfill8                               ; 1D3A _ E8, FFFFF30A
        mov     eax, dword [ebp-1CH]                    ; 1D3F _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1D42 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1D45 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1D48 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1D4B _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1D4E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1D51 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1D54 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1D56 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1D5A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1D5E _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1D62 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1D6A _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1D72 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1D75 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D79 _ 89. 04 24
        call    _boxfill8                               ; 1D7C _ E8, FFFFF2C8
        mov     eax, dword [ebp+10H]                    ; 1D81 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1D84 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1D88 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1D90 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1D98 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1DA0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1DA3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DA7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DAA _ 89. 04 24
        call    _showString                             ; 1DAD _ E8, FFFFF12A
        mov     dword [ebp-10H], 0                      ; 1DB2 _ C7. 45, F0, 00000000
        jmp     ?_073                                   ; 1DB9 _ E9, 00000084

?_066:  mov     dword [ebp-0CH], 0                      ; 1DBE _ C7. 45, F4, 00000000
        jmp     ?_072                                   ; 1DC5 _ EB, 71

?_067:  mov     eax, dword [ebp-10H]                    ; 1DC7 _ 8B. 45, F0
        shl     eax, 4                                  ; 1DCA _ C1. E0, 04
        mov     edx, eax                                ; 1DCD _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1DCF _ 8B. 45, F4
        add     eax, edx                                ; 1DD2 _ 01. D0
        add     eax, _closebtn.2474                     ; 1DD4 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1DD9 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1DDC _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1DDF _ 80. 7D, EF, 40
        jnz     ?_068                                   ; 1DE3 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1DE5 _ C6. 45, EF, 00
        jmp     ?_071                                   ; 1DE9 _ EB, 1C

?_068:  cmp     byte [ebp-11H], 36                      ; 1DEB _ 80. 7D, EF, 24
        jnz     ?_069                                   ; 1DEF _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1DF1 _ C6. 45, EF, 0F
        jmp     ?_071                                   ; 1DF5 _ EB, 10

?_069:  cmp     byte [ebp-11H], 81                      ; 1DF7 _ 80. 7D, EF, 51
        jnz     ?_070                                   ; 1DFB _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1DFD _ C6. 45, EF, 08
        jmp     ?_071                                   ; 1E01 _ EB, 04

?_070:  mov     byte [ebp-11H], 7                       ; 1E03 _ C6. 45, EF, 07
?_071:  mov     eax, dword [ebp+0CH]                    ; 1E07 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1E0A _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1E0C _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1E0F _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1E12 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E15 _ 8B. 40, 04
        imul    eax, edx                                ; 1E18 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1E1B _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1E1E _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1E21 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1E24 _ 8B. 55, F4
        add     edx, ebx                                ; 1E27 _ 01. DA
        add     eax, edx                                ; 1E29 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1E2B _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1E2E _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1E32 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1E34 _ 83. 45, F4, 01
?_072:  cmp     dword [ebp-0CH], 15                     ; 1E38 _ 83. 7D, F4, 0F
        jle     ?_067                                   ; 1E3C _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1E3E _ 83. 45, F0, 01
?_073:  cmp     dword [ebp-10H], 13                     ; 1E42 _ 83. 7D, F0, 0D
        jle     ?_066                                   ; 1E46 _ 0F 8E, FFFFFF72
        nop                                             ; 1E4C _ 90
        add     esp, 68                                 ; 1E4D _ 83. C4, 44
        pop     ebx                                     ; 1E50 _ 5B
        pop     ebp                                     ; 1E51 _ 5D
        ret                                             ; 1E52 _ C3
; _make_window8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1E53 _ 55
        mov     ebp, esp                                ; 1E54 _ 89. E5
        push    edi                                     ; 1E56 _ 57
        push    esi                                     ; 1E57 _ 56
        push    ebx                                     ; 1E58 _ 53
        sub     esp, 44                                 ; 1E59 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1E5C _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1E5F _ 8B. 45, 14
        add     eax, edx                                ; 1E62 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1E64 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1E67 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1E6A _ 8B. 45, 18
        add     eax, edx                                ; 1E6D _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1E6F _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1E72 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1E75 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1E78 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1E7B _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1E7E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1E81 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1E84 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1E87 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1E8A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E8D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E90 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E93 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E95 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E99 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E9D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EA1 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1EA5 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1EAD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EB1 _ 89. 04 24
        call    _boxfill8                               ; 1EB4 _ E8, FFFFF190
        mov     eax, dword [ebp-14H]                    ; 1EB9 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1EBC _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1EBF _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1EC2 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1EC5 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1EC8 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1ECB _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1ECE _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1ED1 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1ED4 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1ED7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1EDA _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1EDC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1EE0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1EE4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EE8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1EEC _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1EF4 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1EF8 _ 89. 04 24
        call    _boxfill8                               ; 1EFB _ E8, FFFFF149
        mov     eax, dword [ebp-14H]                    ; 1F00 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1F03 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1F06 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1F09 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1F0C _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 1F0F _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1F12 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1F15 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1F18 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F1B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F1E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F21 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F23 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F27 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F2B _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F2F _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1F33 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1F3B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F3F _ 89. 04 24
        call    _boxfill8                               ; 1F42 _ E8, FFFFF102
        mov     eax, dword [ebp-14H]                    ; 1F47 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1F4A _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1F4D _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 1F50 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1F53 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1F56 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 1F59 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 1F5C _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1F5F _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1F62 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1F65 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1F68 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1F6A _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F6E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F72 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F76 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1F7A _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1F82 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1F86 _ 89. 04 24
        call    _boxfill8                               ; 1F89 _ E8, FFFFF0BB
        mov     eax, dword [ebp+10H]                    ; 1F8E _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1F91 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1F94 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1F97 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1F9A _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1F9D _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1FA0 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FA3 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FA6 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FA9 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1FAB _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1FAF _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1FB2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FB6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FBA _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1FBE _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1FC6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1FCA _ 89. 04 24
        call    _boxfill8                               ; 1FCD _ E8, FFFFF077
        mov     eax, dword [ebp+0CH]                    ; 1FD2 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1FD5 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1FD8 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1FDB _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1FDE _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1FE1 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1FE4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1FE7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FEA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FED _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 1FEF _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 1FF2 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1FF6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FFA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1FFE _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 2002 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 200A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 200E _ 89. 04 24
        call    _boxfill8                               ; 2011 _ E8, FFFFF033
        mov     eax, dword [ebp-14H]                    ; 2016 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 2019 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 201C _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 201F _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 2022 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 2025 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 2028 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 202B _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 202E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2031 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 2033 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 2037 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 203A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 203E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2042 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 2046 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 204E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2052 _ 89. 04 24
        call    _boxfill8                               ; 2055 _ E8, FFFFEFEF
        mov     eax, dword [ebp-14H]                    ; 205A _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 205D _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 2060 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 2063 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 2066 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 2069 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 206C _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 206F _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 2072 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2075 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2078 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 207B _ 8B. 00
        mov     dword [esp+18H], edi                    ; 207D _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2081 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2085 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2089 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 208D _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 2095 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 2099 _ 89. 04 24
        call    _boxfill8                               ; 209C _ E8, FFFFEFA8
        mov     eax, dword [ebp+10H]                    ; 20A1 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 20A4 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 20A7 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 20AA _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 20AD _ 8B. 45, 1C
        movzx   eax, al                                 ; 20B0 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 20B3 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 20B6 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 20B9 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 20BC _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 20BE _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 20C1 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 20C5 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 20C8 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 20CC _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 20D0 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 20D4 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 20D8 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 20DC _ 89. 14 24
        call    _boxfill8                               ; 20DF _ E8, FFFFEF65
        nop                                             ; 20E4 _ 90
        add     esp, 44                                 ; 20E5 _ 83. C4, 2C
        pop     ebx                                     ; 20E8 _ 5B
        pop     esi                                     ; 20E9 _ 5E
        pop     edi                                     ; 20EA _ 5F
        pop     ebp                                     ; 20EB _ 5D
        ret                                             ; 20EC _ C3
; _make_textbox8 End of function

        nop                                             ; 20ED _ 90
        nop                                             ; 20EE _ 90
        nop                                             ; 20EF _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 20F0 _ 55
        mov     ebp, esp                                ; 20F1 _ 89. E5
        sub     esp, 40                                 ; 20F3 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 20F6 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 20FE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2101 _ 89. 04 24
        call    _memman_alloc_4k                        ; 2104 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 2109 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 210C _ 83. 7D, F0, 00
        jnz     ?_074                                   ; 2110 _ 75, 0A
        mov     eax, 0                                  ; 2112 _ B8, 00000000
        jmp     ?_078                                   ; 2117 _ E9, 0000009D

?_074:  mov     eax, dword [ebp+10H]                    ; 211C _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 211F _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 2123 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2127 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 212A _ 89. 04 24
        call    _memman_alloc_4k                        ; 212D _ E8, 00000000(rel)
        mov     edx, eax                                ; 2132 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2134 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 2137 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 213A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 213D _ 8B. 40, 04
        test    eax, eax                                ; 2140 _ 85. C0
        jnz     ?_075                                   ; 2142 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 2144 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 2147 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 214F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2153 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2156 _ 89. 04 24
        call    _memman_free_4k                         ; 2159 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 215E _ B8, 00000000
        jmp     ?_078                                   ; 2163 _ EB, 54

?_075:  mov     eax, dword [ebp-10H]                    ; 2165 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 2168 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 216B _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 216D _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 2170 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 2173 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2176 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 2179 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 217C _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 217F _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 2182 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 2189 _ C7. 45, F4, 00000000
        jmp     ?_077                                   ; 2190 _ EB, 1B

?_076:  mov     edx, dword [ebp-10H]                    ; 2192 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 2195 _ 8B. 45, F4
        add     eax, 33                                 ; 2198 _ 83. C0, 21
        shl     eax, 5                                  ; 219B _ C1. E0, 05
        add     eax, edx                                ; 219E _ 01. D0
        add     eax, 16                                 ; 21A0 _ 83. C0, 10
        mov     dword [eax], 0                          ; 21A3 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 21A9 _ 83. 45, F4, 01
?_077:  cmp     dword [ebp-0CH], 255                    ; 21AD _ 81. 7D, F4, 000000FF
        jle     ?_076                                   ; 21B4 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 21B6 _ 8B. 45, F0
?_078:  leave                                           ; 21B9 _ C9
        ret                                             ; 21BA _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 21BB _ 55
        mov     ebp, esp                                ; 21BC _ 89. E5
        sub     esp, 16                                 ; 21BE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 21C1 _ C7. 45, FC, 00000000
        jmp     ?_081                                   ; 21C8 _ EB, 5B

?_079:  mov     edx, dword [ebp+8H]                     ; 21CA _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 21CD _ 8B. 45, FC
        add     eax, 33                                 ; 21D0 _ 83. C0, 21
        shl     eax, 5                                  ; 21D3 _ C1. E0, 05
        add     eax, edx                                ; 21D6 _ 01. D0
        add     eax, 16                                 ; 21D8 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 21DB _ 8B. 00
        test    eax, eax                                ; 21DD _ 85. C0
        jnz     ?_080                                   ; 21DF _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 21E1 _ 8B. 45, FC
        shl     eax, 5                                  ; 21E4 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 21E7 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 21ED _ 8B. 45, 08
        add     eax, edx                                ; 21F0 _ 01. D0
        add     eax, 4                                  ; 21F2 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 21F5 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 21F8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 21FB _ 8B. 55, FC
        add     edx, 4                                  ; 21FE _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 2201 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 2204 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 2208 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 220B _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 2212 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 2215 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 221C _ 8B. 45, F8
        jmp     ?_082                                   ; 221F _ EB, 12

?_080:  add     dword [ebp-4H], 1                       ; 2221 _ 83. 45, FC, 01
?_081:  cmp     dword [ebp-4H], 255                     ; 2225 _ 81. 7D, FC, 000000FF
        jle     ?_079                                   ; 222C _ 7E, 9C
        mov     eax, 0                                  ; 222E _ B8, 00000000
?_082:  leave                                           ; 2233 _ C9
        ret                                             ; 2234 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 2235 _ 55
        mov     ebp, esp                                ; 2236 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2238 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 223B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 223E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2240 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2243 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 2246 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2249 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 224C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 224F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2252 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 2255 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 2258 _ 89. 50, 14
        nop                                             ; 225B _ 90
        pop     ebp                                     ; 225C _ 5D
        ret                                             ; 225D _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 225E _ 55
        mov     ebp, esp                                ; 225F _ 89. E5
        push    edi                                     ; 2261 _ 57
        push    esi                                     ; 2262 _ 56
        push    ebx                                     ; 2263 _ 53
        sub     esp, 60                                 ; 2264 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2267 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 226A _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 226D _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 2270 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2273 _ 8B. 40, 10
        add     eax, 1                                  ; 2276 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2279 _ 39. 45, 10
        jle     ?_083                                   ; 227C _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 227E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2281 _ 8B. 40, 10
        add     eax, 1                                  ; 2284 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2287 _ 89. 45, 10
?_083:  cmp     dword [ebp+10H], -1                     ; 228A _ 83. 7D, 10, FF
        jge     ?_084                                   ; 228E _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2290 _ C7. 45, 10, FFFFFFFF
?_084:  mov     eax, dword [ebp+0CH]                    ; 2297 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 229A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 229D _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 22A0 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 22A3 _ 3B. 45, 10
        jle     ?_091                                   ; 22A6 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 22AC _ 83. 7D, 10, 00
        js      ?_087                                   ; 22B0 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 22B6 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 22B9 _ 89. 45, E4
        jmp     ?_086                                   ; 22BC _ EB, 34

?_085:  mov     eax, dword [ebp-1CH]                    ; 22BE _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 22C1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 22C4 _ 8B. 45, 08
        add     edx, 4                                  ; 22C7 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 22CA _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 22CE _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 22D1 _ 8B. 55, E4
        add     edx, 4                                  ; 22D4 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 22D7 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 22DB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 22DE _ 8B. 55, E4
        add     edx, 4                                  ; 22E1 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 22E4 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 22E8 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 22EB _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 22EE _ 83. 6D, E4, 01
?_086:  mov     eax, dword [ebp-1CH]                    ; 22F2 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 22F5 _ 3B. 45, 10
        jg      ?_085                                   ; 22F8 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 22FA _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 22FD _ 8B. 55, 10
        add     edx, 4                                  ; 2300 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 2303 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2306 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 230A _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 230D _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 2310 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2313 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2316 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2319 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 231C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 231F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2322 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2325 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2328 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 232B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 232E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2331 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2334 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2337 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 233A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 233E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2342 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2346 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 234A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 234E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2351 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2354 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 2359 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 235C _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 235F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2362 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2365 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2368 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 236B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 236E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2371 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2374 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2377 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 237A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 237D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2380 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2383 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2386 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2389 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 238C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2390 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2394 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2398 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 239C _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 23A0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 23A4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23A7 _ 89. 04 24
        call    _sheet_refreshsub                       ; 23AA _ E8, 00000465
        jmp     ?_098                                   ; 23AF _ E9, 0000027D

?_087:  mov     eax, dword [ebp+8H]                     ; 23B4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23B7 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 23BA _ 39. 45, E0
        jge     ?_090                                   ; 23BD _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 23BF _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 23C2 _ 89. 45, E4
        jmp     ?_089                                   ; 23C5 _ EB, 34

?_088:  mov     eax, dword [ebp-1CH]                    ; 23C7 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 23CA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 23CD _ 8B. 45, 08
        add     edx, 4                                  ; 23D0 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 23D3 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 23D7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 23DA _ 8B. 55, E4
        add     edx, 4                                  ; 23DD _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 23E0 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 23E4 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 23E7 _ 8B. 55, E4
        add     edx, 4                                  ; 23EA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 23ED _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 23F1 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 23F4 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 23F7 _ 83. 45, E4, 01
?_089:  mov     eax, dword [ebp+8H]                     ; 23FB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23FE _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 2401 _ 39. 45, E4
        jl      ?_088                                   ; 2404 _ 7C, C1
?_090:  mov     eax, dword [ebp+8H]                     ; 2406 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2409 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 240C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 240F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2412 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2415 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2418 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 241B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 241E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2421 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2424 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2427 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 242A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 242D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2430 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2433 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2436 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2439 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 243C _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 243F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 2447 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 244B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 244F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2453 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2457 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 245A _ 89. 04 24
        call    _sheet_refreshmap                       ; 245D _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 2462 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 2465 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2468 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 246B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 246E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2471 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2474 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2477 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 247A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 247D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2480 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2483 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2486 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2489 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 248C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 248F _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2492 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 2496 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 249E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 24A2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 24A6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 24AA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 24AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 24B1 _ 89. 04 24
        call    _sheet_refreshsub                       ; 24B4 _ E8, 0000035B
        jmp     ?_098                                   ; 24B9 _ E9, 00000173

?_091:  mov     eax, dword [ebp-20H]                    ; 24BE _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 24C1 _ 3B. 45, 10
        jge     ?_098                                   ; 24C4 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 24CA _ 83. 7D, E0, 00
        js      ?_094                                   ; 24CE _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 24D0 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 24D3 _ 89. 45, E4
        jmp     ?_093                                   ; 24D6 _ EB, 34

?_092:  mov     eax, dword [ebp-1CH]                    ; 24D8 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 24DB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 24DE _ 8B. 45, 08
        add     edx, 4                                  ; 24E1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 24E4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 24E8 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 24EB _ 8B. 55, E4
        add     edx, 4                                  ; 24EE _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 24F1 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 24F5 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 24F8 _ 8B. 55, E4
        add     edx, 4                                  ; 24FB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 24FE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2502 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2505 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2508 _ 83. 45, E4, 01
?_093:  mov     eax, dword [ebp-1CH]                    ; 250C _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 250F _ 3B. 45, 10
        jl      ?_092                                   ; 2512 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 2514 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2517 _ 8B. 55, 10
        add     edx, 4                                  ; 251A _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 251D _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 2520 _ 89. 4C 90, 04
        jmp     ?_097                                   ; 2524 _ EB, 6C

?_094:  mov     eax, dword [ebp+8H]                     ; 2526 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2529 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 252C _ 89. 45, E4
        jmp     ?_096                                   ; 252F _ EB, 3A

?_095:  mov     eax, dword [ebp-1CH]                    ; 2531 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 2534 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 2537 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 253A _ 8B. 55, E4
        add     edx, 4                                  ; 253D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2540 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2544 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 2547 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 254A _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 254E _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 2551 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2554 _ 8B. 45, 08
        add     edx, 4                                  ; 2557 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 255A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 255E _ 8B. 55, E4
        add     edx, 1                                  ; 2561 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2564 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2567 _ 83. 6D, E4, 01
?_096:  mov     eax, dword [ebp-1CH]                    ; 256B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 256E _ 3B. 45, 10
        jge     ?_095                                   ; 2571 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2573 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2576 _ 8B. 55, 10
        add     edx, 4                                  ; 2579 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 257C _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 257F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2583 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2586 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2589 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 258C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 258F _ 89. 50, 10
?_097:  mov     eax, dword [ebp+0CH]                    ; 2592 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2595 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2598 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 259B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 259E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25A1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25A4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25A7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25AA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25AD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25B0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25B3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25B6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 25B9 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 25BC _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 25BF _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 25C3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 25C7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 25CB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 25CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25D6 _ 89. 04 24
        call    _sheet_refreshmap                       ; 25D9 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 25DE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25E1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 25E4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 25E7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 25EA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 25ED _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 25F0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 25F3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 25F6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 25F9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 25FC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 25FF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2602 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2605 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 2608 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 260B _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 260F _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 2612 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2616 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 261A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 261E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2622 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2626 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2629 _ 89. 04 24
        call    _sheet_refreshsub                       ; 262C _ E8, 000001E3
?_098:  nop                                             ; 2631 _ 90
        add     esp, 60                                 ; 2632 _ 83. C4, 3C
        pop     ebx                                     ; 2635 _ 5B
        pop     esi                                     ; 2636 _ 5E
        pop     edi                                     ; 2637 _ 5F
        pop     ebp                                     ; 2638 _ 5D
        ret                                             ; 2639 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 263A _ 55
        mov     ebp, esp                                ; 263B _ 89. E5
        push    edi                                     ; 263D _ 57
        push    esi                                     ; 263E _ 56
        push    ebx                                     ; 263F _ 53
        sub     esp, 60                                 ; 2640 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2643 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2646 _ 8B. 40, 18
        test    eax, eax                                ; 2649 _ 85. C0
        js      ?_099                                   ; 264B _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 264D _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 2650 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 2653 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 2656 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 2659 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 265C _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 265F _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 2662 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2665 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2668 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 266B _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 266E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2671 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2674 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2677 _ 8B. 45, 14
        add     edx, eax                                ; 267A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 267C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 267F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2682 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2685 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2688 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 268B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 268F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2693 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2697 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 269B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 269F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26A6 _ 89. 04 24
        call    _sheet_refreshsub                       ; 26A9 _ E8, 00000166
?_099:  mov     eax, 0                                  ; 26AE _ B8, 00000000
        add     esp, 60                                 ; 26B3 _ 83. C4, 3C
        pop     ebx                                     ; 26B6 _ 5B
        pop     esi                                     ; 26B7 _ 5E
        pop     edi                                     ; 26B8 _ 5F
        pop     ebp                                     ; 26B9 _ 5D
        ret                                             ; 26BA _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 26BB _ 55
        mov     ebp, esp                                ; 26BC _ 89. E5
        push    esi                                     ; 26BE _ 56
        push    ebx                                     ; 26BF _ 53
        sub     esp, 48                                 ; 26C0 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 26C3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 26C6 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 26C9 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 26CC _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 26CF _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 26D2 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 26D5 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 26D8 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 26DB _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 26DE _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 26E1 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 26E4 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 26E7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 26EA _ 8B. 40, 18
        test    eax, eax                                ; 26ED _ 85. C0
        js      ?_100                                   ; 26EF _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 26F5 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 26F8 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 26FB _ 8B. 45, F0
        add     edx, eax                                ; 26FE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2700 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 2703 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 2706 _ 8B. 45, F4
        add     eax, ecx                                ; 2709 _ 01. C8
        mov     dword [esp+14H], 0                      ; 270B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2713 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2717 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 271B _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 271E _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2722 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2725 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2729 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 272C _ 89. 04 24
        call    _sheet_refreshmap                       ; 272F _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 2734 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2737 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 273A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 273D _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2740 _ 8B. 45, 14
        add     edx, eax                                ; 2743 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2745 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2748 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 274B _ 8B. 45, 10
        add     eax, ebx                                ; 274E _ 01. D8
        mov     dword [esp+14H], ecx                    ; 2750 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2754 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2758 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 275C _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 275F _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2763 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2766 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 276A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 276D _ 89. 04 24
        call    _sheet_refreshmap                       ; 2770 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 2775 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2778 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 277B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 277E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2781 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2784 _ 8B. 45, F0
        add     edx, eax                                ; 2787 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2789 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 278C _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 278F _ 8B. 45, F4
        add     eax, ebx                                ; 2792 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2794 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2798 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 27A0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 27A4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 27A8 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 27AB _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 27AF _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 27B2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27B6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27B9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 27BC _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 27C1 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 27C4 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 27C7 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 27CA _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 27CD _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 27D0 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 27D3 _ 8B. 45, 14
        add     edx, eax                                ; 27D6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 27D8 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 27DB _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 27DE _ 8B. 45, 10
        add     eax, esi                                ; 27E1 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 27E3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 27E7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 27EB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 27EF _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 27F3 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 27F6 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 27FA _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 27FD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2801 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2804 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2807 _ E8, 00000008
?_100:  nop                                             ; 280C _ 90
        add     esp, 48                                 ; 280D _ 83. C4, 30
        pop     ebx                                     ; 2810 _ 5B
        pop     esi                                     ; 2811 _ 5E
        pop     ebp                                     ; 2812 _ 5D
        ret                                             ; 2813 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2814 _ 55
        mov     ebp, esp                                ; 2815 _ 89. E5
        sub     esp, 48                                 ; 2817 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 281A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 281D _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 281F _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 2822 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2825 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2828 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 282B _ 83. 7D, 0C, 00
        jns     ?_101                                   ; 282F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2831 _ C7. 45, 0C, 00000000
?_101:  cmp     dword [ebp+10H], 8                      ; 2838 _ 83. 7D, 10, 08
        jg      ?_102                                   ; 283C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 283E _ C7. 45, 10, 00000000
?_102:  mov     eax, dword [ebp+8H]                     ; 2845 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2848 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 284B _ 39. 45, 14
        jle     ?_103                                   ; 284E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2850 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2853 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2856 _ 89. 45, 14
?_103:  mov     eax, dword [ebp+8H]                     ; 2859 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 285C _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 285F _ 39. 45, 18
        jle     ?_104                                   ; 2862 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2864 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2867 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 286A _ 89. 45, 18
?_104:  mov     eax, dword [ebp+1CH]                    ; 286D _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2870 _ 89. 45, FC
        jmp     ?_111                                   ; 2873 _ E9, 0000010F

?_105:  mov     eax, dword [ebp+8H]                     ; 2878 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 287B _ 8B. 55, FC
        add     edx, 4                                  ; 287E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2881 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2885 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2888 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 288B _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 288D _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2890 _ 8B. 45, 08
        add     eax, 1044                               ; 2893 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2898 _ 8B. 55, E8
        sub     edx, eax                                ; 289B _ 29. C2
        mov     eax, edx                                ; 289D _ 89. D0
        sar     eax, 5                                  ; 289F _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 28A2 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 28A5 _ C7. 45, F4, 00000000
        jmp     ?_110                                   ; 28AC _ E9, 000000C3

?_106:  mov     eax, dword [ebp-18H]                    ; 28B1 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 28B4 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 28B7 _ 8B. 45, F4
        add     eax, edx                                ; 28BA _ 01. D0
        mov     dword [ebp-24H], eax                    ; 28BC _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 28BF _ C7. 45, F8, 00000000
        jmp     ?_109                                   ; 28C6 _ E9, 00000096

?_107:  mov     eax, dword [ebp-18H]                    ; 28CB _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 28CE _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 28D1 _ 8B. 45, F8
        add     eax, edx                                ; 28D4 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 28D6 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 28D9 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 28DC _ 3B. 45, D8
        jg      ?_108                                   ; 28DF _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 28E1 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 28E4 _ 3B. 45, 14
        jge     ?_108                                   ; 28E7 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 28E9 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 28EC _ 3B. 45, DC
        jg      ?_108                                   ; 28EF _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 28F1 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 28F4 _ 3B. 45, 18
        jge     ?_108                                   ; 28F7 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 28F9 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 28FC _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 28FF _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2903 _ 8B. 55, F8
        add     eax, edx                                ; 2906 _ 01. D0
        mov     edx, eax                                ; 2908 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 290A _ 8B. 45, E4
        add     eax, edx                                ; 290D _ 01. D0
        movzx   eax, byte [eax]                         ; 290F _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2912 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2915 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2918 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 291B _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 291F _ 8B. 55, D8
        add     eax, edx                                ; 2922 _ 01. D0
        mov     edx, eax                                ; 2924 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2926 _ 8B. 45, EC
        add     eax, edx                                ; 2929 _ 01. D0
        movzx   eax, byte [eax]                         ; 292B _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 292E _ 38. 45, E3
        jnz     ?_108                                   ; 2931 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 2933 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2937 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 293A _ 8B. 52, 14
        cmp     eax, edx                                ; 293D _ 39. D0
        jz      ?_108                                   ; 293F _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2941 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2944 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2947 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 294B _ 8B. 55, D8
        add     eax, edx                                ; 294E _ 01. D0
        mov     edx, eax                                ; 2950 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 2952 _ 8B. 45, F0
        add     edx, eax                                ; 2955 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 2957 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 295B _ 88. 02
?_108:  add     dword [ebp-8H], 1                       ; 295D _ 83. 45, F8, 01
?_109:  mov     eax, dword [ebp-18H]                    ; 2961 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2964 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2967 _ 39. 45, F8
        jl      ?_107                                   ; 296A _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 2970 _ 83. 45, F4, 01
?_110:  mov     eax, dword [ebp-18H]                    ; 2974 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2977 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 297A _ 39. 45, F4
        jl      ?_106                                   ; 297D _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 2983 _ 83. 45, FC, 01
?_111:  mov     eax, dword [ebp-4H]                     ; 2987 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 298A _ 3B. 45, 20
        jle     ?_105                                   ; 298D _ 0F 8E, FFFFFEE5
        nop                                             ; 2993 _ 90
        leave                                           ; 2994 _ C9
        ret                                             ; 2995 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2996 _ 55
        mov     ebp, esp                                ; 2997 _ 89. E5
        sub     esp, 64                                 ; 2999 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 299C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 299F _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 29A2 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 29A5 _ 83. 7D, 0C, 00
        jns     ?_112                                   ; 29A9 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 29AB _ C7. 45, 0C, 00000000
?_112:  cmp     dword [ebp+10H], 0                      ; 29B2 _ 83. 7D, 10, 00
        jns     ?_113                                   ; 29B6 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 29B8 _ C7. 45, 10, 00000000
?_113:  mov     eax, dword [ebp+8H]                     ; 29BF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29C2 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 29C5 _ 39. 45, 14
        jle     ?_114                                   ; 29C8 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 29CA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 29CD _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 29D0 _ 89. 45, 14
?_114:  mov     eax, dword [ebp+8H]                     ; 29D3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 29D6 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 29D9 _ 39. 45, 18
        jle     ?_115                                   ; 29DC _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 29DE _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 29E1 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 29E4 _ 89. 45, 18
?_115:  mov     eax, dword [ebp+1CH]                    ; 29E7 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 29EA _ 89. 45, FC
        jmp     ?_126                                   ; 29ED _ E9, 00000139

?_116:  mov     eax, dword [ebp+8H]                     ; 29F2 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 29F5 _ 8B. 55, FC
        add     edx, 4                                  ; 29F8 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 29FB _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 29FF _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 2A02 _ 8B. 45, 08
        add     eax, 1044                               ; 2A05 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 2A0A _ 8B. 55, DC
        sub     edx, eax                                ; 2A0D _ 29. C2
        mov     eax, edx                                ; 2A0F _ 89. D0
        sar     eax, 5                                  ; 2A11 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2A14 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2A17 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 2A1A _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2A1C _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 2A1F _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2A22 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2A25 _ 8B. 55, 0C
        sub     edx, eax                                ; 2A28 _ 29. C2
        mov     eax, edx                                ; 2A2A _ 89. D0
        mov     dword [ebp-10H], eax                    ; 2A2C _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 2A2F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2A32 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2A35 _ 8B. 55, 10
        sub     edx, eax                                ; 2A38 _ 29. C2
        mov     eax, edx                                ; 2A3A _ 89. D0
        mov     dword [ebp-14H], eax                    ; 2A3C _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 2A3F _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2A42 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2A45 _ 8B. 55, 14
        sub     edx, eax                                ; 2A48 _ 29. C2
        mov     eax, edx                                ; 2A4A _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2A4C _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 2A4F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2A52 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2A55 _ 8B. 55, 18
        sub     edx, eax                                ; 2A58 _ 29. C2
        mov     eax, edx                                ; 2A5A _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2A5C _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 2A5F _ 83. 7D, F0, 00
        jns     ?_117                                   ; 2A63 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2A65 _ C7. 45, F0, 00000000
?_117:  cmp     dword [ebp-14H], 0                      ; 2A6C _ 83. 7D, EC, 00
        jns     ?_118                                   ; 2A70 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 2A72 _ C7. 45, EC, 00000000
?_118:  mov     eax, dword [ebp-24H]                    ; 2A79 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2A7C _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 2A7F _ 39. 45, E8
        jle     ?_119                                   ; 2A82 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2A84 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2A87 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 2A8A _ 89. 45, E8
?_119:  mov     eax, dword [ebp-24H]                    ; 2A8D _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2A90 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2A93 _ 39. 45, E4
        jle     ?_120                                   ; 2A96 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2A98 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2A9B _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2A9E _ 89. 45, E4
?_120:  mov     eax, dword [ebp-14H]                    ; 2AA1 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2AA4 _ 89. 45, F4
        jmp     ?_125                                   ; 2AA7 _ EB, 76

?_121:  mov     eax, dword [ebp-24H]                    ; 2AA9 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2AAC _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2AAF _ 8B. 45, F4
        add     eax, edx                                ; 2AB2 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2AB4 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2AB7 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2ABA _ 89. 45, F8
        jmp     ?_124                                   ; 2ABD _ EB, 54

?_122:  mov     eax, dword [ebp-24H]                    ; 2ABF _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2AC2 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2AC5 _ 8B. 45, F8
        add     eax, edx                                ; 2AC8 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2ACA _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2ACD _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2AD0 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2AD3 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2AD7 _ 8B. 55, F8
        add     eax, edx                                ; 2ADA _ 01. D0
        mov     edx, eax                                ; 2ADC _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2ADE _ 8B. 45, D4
        add     eax, edx                                ; 2AE1 _ 01. D0
        movzx   eax, byte [eax]                         ; 2AE3 _ 0F B6. 00
        movzx   eax, al                                 ; 2AE6 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2AE9 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2AEC _ 8B. 52, 14
        cmp     eax, edx                                ; 2AEF _ 39. D0
        jz      ?_123                                   ; 2AF1 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2AF3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2AF6 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2AF9 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2AFD _ 8B. 55, CC
        add     eax, edx                                ; 2B00 _ 01. D0
        mov     edx, eax                                ; 2B02 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2B04 _ 8B. 45, E0
        add     edx, eax                                ; 2B07 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2B09 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2B0D _ 88. 02
?_123:  add     dword [ebp-8H], 1                       ; 2B0F _ 83. 45, F8, 01
?_124:  mov     eax, dword [ebp-8H]                     ; 2B13 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2B16 _ 3B. 45, E8
        jl      ?_122                                   ; 2B19 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2B1B _ 83. 45, F4, 01
?_125:  mov     eax, dword [ebp-0CH]                    ; 2B1F _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2B22 _ 3B. 45, E4
        jl      ?_121                                   ; 2B25 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2B27 _ 83. 45, FC, 01
?_126:  mov     eax, dword [ebp+8H]                     ; 2B2B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2B2E _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 2B31 _ 39. 45, FC
        jle     ?_116                                   ; 2B34 _ 0F 8E, FFFFFEB8
        nop                                             ; 2B3A _ 90
        leave                                           ; 2B3B _ C9
        ret                                             ; 2B3C _ C3
; _sheet_refreshmap End of function

        nop                                             ; 2B3D _ 90
        nop                                             ; 2B3E _ 90
        nop                                             ; 2B3F _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 2B40 _ 55
        mov     ebp, esp                                ; 2B41 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2B43 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2B46 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2B4C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2B4F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2B56 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2B59 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2B60 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2B63 _ C7. 40, 0C, 00000000
        nop                                             ; 2B6A _ 90
        pop     ebp                                     ; 2B6B _ 5D
        ret                                             ; 2B6C _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2B6D _ 55
        mov     ebp, esp                                ; 2B6E _ 89. E5
        sub     esp, 16                                 ; 2B70 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2B73 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2B7A _ C7. 45, FC, 00000000
        jmp     ?_128                                   ; 2B81 _ EB, 14

?_127:  mov     eax, dword [ebp+8H]                     ; 2B83 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2B86 _ 8B. 55, FC
        add     edx, 2                                  ; 2B89 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2B8C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2B90 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2B93 _ 83. 45, FC, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 2B97 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B9A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2B9C _ 39. 45, FC
        jc      ?_127                                   ; 2B9F _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2BA1 _ 8B. 45, F8
        leave                                           ; 2BA4 _ C9
        ret                                             ; 2BA5 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2BA6 _ 55
        mov     ebp, esp                                ; 2BA7 _ 89. E5
        sub     esp, 16                                 ; 2BA9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2BAC _ C7. 45, FC, 00000000
        jmp     ?_132                                   ; 2BB3 _ E9, 00000083

?_129:  mov     eax, dword [ebp+8H]                     ; 2BB8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BBB _ 8B. 55, FC
        add     edx, 2                                  ; 2BBE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2BC1 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2BC5 _ 39. 45, 0C
        ja      ?_131                                   ; 2BC8 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2BCA _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BCD _ 8B. 55, FC
        add     edx, 2                                  ; 2BD0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2BD3 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2BD6 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2BD9 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BDC _ 8B. 55, FC
        add     edx, 2                                  ; 2BDF _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2BE2 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2BE5 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2BE8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2BEB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BEE _ 8B. 55, FC
        add     edx, 2                                  ; 2BF1 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2BF4 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2BF7 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2BFA _ 8B. 55, FC
        add     edx, 2                                  ; 2BFD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2C00 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2C04 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2C07 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2C0A _ 8B. 4D, FC
        add     ecx, 2                                  ; 2C0D _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2C10 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2C14 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2C17 _ 8B. 55, FC
        add     edx, 2                                  ; 2C1A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2C1D _ 8B. 44 D0, 04
        test    eax, eax                                ; 2C21 _ 85. C0
        jnz     ?_130                                   ; 2C23 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2C25 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C28 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2C2A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C2D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2C30 _ 89. 10
?_130:  mov     eax, dword [ebp-8H]                     ; 2C32 _ 8B. 45, F8
        jmp     ?_133                                   ; 2C35 _ EB, 17

?_131:  add     dword [ebp-4H], 1                       ; 2C37 _ 83. 45, FC, 01
?_132:  mov     eax, dword [ebp+8H]                     ; 2C3B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C3E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2C40 _ 39. 45, FC
        jc      ?_129                                   ; 2C43 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2C49 _ B8, 00000000
?_133:  leave                                           ; 2C4E _ C9
        ret                                             ; 2C4F _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2C50 _ 55
        mov     ebp, esp                                ; 2C51 _ 89. E5
        push    ebx                                     ; 2C53 _ 53
        sub     esp, 16                                 ; 2C54 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2C57 _ C7. 45, F8, 00000000
        jmp     ?_135                                   ; 2C5E _ EB, 15

?_134:  mov     eax, dword [ebp+8H]                     ; 2C60 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2C63 _ 8B. 55, F8
        add     edx, 2                                  ; 2C66 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2C69 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2C6C _ 39. 45, 0C
        jc      ?_136                                   ; 2C6F _ 72, 10
        add     dword [ebp-8H], 1                       ; 2C71 _ 83. 45, F8, 01
?_135:  mov     eax, dword [ebp+8H]                     ; 2C75 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2C78 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2C7A _ 39. 45, F8
        jl      ?_134                                   ; 2C7D _ 7C, E1
        jmp     ?_137                                   ; 2C7F _ EB, 01

?_136:  nop                                             ; 2C81 _ 90
?_137:  cmp     dword [ebp-8H], 0                       ; 2C82 _ 83. 7D, F8, 00
        jle     ?_139                                   ; 2C86 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2C8C _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2C8F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2C92 _ 8B. 45, 08
        add     edx, 2                                  ; 2C95 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2C98 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2C9B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2C9E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CA1 _ 8B. 45, 08
        add     edx, 2                                  ; 2CA4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2CA7 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2CAB _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2CAD _ 39. 45, 0C
        jne     ?_139                                   ; 2CB0 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2CB6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2CB9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2CBC _ 8B. 45, 08
        add     edx, 2                                  ; 2CBF _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2CC2 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2CC6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2CC9 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2CCC _ 8B. 45, 10
        add     ecx, eax                                ; 2CCF _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2CD1 _ 8B. 45, 08
        add     edx, 2                                  ; 2CD4 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2CD7 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2CDB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2CDE _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2CE0 _ 39. 45, F8
        jge     ?_138                                   ; 2CE3 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2CE5 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2CE8 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2CEB _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2CEE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2CF1 _ 8B. 55, F8
        add     edx, 2                                  ; 2CF4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2CF7 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2CFA _ 39. C1
        jnz     ?_138                                   ; 2CFC _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 2CFE _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2D01 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D04 _ 8B. 45, 08
        add     edx, 2                                  ; 2D07 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2D0A _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2D0E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D11 _ 8B. 55, F8
        add     edx, 2                                  ; 2D14 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2D17 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2D1B _ 8B. 55, F8
        sub     edx, 1                                  ; 2D1E _ 83. EA, 01
        add     ecx, eax                                ; 2D21 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2D23 _ 8B. 45, 08
        add     edx, 2                                  ; 2D26 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2D29 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2D2D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D30 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2D32 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D35 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2D38 _ 89. 10
?_138:  mov     eax, 0                                  ; 2D3A _ B8, 00000000
        jmp     ?_145                                   ; 2D3F _ E9, 0000011C

?_139:  mov     eax, dword [ebp+8H]                     ; 2D44 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2D47 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2D49 _ 39. 45, F8
        jge     ?_140                                   ; 2D4C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2D4E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2D51 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2D54 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2D57 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D5A _ 8B. 55, F8
        add     edx, 2                                  ; 2D5D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2D60 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2D63 _ 39. C1
        jnz     ?_140                                   ; 2D65 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2D67 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D6A _ 8B. 55, F8
        add     edx, 2                                  ; 2D6D _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2D70 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2D73 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2D76 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D79 _ 8B. 55, F8
        add     edx, 2                                  ; 2D7C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2D7F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2D83 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2D86 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2D89 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2D8C _ 8B. 55, F8
        add     edx, 2                                  ; 2D8F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2D92 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2D96 _ B8, 00000000
        jmp     ?_145                                   ; 2D9B _ E9, 000000C0

?_140:  mov     eax, dword [ebp+8H]                     ; 2DA0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DA3 _ 8B. 00
        cmp     eax, 4095                               ; 2DA5 _ 3D, 00000FFF
        jg      ?_144                                   ; 2DAA _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2DB0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DB3 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2DB5 _ 89. 45, F4
        jmp     ?_142                                   ; 2DB8 _ EB, 28

?_141:  mov     eax, dword [ebp-0CH]                    ; 2DBA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2DBD _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2DC0 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2DC3 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2DC6 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2DC9 _ 8B. 45, 08
        add     edx, 2                                  ; 2DCC _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2DCF _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2DD2 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2DD4 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2DD7 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2DDA _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2DDE _ 83. 6D, F4, 01
?_142:  mov     eax, dword [ebp-0CH]                    ; 2DE2 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2DE5 _ 3B. 45, F8
        jg      ?_141                                   ; 2DE8 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2DEA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2DED _ 8B. 00
        lea     edx, [eax+1H]                           ; 2DEF _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2DF2 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2DF5 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2DF7 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2DFA _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2DFD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2E00 _ 8B. 00
        cmp     edx, eax                                ; 2E02 _ 39. C2
        jge     ?_143                                   ; 2E04 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2E06 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2E09 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2E0B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2E0E _ 89. 50, 04
?_143:  mov     eax, dword [ebp+8H]                     ; 2E11 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E14 _ 8B. 55, F8
        add     edx, 2                                  ; 2E17 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2E1A _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2E1D _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2E20 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2E23 _ 8B. 55, F8
        add     edx, 2                                  ; 2E26 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2E29 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2E2C _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2E30 _ B8, 00000000
        jmp     ?_145                                   ; 2E35 _ EB, 29

?_144:  mov     eax, dword [ebp+8H]                     ; 2E37 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2E3A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2E3D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2E40 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2E43 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2E46 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2E49 _ 8B. 40, 08
        mov     edx, eax                                ; 2E4C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2E4E _ 8B. 45, 10
        add     eax, edx                                ; 2E51 _ 01. D0
        mov     edx, eax                                ; 2E53 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2E55 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2E58 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2E5B _ B8, FFFFFFFF
?_145:  add     esp, 16                                 ; 2E60 _ 83. C4, 10
        pop     ebx                                     ; 2E63 _ 5B
        pop     ebp                                     ; 2E64 _ 5D
        ret                                             ; 2E65 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2E66 _ 55
        mov     ebp, esp                                ; 2E67 _ 89. E5
        sub     esp, 24                                 ; 2E69 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2E6C _ 8B. 45, 0C
        add     eax, 4095                               ; 2E6F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2E74 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2E79 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2E7C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2E7F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2E83 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2E86 _ 89. 04 24
        call    _memman_alloc                           ; 2E89 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 2E8E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2E91 _ 8B. 45, FC
        leave                                           ; 2E94 _ C9
        ret                                             ; 2E95 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 2E96 _ 55
        mov     ebp, esp                                ; 2E97 _ 89. E5
        sub     esp, 28                                 ; 2E99 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2E9C _ 8B. 45, 10
        add     eax, 4095                               ; 2E9F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2EA4 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2EA9 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2EAC _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2EAF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2EB3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2EB6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2EBA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2EBD _ 89. 04 24
        call    _memman_free                            ; 2EC0 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 2EC5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2EC8 _ 8B. 45, FC
        leave                                           ; 2ECB _ C9
        ret                                             ; 2ECC _ C3
; _memman_free_4k End of function

        nop                                             ; 2ECD _ 90
        nop                                             ; 2ECE _ 90
        nop                                             ; 2ECF _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 2ED0 _ 55
        mov     ebp, esp                                ; 2ED1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2ED3 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2ED6 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2ED9 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2EDC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2EDF _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2EE2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2EE4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2EE7 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2EEA _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2EED _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2EF0 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2EF7 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2EFA _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2F01 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2F04 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2F0B _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 2F0E _ 8B. 55, 14
        mov     dword [eax+18H], edx                    ; 2F11 _ 89. 50, 18
        nop                                             ; 2F14 _ 90
        pop     ebp                                     ; 2F15 _ 5D
        ret                                             ; 2F16 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 2F17 _ 55
        mov     ebp, esp                                ; 2F18 _ 89. E5
        sub     esp, 40                                 ; 2F1A _ 83. EC, 28
        mov     eax, dword [ebp+0CH]                    ; 2F1D _ 8B. 45, 0C
        mov     byte [ebp-0CH], al                      ; 2F20 _ 88. 45, F4
        cmp     dword [ebp+8H], 0                       ; 2F23 _ 83. 7D, 08, 00
        jnz     ?_146                                   ; 2F27 _ 75, 0A
        mov     eax, 4294967295                         ; 2F29 _ B8, FFFFFFFF
        jmp     ?_150                                   ; 2F2E _ E9, 00000098

?_146:  mov     eax, dword [ebp+8H]                     ; 2F33 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F36 _ 8B. 40, 10
        test    eax, eax                                ; 2F39 _ 85. C0
        jnz     ?_147                                   ; 2F3B _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2F3D _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2F40 _ 8B. 40, 14
        or      eax, 01H                                ; 2F43 _ 83. C8, 01
        mov     edx, eax                                ; 2F46 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2F48 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2F4B _ 89. 50, 14
        mov     eax, 4294967295                         ; 2F4E _ B8, FFFFFFFF
        jmp     ?_150                                   ; 2F53 _ EB, 76

?_147:  mov     eax, dword [ebp+8H]                     ; 2F55 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2F58 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2F5A _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2F5D _ 8B. 40, 04
        add     edx, eax                                ; 2F60 _ 01. C2
        movzx   eax, byte [ebp-0CH]                     ; 2F62 _ 0F B6. 45, F4
        mov     byte [edx], al                          ; 2F66 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2F68 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2F6B _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2F6E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2F71 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2F74 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F77 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2F7A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2F7D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2F80 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2F83 _ 39. C2
        jnz     ?_148                                   ; 2F85 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2F87 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2F8A _ C7. 40, 04, 00000000
?_148:  mov     eax, dword [ebp+8H]                     ; 2F91 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2F94 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2F97 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2F9A _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2F9D _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2FA0 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2FA3 _ 8B. 40, 18
        test    eax, eax                                ; 2FA6 _ 85. C0
        jz      ?_149                                   ; 2FA8 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2FAA _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2FAD _ 8B. 40, 18
        mov     eax, dword [eax+4H]                     ; 2FB0 _ 8B. 40, 04
        cmp     eax, 2                                  ; 2FB3 _ 83. F8, 02
        jz      ?_149                                   ; 2FB6 _ 74, 0E
        mov     eax, dword [ebp+8H]                     ; 2FB8 _ 8B. 45, 08
        mov     eax, dword [eax+18H]                    ; 2FBB _ 8B. 40, 18
        mov     dword [esp], eax                        ; 2FBE _ 89. 04 24
        call    _task_run                               ; 2FC1 _ E8, 00000000(rel)
?_149:  mov     eax, 0                                  ; 2FC6 _ B8, 00000000
?_150:  leave                                           ; 2FCB _ C9
        ret                                             ; 2FCC _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 2FCD _ 55
        mov     ebp, esp                                ; 2FCE _ 89. E5
        sub     esp, 16                                 ; 2FD0 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2FD3 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2FD6 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2FD9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2FDC _ 8B. 40, 0C
        cmp     edx, eax                                ; 2FDF _ 39. C2
        jnz     ?_151                                   ; 2FE1 _ 75, 07
        mov     eax, 4294967295                         ; 2FE3 _ B8, FFFFFFFF
        jmp     ?_153                                   ; 2FE8 _ EB, 51

?_151:  mov     eax, dword [ebp+8H]                     ; 2FEA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2FED _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2FEF _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2FF2 _ 8B. 40, 08
        add     eax, edx                                ; 2FF5 _ 01. D0
        movzx   eax, byte [eax]                         ; 2FF7 _ 0F B6. 00
        movzx   eax, al                                 ; 2FFA _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2FFD _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 3000 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 3003 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 3006 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3009 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 300C _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 300F _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 3012 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 3015 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 3018 _ 8B. 40, 0C
        cmp     edx, eax                                ; 301B _ 39. C2
        jnz     ?_152                                   ; 301D _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 301F _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 3022 _ C7. 40, 08, 00000000
?_152:  mov     eax, dword [ebp+8H]                     ; 3029 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 302C _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 302F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 3032 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 3035 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 3038 _ 8B. 45, FC
?_153:  leave                                           ; 303B _ C9
        ret                                             ; 303C _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 303D _ 55
        mov     ebp, esp                                ; 303E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3040 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 3043 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 3046 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 3049 _ 8B. 40, 10
        sub     edx, eax                                ; 304C _ 29. C2
        mov     eax, edx                                ; 304E _ 89. D0
        pop     ebp                                     ; 3050 _ 5D
        ret                                             ; 3051 _ C3
; _fifo8_status End of function

        nop                                             ; 3052 _ 90
        nop                                             ; 3053 _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 3054 _ 55
        mov     ebp, esp                                ; 3055 _ 89. E5
        sub     esp, 40                                 ; 3057 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 305A _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 3062 _ C7. 04 24, 00000043
        call    _io_out8                                ; 3069 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 306E _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 3076 _ C7. 04 24, 00000040
        call    _io_out8                                ; 307D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 3082 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 308A _ C7. 04 24, 00000040
        call    _io_out8                                ; 3091 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 3096 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 30A0 _ C7. 45, F4, 00000000
        jmp     ?_155                                   ; 30A7 _ EB, 26

?_154:  mov     eax, dword [ebp-0CH]                    ; 30A9 _ 8B. 45, F4
        shl     eax, 4                                  ; 30AC _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 30AF _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 30B4 _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 30BA _ 8B. 45, F4
        shl     eax, 4                                  ; 30BD _ C1. E0, 04
        add     eax, _timerctl+0CH                           ; 30C0 _ 05, 0000000C(d)
        mov     dword [eax], 0                          ; 30C5 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 30CB _ 83. 45, F4, 01
?_155:  cmp     dword [ebp-0CH], 499                    ; 30CF _ 81. 7D, F4, 000001F3
        jle     ?_154                                   ; 30D6 _ 7E, D1
        nop                                             ; 30D8 _ 90
        leave                                           ; 30D9 _ C9
        ret                                             ; 30DA _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 30DB _ 55
        mov     ebp, esp                                ; 30DC _ 89. E5
        sub     esp, 16                                 ; 30DE _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 30E1 _ C7. 45, FC, 00000000
        jmp     ?_158                                   ; 30E8 _ EB, 36

?_156:  mov     eax, dword [ebp-4H]                     ; 30EA _ 8B. 45, FC
        shl     eax, 4                                  ; 30ED _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 30F0 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 30F5 _ 8B. 00
        test    eax, eax                                ; 30F7 _ 85. C0
        jnz     ?_157                                   ; 30F9 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 30FB _ 8B. 45, FC
        shl     eax, 4                                  ; 30FE _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 3101 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3106 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 310C _ 8B. 45, FC
        shl     eax, 4                                  ; 310F _ C1. E0, 04
        add     eax, _timerctl                               ; 3112 _ 05, 00000000(d)
        add     eax, 4                                  ; 3117 _ 83. C0, 04
        jmp     ?_159                                   ; 311A _ EB, 12

?_157:  add     dword [ebp-4H], 1                       ; 311C _ 83. 45, FC, 01
?_158:  cmp     dword [ebp-4H], 499                     ; 3120 _ 81. 7D, FC, 000001F3
        jle     ?_156                                   ; 3127 _ 7E, C1
        mov     eax, 0                                  ; 3129 _ B8, 00000000
?_159:  leave                                           ; 312E _ C9
        ret                                             ; 312F _ C3
; _timer_alloc End of function

_timer_free:; Function begin
        push    ebp                                     ; 3130 _ 55
        mov     ebp, esp                                ; 3131 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3133 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 3136 _ C7. 40, 04, 00000000
        nop                                             ; 313D _ 90
        pop     ebp                                     ; 313E _ 5D
        ret                                             ; 313F _ C3
; _timer_free End of function

_timer_init:; Function begin
        push    ebp                                     ; 3140 _ 55
        mov     ebp, esp                                ; 3141 _ 89. E5
        sub     esp, 4                                  ; 3143 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 3146 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 3149 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 314C _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 314F _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 3152 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 3155 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 3158 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 315C _ 88. 42, 0C
        nop                                             ; 315F _ 90
        leave                                           ; 3160 _ C9
        ret                                             ; 3161 _ C3
; _timer_init End of function

_timer_settime:; Function begin
        push    ebp                                     ; 3162 _ 55
        mov     ebp, esp                                ; 3163 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3165 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 3168 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 316B _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 316D _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3170 _ C7. 40, 04, 00000002
        nop                                             ; 3177 _ 90
        pop     ebp                                     ; 3178 _ 5D
        ret                                             ; 3179 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 317A _ 55
        mov     ebp, esp                                ; 317B _ 89. E5
        sub     esp, 40                                 ; 317D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 3180 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 3188 _ C7. 04 24, 00000020
        call    _io_out8                                ; 318F _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 3194 _ A1, 00000000(d)
        add     eax, 1                                  ; 3199 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 319C _ A3, 00000000(d)
        mov     byte [ebp-0DH], 0                       ; 31A1 _ C6. 45, F3, 00
        mov     dword [ebp-0CH], 0                      ; 31A5 _ C7. 45, F4, 00000000
        jmp     ?_163                                   ; 31AC _ E9, 000000AA

?_160:  mov     eax, dword [ebp-0CH]                    ; 31B1 _ 8B. 45, F4
        shl     eax, 4                                  ; 31B4 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 31B7 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 31BC _ 8B. 00
        cmp     eax, 2                                  ; 31BE _ 83. F8, 02
        jne     ?_161                                   ; 31C1 _ 0F 85, 00000085
        mov     eax, dword [ebp-0CH]                    ; 31C7 _ 8B. 45, F4
        shl     eax, 4                                  ; 31CA _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 31CD _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 31D2 _ 8B. 00
        lea     edx, [eax-1H]                           ; 31D4 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 31D7 _ 8B. 45, F4
        shl     eax, 4                                  ; 31DA _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 31DD _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 31E2 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 31E4 _ 8B. 45, F4
        shl     eax, 4                                  ; 31E7 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 31EA _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 31EF _ 8B. 00
        test    eax, eax                                ; 31F1 _ 85. C0
        jnz     ?_161                                   ; 31F3 _ 75, 57
        mov     eax, dword [ebp-0CH]                    ; 31F5 _ 8B. 45, F4
        shl     eax, 4                                  ; 31F8 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 31FB _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 3200 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 3206 _ 8B. 45, F4
        shl     eax, 4                                  ; 3209 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 320C _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 3211 _ 0F B6. 00
        movzx   eax, al                                 ; 3214 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 3217 _ 8B. 55, F4
        shl     edx, 4                                  ; 321A _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 321D _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 3223 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 3225 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 3229 _ 89. 14 24
        call    _fifo8_put                              ; 322C _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 3231 _ 8B. 45, F4
        shl     eax, 4                                  ; 3234 _ C1. E0, 04
        add     eax, _timerctl                               ; 3237 _ 05, 00000000(d)
        lea     edx, [eax+4H]                           ; 323C _ 8D. 50, 04
        mov     eax, dword [_task_timer]                ; 323F _ A1, 00000000(d)
        cmp     edx, eax                                ; 3244 _ 39. C2
        jnz     ?_161                                   ; 3246 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 3248 _ C6. 45, F3, 01
?_161:  cmp     byte [ebp-0DH], 0                       ; 324C _ 80. 7D, F3, 00
        jz      ?_162                                   ; 3250 _ 74, 05
        call    _task_switch                            ; 3252 _ E8, 00000000(rel)
?_162:  add     dword [ebp-0CH], 1                      ; 3257 _ 83. 45, F4, 01
?_163:  cmp     dword [ebp-0CH], 499                    ; 325B _ 81. 7D, F4, 000001F3
        jle     ?_160                                   ; 3262 _ 0F 8E, FFFFFF49
        nop                                             ; 3268 _ 90
        leave                                           ; 3269 _ C9
        ret                                             ; 326A _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 326B _ B8, 00000000(d)
        ret                                             ; 3270 _ C3
; _getTimerController End of function

        nop                                             ; 3271 _ 90
        nop                                             ; 3272 _ 90
        nop                                             ; 3273 _ 90

.text:  ; Local function

_set_segmdesc:
        push    ebp                                     ; 3274 _ 55
        mov     ebp, esp                                ; 3275 _ 89. E5
        cmp     dword [ebp+0CH], 1048575                ; 3277 _ 81. 7D, 0C, 000FFFFF
        jbe     ?_164                                   ; 327E _ 76, 10
        or      dword [ebp+14H], 8000H                  ; 3280 _ 81. 4D, 14, 00008000
        mov     eax, dword [ebp+0CH]                    ; 3287 _ 8B. 45, 0C
        shr     eax, 12                                 ; 328A _ C1. E8, 0C
        mov     dword [ebp+0CH], eax                    ; 328D _ 89. 45, 0C
?_164:  mov     eax, dword [ebp+0CH]                    ; 3290 _ 8B. 45, 0C
        mov     edx, eax                                ; 3293 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 3295 _ 8B. 45, 08
        mov     word [eax], dx                          ; 3298 _ 66: 89. 10
        mov     eax, dword [ebp+10H]                    ; 329B _ 8B. 45, 10
        mov     edx, eax                                ; 329E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32A0 _ 8B. 45, 08
        mov     word [eax+2H], dx                       ; 32A3 _ 66: 89. 50, 02
        mov     eax, dword [ebp+10H]                    ; 32A7 _ 8B. 45, 10
        sar     eax, 16                                 ; 32AA _ C1. F8, 10
        mov     edx, eax                                ; 32AD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32AF _ 8B. 45, 08
        mov     byte [eax+4H], dl                       ; 32B2 _ 88. 50, 04
        mov     eax, dword [ebp+14H]                    ; 32B5 _ 8B. 45, 14
        mov     edx, eax                                ; 32B8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32BA _ 8B. 45, 08
        mov     byte [eax+5H], dl                       ; 32BD _ 88. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 32C0 _ 8B. 45, 0C
        shr     eax, 16                                 ; 32C3 _ C1. E8, 10
        and     eax, 0FH                                ; 32C6 _ 83. E0, 0F
        mov     edx, eax                                ; 32C9 _ 89. C2
        mov     eax, dword [ebp+14H]                    ; 32CB _ 8B. 45, 14
        sar     eax, 8                                  ; 32CE _ C1. F8, 08
        and     eax, 0FFFFFFF0H                         ; 32D1 _ 83. E0, F0
        or      eax, edx                                ; 32D4 _ 09. D0
        mov     edx, eax                                ; 32D6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32D8 _ 8B. 45, 08
        mov     byte [eax+6H], dl                       ; 32DB _ 88. 50, 06
        mov     eax, dword [ebp+10H]                    ; 32DE _ 8B. 45, 10
        shr     eax, 24                                 ; 32E1 _ C1. E8, 18
        mov     edx, eax                                ; 32E4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 32E6 _ 8B. 45, 08
        mov     byte [eax+7H], dl                       ; 32E9 _ 88. 50, 07
        nop                                             ; 32EC _ 90
        pop     ebp                                     ; 32ED _ 5D
        ret                                             ; 32EE _ C3

_task_init:; Function begin
        push    ebp                                     ; 32EF _ 55
        mov     ebp, esp                                ; 32F0 _ 89. E5
        sub     esp, 40                                 ; 32F2 _ 83. EC, 28
        call    _get_addr_gdt                           ; 32F5 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 32FA _ 89. 45, F0
        mov     dword [esp+4H], 240                     ; 32FD _ C7. 44 24, 04, 000000F0
        mov     eax, dword [ebp+8H]                     ; 3305 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 3308 _ 89. 04 24
        call    _memman_alloc_4k                        ; 330B _ E8, 00000000(rel)
        mov     dword [_taskctl], eax                   ; 3310 _ A3, 00000004(d)
        mov     dword [ebp-0CH], 0                      ; 3315 _ C7. 45, F4, 00000000
        jmp     ?_166                                   ; 331C _ EB, 7F

?_165:  mov     edx, dword [_taskctl]                   ; 331E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 3324 _ 8B. 45, F4
        imul    eax, eax, 112                           ; 3327 _ 6B. C0, 70
        add     eax, edx                                ; 332A _ 01. D0
        add     eax, 20                                 ; 332C _ 83. C0, 14
        mov     dword [eax], 0                          ; 332F _ C7. 00, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3335 _ 8B. 45, F4
        add     eax, 7                                  ; 3338 _ 83. C0, 07
        mov     ecx, dword [_taskctl]                   ; 333B _ 8B. 0D, 00000004(d)
        lea     edx, [eax*8]                            ; 3341 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-0CH]                    ; 3348 _ 8B. 45, F4
        imul    eax, eax, 112                           ; 334B _ 6B. C0, 70
        add     eax, ecx                                ; 334E _ 01. C8
        add     eax, 16                                 ; 3350 _ 83. C0, 10
        mov     dword [eax], edx                        ; 3353 _ 89. 10
        mov     edx, dword [_taskctl]                   ; 3355 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 335B _ 8B. 45, F4
        imul    eax, eax, 112                           ; 335E _ 6B. C0, 70
        add     eax, 16                                 ; 3361 _ 83. C0, 10
        add     eax, edx                                ; 3364 _ 01. D0
        add     eax, 8                                  ; 3366 _ 83. C0, 08
        mov     ecx, eax                                ; 3369 _ 89. C1
        mov     eax, dword [ebp-0CH]                    ; 336B _ 8B. 45, F4
        add     eax, 7                                  ; 336E _ 83. C0, 07
        lea     edx, [eax*8]                            ; 3371 _ 8D. 14 C5, 00000000
        mov     eax, dword [ebp-10H]                    ; 3378 _ 8B. 45, F0
        add     eax, edx                                ; 337B _ 01. D0
        mov     dword [esp+0CH], 137                    ; 337D _ C7. 44 24, 0C, 00000089
        mov     dword [esp+8H], ecx                     ; 3385 _ 89. 4C 24, 08
        mov     dword [esp+4H], 103                     ; 3389 _ C7. 44 24, 04, 00000067
        mov     dword [esp], eax                        ; 3391 _ 89. 04 24
        call    _set_segmdesc                           ; 3394 _ E8, FFFFFEDB
        add     dword [ebp-0CH], 1                      ; 3399 _ 83. 45, F4, 01
?_166:  cmp     dword [ebp-0CH], 1                      ; 339D _ 83. 7D, F4, 01
        jle     ?_165                                   ; 33A1 _ 0F 8E, FFFFFF77
        call    _task_alloc                             ; 33A7 _ E8, 00000060
        mov     dword [ebp-14H], eax                    ; 33AC _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 33AF _ 8B. 45, EC
        mov     dword [eax+4H], 2                       ; 33B2 _ C7. 40, 04, 00000002
        mov     eax, dword [_taskctl]                   ; 33B9 _ A1, 00000004(d)
        mov     dword [eax], 1                          ; 33BE _ C7. 00, 00000001
        mov     eax, dword [_taskctl]                   ; 33C4 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 33C9 _ C7. 40, 04, 00000000
        mov     eax, dword [_taskctl]                   ; 33D0 _ A1, 00000004(d)
        mov     edx, dword [ebp-14H]                    ; 33D5 _ 8B. 55, EC
        mov     dword [eax+8H], edx                     ; 33D8 _ 89. 50, 08
        mov     eax, dword [ebp-14H]                    ; 33DB _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 33DE _ 8B. 00
        mov     dword [esp], eax                        ; 33E0 _ 89. 04 24
        call    _load_tr                                ; 33E3 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 33E8 _ E8, 00000000(rel)
        mov     dword [_task_timer], eax                       ; 33ED _ A3, 00000000(d)
        mov     eax, dword [_task_timer]                       ; 33F2 _ A1, 00000000(d)
        mov     dword [esp+4H], 100                     ; 33F7 _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 33FF _ 89. 04 24
        call    _timer_settime                          ; 3402 _ E8, 00000000(rel)
        mov     eax, dword [ebp-14H]                    ; 3407 _ 8B. 45, EC
        leave                                           ; 340A _ C9
        ret                                             ; 340B _ C3
; _task_init End of function

_task_alloc:; Function begin
        push    ebp                                     ; 340C _ 55
        mov     ebp, esp                                ; 340D _ 89. E5
        sub     esp, 16                                 ; 340F _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 3412 _ C7. 45, FC, 00000000
        jmp     ?_169                                   ; 3419 _ E9, 000000DF

?_167:  mov     edx, dword [_taskctl]                   ; 341E _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 3424 _ 8B. 45, FC
        imul    eax, eax, 112                           ; 3427 _ 6B. C0, 70
        add     eax, edx                                ; 342A _ 01. D0
        add     eax, 20                                 ; 342C _ 83. C0, 14
        mov     eax, dword [eax]                        ; 342F _ 8B. 00
        test    eax, eax                                ; 3431 _ 85. C0
        jne     ?_168                                   ; 3433 _ 0F 85, 000000C0
        mov     edx, dword [_taskctl]                   ; 3439 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-4H]                     ; 343F _ 8B. 45, FC
        imul    eax, eax, 112                           ; 3442 _ 6B. C0, 70
        add     eax, 16                                 ; 3445 _ 83. C0, 10
        add     eax, edx                                ; 3448 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 344A _ 89. 45, F8
        mov     eax, dword [ebp-8H]                     ; 344D _ 8B. 45, F8
        mov     dword [eax+4H], 1                       ; 3450 _ C7. 40, 04, 00000001
        mov     eax, dword [ebp-8H]                     ; 3457 _ 8B. 45, F8
        mov     dword [eax+2CH], 514                    ; 345A _ C7. 40, 2C, 00000202
        mov     eax, dword [ebp-8H]                     ; 3461 _ 8B. 45, F8
        mov     dword [eax+30H], 0                      ; 3464 _ C7. 40, 30, 00000000
        mov     eax, dword [ebp-8H]                     ; 346B _ 8B. 45, F8
        mov     dword [eax+34H], 0                      ; 346E _ C7. 40, 34, 00000000
        mov     eax, dword [ebp-8H]                     ; 3475 _ 8B. 45, F8
        mov     dword [eax+38H], 0                      ; 3478 _ C7. 40, 38, 00000000
        mov     eax, dword [ebp-8H]                     ; 347F _ 8B. 45, F8
        mov     dword [eax+3CH], 0                      ; 3482 _ C7. 40, 3C, 00000000
        mov     eax, dword [ebp-8H]                     ; 3489 _ 8B. 45, F8
        mov     dword [eax+44H], 0                      ; 348C _ C7. 40, 44, 00000000
        mov     eax, dword [ebp-4H]                     ; 3493 _ 8B. 45, FC
        add     eax, 1                                  ; 3496 _ 83. C0, 01
        shl     eax, 9                                  ; 3499 _ C1. E0, 09
        mov     edx, eax                                ; 349C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 349E _ 8B. 45, F8
        mov     dword [eax+40H], edx                    ; 34A1 _ 89. 50, 40
        mov     eax, dword [ebp-8H]                     ; 34A4 _ 8B. 45, F8
        mov     dword [eax+48H], 0                      ; 34A7 _ C7. 40, 48, 00000000
        mov     eax, dword [ebp-8H]                     ; 34AE _ 8B. 45, F8
        mov     dword [eax+4CH], 0                      ; 34B1 _ C7. 40, 4C, 00000000
        mov     eax, dword [ebp-8H]                     ; 34B8 _ 8B. 45, F8
        mov     dword [eax+50H], 0                      ; 34BB _ C7. 40, 50, 00000000
        mov     eax, dword [ebp-8H]                     ; 34C2 _ 8B. 45, F8
        mov     dword [eax+5CH], 0                      ; 34C5 _ C7. 40, 5C, 00000000
        mov     eax, dword [ebp-8H]                     ; 34CC _ 8B. 45, F8
        mov     dword [eax+60H], 0                      ; 34CF _ C7. 40, 60, 00000000
        mov     eax, dword [ebp-8H]                     ; 34D6 _ 8B. 45, F8
        mov     dword [eax+64H], 0                      ; 34D9 _ C7. 40, 64, 00000000
        mov     eax, dword [ebp-8H]                     ; 34E0 _ 8B. 45, F8
        mov     dword [eax+68H], 0                      ; 34E3 _ C7. 40, 68, 00000000
        mov     eax, dword [ebp-8H]                     ; 34EA _ 8B. 45, F8
        mov     dword [eax+6CH], 1073741824             ; 34ED _ C7. 40, 6C, 40000000
        mov     eax, dword [ebp-8H]                     ; 34F4 _ 8B. 45, F8
        jmp     ?_170                                   ; 34F7 _ EB, 13

?_168:  add     dword [ebp-4H], 1                       ; 34F9 _ 83. 45, FC, 01
?_169:  cmp     dword [ebp-4H], 1                       ; 34FD _ 83. 7D, FC, 01
        jle     ?_167                                   ; 3501 _ 0F 8E, FFFFFF17
        mov     eax, 0                                  ; 3507 _ B8, 00000000
?_170:  leave                                           ; 350C _ C9
        ret                                             ; 350D _ C3
; _task_alloc End of function

_task_run:; Function begin
        push    ebp                                     ; 350E _ 55
        mov     ebp, esp                                ; 350F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 3511 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 3514 _ C7. 40, 04, 00000002
        mov     eax, dword [_taskctl]                   ; 351B _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 3520 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx]                        ; 3526 _ 8B. 12
        mov     ecx, dword [ebp+8H]                     ; 3528 _ 8B. 4D, 08
        mov     dword [eax+edx*4+8H], ecx               ; 352B _ 89. 4C 90, 08
        mov     eax, dword [_taskctl]                   ; 352F _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3534 _ 8B. 10
        add     edx, 1                                  ; 3536 _ 83. C2, 01
        mov     dword [eax], edx                        ; 3539 _ 89. 10
        nop                                             ; 353B _ 90
        pop     ebp                                     ; 353C _ 5D
        ret                                             ; 353D _ C3
; _task_run End of function

_task_switch:; Function begin
        push    ebp                                     ; 353E _ 55
        mov     ebp, esp                                ; 353F _ 89. E5
        sub     esp, 24                                 ; 3541 _ 83. EC, 18
        mov     eax, dword [_task_timer]                       ; 3544 _ A1, 00000000(d)
        mov     dword [esp+4H], 100                     ; 3549 _ C7. 44 24, 04, 00000064
        mov     dword [esp], eax                        ; 3551 _ 89. 04 24
        call    _timer_settime                          ; 3554 _ E8, 00000000(rel)
        mov     eax, dword [_taskctl]                   ; 3559 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 355E _ 8B. 00
        cmp     eax, 1                                  ; 3560 _ 83. F8, 01
        jle     ?_172                                   ; 3563 _ 7E, 52
        mov     eax, dword [_taskctl]                   ; 3565 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 356A _ 8B. 50, 04
        add     edx, 1                                  ; 356D _ 83. C2, 01
        mov     dword [eax+4H], edx                     ; 3570 _ 89. 50, 04
        mov     eax, dword [_taskctl]                   ; 3573 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 3578 _ 8B. 50, 04
        mov     eax, dword [_taskctl]                   ; 357B _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 3580 _ 8B. 00
        cmp     edx, eax                                ; 3582 _ 39. C2
        jnz     ?_171                                   ; 3584 _ 75, 0C
        mov     eax, dword [_taskctl]                   ; 3586 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 358B _ C7. 40, 04, 00000000
?_171:  mov     eax, dword [_taskctl]                   ; 3592 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 3597 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 359D _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 35A0 _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 35A4 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 35A6 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 35AA _ C7. 04 24, 00000000
        call    _farjmp                                 ; 35B1 _ E8, 00000000(rel)
        nop                                             ; 35B6 _ 90
?_172:  nop                                             ; 35B7 _ 90
        leave                                           ; 35B8 _ C9
        ret                                             ; 35B9 _ C3
; _task_switch End of function

_task_sleep:; Function begin
        push    ebp                                     ; 35BA _ 55
        mov     ebp, esp                                ; 35BB _ 89. E5
        sub     esp, 40                                 ; 35BD _ 83. EC, 28
        mov     byte [ebp-0DH], 0                       ; 35C0 _ C6. 45, F3, 00
        mov     eax, dword [ebp+8H]                     ; 35C4 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 35C7 _ 8B. 40, 04
        cmp     eax, 2                                  ; 35CA _ 83. F8, 02
        jne     ?_181                                   ; 35CD _ 0F 85, 000000F1
        mov     eax, dword [_taskctl]                   ; 35D3 _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 35D8 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 35DE _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 35E1 _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 35E5 _ 39. 45, 08
        jnz     ?_173                                   ; 35E8 _ 75, 04
        mov     byte [ebp-0DH], 1                       ; 35EA _ C6. 45, F3, 01
?_173:  mov     dword [ebp-0CH], 0                      ; 35EE _ C7. 45, F4, 00000000
        jmp     ?_175                                   ; 35F5 _ EB, 15

?_174:  mov     eax, dword [_taskctl]                   ; 35F7 _ A1, 00000004(d)
        mov     edx, dword [ebp-0CH]                    ; 35FC _ 8B. 55, F4
        mov     eax, dword [eax+edx*4+8H]               ; 35FF _ 8B. 44 90, 08
        cmp     dword [ebp+8H], eax                     ; 3603 _ 39. 45, 08
        jz      ?_176                                   ; 3606 _ 74, 12
        add     dword [ebp-0CH], 1                      ; 3608 _ 83. 45, F4, 01
?_175:  mov     eax, dword [_taskctl]                   ; 360C _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 3611 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 3613 _ 39. 45, F4
        jl      ?_174                                   ; 3616 _ 7C, DF
        jmp     ?_177                                   ; 3618 _ EB, 01

?_176:  nop                                             ; 361A _ 90
?_177:  mov     eax, dword [_taskctl]                   ; 361B _ A1, 00000004(d)
        mov     edx, dword [eax]                        ; 3620 _ 8B. 10
        sub     edx, 1                                  ; 3622 _ 83. EA, 01
        mov     dword [eax], edx                        ; 3625 _ 89. 10
        mov     eax, dword [_taskctl]                   ; 3627 _ A1, 00000004(d)
        mov     eax, dword [eax+4H]                     ; 362C _ 8B. 40, 04
        cmp     dword [ebp-0CH], eax                    ; 362F _ 39. 45, F4
        jge     ?_179                                   ; 3632 _ 7D, 30
        mov     eax, dword [_taskctl]                   ; 3634 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 3639 _ 8B. 50, 04
        sub     edx, 1                                  ; 363C _ 83. EA, 01
        mov     dword [eax+4H], edx                     ; 363F _ 89. 50, 04
        jmp     ?_179                                   ; 3642 _ EB, 20

?_178:  mov     edx, dword [_taskctl]                   ; 3644 _ 8B. 15, 00000004(d)
        mov     eax, dword [ebp-0CH]                    ; 364A _ 8B. 45, F4
        lea     ecx, [eax+1H]                           ; 364D _ 8D. 48, 01
        mov     eax, dword [_taskctl]                   ; 3650 _ A1, 00000004(d)
        mov     ecx, dword [edx+ecx*4+8H]               ; 3655 _ 8B. 4C 8A, 08
        mov     edx, dword [ebp-0CH]                    ; 3659 _ 8B. 55, F4
        mov     dword [eax+edx*4+8H], ecx               ; 365C _ 89. 4C 90, 08
        add     dword [ebp-0CH], 1                      ; 3660 _ 83. 45, F4, 01
?_179:  mov     eax, dword [_taskctl]                   ; 3664 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 3669 _ 8B. 00
        cmp     dword [ebp-0CH], eax                    ; 366B _ 39. 45, F4
        jl      ?_178                                   ; 366E _ 7C, D4
        mov     eax, dword [ebp+8H]                     ; 3670 _ 8B. 45, 08
        mov     dword [eax+4H], 1                       ; 3673 _ C7. 40, 04, 00000001
        cmp     byte [ebp-0DH], 0                       ; 367A _ 80. 7D, F3, 00
        jz      ?_181                                   ; 367E _ 74, 44
        mov     eax, dword [_taskctl]                   ; 3680 _ A1, 00000004(d)
        mov     edx, dword [eax+4H]                     ; 3685 _ 8B. 50, 04
        mov     eax, dword [_taskctl]                   ; 3688 _ A1, 00000004(d)
        mov     eax, dword [eax]                        ; 368D _ 8B. 00
        cmp     edx, eax                                ; 368F _ 39. C2
        jl      ?_180                                   ; 3691 _ 7C, 0C
        mov     eax, dword [_taskctl]                   ; 3693 _ A1, 00000004(d)
        mov     dword [eax+4H], 0                       ; 3698 _ C7. 40, 04, 00000000
?_180:  mov     eax, dword [_taskctl]                   ; 369F _ A1, 00000004(d)
        mov     edx, dword [_taskctl]                   ; 36A4 _ 8B. 15, 00000004(d)
        mov     edx, dword [edx+4H]                     ; 36AA _ 8B. 52, 04
        mov     eax, dword [eax+edx*4+8H]               ; 36AD _ 8B. 44 90, 08
        mov     eax, dword [eax]                        ; 36B1 _ 8B. 00
        mov     dword [esp+4H], eax                     ; 36B3 _ 89. 44 24, 04
        mov     dword [esp], 0                          ; 36B7 _ C7. 04 24, 00000000
        call    _farjmp                                 ; 36BE _ E8, 00000000(rel)
        nop                                             ; 36C3 _ 90
?_181:  nop                                             ; 36C4 _ 90
        leave                                           ; 36C5 _ C9
        ret                                             ; 36C6 _ C3
; _task_sleep End of function

        nop                                             ; 36C7 _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_182:  db 00H                                          ; 0006 _ .

?_183:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
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

_table_rgb.2315:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2362:                                           ; byte
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

_closebtn.2474:                                         ; byte
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



?_184:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_185:                                                  ; byte
        db 41H, 00H                                     ; 0008 _ A.

?_186:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000A _ 3[sec].

?_187:                                                  ; byte
        db 65H, 6EH, 74H, 65H, 72H, 20H, 74H, 61H       ; 0011 _ enter ta
        db 73H, 6BH, 20H, 62H, 00H                      ; 0019 _ sk b.

?_188:                                                  ; byte
        db 42H, 00H                                     ; 001E _ B.

?_189:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0020 _ page is:
        db 20H, 00H                                     ; 0028 _  .

?_190:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002A _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0032 _ L: .

?_191:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0036 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 003E _ H: .

?_192:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0042 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 004A _ w: .

?_193:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 004E _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0056 _ gh: .

?_194:                                                  ; byte
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

?_195:  resw    1                                       ; 0010

?_196:  resw    1                                       ; 0012

_keyinfo:                                               ; byte
        resb    24                                      ; 0014

?_197:  resd    1                                       ; 002C

_mouseinfo:                                             ; byte
        resb    48                                      ; 0030

_keybuf:                                                ; byte
        resb    32                                      ; 0060

_mousebuf:                                              ; byte
        resb    128                                     ; 0080

_mdec:                                                  ; byte
        resb    12                                      ; 0100

?_198:  resd    1                                       ; 010C

_timerinfo:                                             ; byte
        resb    28                                      ; 0110

_timerbuf:                                              ; byte
        resb    8                                       ; 012C

_shtMsgBox:                                             ; dword
        resd    1                                       ; 0134

_mx:    resd    1                                       ; 0138

_my:    resd    1                                       ; 013C

_xsize: resd    1                                       ; 0140

_ysize: resd    1                                       ; 0144

_buf_back:                                              ; dword
        resd    6                                       ; 0148

_buf_mouse:                                             ; byte
        resb    256                                     ; 0160

_task_a.2258:                                           ; dword
        resd    1                                       ; 0260

_task_b.2259:                                           ; dword
        resd    1                                       ; 0264

_str.2410:                                              ; byte
        resb    1                                       ; 0268

?_199:  resb    9                                       ; 0269

?_200:  resb    14                                      ; 0272

_timerctl:                                              ; byte
        resb    8032                                    ; 0280

_task_timer:                                            ; byte
        resb    4                                       ; 21E0

_taskctl:                                               ; byte
        resb    4                                       ; 21E4


