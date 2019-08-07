; Disassembly of file: ckernel.o
; Wed Aug  7 22:36:25 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 100                                ; 0004 _ 83. EC, 64
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000E _ E8, 00000A7E
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 0018 _ 89. 45, F0
        movzx   eax, word [?_171]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 00000118(d)
        movzx   eax, word [?_172]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 0000011C(d)
        mov     dword [ebp-14H], 0                      ; 0035 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 003C _ C7. 45, E8, 00000000
        call    _init_pit                               ; 0043 _ E8, 00000000(rel)
        mov     dword [esp+8H], _timerbuf               ; 0048 _ C7. 44 24, 08, 00000108(d)
        mov     dword [esp+4H], 8                       ; 0050 _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0058 _ C7. 04 24, 000000F0(d)
        call    _fifo8_init                             ; 005F _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0064 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 0069 _ 89. 45, E4
        mov     dword [esp+8H], 10                      ; 006C _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 0074 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-1CH]                    ; 007C _ 8B. 45, E4
        mov     dword [esp], eax                        ; 007F _ 89. 04 24
        call    _timer_init                             ; 0082 _ E8, 00000000(rel)
        mov     dword [esp+4H], 500                     ; 0087 _ C7. 44 24, 04, 000001F4
        mov     eax, dword [ebp-1CH]                    ; 008F _ 8B. 45, E4
        mov     dword [esp], eax                        ; 0092 _ 89. 04 24
        call    _timer_settime                          ; 0095 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 009A _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 009F _ 89. 45, E0
        mov     dword [esp+8H], 2                       ; 00A2 _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00AA _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-20H]                    ; 00B2 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 00B5 _ 89. 04 24
        call    _timer_init                             ; 00B8 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00BD _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-20H]                    ; 00C5 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 00C8 _ 89. 04 24
        call    _timer_settime                          ; 00CB _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00D0 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 00D5 _ 89. 45, DC
        mov     dword [esp+8H], 1                       ; 00D8 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00E0 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-24H]                    ; 00E8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00EB _ 89. 04 24
        call    _timer_init                             ; 00EE _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00F3 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 00FB _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00FE _ 89. 04 24
        call    _timer_settime                          ; 0101 _ E8, 00000000(rel)
        mov     dword [esp+8H], _keybuf                 ; 0106 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 010E _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0116 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 011D _ E8, 00000000(rel)
        mov     dword [esp+8H], _mousebuf               ; 0122 _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 012A _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 0132 _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 0139 _ E8, 00000000(rel)
        call    _init_palette                           ; 013E _ E8, 00000A11
        call    _init_keyboard                          ; 0143 _ E8, 00000F7A
        call    _get_memory_block_count                 ; 0148 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 014D _ 89. 45, D8
        call    _get_addr_buffer                        ; 0150 _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 0155 _ 89. 45, D4
        mov     eax, dword [_memman]                    ; 0158 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 015D _ 89. 04 24
        call    _memman_init                            ; 0160 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0165 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 016A _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 0172 _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 017A _ 89. 04 24
        call    _memman_free                            ; 017D _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0182 _ 8B. 0D, 0000011C(d)
        mov     edx, dword [_xsize]                     ; 0188 _ 8B. 15, 00000118(d)
        mov     eax, dword [_memman]                    ; 018E _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 0193 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0197 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 019B _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 019E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01A2 _ 89. 04 24
        call    _shtctl_init                            ; 01A5 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 01AA _ 89. 45, D0
        mov     eax, dword [ebp-30H]                    ; 01AD _ 8B. 45, D0
        mov     dword [esp], eax                        ; 01B0 _ 89. 04 24
        call    _sheet_alloc                            ; 01B3 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 01B8 _ 89. 45, EC
        mov     eax, dword [ebp-30H]                    ; 01BB _ 8B. 45, D0
        mov     dword [esp], eax                        ; 01BE _ 89. 04 24
        call    _sheet_alloc                            ; 01C1 _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 01C6 _ 89. 45, E8
        mov     edx, dword [_xsize]                     ; 01C9 _ 8B. 15, 00000118(d)
        mov     eax, dword [_ysize]                     ; 01CF _ A1, 0000011C(d)
        imul    eax, edx                                ; 01D4 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01D7 _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01DD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01E1 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01E4 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 01E9 _ A3, 00000120(d)
        mov     ecx, dword [_ysize]                     ; 01EE _ 8B. 0D, 0000011C(d)
        mov     edx, dword [_xsize]                     ; 01F4 _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 01FA _ A1, 00000120(d)
        mov     dword [esp+10H], 99                     ; 01FF _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ecx                    ; 0207 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 020B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 020F _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0213 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0216 _ 89. 04 24
        call    _sheet_setbuf                           ; 0219 _ E8, 00000000(rel)
        mov     dword [esp+10H], 99                     ; 021E _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0226 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 022E _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0236 _ C7. 44 24, 04, 00000140(d)
        mov     eax, dword [ebp-18H]                    ; 023E _ 8B. 45, E8
        mov     dword [esp], eax                        ; 0241 _ 89. 04 24
        call    _sheet_setbuf                           ; 0244 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0249 _ 8B. 0D, 0000011C(d)
        mov     edx, dword [_xsize]                     ; 024F _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 0255 _ A1, 00000120(d)
        mov     dword [esp+8H], ecx                     ; 025A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 025E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0262 _ 89. 04 24
        call    _init_screen8                           ; 0265 _ E8, 00000397
        mov     dword [esp+4H], 99                      ; 026A _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 0272 _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0279 _ E8, 00000B72
        mov     dword [esp+0CH], 0                      ; 027E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0286 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 028E _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0291 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0295 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0298 _ 89. 04 24
        call    _sheet_slide                            ; 029B _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02A0 _ A1, 00000118(d)
        sub     eax, 16                                 ; 02A5 _ 83. E8, 10
        mov     edx, eax                                ; 02A8 _ 89. C2
        shr     edx, 31                                 ; 02AA _ C1. EA, 1F
        add     eax, edx                                ; 02AD _ 01. D0
        sar     eax, 1                                  ; 02AF _ D1. F8
        mov     dword [_mx], eax                        ; 02B1 _ A3, 00000110(d)
        mov     eax, dword [_ysize]                     ; 02B6 _ A1, 0000011C(d)
        sub     eax, 44                                 ; 02BB _ 83. E8, 2C
        mov     edx, eax                                ; 02BE _ 89. C2
        shr     edx, 31                                 ; 02C0 _ C1. EA, 1F
        add     eax, edx                                ; 02C3 _ 01. D0
        sar     eax, 1                                  ; 02C5 _ D1. F8
        mov     dword [_my], eax                        ; 02C7 _ A3, 00000114(d)
        mov     edx, dword [_my]                        ; 02CC _ 8B. 15, 00000114(d)
        mov     eax, dword [_mx]                        ; 02D2 _ A1, 00000110(d)
        mov     dword [esp+0CH], edx                    ; 02D7 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 02DB _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 02DF _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 02E2 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 02E6 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 02E9 _ 89. 04 24
        call    _sheet_slide                            ; 02EC _ E8, 00000000(rel)
        mov     dword [esp+4H], ?_160                   ; 02F1 _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-30H]                    ; 02F9 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 02FC _ 89. 04 24
        call    _message_box                            ; 02FF _ E8, 000012D9
        mov     dword [ebp-34H], eax                    ; 0304 _ 89. 45, CC
        mov     dword [esp+8H], 0                       ; 0307 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 030F _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0312 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0316 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0319 _ 89. 04 24
        call    _sheet_updown                           ; 031C _ E8, 00000000(rel)
        mov     dword [esp+8H], 100                     ; 0321 _ C7. 44 24, 08, 00000064
        mov     eax, dword [ebp-18H]                    ; 0329 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 032C _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0330 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _sheet_updown                           ; 0336 _ E8, 00000000(rel)
        call    _io_sti                                 ; 033B _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0340 _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 0347 _ E8, 00000DB1
        mov     dword [ebp-38H], 0                      ; 034C _ C7. 45, C8, 00000000
        mov     dword [ebp-0CH], 0                      ; 0353 _ C7. 45, F4, 00000000
?_001:  call    _io_cli                                 ; 035A _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 035F _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0366 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 036B _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 036D _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0374 _ E8, 00000000(rel)
        add     ebx, eax                                ; 0379 _ 01. C3
        mov     dword [esp], _timerinfo                 ; 037B _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0382 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0387 _ 01. D8
        test    eax, eax                                ; 0389 _ 85. C0
        jnz     ?_002                                   ; 038B _ 75, 07
        call    _io_sti                                 ; 038D _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0392 _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0394 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 039B _ E8, 00000000(rel)
        test    eax, eax                                ; 03A0 _ 85. C0
        je      ?_003                                   ; 03A2 _ 0F 84, 00000083
        call    _io_sti                                 ; 03A8 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 03AD _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 03B4 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 03B9 _ 89. 45, C8
        cmp     dword [ebp-38H], 28                     ; 03BC _ 83. 7D, C8, 1C
        jnz     ?_001                                   ; 03C0 _ 75, 98
        mov     ebx, dword [_xsize]                     ; 03C2 _ 8B. 1D, 00000118(d)
        mov     ecx, dword [_buf_back]                  ; 03C8 _ 8B. 0D, 00000120(d)
        mov     edx, dword [ebp-0CH]                    ; 03CE _ 8B. 55, F4
        mov     eax, edx                                ; 03D1 _ 89. D0
        shl     eax, 2                                  ; 03D3 _ C1. E0, 02
        add     eax, edx                                ; 03D6 _ 01. D0
        shl     eax, 2                                  ; 03D8 _ C1. E0, 02
        mov     edx, eax                                ; 03DB _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 03DD _ 8B. 45, D4
        add     eax, edx                                ; 03E0 _ 01. D0
        mov     dword [esp+18H], 7                      ; 03E2 _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], ebx                    ; 03EA _ 89. 5C 24, 14
        mov     edx, dword [ebp-0CH]                    ; 03EE _ 8B. 55, F4
        mov     dword [esp+10H], edx                    ; 03F1 _ 89. 54 24, 10
        mov     dword [esp+0CH], ecx                    ; 03F5 _ 89. 4C 24, 0C
        mov     dword [esp+8H], eax                     ; 03F9 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 03FD _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0400 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0404 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0407 _ 89. 04 24
        call    _showMemoryInfo                         ; 040A _ E8, 00000EC3
        add     dword [ebp-0CH], 1                      ; 040F _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 0413 _ 8B. 45, F4
        cmp     eax, dword [ebp-28H]                    ; 0416 _ 3B. 45, D8
        jle     ?_001                                   ; 0419 _ 0F 8E, FFFFFF3B
        mov     dword [ebp-0CH], 0                      ; 041F _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 0426 _ E9, FFFFFF2F

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 042B _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0432 _ E8, 00000000(rel)
        test    eax, eax                                ; 0437 _ 85. C0
        jz      ?_004                                   ; 0439 _ 74, 1E
        mov     eax, dword [ebp-18H]                    ; 043B _ 8B. 45, E8
        mov     dword [esp+8H], eax                     ; 043E _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 0442 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0445 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0449 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 044C _ 89. 04 24
        call    _show_mouse_info                        ; 044F _ E8, 000005BD
        jmp     ?_001                                   ; 0454 _ E9, FFFFFF01

?_004:  ; Local function
        mov     dword [esp], _timerinfo                 ; 0459 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0460 _ E8, 00000000(rel)
        test    eax, eax                                ; 0465 _ 85. C0
        je      ?_001                                   ; 0467 _ 0F 84, FFFFFEED
        call    _io_sti                                 ; 046D _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0472 _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 0479 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 047E _ 89. 45, C4
        cmp     dword [ebp-3CH], 10                     ; 0481 _ 83. 7D, C4, 0A
        jnz     ?_005                                   ; 0485 _ 75, 37
        mov     dword [esp+14H], ?_161                  ; 0487 _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 048F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 0497 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 049F _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 04A7 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 04AA _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 04AE _ 8B. 45, D0
        mov     dword [esp], eax                        ; 04B1 _ 89. 04 24
        call    _showString                             ; 04B4 _ E8, 000005F9
        jmp     ?_001                                   ; 04B9 _ E9, FFFFFE9C

?_005:  ; Local function
        cmp     dword [ebp-3CH], 2                      ; 04BE _ 83. 7D, C4, 02
        jnz     ?_006                                   ; 04C2 _ 75, 37
        mov     dword [esp+14H], ?_162                  ; 04C4 _ C7. 44 24, 14, 0000000F(d)
        mov     dword [esp+10H], 7                      ; 04CC _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 16                     ; 04D4 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 0                       ; 04DC _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 04E4 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 04E7 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 04EB _ 8B. 45, D0
        mov     dword [esp], eax                        ; 04EE _ 89. 04 24
        call    _showString                             ; 04F1 _ E8, 000005BC
        jmp     ?_001                                   ; 04F6 _ E9, FFFFFE5F

?_006:  ; Local function
        cmp     dword [ebp-3CH], 0                      ; 04FB _ 83. 7D, C4, 00
        jz      ?_007                                   ; 04FF _ 74, 5C
        mov     dword [esp+8H], 0                       ; 0501 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0509 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-24H]                    ; 0511 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0514 _ 89. 04 24
        call    _timer_init                             ; 0517 _ E8, 00000000(rel)
        mov     edx, dword [_xsize]                     ; 051C _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 0522 _ A1, 00000120(d)
        mov     dword [esp+18H], 111                    ; 0527 _ C7. 44 24, 18, 0000006F
        mov     dword [esp+14H], 15                     ; 052F _ C7. 44 24, 14, 0000000F
        mov     dword [esp+10H], 96                     ; 0537 _ C7. 44 24, 10, 00000060
        mov     dword [esp+0CH], 8                      ; 053F _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 7                       ; 0547 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 054F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0553 _ 89. 04 24
        call    _boxfill8                               ; 0556 _ E8, 000006C4
        jmp     ?_008                                   ; 055B _ EB, 5A

?_007:  mov     dword [esp+8H], 1                       ; 055D _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 0565 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-24H]                    ; 056D _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0570 _ 89. 04 24
        call    _timer_init                             ; 0573 _ E8, 00000000(rel)
        mov     edx, dword [_xsize]                     ; 0578 _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 057E _ A1, 00000120(d)
        mov     dword [esp+18H], 111                    ; 0583 _ C7. 44 24, 18, 0000006F
        mov     dword [esp+14H], 15                     ; 058B _ C7. 44 24, 14, 0000000F
        mov     dword [esp+10H], 96                     ; 0593 _ C7. 44 24, 10, 00000060
        mov     dword [esp+0CH], 8                      ; 059B _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 14                      ; 05A3 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], edx                     ; 05AB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05AF _ 89. 04 24
        call    _boxfill8                               ; 05B2 _ E8, 00000668
?_008:  mov     dword [esp+4H], 50                      ; 05B7 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 05BF _ 8B. 45, DC
        mov     dword [esp], eax                        ; 05C2 _ 89. 04 24
        call    _timer_settime                          ; 05C5 _ E8, 00000000(rel)
        mov     dword [esp+14H], 112                    ; 05CA _ C7. 44 24, 14, 00000070
        mov     dword [esp+10H], 16                     ; 05D2 _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 96                     ; 05DA _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 8                       ; 05E2 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-14H]                    ; 05EA _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 05ED _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 05F1 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 05F4 _ 89. 04 24
        call    _sheet_refresh                          ; 05F7 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 05FC _ E9, FFFFFD59

_init_screen8:; Function begin
        push    ebp                                     ; 0601 _ 55
        mov     ebp, esp                                ; 0602 _ 89. E5
        push    ebx                                     ; 0604 _ 53
        sub     esp, 36                                 ; 0605 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0608 _ 8B. 45, 10
        lea     edx, [eax-11H]                          ; 060B _ 8D. 50, EF
        mov     eax, dword [ebp+0CH]                    ; 060E _ 8B. 45, 0C
        sub     eax, 1                                  ; 0611 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0614 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0618 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 061C _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0624 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 062C _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0634 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0637 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 063B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 063E _ 89. 04 24
        call    _boxfill8                               ; 0641 _ E8, 000005D9
        mov     eax, dword [ebp+10H]                    ; 0646 _ 8B. 45, 10
        lea     ecx, [eax-10H]                          ; 0649 _ 8D. 48, F0
        mov     eax, dword [ebp+0CH]                    ; 064C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 064F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0652 _ 8B. 45, 10
        sub     eax, 16                                 ; 0655 _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 0658 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 065C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0660 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0664 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 066C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0674 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0677 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 067B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 067E _ 89. 04 24
        call    _boxfill8                               ; 0681 _ E8, 00000599
        mov     eax, dword [ebp+10H]                    ; 0686 _ 8B. 45, 10
        lea     ecx, [eax-0FH]                          ; 0689 _ 8D. 48, F1
        mov     eax, dword [ebp+0CH]                    ; 068C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 068F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0692 _ 8B. 45, 10
        sub     eax, 15                                 ; 0695 _ 83. E8, 0F
        mov     dword [esp+18H], ecx                    ; 0698 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 069C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 06A0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 06A4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 06AC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 06B4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06B7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06BB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06BE _ 89. 04 24
        call    _boxfill8                               ; 06C1 _ E8, 00000559
        mov     eax, dword [ebp+10H]                    ; 06C6 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 06C9 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 06CC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 06CF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 06D2 _ 8B. 45, 10
        sub     eax, 14                                 ; 06D5 _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 06D8 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 06DC _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 06E0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 06E4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 06EC _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 06F4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06F7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06FB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06FE _ 89. 04 24
        call    _boxfill8                               ; 0701 _ E8, 00000519
        mov     eax, dword [ebp+10H]                    ; 0706 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0709 _ 8D. 50, F4
        mov     eax, dword [ebp+10H]                    ; 070C _ 8B. 45, 10
        sub     eax, 12                                 ; 070F _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 0712 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0716 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 071E _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0722 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 072A _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0732 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0735 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0739 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 073C _ 89. 04 24
        call    _boxfill8                               ; 073F _ E8, 000004DB
        mov     eax, dword [ebp+10H]                    ; 0744 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0747 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 074A _ 8B. 45, 10
        sub     eax, 12                                 ; 074D _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 0750 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0754 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 075C _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0760 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0768 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0770 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0773 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0777 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 077A _ 89. 04 24
        call    _boxfill8                               ; 077D _ E8, 0000049D
        mov     eax, dword [ebp+10H]                    ; 0782 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0785 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0788 _ 8B. 45, 10
        sub     eax, 4                                  ; 078B _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 078E _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0792 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 079A _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 079E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 07A6 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 07AE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07B1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07B5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07B8 _ 89. 04 24
        call    _boxfill8                               ; 07BB _ E8, 0000045F
        mov     eax, dword [ebp+10H]                    ; 07C0 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 07C3 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 07C6 _ 8B. 45, 10
        sub     eax, 11                                 ; 07C9 _ 83. E8, 0B
        mov     dword [esp+18H], edx                    ; 07CC _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 07D0 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 07D8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 30                     ; 07DC _ C7. 44 24, 0C, 0000001E
        mov     dword [esp+8H], 15                      ; 07E4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 07EC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07EF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07F3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07F6 _ 89. 04 24
        call    _boxfill8                               ; 07F9 _ E8, 00000421
        mov     eax, dword [ebp+10H]                    ; 07FE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0801 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0804 _ 8B. 45, 10
        sub     eax, 3                                  ; 0807 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 080A _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 080E _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0816 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 081A _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0822 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 082A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 082D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0831 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0834 _ 89. 04 24
        call    _boxfill8                               ; 0837 _ E8, 000003E3
        mov     eax, dword [ebp+10H]                    ; 083C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 083F _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0842 _ 8B. 45, 10
        sub     eax, 12                                 ; 0845 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 0848 _ 89. 54 24, 18
        mov     dword [esp+14H], 31                     ; 084C _ C7. 44 24, 14, 0000001F
        mov     dword [esp+10H], eax                    ; 0854 _ 89. 44 24, 10
        mov     dword [esp+0CH], 31                     ; 0858 _ C7. 44 24, 0C, 0000001F
        mov     dword [esp+8H], 0                       ; 0860 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0868 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 086B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 086F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0872 _ 89. 04 24
        call    _boxfill8                               ; 0875 _ E8, 000003A5
        mov     eax, dword [ebp+10H]                    ; 087A _ 8B. 45, 10
        lea     ebx, [eax-0CH]                          ; 087D _ 8D. 58, F4
        mov     eax, dword [ebp+0CH]                    ; 0880 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0883 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0886 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0889 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 088C _ 8B. 45, 0C
        sub     eax, 36                                 ; 088F _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 0892 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0896 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 089A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 089E _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 08A2 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 08AA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08AD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08B1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08B4 _ 89. 04 24
        call    _boxfill8                               ; 08B7 _ E8, 00000363
        mov     eax, dword [ebp+10H]                    ; 08BC _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 08BF _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 08C2 _ 8B. 45, 0C
        lea     ecx, [eax-24H]                          ; 08C5 _ 8D. 48, DC
        mov     eax, dword [ebp+10H]                    ; 08C8 _ 8B. 45, 10
        lea     edx, [eax-0BH]                          ; 08CB _ 8D. 50, F5
        mov     eax, dword [ebp+0CH]                    ; 08CE _ 8B. 45, 0C
        sub     eax, 36                                 ; 08D1 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 08D4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 08D8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 08DC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 08E0 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 08E4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 08EC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08EF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08F3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08F6 _ 89. 04 24
        call    _boxfill8                               ; 08F9 _ E8, 00000321
        mov     eax, dword [ebp+10H]                    ; 08FE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0901 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0904 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0907 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 090A _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 090D _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0910 _ 8B. 45, 0C
        sub     eax, 36                                 ; 0913 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 0916 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 091A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 091E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0922 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0926 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 092E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0931 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0935 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0938 _ 89. 04 24
        call    _boxfill8                               ; 093B _ E8, 000002DF
        mov     eax, dword [ebp+10H]                    ; 0940 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0943 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0946 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0949 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 094C _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 094F _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 0952 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0955 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0958 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 095C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0960 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0964 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0968 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0970 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0973 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0977 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 097A _ 89. 04 24
        call    _boxfill8                               ; 097D _ E8, 0000029D
        nop                                             ; 0982 _ 90
        add     esp, 36                                 ; 0983 _ 83. C4, 24
        pop     ebx                                     ; 0986 _ 5B
        pop     ebp                                     ; 0987 _ 5D
        ret                                             ; 0988 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0989 _ 55
        mov     ebp, esp                                ; 098A _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 098C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 098F _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0992 _ A1, 00000110(d)
        add     eax, edx                                ; 0997 _ 01. D0
        mov     dword [_mx], eax                        ; 0999 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 099E _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 09A1 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 09A4 _ A1, 00000114(d)
        add     eax, edx                                ; 09A9 _ 01. D0
        mov     dword [_my], eax                        ; 09AB _ A3, 00000114(d)
        mov     eax, dword [_mx]                        ; 09B0 _ A1, 00000110(d)
        test    eax, eax                                ; 09B5 _ 85. C0
        jns     ?_009                                   ; 09B7 _ 79, 0A
        mov     dword [_mx], 0                          ; 09B9 _ C7. 05, 00000110(d), 00000000
?_009:  mov     eax, dword [_my]                        ; 09C3 _ A1, 00000114(d)
        test    eax, eax                                ; 09C8 _ 85. C0
        jns     ?_010                                   ; 09CA _ 79, 0A
        mov     dword [_my], 0                          ; 09CC _ C7. 05, 00000114(d), 00000000
?_010:  mov     edx, dword [_xsize]                     ; 09D6 _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 09DC _ A1, 00000110(d)
        cmp     edx, eax                                ; 09E1 _ 39. C2
        jg      ?_011                                   ; 09E3 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 09E5 _ A1, 00000118(d)
        sub     eax, 1                                  ; 09EA _ 83. E8, 01
        mov     dword [_mx], eax                        ; 09ED _ A3, 00000110(d)
?_011:  mov     edx, dword [_ysize]                     ; 09F2 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_my]                        ; 09F8 _ A1, 00000114(d)
        cmp     edx, eax                                ; 09FD _ 39. C2
        jg      ?_012                                   ; 09FF _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0A01 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 0A06 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0A09 _ A3, 00000114(d)
?_012:  nop                                             ; 0A0E _ 90
        pop     ebp                                     ; 0A0F _ 5D
        ret                                             ; 0A10 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0A11 _ 55
        mov     ebp, esp                                ; 0A12 _ 89. E5
        sub     esp, 40                                 ; 0A14 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0A17 _ A1, 00000120(d)
        mov     dword [ebp-0CH], eax                    ; 0A1C _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0A1F _ C6. 45, F3, 00
        call    _io_sti                                 ; 0A23 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0A28 _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 0A2F _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0A34 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0A37 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0A3B _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0A3F _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0A46 _ E8, 00000748
        test    eax, eax                                ; 0A4B _ 85. C0
        jz      ?_013                                   ; 0A4D _ 74, 3F
        mov     dword [esp+8H], _mdec                   ; 0A4F _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0A57 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A5A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A5E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A61 _ 89. 04 24
        call    _computeMousePosition                   ; 0A64 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0A69 _ 8B. 15, 00000114(d)
        mov     eax, dword [_mx]                        ; 0A6F _ A1, 00000110(d)
        mov     dword [esp+0CH], edx                    ; 0A74 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0A78 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0A7C _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0A7F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A83 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A86 _ 89. 04 24
        call    _sheet_slide                            ; 0A89 _ E8, 00000000(rel)
?_013:  nop                                             ; 0A8E _ 90
        leave                                           ; 0A8F _ C9
        ret                                             ; 0A90 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0A91 _ 55
        mov     ebp, esp                                ; 0A92 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0A94 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0A97 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0A9D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0AA0 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0AA6 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0AA9 _ 66: C7. 40, 06, 00C8
        nop                                             ; 0AAF _ 90
        pop     ebp                                     ; 0AB0 _ 5D
        ret                                             ; 0AB1 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0AB2 _ 55
        mov     ebp, esp                                ; 0AB3 _ 89. E5
        push    ebx                                     ; 0AB5 _ 53
        sub     esp, 68                                 ; 0AB6 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0AB9 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0ABC _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0ABF _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0AC2 _ 89. 45, F4
        jmp     ?_015                                   ; 0AC5 _ EB, 4B

?_014:  mov     eax, dword [ebp+1CH]                    ; 0AC7 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0ACA _ 0F B6. 00
        movzx   eax, al                                 ; 0ACD _ 0F B6. C0
        shl     eax, 4                                  ; 0AD0 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0AD3 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0AD9 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0ADD _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0AE0 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0AE3 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0AE6 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0AE8 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0AEC _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0AF0 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0AF3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0AF7 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0AFA _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0AFE _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0B02 _ 89. 14 24
        call    _showFont8                              ; 0B05 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0B0A _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0B0E _ 83. 45, 1C, 01
?_015:  mov     eax, dword [ebp+1CH]                    ; 0B12 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B15 _ 0F B6. 00
        test    al, al                                  ; 0B18 _ 84. C0
        jnz     ?_014                                   ; 0B1A _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0B1C _ 8B. 45, 14
        add     eax, 16                                 ; 0B1F _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0B22 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0B26 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0B29 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0B2D _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0B30 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0B34 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0B37 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0B3B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B3E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B42 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B45 _ 89. 04 24
        call    _sheet_refresh                          ; 0B48 _ E8, 00000000(rel)
        nop                                             ; 0B4D _ 90
        add     esp, 68                                 ; 0B4E _ 83. C4, 44
        pop     ebx                                     ; 0B51 _ 5B
        pop     ebp                                     ; 0B52 _ 5D
        ret                                             ; 0B53 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0B54 _ 55
        mov     ebp, esp                                ; 0B55 _ 89. E5
        sub     esp, 24                                 ; 0B57 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2219         ; 0B5A _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0B62 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0B6A _ C7. 04 24, 00000000
        call    _set_palette                            ; 0B71 _ E8, 00000003
        nop                                             ; 0B76 _ 90
        leave                                           ; 0B77 _ C9
        ret                                             ; 0B78 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0B79 _ 55
        mov     ebp, esp                                ; 0B7A _ 89. E5
        sub     esp, 40                                 ; 0B7C _ 83. EC, 28
        call    _io_load_eflags                         ; 0B7F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0B84 _ 89. 45, F0
        call    _io_cli                                 ; 0B87 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0B8C _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0B8F _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0B93 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0B9A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0B9F _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0BA2 _ 89. 45, F4
        jmp     ?_017                                   ; 0BA5 _ EB, 62

?_016:  mov     eax, dword [ebp+10H]                    ; 0BA7 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0BAA _ 0F B6. 00
        shr     al, 2                                   ; 0BAD _ C0. E8, 02
        movzx   eax, al                                 ; 0BB0 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0BB3 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0BB7 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0BBE _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0BC3 _ 8B. 45, 10
        add     eax, 1                                  ; 0BC6 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0BC9 _ 0F B6. 00
        shr     al, 2                                   ; 0BCC _ C0. E8, 02
        movzx   eax, al                                 ; 0BCF _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0BD2 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0BD6 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0BDD _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0BE2 _ 8B. 45, 10
        add     eax, 2                                  ; 0BE5 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0BE8 _ 0F B6. 00
        shr     al, 2                                   ; 0BEB _ C0. E8, 02
        movzx   eax, al                                 ; 0BEE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0BF1 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0BF5 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0BFC _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0C01 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0C05 _ 83. 45, F4, 01
?_017:  mov     eax, dword [ebp-0CH]                    ; 0C09 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0C0C _ 3B. 45, 0C
        jle     ?_016                                   ; 0C0F _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0C11 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0C14 _ 89. 04 24
        call    _io_store_eflags                        ; 0C17 _ E8, 00000000(rel)
        nop                                             ; 0C1C _ 90
        leave                                           ; 0C1D _ C9
        ret                                             ; 0C1E _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0C1F _ 55
        mov     ebp, esp                                ; 0C20 _ 89. E5
        sub     esp, 20                                 ; 0C22 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0C25 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0C28 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0C2B _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0C2E _ 89. 45, F8
        jmp     ?_021                                   ; 0C31 _ EB, 31

?_018:  mov     eax, dword [ebp+14H]                    ; 0C33 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0C36 _ 89. 45, FC
        jmp     ?_020                                   ; 0C39 _ EB, 1D

?_019:  mov     eax, dword [ebp-8H]                     ; 0C3B _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0C3E _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0C42 _ 8B. 55, FC
        add     eax, edx                                ; 0C45 _ 01. D0
        mov     edx, eax                                ; 0C47 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C49 _ 8B. 45, 08
        add     edx, eax                                ; 0C4C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C4E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C52 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0C54 _ 83. 45, FC, 01
?_020:  mov     eax, dword [ebp-4H]                     ; 0C58 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0C5B _ 3B. 45, 1C
        jle     ?_019                                   ; 0C5E _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0C60 _ 83. 45, F8, 01
?_021:  mov     eax, dword [ebp-8H]                     ; 0C64 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0C67 _ 3B. 45, 20
        jle     ?_018                                   ; 0C6A _ 7E, C7
        nop                                             ; 0C6C _ 90
        leave                                           ; 0C6D _ C9
        ret                                             ; 0C6E _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0C6F _ 55
        mov     ebp, esp                                ; 0C70 _ 89. E5
        sub     esp, 20                                 ; 0C72 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0C75 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0C78 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0C7B _ C7. 45, FC, 00000000
        jmp     ?_031                                   ; 0C82 _ E9, 0000015C

?_022:  mov     edx, dword [ebp-4H]                     ; 0C87 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0C8A _ 8B. 45, 1C
        add     eax, edx                                ; 0C8D _ 01. D0
        movzx   eax, byte [eax]                         ; 0C8F _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0C92 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0C95 _ 80. 7D, FB, 00
        jns     ?_023                                   ; 0C99 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0C9B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C9E _ 8B. 45, FC
        add     eax, edx                                ; 0CA1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0CA3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0CA7 _ 8B. 55, 10
        add     eax, edx                                ; 0CAA _ 01. D0
        mov     edx, eax                                ; 0CAC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CAE _ 8B. 45, 08
        add     edx, eax                                ; 0CB1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CB3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CB7 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0CB9 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0CBD _ 83. E0, 40
        test    eax, eax                                ; 0CC0 _ 85. C0
        jz      ?_024                                   ; 0CC2 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0CC4 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0CC7 _ 8B. 45, FC
        add     eax, edx                                ; 0CCA _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0CCC _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0CD0 _ 8B. 55, 10
        add     eax, edx                                ; 0CD3 _ 01. D0
        lea     edx, [eax+1H]                           ; 0CD5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0CD8 _ 8B. 45, 08
        add     edx, eax                                ; 0CDB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CDD _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CE1 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0CE3 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0CE7 _ 83. E0, 20
        test    eax, eax                                ; 0CEA _ 85. C0
        jz      ?_025                                   ; 0CEC _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0CEE _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0CF1 _ 8B. 45, FC
        add     eax, edx                                ; 0CF4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0CF6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0CFA _ 8B. 55, 10
        add     eax, edx                                ; 0CFD _ 01. D0
        lea     edx, [eax+2H]                           ; 0CFF _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0D02 _ 8B. 45, 08
        add     edx, eax                                ; 0D05 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D07 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D0B _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0D0D _ 0F BE. 45, FB
        and     eax, 10H                                ; 0D11 _ 83. E0, 10
        test    eax, eax                                ; 0D14 _ 85. C0
        jz      ?_026                                   ; 0D16 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D18 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0D1B _ 8B. 45, FC
        add     eax, edx                                ; 0D1E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D20 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0D24 _ 8B. 55, 10
        add     eax, edx                                ; 0D27 _ 01. D0
        lea     edx, [eax+3H]                           ; 0D29 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0D2C _ 8B. 45, 08
        add     edx, eax                                ; 0D2F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D31 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D35 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 0D37 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0D3B _ 83. E0, 08
        test    eax, eax                                ; 0D3E _ 85. C0
        jz      ?_027                                   ; 0D40 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D42 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0D45 _ 8B. 45, FC
        add     eax, edx                                ; 0D48 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D4A _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0D4E _ 8B. 55, 10
        add     eax, edx                                ; 0D51 _ 01. D0
        lea     edx, [eax+4H]                           ; 0D53 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0D56 _ 8B. 45, 08
        add     edx, eax                                ; 0D59 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D5B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D5F _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 0D61 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0D65 _ 83. E0, 04
        test    eax, eax                                ; 0D68 _ 85. C0
        jz      ?_028                                   ; 0D6A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D6C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0D6F _ 8B. 45, FC
        add     eax, edx                                ; 0D72 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D74 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0D78 _ 8B. 55, 10
        add     eax, edx                                ; 0D7B _ 01. D0
        lea     edx, [eax+5H]                           ; 0D7D _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0D80 _ 8B. 45, 08
        add     edx, eax                                ; 0D83 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D85 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D89 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 0D8B _ 0F BE. 45, FB
        and     eax, 02H                                ; 0D8F _ 83. E0, 02
        test    eax, eax                                ; 0D92 _ 85. C0
        jz      ?_029                                   ; 0D94 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D96 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0D99 _ 8B. 45, FC
        add     eax, edx                                ; 0D9C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D9E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0DA2 _ 8B. 55, 10
        add     eax, edx                                ; 0DA5 _ 01. D0
        lea     edx, [eax+6H]                           ; 0DA7 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0DAA _ 8B. 45, 08
        add     edx, eax                                ; 0DAD _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0DAF _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0DB3 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 0DB5 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0DB9 _ 83. E0, 01
        test    eax, eax                                ; 0DBC _ 85. C0
        jz      ?_030                                   ; 0DBE _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0DC0 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0DC3 _ 8B. 45, FC
        add     eax, edx                                ; 0DC6 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0DC8 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0DCC _ 8B. 55, 10
        add     eax, edx                                ; 0DCF _ 01. D0
        lea     edx, [eax+7H]                           ; 0DD1 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0DD4 _ 8B. 45, 08
        add     edx, eax                                ; 0DD7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0DD9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0DDD _ 88. 02
?_030:  add     dword [ebp-4H], 1                       ; 0DDF _ 83. 45, FC, 01
?_031:  cmp     dword [ebp-4H], 15                      ; 0DE3 _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 0DE7 _ 0F 8E, FFFFFE9A
        nop                                             ; 0DED _ 90
        leave                                           ; 0DEE _ C9
        ret                                             ; 0DEF _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0DF0 _ 55
        mov     ebp, esp                                ; 0DF1 _ 89. E5
        sub     esp, 20                                 ; 0DF3 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0DF6 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0DF9 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0DFC _ C7. 45, F8, 00000000
        jmp     ?_038                                   ; 0E03 _ E9, 000000B1

?_032:  mov     dword [ebp-4H], 0                       ; 0E08 _ C7. 45, FC, 00000000
        jmp     ?_037                                   ; 0E0F _ E9, 00000097

?_033:  mov     eax, dword [ebp-8H]                     ; 0E14 _ 8B. 45, F8
        shl     eax, 4                                  ; 0E17 _ C1. E0, 04
        mov     edx, eax                                ; 0E1A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E1C _ 8B. 45, FC
        add     eax, edx                                ; 0E1F _ 01. D0
        add     eax, _cursor.2266                       ; 0E21 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0E26 _ 0F B6. 00
        cmp     al, 42                                  ; 0E29 _ 3C, 2A
        jnz     ?_034                                   ; 0E2B _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0E2D _ 8B. 45, F8
        shl     eax, 4                                  ; 0E30 _ C1. E0, 04
        mov     edx, eax                                ; 0E33 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E35 _ 8B. 45, FC
        add     eax, edx                                ; 0E38 _ 01. D0
        mov     edx, eax                                ; 0E3A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E3C _ 8B. 45, 08
        add     eax, edx                                ; 0E3F _ 01. D0
        mov     byte [eax], 0                           ; 0E41 _ C6. 00, 00
?_034:  mov     eax, dword [ebp-8H]                     ; 0E44 _ 8B. 45, F8
        shl     eax, 4                                  ; 0E47 _ C1. E0, 04
        mov     edx, eax                                ; 0E4A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E4C _ 8B. 45, FC
        add     eax, edx                                ; 0E4F _ 01. D0
        add     eax, _cursor.2266                       ; 0E51 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0E56 _ 0F B6. 00
        cmp     al, 79                                  ; 0E59 _ 3C, 4F
        jnz     ?_035                                   ; 0E5B _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0E5D _ 8B. 45, F8
        shl     eax, 4                                  ; 0E60 _ C1. E0, 04
        mov     edx, eax                                ; 0E63 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E65 _ 8B. 45, FC
        add     eax, edx                                ; 0E68 _ 01. D0
        mov     edx, eax                                ; 0E6A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E6C _ 8B. 45, 08
        add     eax, edx                                ; 0E6F _ 01. D0
        mov     byte [eax], 7                           ; 0E71 _ C6. 00, 07
?_035:  mov     eax, dword [ebp-8H]                     ; 0E74 _ 8B. 45, F8
        shl     eax, 4                                  ; 0E77 _ C1. E0, 04
        mov     edx, eax                                ; 0E7A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E7C _ 8B. 45, FC
        add     eax, edx                                ; 0E7F _ 01. D0
        add     eax, _cursor.2266                       ; 0E81 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0E86 _ 0F B6. 00
        cmp     al, 46                                  ; 0E89 _ 3C, 2E
        jnz     ?_036                                   ; 0E8B _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0E8D _ 8B. 45, F8
        shl     eax, 4                                  ; 0E90 _ C1. E0, 04
        mov     edx, eax                                ; 0E93 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E95 _ 8B. 45, FC
        add     eax, edx                                ; 0E98 _ 01. D0
        mov     edx, eax                                ; 0E9A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E9C _ 8B. 45, 08
        add     edx, eax                                ; 0E9F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EA1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EA5 _ 88. 02
?_036:  add     dword [ebp-4H], 1                       ; 0EA7 _ 83. 45, FC, 01
?_037:  cmp     dword [ebp-4H], 15                      ; 0EAB _ 83. 7D, FC, 0F
        jle     ?_033                                   ; 0EAF _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0EB5 _ 83. 45, F8, 01
?_038:  cmp     dword [ebp-8H], 15                      ; 0EB9 _ 83. 7D, F8, 0F
        jle     ?_032                                   ; 0EBD _ 0F 8E, FFFFFF45
        nop                                             ; 0EC3 _ 90
        leave                                           ; 0EC4 _ C9
        ret                                             ; 0EC5 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0EC6 _ 55
        mov     ebp, esp                                ; 0EC7 _ 89. E5
        push    ebx                                     ; 0EC9 _ 53
        sub     esp, 16                                 ; 0ECA _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0ECD _ C7. 45, F4, 00000000
        jmp     ?_042                                   ; 0ED4 _ EB, 4E

?_039:  mov     dword [ebp-8H], 0                       ; 0ED6 _ C7. 45, F8, 00000000
        jmp     ?_041                                   ; 0EDD _ EB, 39

?_040:  mov     eax, dword [ebp-0CH]                    ; 0EDF _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0EE2 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0EE6 _ 8B. 55, F8
        add     eax, edx                                ; 0EE9 _ 01. D0
        mov     edx, eax                                ; 0EEB _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0EED _ 8B. 45, 20
        add     eax, edx                                ; 0EF0 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0EF2 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0EF5 _ 8B. 55, F4
        add     edx, ecx                                ; 0EF8 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0EFA _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0EFE _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0F01 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0F04 _ 01. D9
        add     edx, ecx                                ; 0F06 _ 01. CA
        mov     ecx, edx                                ; 0F08 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0F0A _ 8B. 55, 08
        add     edx, ecx                                ; 0F0D _ 01. CA
        movzx   eax, byte [eax]                         ; 0F0F _ 0F B6. 00
        mov     byte [edx], al                          ; 0F12 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0F14 _ 83. 45, F8, 01
?_041:  mov     eax, dword [ebp-8H]                     ; 0F18 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0F1B _ 3B. 45, 10
        jl      ?_040                                   ; 0F1E _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0F20 _ 83. 45, F4, 01
?_042:  mov     eax, dword [ebp-0CH]                    ; 0F24 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0F27 _ 3B. 45, 14
        jl      ?_039                                   ; 0F2A _ 7C, AA
        nop                                             ; 0F2C _ 90
        add     esp, 16                                 ; 0F2D _ 83. C4, 10
        pop     ebx                                     ; 0F30 _ 5B
        pop     ebp                                     ; 0F31 _ 5D
        ret                                             ; 0F32 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0F33 _ 55
        mov     ebp, esp                                ; 0F34 _ 89. E5
        sub     esp, 40                                 ; 0F36 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0F39 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0F3E _ 89. 45, F4
        movzx   eax, word [?_171]                       ; 0F41 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0F48 _ 98
        mov     dword [ebp-10H], eax                    ; 0F49 _ 89. 45, F0
        movzx   eax, word [?_172]                       ; 0F4C _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0F53 _ 98
        mov     dword [ebp-14H], eax                    ; 0F54 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0F57 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0F5F _ C7. 04 24, 00000020
        call    _io_out8                                ; 0F66 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0F6B _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0F6F _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0F76 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0F7B _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0F7E _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0F82 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0F86 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0F8D _ E8, 00000000(rel)
        nop                                             ; 0F92 _ 90
        leave                                           ; 0F93 _ C9
        ret                                             ; 0F94 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0F95 _ 55
        mov     ebp, esp                                ; 0F96 _ 89. E5
        sub     esp, 4                                  ; 0F98 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0F9B _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0F9E _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0FA1 _ 80. 7D, FC, 09
        jle     ?_043                                   ; 0FA5 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0FA7 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0FAB _ 83. C0, 37
        jmp     ?_044                                   ; 0FAE _ EB, 07

?_043:  movzx   eax, byte [ebp-4H]                      ; 0FB0 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0FB4 _ 83. C0, 30
?_044:  leave                                           ; 0FB7 _ C9
        ret                                             ; 0FB8 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0FB9 _ 55
        mov     ebp, esp                                ; 0FBA _ 89. E5
        sub     esp, 24                                 ; 0FBC _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0FBF _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0FC2 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0FC5 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0FCC _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0FD0 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0FD3 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0FD6 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0FDA _ 89. 04 24
        call    _charToHexVal                           ; 0FDD _ E8, FFFFFFB3
        mov     byte [?_159], al                        ; 0FE2 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0FE7 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0FEB _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0FEE _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0FF1 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0FF5 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0FF8 _ 89. 04 24
        call    _charToHexVal                           ; 0FFB _ E8, FFFFFF95
        mov     byte [?_158], al                        ; 1000 _ A2, 00000006(d)
        mov     eax, _keyval                            ; 1005 _ B8, 00000004(d)
        leave                                           ; 100A _ C9
        ret                                             ; 100B _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 100C _ 55
        mov     ebp, esp                                ; 100D _ 89. E5
        sub     esp, 16                                 ; 100F _ 83. EC, 10
        mov     byte [_str.2314], 48                    ; 1012 _ C6. 05, 00000240(d), 30
        mov     byte [?_173], 88                        ; 1019 _ C6. 05, 00000241(d), 58
        mov     byte [?_174], 0                         ; 1020 _ C6. 05, 0000024A(d), 00
        mov     dword [ebp-4H], 2                       ; 1027 _ C7. 45, FC, 00000002
        jmp     ?_046                                   ; 102E _ EB, 0F

?_045:  mov     eax, dword [ebp-4H]                     ; 1030 _ 8B. 45, FC
        add     eax, _str.2314                          ; 1033 _ 05, 00000240(d)
        mov     byte [eax], 48                          ; 1038 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 103B _ 83. 45, FC, 01
?_046:  cmp     dword [ebp-4H], 9                       ; 103F _ 83. 7D, FC, 09
        jle     ?_045                                   ; 1043 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 1045 _ C7. 45, F8, 00000009
        jmp     ?_050                                   ; 104C _ EB, 42

?_047:  mov     eax, dword [ebp+8H]                     ; 104E _ 8B. 45, 08
        and     eax, 0FH                                ; 1051 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 1054 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1057 _ 8B. 45, 08
        shr     eax, 4                                  ; 105A _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 105D _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 1060 _ 83. 7D, F4, 09
        jle     ?_048                                   ; 1064 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1066 _ 8B. 45, F4
        add     eax, 55                                 ; 1069 _ 83. C0, 37
        mov     edx, eax                                ; 106C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 106E _ 8B. 45, F8
        add     eax, _str.2314                          ; 1071 _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 1076 _ 88. 10
        jmp     ?_049                                   ; 1078 _ EB, 12

?_048:  mov     eax, dword [ebp-0CH]                    ; 107A _ 8B. 45, F4
        add     eax, 48                                 ; 107D _ 83. C0, 30
        mov     edx, eax                                ; 1080 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1082 _ 8B. 45, F8
        add     eax, _str.2314                          ; 1085 _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 108A _ 88. 10
?_049:  sub     dword [ebp-8H], 1                       ; 108C _ 83. 6D, F8, 01
?_050:  cmp     dword [ebp-8H], 1                       ; 1090 _ 83. 7D, F8, 01
        jle     ?_051                                   ; 1094 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1096 _ 83. 7D, 08, 00
        jnz     ?_047                                   ; 109A _ 75, B2
?_051:  mov     eax, _str.2314                          ; 109C _ B8, 00000240(d)
        leave                                           ; 10A1 _ C9
        ret                                             ; 10A2 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 10A3 _ 55
        mov     ebp, esp                                ; 10A4 _ 89. E5
        sub     esp, 24                                 ; 10A6 _ 83. EC, 18
?_052:  mov     dword [esp], 100                        ; 10A9 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 10B0 _ E8, 00000000(rel)
        and     eax, 02H                                ; 10B5 _ 83. E0, 02
        test    eax, eax                                ; 10B8 _ 85. C0
        jz      ?_053                                   ; 10BA _ 74, 02
        jmp     ?_052                                   ; 10BC _ EB, EB
; _wait_KBC_sendready End of function

?_053:  ; Local function
        nop                                             ; 10BE _ 90
        nop                                             ; 10BF _ 90
        leave                                           ; 10C0 _ C9
        ret                                             ; 10C1 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 10C2 _ 55
        mov     ebp, esp                                ; 10C3 _ 89. E5
        sub     esp, 24                                 ; 10C5 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 10C8 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 10CD _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 10D5 _ C7. 04 24, 00000064
        call    _io_out8                                ; 10DC _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 10E1 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 10E6 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 10EE _ C7. 04 24, 00000060
        call    _io_out8                                ; 10F5 _ E8, 00000000(rel)
        nop                                             ; 10FA _ 90
        leave                                           ; 10FB _ C9
        ret                                             ; 10FC _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 10FD _ 55
        mov     ebp, esp                                ; 10FE _ 89. E5
        sub     esp, 24                                 ; 1100 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1103 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1108 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 1110 _ C7. 04 24, 00000064
        call    _io_out8                                ; 1117 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 111C _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 1121 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1129 _ C7. 04 24, 00000060
        call    _io_out8                                ; 1130 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1135 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1138 _ C6. 40, 03, 00
        nop                                             ; 113C _ 90
        leave                                           ; 113D _ C9
        ret                                             ; 113E _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 113F _ 55
        mov     ebp, esp                                ; 1140 _ 89. E5
        sub     esp, 40                                 ; 1142 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 1145 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 114D _ C7. 04 24, 000000A0
        call    _io_out8                                ; 1154 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1159 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1161 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1168 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 116D _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1174 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1179 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 117C _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1180 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1184 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 118B _ E8, 00000000(rel)
        nop                                             ; 1190 _ 90
        leave                                           ; 1191 _ C9
        ret                                             ; 1192 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1193 _ 55
        mov     ebp, esp                                ; 1194 _ 89. E5
        sub     esp, 4                                  ; 1196 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1199 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 119C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 119F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 11A2 _ 0F B6. 40, 03
        test    al, al                                  ; 11A6 _ 84. C0
        jnz     ?_055                                   ; 11A8 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 11AA _ 80. 7D, FC, FA
        jnz     ?_054                                   ; 11AE _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 11B0 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 11B3 _ C6. 40, 03, 01
?_054:  mov     eax, 0                                  ; 11B7 _ B8, 00000000
        jmp     ?_062                                   ; 11BC _ E9, 0000010F

?_055:  mov     eax, dword [ebp+8H]                     ; 11C1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 11C4 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 11C8 _ 3C, 01
        jnz     ?_057                                   ; 11CA _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 11CC _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 11D0 _ 25, 000000C8
        cmp     eax, 8                                  ; 11D5 _ 83. F8, 08
        jnz     ?_056                                   ; 11D8 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 11DA _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 11DD _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 11E1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 11E3 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 11E6 _ C6. 40, 03, 02
?_056:  mov     eax, 0                                  ; 11EA _ B8, 00000000
        jmp     ?_062                                   ; 11EF _ E9, 000000DC

?_057:  mov     eax, dword [ebp+8H]                     ; 11F4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 11F7 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 11FB _ 3C, 02
        jnz     ?_058                                   ; 11FD _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 11FF _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1202 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1206 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1209 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 120C _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1210 _ B8, 00000000
        jmp     ?_062                                   ; 1215 _ E9, 000000B6

?_058:  mov     eax, dword [ebp+8H]                     ; 121A _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 121D _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1221 _ 3C, 03
        jne     ?_061                                   ; 1223 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1229 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 122C _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1230 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1233 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1236 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 123A _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 123D _ 0F B6. 00
        movzx   eax, al                                 ; 1240 _ 0F B6. C0
        and     eax, 07H                                ; 1243 _ 83. E0, 07
        mov     edx, eax                                ; 1246 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1248 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 124B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 124E _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1251 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1255 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1258 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 125B _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 125E _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1261 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1265 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1268 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 126B _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 126E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1271 _ 0F B6. 00
        movzx   eax, al                                 ; 1274 _ 0F B6. C0
        and     eax, 10H                                ; 1277 _ 83. E0, 10
        test    eax, eax                                ; 127A _ 85. C0
        jz      ?_059                                   ; 127C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 127E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1281 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1284 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1289 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 128B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 128E _ 89. 50, 04
?_059:  mov     eax, dword [ebp+8H]                     ; 1291 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1294 _ 0F B6. 00
        movzx   eax, al                                 ; 1297 _ 0F B6. C0
        and     eax, 20H                                ; 129A _ 83. E0, 20
        test    eax, eax                                ; 129D _ 85. C0
        jz      ?_060                                   ; 129F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 12A1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 12A4 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 12A7 _ 0D, FFFFFF00
        mov     edx, eax                                ; 12AC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12AE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 12B1 _ 89. 50, 08
?_060:  mov     eax, dword [ebp+8H]                     ; 12B4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 12B7 _ 8B. 40, 08
        neg     eax                                     ; 12BA _ F7. D8
        mov     edx, eax                                ; 12BC _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12BE _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 12C1 _ 89. 50, 08
        mov     eax, 1                                  ; 12C4 _ B8, 00000001
        jmp     ?_062                                   ; 12C9 _ EB, 05

?_061:  mov     eax, 4294967295                         ; 12CB _ B8, FFFFFFFF
?_062:  leave                                           ; 12D0 _ C9
        ret                                             ; 12D1 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 12D2 _ 55
        mov     ebp, esp                                ; 12D3 _ 89. E5
        sub     esp, 88                                 ; 12D5 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 12D8 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 12DF _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 12E6 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 12ED _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 12F4 _ 8B. 15, 0000011C(d)
        mov     eax, dword [ebp+0CH]                    ; 12FA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 12FD _ 8B. 00
        mov     dword [esp+8H], edx                     ; 12FF _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1303 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1306 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 130A _ 89. 04 24
        call    _init_screen8                           ; 130D _ E8, FFFFF2EF
        mov     eax, dword [ebp+20H]                    ; 1312 _ 8B. 45, 20
        movsx   eax, al                                 ; 1315 _ 0F BE. C0
        mov     dword [esp+14H], ?_163                  ; 1318 _ C7. 44 24, 14, 00000016(d)
        mov     dword [esp+10H], eax                    ; 1320 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1324 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1327 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 132B _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 132E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1332 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1335 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1339 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 133C _ 89. 04 24
        call    _showString                             ; 133F _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 1344 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1347 _ 89. 04 24
        call    _intToHexStr                            ; 134A _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 134F _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1352 _ 8B. 45, 20
        movsx   eax, al                                 ; 1355 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1358 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 135B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 135F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1363 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1366 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 136A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 136D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1371 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1374 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1378 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 137B _ 89. 04 24
        call    _showString                             ; 137E _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1383 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1387 _ 8B. 45, 20
        movsx   eax, al                                 ; 138A _ 0F BE. C0
        mov     dword [esp+14H], ?_164                  ; 138D _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 1395 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1399 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 139C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13A0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13A3 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13A7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13AA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13B1 _ 89. 04 24
        call    _showString                             ; 13B4 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 13B9 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 13BC _ 8B. 00
        mov     dword [esp], eax                        ; 13BE _ 89. 04 24
        call    _intToHexStr                            ; 13C1 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 13C6 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 13C9 _ 8B. 45, 20
        movsx   eax, al                                 ; 13CC _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 13CF _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 13D2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13D6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13DA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13DD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13E1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13E4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13E8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13F2 _ 89. 04 24
        call    _showString                             ; 13F5 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 13FA _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 13FE _ 8B. 45, 20
        movsx   eax, al                                 ; 1401 _ 0F BE. C0
        mov     dword [esp+14H], ?_165                  ; 1404 _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], eax                    ; 140C _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1410 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1413 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1417 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 141A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 141E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1421 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1425 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1428 _ 89. 04 24
        call    _showString                             ; 142B _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1430 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1433 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1436 _ 89. 04 24
        call    _intToHexStr                            ; 1439 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 143E _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1441 _ 8B. 45, 20
        movsx   eax, al                                 ; 1444 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1447 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 144A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 144E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1452 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1455 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1459 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 145C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1460 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1463 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1467 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 146A _ 89. 04 24
        call    _showString                             ; 146D _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1472 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1476 _ 8B. 45, 20
        movsx   eax, al                                 ; 1479 _ 0F BE. C0
        mov     dword [esp+14H], ?_166                  ; 147C _ C7. 44 24, 14, 00000038(d)
        mov     dword [esp+10H], eax                    ; 1484 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1488 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 148B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 148F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1492 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1496 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1499 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 149D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14A0 _ 89. 04 24
        call    _showString                             ; 14A3 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 14A8 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 14AB _ 8B. 40, 08
        mov     dword [esp], eax                        ; 14AE _ 89. 04 24
        call    _intToHexStr                            ; 14B1 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 14B6 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 14B9 _ 8B. 45, 20
        movsx   eax, al                                 ; 14BC _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 14BF _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 14C2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 14C6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14CA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14CD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14D1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14D4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14D8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14E2 _ 89. 04 24
        call    _showString                             ; 14E5 _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 14EA _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 14EE _ 8B. 45, 20
        movsx   eax, al                                 ; 14F1 _ 0F BE. C0
        mov     dword [esp+14H], ?_167                  ; 14F4 _ C7. 44 24, 14, 00000044(d)
        mov     dword [esp+10H], eax                    ; 14FC _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1500 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1503 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1507 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 150A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 150E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1511 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1515 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1518 _ 89. 04 24
        call    _showString                             ; 151B _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 1520 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1523 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1526 _ 89. 04 24
        call    _intToHexStr                            ; 1529 _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 152E _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 1531 _ 8B. 45, 20
        movsx   eax, al                                 ; 1534 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1537 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 153A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 153E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1542 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1545 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1549 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 154C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1550 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1553 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1557 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 155A _ 89. 04 24
        call    _showString                             ; 155D _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 1562 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1566 _ 8B. 45, 20
        movsx   eax, al                                 ; 1569 _ 0F BE. C0
        mov     dword [esp+14H], ?_168                  ; 156C _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], eax                    ; 1574 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1578 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 157B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 157F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1582 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1586 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1589 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 158D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1590 _ 89. 04 24
        call    _showString                             ; 1593 _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 1598 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 159B _ 8B. 40, 10
        mov     dword [esp], eax                        ; 159E _ 89. 04 24
        call    _intToHexStr                            ; 15A1 _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 15A6 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 15A9 _ 8B. 45, 20
        movsx   eax, al                                 ; 15AC _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 15AF _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 15B2 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 15B6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 15BA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 15BD _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 15C1 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 15C4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 15C8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 15CB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15CF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15D2 _ 89. 04 24
        call    _showString                             ; 15D5 _ E8, FFFFF4D8
        nop                                             ; 15DA _ 90
        leave                                           ; 15DB _ C9
        ret                                             ; 15DC _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 15DD _ 55
        mov     ebp, esp                                ; 15DE _ 89. E5
        sub     esp, 56                                 ; 15E0 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 15E3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15E6 _ 89. 04 24
        call    _sheet_alloc                            ; 15E9 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 15EE _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 15F1 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 15F6 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 15FE _ 89. 04 24
        call    _memman_alloc_4k                        ; 1601 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1606 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1609 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1611 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1619 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1621 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1624 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1628 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 162B _ 89. 04 24
        call    _sheet_setbuf                           ; 162E _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1633 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1636 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 163A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 163D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1641 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1644 _ 89. 04 24
        call    _make_window8                           ; 1647 _ E8, 000000A5
        mov     dword [esp+14H], ?_169                  ; 164C _ C7. 44 24, 14, 00000058(d)
        mov     dword [esp+10H], 0                      ; 1654 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 165C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 1664 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 166C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 166F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1673 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1676 _ 89. 04 24
        call    _showString                             ; 1679 _ E8, FFFFF434
        mov     dword [esp+14H], ?_170                  ; 167E _ C7. 44 24, 14, 00000063(d)
        mov     dword [esp+10H], 0                      ; 1686 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 44                     ; 168E _ C7. 44 24, 0C, 0000002C
        mov     dword [esp+8H], 24                      ; 1696 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 169E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 16A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 16A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 16A8 _ 89. 04 24
        call    _showString                             ; 16AB _ E8, FFFFF402
        mov     dword [esp+0CH], 72                     ; 16B0 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 16B8 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 16C0 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 16C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 16C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 16CA _ 89. 04 24
        call    _sheet_slide                            ; 16CD _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 16D2 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 16DA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 16DD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 16E1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 16E4 _ 89. 04 24
        call    _sheet_updown                           ; 16E7 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 16EC _ 8B. 45, F4
        leave                                           ; 16EF _ C9
        ret                                             ; 16F0 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 16F1 _ 55
        mov     ebp, esp                                ; 16F2 _ 89. E5
        push    ebx                                     ; 16F4 _ 53
        sub     esp, 68                                 ; 16F5 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 16F8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 16FB _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 16FE _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1701 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1704 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1707 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 170A _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 170D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1710 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1713 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1715 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 171D _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1721 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1729 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1731 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1739 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 173C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1740 _ 89. 04 24
        call    _boxfill8                               ; 1743 _ E8, FFFFF4D7
        mov     eax, dword [ebp-18H]                    ; 1748 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 174B _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 174E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1751 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1753 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 175B _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 175F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1767 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 176F _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1777 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 177A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 177E _ 89. 04 24
        call    _boxfill8                               ; 1781 _ E8, FFFFF499
        mov     eax, dword [ebp-1CH]                    ; 1786 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1789 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 178C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 178F _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1791 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1795 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 179D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 17A5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 17AD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 17B5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17B8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17BC _ 89. 04 24
        call    _boxfill8                               ; 17BF _ E8, FFFFF45B
        mov     eax, dword [ebp-1CH]                    ; 17C4 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 17C7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 17CA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17CD _ 8B. 00
        mov     dword [esp+18H], edx                    ; 17CF _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 17D3 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 17DB _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 17E3 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 17EB _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 17F3 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17F6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17FA _ 89. 04 24
        call    _boxfill8                               ; 17FD _ E8, FFFFF41D
        mov     eax, dword [ebp-1CH]                    ; 1802 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1805 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1808 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 180B _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 180E _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1811 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1814 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1817 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1819 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 181D _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1821 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1829 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 182D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1835 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1838 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 183C _ 89. 04 24
        call    _boxfill8                               ; 183F _ E8, FFFFF3DB
        mov     eax, dword [ebp-1CH]                    ; 1844 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1847 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 184A _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 184D _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1850 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1853 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1856 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1859 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 185B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 185F _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1863 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 186B _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 186F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1877 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 187A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 187E _ 89. 04 24
        call    _boxfill8                               ; 1881 _ E8, FFFFF399
        mov     eax, dword [ebp-1CH]                    ; 1886 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1889 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 188C _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 188F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1892 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1895 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1897 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 189B _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 189F _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 18A7 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 18AF _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 18B7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 18BA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18BE _ 89. 04 24
        call    _boxfill8                               ; 18C1 _ E8, FFFFF359
        mov     eax, dword [ebp-18H]                    ; 18C6 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 18C9 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 18CC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 18CF _ 8B. 00
        mov     dword [esp+18H], 20                     ; 18D1 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 18D9 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 18DD _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 18E5 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 18ED _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 18F5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 18F8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18FC _ 89. 04 24
        call    _boxfill8                               ; 18FF _ E8, FFFFF31B
        mov     eax, dword [ebp-1CH]                    ; 1904 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1907 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 190A _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 190D _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1910 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1913 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1916 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1919 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 191B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 191F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1923 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1927 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 192F _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1937 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 193A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 193E _ 89. 04 24
        call    _boxfill8                               ; 1941 _ E8, FFFFF2D9
        mov     eax, dword [ebp-1CH]                    ; 1946 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1949 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 194C _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 194F _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1952 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1955 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1958 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 195B _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 195D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1961 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1965 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1969 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1971 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1979 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 197C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1980 _ 89. 04 24
        call    _boxfill8                               ; 1983 _ E8, FFFFF297
        mov     eax, dword [ebp+10H]                    ; 1988 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 198B _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 198F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1997 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 199F _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 19A7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 19AA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19AE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19B1 _ 89. 04 24
        call    _showString                             ; 19B4 _ E8, FFFFF0F9
        mov     dword [ebp-10H], 0                      ; 19B9 _ C7. 45, F0, 00000000
        jmp     ?_070                                   ; 19C0 _ E9, 00000084

?_063:  mov     dword [ebp-0CH], 0                      ; 19C5 _ C7. 45, F4, 00000000
        jmp     ?_069                                   ; 19CC _ EB, 71

?_064:  mov     eax, dword [ebp-10H]                    ; 19CE _ 8B. 45, F0
        shl     eax, 4                                  ; 19D1 _ C1. E0, 04
        mov     edx, eax                                ; 19D4 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 19D6 _ 8B. 45, F4
        add     eax, edx                                ; 19D9 _ 01. D0
        add     eax, _closebtn.2378                     ; 19DB _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 19E0 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 19E3 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 19E6 _ 80. 7D, EF, 40
        jnz     ?_065                                   ; 19EA _ 75, 06
        mov     byte [ebp-11H], 0                       ; 19EC _ C6. 45, EF, 00
        jmp     ?_068                                   ; 19F0 _ EB, 1C

?_065:  cmp     byte [ebp-11H], 36                      ; 19F2 _ 80. 7D, EF, 24
        jnz     ?_066                                   ; 19F6 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 19F8 _ C6. 45, EF, 0F
        jmp     ?_068                                   ; 19FC _ EB, 10

?_066:  cmp     byte [ebp-11H], 81                      ; 19FE _ 80. 7D, EF, 51
        jnz     ?_067                                   ; 1A02 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1A04 _ C6. 45, EF, 08
        jmp     ?_068                                   ; 1A08 _ EB, 04

?_067:  mov     byte [ebp-11H], 7                       ; 1A0A _ C6. 45, EF, 07
?_068:  mov     eax, dword [ebp+0CH]                    ; 1A0E _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1A11 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1A13 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1A16 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1A19 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1A1C _ 8B. 40, 04
        imul    eax, edx                                ; 1A1F _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1A22 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1A25 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1A28 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1A2B _ 8B. 55, F4
        add     edx, ebx                                ; 1A2E _ 01. DA
        add     eax, edx                                ; 1A30 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1A32 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1A35 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1A39 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1A3B _ 83. 45, F4, 01
?_069:  cmp     dword [ebp-0CH], 15                     ; 1A3F _ 83. 7D, F4, 0F
        jle     ?_064                                   ; 1A43 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1A45 _ 83. 45, F0, 01
?_070:  cmp     dword [ebp-10H], 13                     ; 1A49 _ 83. 7D, F0, 0D
        jle     ?_063                                   ; 1A4D _ 0F 8E, FFFFFF72
        nop                                             ; 1A53 _ 90
        add     esp, 68                                 ; 1A54 _ 83. C4, 44
        pop     ebx                                     ; 1A57 _ 5B
        pop     ebp                                     ; 1A58 _ 5D
        ret                                             ; 1A59 _ C3
; _make_window8 End of function

        nop                                             ; 1A5A _ 90
        nop                                             ; 1A5B _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 1A5C _ 55
        mov     ebp, esp                                ; 1A5D _ 89. E5
        sub     esp, 40                                 ; 1A5F _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 1A62 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 1A6A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A6D _ 89. 04 24
        call    _memman_alloc_4k                        ; 1A70 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1A75 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 1A78 _ 83. 7D, F0, 00
        jnz     ?_071                                   ; 1A7C _ 75, 0A
        mov     eax, 0                                  ; 1A7E _ B8, 00000000
        jmp     ?_075                                   ; 1A83 _ E9, 0000009D

?_071:  mov     eax, dword [ebp+10H]                    ; 1A88 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1A8B _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 1A8F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1A93 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1A96 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1A99 _ E8, 00000000(rel)
        mov     edx, eax                                ; 1A9E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1AA0 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 1AA3 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 1AA6 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1AA9 _ 8B. 40, 04
        test    eax, eax                                ; 1AAC _ 85. C0
        jnz     ?_072                                   ; 1AAE _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 1AB0 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 1AB3 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 1ABB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1ABF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1AC2 _ 89. 04 24
        call    _memman_free_4k                         ; 1AC5 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 1ACA _ B8, 00000000
        jmp     ?_075                                   ; 1ACF _ EB, 54

?_072:  mov     eax, dword [ebp-10H]                    ; 1AD1 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 1AD4 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1AD7 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 1AD9 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1ADC _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 1ADF _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1AE2 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 1AE5 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1AE8 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 1AEB _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 1AEE _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 1AF5 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 1AFC _ EB, 1B

?_073:  mov     edx, dword [ebp-10H]                    ; 1AFE _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1B01 _ 8B. 45, F4
        add     eax, 33                                 ; 1B04 _ 83. C0, 21
        shl     eax, 5                                  ; 1B07 _ C1. E0, 05
        add     eax, edx                                ; 1B0A _ 01. D0
        add     eax, 16                                 ; 1B0C _ 83. C0, 10
        mov     dword [eax], 0                          ; 1B0F _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 1B15 _ 83. 45, F4, 01
?_074:  cmp     dword [ebp-0CH], 255                    ; 1B19 _ 81. 7D, F4, 000000FF
        jle     ?_073                                   ; 1B20 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 1B22 _ 8B. 45, F0
?_075:  leave                                           ; 1B25 _ C9
        ret                                             ; 1B26 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 1B27 _ 55
        mov     ebp, esp                                ; 1B28 _ 89. E5
        sub     esp, 16                                 ; 1B2A _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1B2D _ C7. 45, FC, 00000000
        jmp     ?_078                                   ; 1B34 _ EB, 5B

?_076:  mov     edx, dword [ebp+8H]                     ; 1B36 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1B39 _ 8B. 45, FC
        add     eax, 33                                 ; 1B3C _ 83. C0, 21
        shl     eax, 5                                  ; 1B3F _ C1. E0, 05
        add     eax, edx                                ; 1B42 _ 01. D0
        add     eax, 16                                 ; 1B44 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1B47 _ 8B. 00
        test    eax, eax                                ; 1B49 _ 85. C0
        jnz     ?_077                                   ; 1B4B _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 1B4D _ 8B. 45, FC
        shl     eax, 5                                  ; 1B50 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1B53 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1B59 _ 8B. 45, 08
        add     eax, edx                                ; 1B5C _ 01. D0
        add     eax, 4                                  ; 1B5E _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 1B61 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1B64 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1B67 _ 8B. 55, FC
        add     edx, 4                                  ; 1B6A _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1B6D _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 1B70 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 1B74 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1B77 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1B7E _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1B81 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1B88 _ 8B. 45, F8
        jmp     ?_079                                   ; 1B8B _ EB, 12

?_077:  add     dword [ebp-4H], 1                       ; 1B8D _ 83. 45, FC, 01
?_078:  cmp     dword [ebp-4H], 255                     ; 1B91 _ 81. 7D, FC, 000000FF
        jle     ?_076                                   ; 1B98 _ 7E, 9C
        mov     eax, 0                                  ; 1B9A _ B8, 00000000
?_079:  leave                                           ; 1B9F _ C9
        ret                                             ; 1BA0 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1BA1 _ 55
        mov     ebp, esp                                ; 1BA2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1BA4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1BA7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1BAA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1BAC _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1BAF _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1BB2 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BB5 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1BB8 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1BBB _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1BBE _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1BC1 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1BC4 _ 89. 50, 14
        nop                                             ; 1BC7 _ 90
        pop     ebp                                     ; 1BC8 _ 5D
        ret                                             ; 1BC9 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1BCA _ 55
        mov     ebp, esp                                ; 1BCB _ 89. E5
        push    edi                                     ; 1BCD _ 57
        push    esi                                     ; 1BCE _ 56
        push    ebx                                     ; 1BCF _ 53
        sub     esp, 60                                 ; 1BD0 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1BD3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1BD6 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 1BD9 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1BDC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1BDF _ 8B. 40, 10
        add     eax, 1                                  ; 1BE2 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1BE5 _ 39. 45, 10
        jle     ?_080                                   ; 1BE8 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1BEA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1BED _ 8B. 40, 10
        add     eax, 1                                  ; 1BF0 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1BF3 _ 89. 45, 10
?_080:  cmp     dword [ebp+10H], -1                     ; 1BF6 _ 83. 7D, 10, FF
        jge     ?_081                                   ; 1BFA _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1BFC _ C7. 45, 10, FFFFFFFF
?_081:  mov     eax, dword [ebp+0CH]                    ; 1C03 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1C06 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1C09 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 1C0C _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1C0F _ 3B. 45, 10
        jle     ?_088                                   ; 1C12 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 1C18 _ 83. 7D, 10, 00
        js      ?_084                                   ; 1C1C _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 1C22 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1C25 _ 89. 45, E4
        jmp     ?_083                                   ; 1C28 _ EB, 34

?_082:  mov     eax, dword [ebp-1CH]                    ; 1C2A _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1C2D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C30 _ 8B. 45, 08
        add     edx, 4                                  ; 1C33 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1C36 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C3A _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C3D _ 8B. 55, E4
        add     edx, 4                                  ; 1C40 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1C43 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C47 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C4A _ 8B. 55, E4
        add     edx, 4                                  ; 1C4D _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1C50 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1C54 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1C57 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1C5A _ 83. 6D, E4, 01
?_083:  mov     eax, dword [ebp-1CH]                    ; 1C5E _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1C61 _ 3B. 45, 10
        jg      ?_082                                   ; 1C64 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1C66 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1C69 _ 8B. 55, 10
        add     edx, 4                                  ; 1C6C _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1C6F _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1C72 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 1C76 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1C79 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1C7C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C7F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C82 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C85 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C88 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C8B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C8E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C91 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C94 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C97 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C9A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C9D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CA0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CA3 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 1CA6 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1CAA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1CAE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CB2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CB6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CBA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CBD _ 89. 04 24
        call    _sheet_refreshmap                       ; 1CC0 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 1CC5 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1CC8 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1CCB _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CCE _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CD1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CD4 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CD7 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CDA _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CDD _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CE0 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CE3 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CE6 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CE9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CEC _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CEF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CF2 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 1CF5 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 1CF8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1CFC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1D00 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D04 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D08 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1D0C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D10 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D13 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1D16 _ E8, 00000465
        jmp     ?_095                                   ; 1D1B _ E9, 0000027D

?_084:  mov     eax, dword [ebp+8H]                     ; 1D20 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D23 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 1D26 _ 39. 45, E0
        jge     ?_087                                   ; 1D29 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 1D2B _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1D2E _ 89. 45, E4
        jmp     ?_086                                   ; 1D31 _ EB, 34

?_085:  mov     eax, dword [ebp-1CH]                    ; 1D33 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1D36 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D39 _ 8B. 45, 08
        add     edx, 4                                  ; 1D3C _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1D3F _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D43 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D46 _ 8B. 55, E4
        add     edx, 4                                  ; 1D49 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1D4C _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D50 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D53 _ 8B. 55, E4
        add     edx, 4                                  ; 1D56 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D59 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1D5D _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1D60 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1D63 _ 83. 45, E4, 01
?_086:  mov     eax, dword [ebp+8H]                     ; 1D67 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D6A _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 1D6D _ 39. 45, E4
        jl      ?_085                                   ; 1D70 _ 7C, C1
?_087:  mov     eax, dword [ebp+8H]                     ; 1D72 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D75 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1D78 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1D7B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1D7E _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D81 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D84 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D87 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1D8A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1D8D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1D90 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1D93 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D96 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1D99 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1D9C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D9F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DA2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DA5 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DA8 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 1DAB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1DB3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1DB7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1DBB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1DBF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DC3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DC6 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1DC9 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 1DCE _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 1DD1 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1DD4 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DD7 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DDA _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DDD _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DE0 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DE3 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DE6 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DE9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DEC _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DEF _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DF2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DF5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DF8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DFB _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 1DFE _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 1E02 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1E0A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E0E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E12 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1E16 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E1A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E1D _ 89. 04 24
        call    _sheet_refreshsub                       ; 1E20 _ E8, 0000035B
        jmp     ?_095                                   ; 1E25 _ E9, 00000173

?_088:  mov     eax, dword [ebp-20H]                    ; 1E2A _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1E2D _ 3B. 45, 10
        jge     ?_095                                   ; 1E30 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 1E36 _ 83. 7D, E0, 00
        js      ?_091                                   ; 1E3A _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 1E3C _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1E3F _ 89. 45, E4
        jmp     ?_090                                   ; 1E42 _ EB, 34

?_089:  mov     eax, dword [ebp-1CH]                    ; 1E44 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1E47 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E4A _ 8B. 45, 08
        add     edx, 4                                  ; 1E4D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1E50 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1E54 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1E57 _ 8B. 55, E4
        add     edx, 4                                  ; 1E5A _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1E5D _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1E61 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1E64 _ 8B. 55, E4
        add     edx, 4                                  ; 1E67 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1E6A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1E6E _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1E71 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1E74 _ 83. 45, E4, 01
?_090:  mov     eax, dword [ebp-1CH]                    ; 1E78 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1E7B _ 3B. 45, 10
        jl      ?_089                                   ; 1E7E _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1E80 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1E83 _ 8B. 55, 10
        add     edx, 4                                  ; 1E86 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1E89 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1E8C _ 89. 4C 90, 04
        jmp     ?_094                                   ; 1E90 _ EB, 6C

?_091:  mov     eax, dword [ebp+8H]                     ; 1E92 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1E95 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 1E98 _ 89. 45, E4
        jmp     ?_093                                   ; 1E9B _ EB, 3A

?_092:  mov     eax, dword [ebp-1CH]                    ; 1E9D _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 1EA0 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1EA3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1EA6 _ 8B. 55, E4
        add     edx, 4                                  ; 1EA9 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1EAC _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1EB0 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1EB3 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1EB6 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 1EBA _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1EBD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1EC0 _ 8B. 45, 08
        add     edx, 4                                  ; 1EC3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1EC6 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1ECA _ 8B. 55, E4
        add     edx, 1                                  ; 1ECD _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1ED0 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1ED3 _ 83. 6D, E4, 01
?_093:  mov     eax, dword [ebp-1CH]                    ; 1ED7 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1EDA _ 3B. 45, 10
        jge     ?_092                                   ; 1EDD _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1EDF _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1EE2 _ 8B. 55, 10
        add     edx, 4                                  ; 1EE5 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1EE8 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1EEB _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1EEF _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1EF2 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1EF5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1EF8 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1EFB _ 89. 50, 10
?_094:  mov     eax, dword [ebp+0CH]                    ; 1EFE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F01 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F04 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1F07 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1F0A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1F0D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1F10 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F13 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F16 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1F19 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1F1C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F1F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F22 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F25 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1F28 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1F2B _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F2F _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F33 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1F37 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F3B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F3F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F42 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1F45 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 1F4A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F4D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F50 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1F53 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1F56 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1F59 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1F5C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F5F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1F62 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1F65 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1F68 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1F6B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F6E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F71 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1F74 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 1F77 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 1F7B _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1F7E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F82 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F86 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1F8A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F8E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F92 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F95 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1F98 _ E8, 000001E3
?_095:  nop                                             ; 1F9D _ 90
        add     esp, 60                                 ; 1F9E _ 83. C4, 3C
        pop     ebx                                     ; 1FA1 _ 5B
        pop     esi                                     ; 1FA2 _ 5E
        pop     edi                                     ; 1FA3 _ 5F
        pop     ebp                                     ; 1FA4 _ 5D
        ret                                             ; 1FA5 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1FA6 _ 55
        mov     ebp, esp                                ; 1FA7 _ 89. E5
        push    edi                                     ; 1FA9 _ 57
        push    esi                                     ; 1FAA _ 56
        push    ebx                                     ; 1FAB _ 53
        sub     esp, 60                                 ; 1FAC _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1FAF _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1FB2 _ 8B. 40, 18
        test    eax, eax                                ; 1FB5 _ 85. C0
        js      ?_096                                   ; 1FB7 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 1FB9 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 1FBC _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 1FBF _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 1FC2 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 1FC5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1FC8 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1FCB _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1FCE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1FD1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1FD4 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1FD7 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1FDA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1FDD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1FE0 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1FE3 _ 8B. 45, 14
        add     edx, eax                                ; 1FE6 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FE8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1FEB _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 1FEE _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1FF1 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 1FF4 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 1FF7 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1FFB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1FFF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2003 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2007 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 200B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 200F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2012 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2015 _ E8, 00000166
?_096:  mov     eax, 0                                  ; 201A _ B8, 00000000
        add     esp, 60                                 ; 201F _ 83. C4, 3C
        pop     ebx                                     ; 2022 _ 5B
        pop     esi                                     ; 2023 _ 5E
        pop     edi                                     ; 2024 _ 5F
        pop     ebp                                     ; 2025 _ 5D
        ret                                             ; 2026 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 2027 _ 55
        mov     ebp, esp                                ; 2028 _ 89. E5
        push    esi                                     ; 202A _ 56
        push    ebx                                     ; 202B _ 53
        sub     esp, 48                                 ; 202C _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 202F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2032 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 2035 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 2038 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 203B _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 203E _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2041 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2044 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 2047 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 204A _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 204D _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2050 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2053 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2056 _ 8B. 40, 18
        test    eax, eax                                ; 2059 _ 85. C0
        js      ?_097                                   ; 205B _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 2061 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2064 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2067 _ 8B. 45, F0
        add     edx, eax                                ; 206A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 206C _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 206F _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 2072 _ 8B. 45, F4
        add     eax, ecx                                ; 2075 _ 01. C8
        mov     dword [esp+14H], 0                      ; 2077 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 207F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2083 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2087 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 208A _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 208E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2091 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2095 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2098 _ 89. 04 24
        call    _sheet_refreshmap                       ; 209B _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 20A0 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 20A3 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 20A6 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 20A9 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 20AC _ 8B. 45, 14
        add     edx, eax                                ; 20AF _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 20B1 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 20B4 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 20B7 _ 8B. 45, 10
        add     eax, ebx                                ; 20BA _ 01. D8
        mov     dword [esp+14H], ecx                    ; 20BC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 20C0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 20C4 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 20C8 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 20CB _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 20CF _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 20D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 20D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 20D9 _ 89. 04 24
        call    _sheet_refreshmap                       ; 20DC _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 20E1 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 20E4 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 20E7 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 20EA _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 20ED _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 20F0 _ 8B. 45, F0
        add     edx, eax                                ; 20F3 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 20F5 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 20F8 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 20FB _ 8B. 45, F4
        add     eax, ebx                                ; 20FE _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2100 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2104 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 210C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2110 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2114 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 2117 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 211B _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 211E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2122 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2125 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2128 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 212D _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2130 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2133 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 2136 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2139 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 213C _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 213F _ 8B. 45, 14
        add     edx, eax                                ; 2142 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2144 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 2147 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 214A _ 8B. 45, 10
        add     eax, esi                                ; 214D _ 01. F0
        mov     dword [esp+18H], ebx                    ; 214F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2153 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2157 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 215B _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 215F _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2162 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2166 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2169 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 216D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2170 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2173 _ E8, 00000008
?_097:  nop                                             ; 2178 _ 90
        add     esp, 48                                 ; 2179 _ 83. C4, 30
        pop     ebx                                     ; 217C _ 5B
        pop     esi                                     ; 217D _ 5E
        pop     ebp                                     ; 217E _ 5D
        ret                                             ; 217F _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2180 _ 55
        mov     ebp, esp                                ; 2181 _ 89. E5
        sub     esp, 48                                 ; 2183 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2186 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2189 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 218B _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 218E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2191 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2194 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2197 _ 83. 7D, 0C, 00
        jns     ?_098                                   ; 219B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 219D _ C7. 45, 0C, 00000000
?_098:  cmp     dword [ebp+10H], 8                      ; 21A4 _ 83. 7D, 10, 08
        jg      ?_099                                   ; 21A8 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 21AA _ C7. 45, 10, 00000000
?_099:  mov     eax, dword [ebp+8H]                     ; 21B1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21B4 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 21B7 _ 39. 45, 14
        jle     ?_100                                   ; 21BA _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 21BC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21BF _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 21C2 _ 89. 45, 14
?_100:  mov     eax, dword [ebp+8H]                     ; 21C5 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 21C8 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 21CB _ 39. 45, 18
        jle     ?_101                                   ; 21CE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 21D0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 21D3 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 21D6 _ 89. 45, 18
?_101:  mov     eax, dword [ebp+1CH]                    ; 21D9 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 21DC _ 89. 45, FC
        jmp     ?_108                                   ; 21DF _ E9, 0000010F

?_102:  mov     eax, dword [ebp+8H]                     ; 21E4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 21E7 _ 8B. 55, FC
        add     edx, 4                                  ; 21EA _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 21ED _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 21F1 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 21F4 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 21F7 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 21F9 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 21FC _ 8B. 45, 08
        add     eax, 1044                               ; 21FF _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2204 _ 8B. 55, E8
        sub     edx, eax                                ; 2207 _ 29. C2
        mov     eax, edx                                ; 2209 _ 89. D0
        sar     eax, 5                                  ; 220B _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 220E _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2211 _ C7. 45, F4, 00000000
        jmp     ?_107                                   ; 2218 _ E9, 000000C3

?_103:  mov     eax, dword [ebp-18H]                    ; 221D _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2220 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2223 _ 8B. 45, F4
        add     eax, edx                                ; 2226 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2228 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 222B _ C7. 45, F8, 00000000
        jmp     ?_106                                   ; 2232 _ E9, 00000096

?_104:  mov     eax, dword [ebp-18H]                    ; 2237 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 223A _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 223D _ 8B. 45, F8
        add     eax, edx                                ; 2240 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2242 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2245 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2248 _ 3B. 45, D8
        jg      ?_105                                   ; 224B _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 224D _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2250 _ 3B. 45, 14
        jge     ?_105                                   ; 2253 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2255 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2258 _ 3B. 45, DC
        jg      ?_105                                   ; 225B _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 225D _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2260 _ 3B. 45, 18
        jge     ?_105                                   ; 2263 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2265 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2268 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 226B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 226F _ 8B. 55, F8
        add     eax, edx                                ; 2272 _ 01. D0
        mov     edx, eax                                ; 2274 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2276 _ 8B. 45, E4
        add     eax, edx                                ; 2279 _ 01. D0
        movzx   eax, byte [eax]                         ; 227B _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 227E _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2281 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2284 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2287 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 228B _ 8B. 55, D8
        add     eax, edx                                ; 228E _ 01. D0
        mov     edx, eax                                ; 2290 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2292 _ 8B. 45, EC
        add     eax, edx                                ; 2295 _ 01. D0
        movzx   eax, byte [eax]                         ; 2297 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 229A _ 38. 45, E3
        jnz     ?_105                                   ; 229D _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 229F _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 22A3 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 22A6 _ 8B. 52, 14
        cmp     eax, edx                                ; 22A9 _ 39. D0
        jz      ?_105                                   ; 22AB _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 22AD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 22B0 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 22B3 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 22B7 _ 8B. 55, D8
        add     eax, edx                                ; 22BA _ 01. D0
        mov     edx, eax                                ; 22BC _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 22BE _ 8B. 45, F0
        add     edx, eax                                ; 22C1 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 22C3 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 22C7 _ 88. 02
?_105:  add     dword [ebp-8H], 1                       ; 22C9 _ 83. 45, F8, 01
?_106:  mov     eax, dword [ebp-18H]                    ; 22CD _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 22D0 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 22D3 _ 39. 45, F8
        jl      ?_104                                   ; 22D6 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 22DC _ 83. 45, F4, 01
?_107:  mov     eax, dword [ebp-18H]                    ; 22E0 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 22E3 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 22E6 _ 39. 45, F4
        jl      ?_103                                   ; 22E9 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 22EF _ 83. 45, FC, 01
?_108:  mov     eax, dword [ebp-4H]                     ; 22F3 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 22F6 _ 3B. 45, 20
        jle     ?_102                                   ; 22F9 _ 0F 8E, FFFFFEE5
        nop                                             ; 22FF _ 90
        leave                                           ; 2300 _ C9
        ret                                             ; 2301 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2302 _ 55
        mov     ebp, esp                                ; 2303 _ 89. E5
        sub     esp, 64                                 ; 2305 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2308 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 230B _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 230E _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2311 _ 83. 7D, 0C, 00
        jns     ?_109                                   ; 2315 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2317 _ C7. 45, 0C, 00000000
?_109:  cmp     dword [ebp+10H], 0                      ; 231E _ 83. 7D, 10, 00
        jns     ?_110                                   ; 2322 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2324 _ C7. 45, 10, 00000000
?_110:  mov     eax, dword [ebp+8H]                     ; 232B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 232E _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2331 _ 39. 45, 14
        jle     ?_111                                   ; 2334 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2336 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2339 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 233C _ 89. 45, 14
?_111:  mov     eax, dword [ebp+8H]                     ; 233F _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2342 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2345 _ 39. 45, 18
        jle     ?_112                                   ; 2348 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 234A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 234D _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2350 _ 89. 45, 18
?_112:  mov     eax, dword [ebp+1CH]                    ; 2353 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2356 _ 89. 45, FC
        jmp     ?_123                                   ; 2359 _ E9, 00000139

?_113:  mov     eax, dword [ebp+8H]                     ; 235E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2361 _ 8B. 55, FC
        add     edx, 4                                  ; 2364 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2367 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 236B _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 236E _ 8B. 45, 08
        add     eax, 1044                               ; 2371 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 2376 _ 8B. 55, DC
        sub     edx, eax                                ; 2379 _ 29. C2
        mov     eax, edx                                ; 237B _ 89. D0
        sar     eax, 5                                  ; 237D _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2380 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2383 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 2386 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2388 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 238B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 238E _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2391 _ 8B. 55, 0C
        sub     edx, eax                                ; 2394 _ 29. C2
        mov     eax, edx                                ; 2396 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 2398 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 239B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 239E _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 23A1 _ 8B. 55, 10
        sub     edx, eax                                ; 23A4 _ 29. C2
        mov     eax, edx                                ; 23A6 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 23A8 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 23AB _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 23AE _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 23B1 _ 8B. 55, 14
        sub     edx, eax                                ; 23B4 _ 29. C2
        mov     eax, edx                                ; 23B6 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 23B8 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 23BB _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 23BE _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 23C1 _ 8B. 55, 18
        sub     edx, eax                                ; 23C4 _ 29. C2
        mov     eax, edx                                ; 23C6 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 23C8 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 23CB _ 83. 7D, F0, 00
        jns     ?_114                                   ; 23CF _ 79, 07
        mov     dword [ebp-10H], 0                      ; 23D1 _ C7. 45, F0, 00000000
?_114:  cmp     dword [ebp-14H], 0                      ; 23D8 _ 83. 7D, EC, 00
        jns     ?_115                                   ; 23DC _ 79, 07
        mov     dword [ebp-14H], 0                      ; 23DE _ C7. 45, EC, 00000000
?_115:  mov     eax, dword [ebp-24H]                    ; 23E5 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 23E8 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 23EB _ 39. 45, E8
        jle     ?_116                                   ; 23EE _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 23F0 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 23F3 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 23F6 _ 89. 45, E8
?_116:  mov     eax, dword [ebp-24H]                    ; 23F9 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 23FC _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 23FF _ 39. 45, E4
        jle     ?_117                                   ; 2402 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2404 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2407 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 240A _ 89. 45, E4
?_117:  mov     eax, dword [ebp-14H]                    ; 240D _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2410 _ 89. 45, F4
        jmp     ?_122                                   ; 2413 _ EB, 76

?_118:  mov     eax, dword [ebp-24H]                    ; 2415 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2418 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 241B _ 8B. 45, F4
        add     eax, edx                                ; 241E _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2420 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2423 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 2426 _ 89. 45, F8
        jmp     ?_121                                   ; 2429 _ EB, 54

?_119:  mov     eax, dword [ebp-24H]                    ; 242B _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 242E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2431 _ 8B. 45, F8
        add     eax, edx                                ; 2434 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 2436 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2439 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 243C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 243F _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2443 _ 8B. 55, F8
        add     eax, edx                                ; 2446 _ 01. D0
        mov     edx, eax                                ; 2448 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 244A _ 8B. 45, D4
        add     eax, edx                                ; 244D _ 01. D0
        movzx   eax, byte [eax]                         ; 244F _ 0F B6. 00
        movzx   eax, al                                 ; 2452 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2455 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2458 _ 8B. 52, 14
        cmp     eax, edx                                ; 245B _ 39. D0
        jz      ?_120                                   ; 245D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 245F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2462 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2465 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2469 _ 8B. 55, CC
        add     eax, edx                                ; 246C _ 01. D0
        mov     edx, eax                                ; 246E _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2470 _ 8B. 45, E0
        add     edx, eax                                ; 2473 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2475 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2479 _ 88. 02
?_120:  add     dword [ebp-8H], 1                       ; 247B _ 83. 45, F8, 01
?_121:  mov     eax, dword [ebp-8H]                     ; 247F _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2482 _ 3B. 45, E8
        jl      ?_119                                   ; 2485 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2487 _ 83. 45, F4, 01
?_122:  mov     eax, dword [ebp-0CH]                    ; 248B _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 248E _ 3B. 45, E4
        jl      ?_118                                   ; 2491 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2493 _ 83. 45, FC, 01
?_123:  mov     eax, dword [ebp+8H]                     ; 2497 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 249A _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 249D _ 39. 45, FC
        jle     ?_113                                   ; 24A0 _ 0F 8E, FFFFFEB8
        nop                                             ; 24A6 _ 90
        leave                                           ; 24A7 _ C9
        ret                                             ; 24A8 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 24A9 _ 90
        nop                                             ; 24AA _ 90
        nop                                             ; 24AB _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 24AC _ 55
        mov     ebp, esp                                ; 24AD _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 24AF _ 8B. 45, 08
        mov     dword [eax], 0                          ; 24B2 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 24B8 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 24BB _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 24C2 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 24C5 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 24CC _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 24CF _ C7. 40, 0C, 00000000
        nop                                             ; 24D6 _ 90
        pop     ebp                                     ; 24D7 _ 5D
        ret                                             ; 24D8 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 24D9 _ 55
        mov     ebp, esp                                ; 24DA _ 89. E5
        sub     esp, 16                                 ; 24DC _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 24DF _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 24E6 _ C7. 45, FC, 00000000
        jmp     ?_125                                   ; 24ED _ EB, 14

?_124:  mov     eax, dword [ebp+8H]                     ; 24EF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 24F2 _ 8B. 55, FC
        add     edx, 2                                  ; 24F5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 24F8 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 24FC _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 24FF _ 83. 45, FC, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 2503 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2506 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2508 _ 39. 45, FC
        jc      ?_124                                   ; 250B _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 250D _ 8B. 45, F8
        leave                                           ; 2510 _ C9
        ret                                             ; 2511 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2512 _ 55
        mov     ebp, esp                                ; 2513 _ 89. E5
        sub     esp, 16                                 ; 2515 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2518 _ C7. 45, FC, 00000000
        jmp     ?_129                                   ; 251F _ E9, 00000083

?_126:  mov     eax, dword [ebp+8H]                     ; 2524 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2527 _ 8B. 55, FC
        add     edx, 2                                  ; 252A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 252D _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2531 _ 39. 45, 0C
        ja      ?_128                                   ; 2534 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 2536 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2539 _ 8B. 55, FC
        add     edx, 2                                  ; 253C _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 253F _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2542 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2545 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2548 _ 8B. 55, FC
        add     edx, 2                                  ; 254B _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 254E _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2551 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2554 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2557 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 255A _ 8B. 55, FC
        add     edx, 2                                  ; 255D _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2560 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2563 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2566 _ 8B. 55, FC
        add     edx, 2                                  ; 2569 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 256C _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2570 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2573 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2576 _ 8B. 4D, FC
        add     ecx, 2                                  ; 2579 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 257C _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2580 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2583 _ 8B. 55, FC
        add     edx, 2                                  ; 2586 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2589 _ 8B. 44 D0, 04
        test    eax, eax                                ; 258D _ 85. C0
        jnz     ?_127                                   ; 258F _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2591 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2594 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2596 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2599 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 259C _ 89. 10
?_127:  mov     eax, dword [ebp-8H]                     ; 259E _ 8B. 45, F8
        jmp     ?_130                                   ; 25A1 _ EB, 17

?_128:  add     dword [ebp-4H], 1                       ; 25A3 _ 83. 45, FC, 01
?_129:  mov     eax, dword [ebp+8H]                     ; 25A7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25AA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 25AC _ 39. 45, FC
        jc      ?_126                                   ; 25AF _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 25B5 _ B8, 00000000
?_130:  leave                                           ; 25BA _ C9
        ret                                             ; 25BB _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 25BC _ 55
        mov     ebp, esp                                ; 25BD _ 89. E5
        push    ebx                                     ; 25BF _ 53
        sub     esp, 16                                 ; 25C0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 25C3 _ C7. 45, F8, 00000000
        jmp     ?_132                                   ; 25CA _ EB, 15

?_131:  mov     eax, dword [ebp+8H]                     ; 25CC _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25CF _ 8B. 55, F8
        add     edx, 2                                  ; 25D2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 25D5 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 25D8 _ 39. 45, 0C
        jc      ?_133                                   ; 25DB _ 72, 10
        add     dword [ebp-8H], 1                       ; 25DD _ 83. 45, F8, 01
?_132:  mov     eax, dword [ebp+8H]                     ; 25E1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25E4 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 25E6 _ 39. 45, F8
        jl      ?_131                                   ; 25E9 _ 7C, E1
        jmp     ?_134                                   ; 25EB _ EB, 01

?_133:  nop                                             ; 25ED _ 90
?_134:  cmp     dword [ebp-8H], 0                       ; 25EE _ 83. 7D, F8, 00
        jle     ?_136                                   ; 25F2 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 25F8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 25FB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 25FE _ 8B. 45, 08
        add     edx, 2                                  ; 2601 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2604 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2607 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 260A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 260D _ 8B. 45, 08
        add     edx, 2                                  ; 2610 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2613 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2617 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2619 _ 39. 45, 0C
        jne     ?_136                                   ; 261C _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2622 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2625 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2628 _ 8B. 45, 08
        add     edx, 2                                  ; 262B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 262E _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2632 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2635 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2638 _ 8B. 45, 10
        add     ecx, eax                                ; 263B _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 263D _ 8B. 45, 08
        add     edx, 2                                  ; 2640 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2643 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2647 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 264A _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 264C _ 39. 45, F8
        jge     ?_135                                   ; 264F _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2651 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2654 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2657 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 265A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 265D _ 8B. 55, F8
        add     edx, 2                                  ; 2660 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2663 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2666 _ 39. C1
        jnz     ?_135                                   ; 2668 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 266A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 266D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2670 _ 8B. 45, 08
        add     edx, 2                                  ; 2673 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2676 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 267A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 267D _ 8B. 55, F8
        add     edx, 2                                  ; 2680 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2683 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2687 _ 8B. 55, F8
        sub     edx, 1                                  ; 268A _ 83. EA, 01
        add     ecx, eax                                ; 268D _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 268F _ 8B. 45, 08
        add     edx, 2                                  ; 2692 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2695 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2699 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 269C _ 8B. 00
        lea     edx, [eax-1H]                           ; 269E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 26A1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 26A4 _ 89. 10
?_135:  mov     eax, 0                                  ; 26A6 _ B8, 00000000
        jmp     ?_142                                   ; 26AB _ E9, 0000011C

?_136:  mov     eax, dword [ebp+8H]                     ; 26B0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 26B3 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 26B5 _ 39. 45, F8
        jge     ?_137                                   ; 26B8 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 26BA _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 26BD _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 26C0 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 26C3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26C6 _ 8B. 55, F8
        add     edx, 2                                  ; 26C9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 26CC _ 8B. 04 D0
        cmp     ecx, eax                                ; 26CF _ 39. C1
        jnz     ?_137                                   ; 26D1 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 26D3 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26D6 _ 8B. 55, F8
        add     edx, 2                                  ; 26D9 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 26DC _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 26DF _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 26E2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26E5 _ 8B. 55, F8
        add     edx, 2                                  ; 26E8 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 26EB _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 26EF _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 26F2 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 26F5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 26F8 _ 8B. 55, F8
        add     edx, 2                                  ; 26FB _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 26FE _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2702 _ B8, 00000000
        jmp     ?_142                                   ; 2707 _ E9, 000000C0

?_137:  mov     eax, dword [ebp+8H]                     ; 270C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 270F _ 8B. 00
        cmp     eax, 4095                               ; 2711 _ 3D, 00000FFF
        jg      ?_141                                   ; 2716 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 271C _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 271F _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2721 _ 89. 45, F4
        jmp     ?_139                                   ; 2724 _ EB, 28

?_138:  mov     eax, dword [ebp-0CH]                    ; 2726 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2729 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 272C _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 272F _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2732 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2735 _ 8B. 45, 08
        add     edx, 2                                  ; 2738 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 273B _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 273E _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2740 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2743 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2746 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 274A _ 83. 6D, F4, 01
?_139:  mov     eax, dword [ebp-0CH]                    ; 274E _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2751 _ 3B. 45, F8
        jg      ?_138                                   ; 2754 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2756 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2759 _ 8B. 00
        lea     edx, [eax+1H]                           ; 275B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 275E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2761 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2763 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2766 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2769 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 276C _ 8B. 00
        cmp     edx, eax                                ; 276E _ 39. C2
        jge     ?_140                                   ; 2770 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2772 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2775 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2777 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 277A _ 89. 50, 04
?_140:  mov     eax, dword [ebp+8H]                     ; 277D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2780 _ 8B. 55, F8
        add     edx, 2                                  ; 2783 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2786 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2789 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 278C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 278F _ 8B. 55, F8
        add     edx, 2                                  ; 2792 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2795 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2798 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 279C _ B8, 00000000
        jmp     ?_142                                   ; 27A1 _ EB, 29

?_141:  mov     eax, dword [ebp+8H]                     ; 27A3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 27A6 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 27A9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27AC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 27AF _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 27B2 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27B5 _ 8B. 40, 08
        mov     edx, eax                                ; 27B8 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 27BA _ 8B. 45, 10
        add     eax, edx                                ; 27BD _ 01. D0
        mov     edx, eax                                ; 27BF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27C1 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27C4 _ 89. 50, 08
        mov     eax, 4294967295                         ; 27C7 _ B8, FFFFFFFF
?_142:  add     esp, 16                                 ; 27CC _ 83. C4, 10
        pop     ebx                                     ; 27CF _ 5B
        pop     ebp                                     ; 27D0 _ 5D
        ret                                             ; 27D1 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 27D2 _ 55
        mov     ebp, esp                                ; 27D3 _ 89. E5
        sub     esp, 24                                 ; 27D5 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 27D8 _ 8B. 45, 0C
        add     eax, 4095                               ; 27DB _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 27E0 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 27E5 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 27E8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 27EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 27EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 27F2 _ 89. 04 24
        call    _memman_alloc                           ; 27F5 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 27FA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 27FD _ 8B. 45, FC
        leave                                           ; 2800 _ C9
        ret                                             ; 2801 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 2802 _ 55
        mov     ebp, esp                                ; 2803 _ 89. E5
        sub     esp, 28                                 ; 2805 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2808 _ 8B. 45, 10
        add     eax, 4095                               ; 280B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2810 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2815 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2818 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 281B _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 281F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2822 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2826 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2829 _ 89. 04 24
        call    _memman_free                            ; 282C _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 2831 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2834 _ 8B. 45, FC
        leave                                           ; 2837 _ C9
        ret                                             ; 2838 _ C3
; _memman_free_4k End of function

        nop                                             ; 2839 _ 90
        nop                                             ; 283A _ 90
        nop                                             ; 283B _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 283C _ 55
        mov     ebp, esp                                ; 283D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 283F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2842 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2845 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2848 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 284B _ 8B. 55, 10
        mov     dword [eax], edx                        ; 284E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2850 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2853 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2856 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2859 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 285C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2863 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2866 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 286D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2870 _ C7. 40, 08, 00000000
        nop                                             ; 2877 _ 90
        pop     ebp                                     ; 2878 _ 5D
        ret                                             ; 2879 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 287A _ 55
        mov     ebp, esp                                ; 287B _ 89. E5
        sub     esp, 4                                  ; 287D _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2880 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2883 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2886 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2889 _ 8B. 40, 10
        test    eax, eax                                ; 288C _ 85. C0
        jnz     ?_143                                   ; 288E _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2890 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2893 _ 8B. 40, 14
        or      eax, 01H                                ; 2896 _ 83. C8, 01
        mov     edx, eax                                ; 2899 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 289B _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 289E _ 89. 50, 14
        mov     eax, 4294967295                         ; 28A1 _ B8, FFFFFFFF
        jmp     ?_145                                   ; 28A6 _ EB, 50

?_143:  mov     eax, dword [ebp+8H]                     ; 28A8 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 28AB _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 28AD _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 28B0 _ 8B. 40, 04
        add     edx, eax                                ; 28B3 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 28B5 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 28B9 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 28BB _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 28BE _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 28C1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 28C4 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 28C7 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 28CA _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 28CD _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 28D0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 28D3 _ 8B. 40, 0C
        cmp     edx, eax                                ; 28D6 _ 39. C2
        jnz     ?_144                                   ; 28D8 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 28DA _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 28DD _ C7. 40, 04, 00000000
?_144:  mov     eax, dword [ebp+8H]                     ; 28E4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28E7 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 28EA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 28ED _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 28F0 _ 89. 50, 10
        mov     eax, 0                                  ; 28F3 _ B8, 00000000
?_145:  leave                                           ; 28F8 _ C9
        ret                                             ; 28F9 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 28FA _ 55
        mov     ebp, esp                                ; 28FB _ 89. E5
        sub     esp, 16                                 ; 28FD _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2900 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2903 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2906 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2909 _ 8B. 40, 0C
        cmp     edx, eax                                ; 290C _ 39. C2
        jnz     ?_146                                   ; 290E _ 75, 07
        mov     eax, 4294967295                         ; 2910 _ B8, FFFFFFFF
        jmp     ?_148                                   ; 2915 _ EB, 51

?_146:  mov     eax, dword [ebp+8H]                     ; 2917 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 291A _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 291C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 291F _ 8B. 40, 08
        add     eax, edx                                ; 2922 _ 01. D0
        movzx   eax, byte [eax]                         ; 2924 _ 0F B6. 00
        movzx   eax, al                                 ; 2927 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 292A _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 292D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2930 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2933 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2936 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2939 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 293C _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 293F _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2942 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2945 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2948 _ 39. C2
        jnz     ?_147                                   ; 294A _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 294C _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 294F _ C7. 40, 08, 00000000
?_147:  mov     eax, dword [ebp+8H]                     ; 2956 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2959 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 295C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 295F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2962 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2965 _ 8B. 45, FC
?_148:  leave                                           ; 2968 _ C9
        ret                                             ; 2969 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 296A _ 55
        mov     ebp, esp                                ; 296B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 296D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2970 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2973 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2976 _ 8B. 40, 10
        sub     edx, eax                                ; 2979 _ 29. C2
        mov     eax, edx                                ; 297B _ 89. D0
        pop     ebp                                     ; 297D _ 5D
        ret                                             ; 297E _ C3
; _fifo8_status End of function

        nop                                             ; 297F _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 2980 _ 55
        mov     ebp, esp                                ; 2981 _ 89. E5
        sub     esp, 40                                 ; 2983 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 2986 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 298E _ C7. 04 24, 00000043
        call    _io_out8                                ; 2995 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 299A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 29A2 _ C7. 04 24, 00000040
        call    _io_out8                                ; 29A9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 29AE _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 29B6 _ C7. 04 24, 00000040
        call    _io_out8                                ; 29BD _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 29C2 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 29CC _ C7. 45, F4, 00000000
        jmp     ?_150                                   ; 29D3 _ EB, 15

?_149:  mov     eax, dword [ebp-0CH]                    ; 29D5 _ 8B. 45, F4
        shl     eax, 4                                  ; 29D8 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 29DB _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 29E0 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 29E6 _ 83. 45, F4, 01
?_150:  cmp     dword [ebp-0CH], 499                    ; 29EA _ 81. 7D, F4, 000001F3
        jle     ?_149                                   ; 29F1 _ 7E, E2
        nop                                             ; 29F3 _ 90
        leave                                           ; 29F4 _ C9
        ret                                             ; 29F5 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 29F6 _ 55
        mov     ebp, esp                                ; 29F7 _ 89. E5
        sub     esp, 16                                 ; 29F9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 29FC _ C7. 45, FC, 00000000
        jmp     ?_153                                   ; 2A03 _ EB, 36

?_151:  mov     eax, dword [ebp-4H]                     ; 2A05 _ 8B. 45, FC
        shl     eax, 4                                  ; 2A08 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2A0B _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 2A10 _ 8B. 00
        test    eax, eax                                ; 2A12 _ 85. C0
        jnz     ?_152                                   ; 2A14 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2A16 _ 8B. 45, FC
        shl     eax, 4                                  ; 2A19 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2A1C _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 2A21 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2A27 _ 8B. 45, FC
        shl     eax, 4                                  ; 2A2A _ C1. E0, 04
        add     eax, _timerctl                               ; 2A2D _ 05, 00000000(d)
        add     eax, 4                                  ; 2A32 _ 83. C0, 04
        jmp     ?_154                                   ; 2A35 _ EB, 12

?_152:  add     dword [ebp-4H], 1                       ; 2A37 _ 83. 45, FC, 01
?_153:  cmp     dword [ebp-4H], 499                     ; 2A3B _ 81. 7D, FC, 000001F3
        jle     ?_151                                   ; 2A42 _ 7E, C1
        mov     eax, 0                                  ; 2A44 _ B8, 00000000
?_154:  leave                                           ; 2A49 _ C9
        ret                                             ; 2A4A _ C3
; _timer_alloc End of function

_timer_init:; Function begin
        push    ebp                                     ; 2A4B _ 55
        mov     ebp, esp                                ; 2A4C _ 89. E5
        sub     esp, 4                                  ; 2A4E _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2A51 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2A54 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2A57 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A5A _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2A5D _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 2A60 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2A63 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 2A67 _ 88. 42, 0C
        nop                                             ; 2A6A _ 90
        leave                                           ; 2A6B _ C9
        ret                                             ; 2A6C _ C3
; _timer_init End of function

_timer_free:; Function begin
        push    ebp                                     ; 2A6D _ 55
        mov     ebp, esp                                ; 2A6E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2A70 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2A73 _ C7. 40, 04, 00000000
        nop                                             ; 2A7A _ 90
        pop     ebp                                     ; 2A7B _ 5D
        ret                                             ; 2A7C _ C3
; _timer_free End of function

_timer_settime:; Function begin
        push    ebp                                     ; 2A7D _ 55
        mov     ebp, esp                                ; 2A7E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2A80 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2A83 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2A86 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2A88 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2A8B _ C7. 40, 04, 00000002
        nop                                             ; 2A92 _ 90
        pop     ebp                                     ; 2A93 _ 5D
        ret                                             ; 2A94 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 2A95 _ 55
        mov     ebp, esp                                ; 2A96 _ 89. E5
        sub     esp, 40                                 ; 2A98 _ 83. EC, 28
        mov     dword [esp+4H], 96                      ; 2A9B _ C7. 44 24, 04, 00000060
        mov     dword [esp], 32                         ; 2AA3 _ C7. 04 24, 00000020
        call    _io_out8                                ; 2AAA _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 2AAF _ A1, 00000000(d)
        add     eax, 1                                  ; 2AB4 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 2AB7 _ A3, 00000000(d)
        mov     dword [ebp-0CH], 0                      ; 2ABC _ C7. 45, F4, 00000000
        jmp     ?_157                                   ; 2AC3 _ E9, 00000080

?_155:  mov     eax, dword [ebp-0CH]                    ; 2AC8 _ 8B. 45, F4
        shl     eax, 4                                  ; 2ACB _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2ACE _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 2AD3 _ 8B. 00
        cmp     eax, 2                                  ; 2AD5 _ 83. F8, 02
        jnz     ?_156                                   ; 2AD8 _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 2ADA _ 8B. 45, F4
        shl     eax, 4                                  ; 2ADD _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 2AE0 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 2AE5 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2AE7 _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2AEA _ 8B. 45, F4
        shl     eax, 4                                  ; 2AED _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 2AF0 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 2AF5 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2AF7 _ 8B. 45, F4
        shl     eax, 4                                  ; 2AFA _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 2AFD _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 2B02 _ 8B. 00
        test    eax, eax                                ; 2B04 _ 85. C0
        jnz     ?_156                                   ; 2B06 _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2B08 _ 8B. 45, F4
        shl     eax, 4                                  ; 2B0B _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2B0E _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 2B13 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2B19 _ 8B. 45, F4
        shl     eax, 4                                  ; 2B1C _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 2B1F _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 2B24 _ 0F B6. 00
        movzx   eax, al                                 ; 2B27 _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 2B2A _ 8B. 55, F4
        shl     edx, 4                                  ; 2B2D _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 2B30 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 2B36 _ 8B. 12
        mov     dword [esp+4H], eax                     ; 2B38 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2B3C _ 89. 14 24
        call    _fifo8_put                              ; 2B3F _ E8, 00000000(rel)
?_156:  add     dword [ebp-0CH], 1                      ; 2B44 _ 83. 45, F4, 01
?_157:  cmp     dword [ebp-0CH], 499                    ; 2B48 _ 81. 7D, F4, 000001F3
        jle     ?_155                                   ; 2B4F _ 0F 8E, FFFFFF73
        nop                                             ; 2B55 _ 90
        leave                                           ; 2B56 _ C9
        ret                                             ; 2B57 _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 2B58 _ B8, 00000000(d)
        ret                                             ; 2B5D _ C3
; _getTimerController End of function

        nop                                             ; 2B5E _ 90
        nop                                             ; 2B5F _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_158:  db 00H                                          ; 0006 _ .

?_159:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2219:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2266:                                           ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0060 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0068 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0070 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0078 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0080 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 00E0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 00F0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0108 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***

_closebtn.2378:                                         ; byte
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0160 _ OOOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 40H       ; 0168 _ OOOOOOO@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0170 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0178 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0180 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0188 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 0190 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 0198 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01A0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01A8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01B0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01B8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 40H       ; 01C0 _ OQQQQQQ@
        db 40H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01C8 _ @QQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 40H, 40H       ; 01D0 _ OQQQQQ@@
        db 40H, 40H, 51H, 51H, 51H, 51H, 24H, 40H       ; 01D8 _ @@QQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 40H, 40H, 51H       ; 01E0 _ OQQQQ@@Q
        db 51H, 40H, 40H, 51H, 51H, 51H, 24H, 40H       ; 01E8 _ Q@@QQQ$@
        db 4FH, 51H, 51H, 51H, 40H, 40H, 51H, 51H       ; 01F0 _ OQQQ@@QQ
        db 51H, 51H, 40H, 40H, 51H, 51H, 24H, 40H       ; 01F8 _ QQ@@QQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0200 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0208 _ QQQQQQ$@
        db 4FH, 51H, 51H, 51H, 51H, 51H, 51H, 51H       ; 0210 _ OQQQQQQQ
        db 51H, 51H, 51H, 51H, 51H, 51H, 24H, 40H       ; 0218 _ QQQQQQ$@
        db 4FH, 24H, 24H, 24H, 24H, 24H, 24H, 24H       ; 0220 _ O$$$$$$$
        db 24H, 24H, 24H, 24H, 24H, 24H, 24H, 40H       ; 0228 _ $$$$$$$@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0230 _ @@@@@@@@
        db 40H, 40H, 40H, 40H, 40H, 40H, 40H, 40H       ; 0238 _ @@@@@@@@



?_160:                                                  ; byte
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_161:                                                  ; byte
        db 35H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0008 _ 5[sec].

?_162:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 000F _ 3[sec].

?_163:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0016 _ page is:
        db 20H, 00H                                     ; 001E _  .

?_164:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0020 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0028 _ L: .

?_165:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002C _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0034 _ H: .

?_166:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0038 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0040 _ w: .

?_167:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0044 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 004C _ gh: .

?_168:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0051 _ type: .

?_169:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0058 _ Welcome 
        db 74H, 6FH, 00H                                ; 0060 _ to.

?_170:                                                  ; byte
        db 4DH, 79H, 4FH, 53H, 00H                      ; 0063 _ MyOS.



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

?_171:  resw    1                                       ; 0004

?_172:  resw    1                                       ; 0006

_keyinfo:                                               ; byte
        resb    24                                      ; 0008

_mouseinfo:                                             ; byte
        resb    32                                      ; 0020

_keybuf:                                                ; byte
        resb    32                                      ; 0040

_mousebuf:                                              ; byte
        resb    128                                     ; 0060

_mdec:                                                  ; byte
        resb    16                                      ; 00E0

_timerinfo:                                             ; byte
        resb    24                                      ; 00F0

_timerbuf:                                              ; byte
        resb    8                                       ; 0108

_mx:    resd    1                                       ; 0110

_my:    resd    1                                       ; 0114

_xsize: resd    1                                       ; 0118

_ysize: resd    1                                       ; 011C

_buf_back:                                              ; dword
        resd    8                                       ; 0120

_buf_mouse:                                             ; byte
        resb    256                                     ; 0140

_str.2314:                                              ; byte
        resb    1                                       ; 0240

?_173:  resb    9                                       ; 0241

?_174:  resb    22                                      ; 024A

_timerctl:                                              ; byte
        resb    8032                                    ; 0260


