; Disassembly of file: ckernel.o
; Thu Aug  8 13:56:28 2019
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
        call    _initBootInfo                           ; 000E _ E8, 00000C48
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-1CH], eax                    ; 0018 _ 89. 45, E4
        movzx   eax, word [?_171]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 0000011C(d)
        movzx   eax, word [?_172]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 00000120(d)
        mov     dword [ebp-20H], 0                      ; 0035 _ C7. 45, E0, 00000000
        mov     dword [ebp-24H], 0                      ; 003C _ C7. 45, DC, 00000000
        call    _init_pit                               ; 0043 _ E8, 00000000(rel)
        mov     dword [esp+8H], _timerbuf               ; 0048 _ C7. 44 24, 08, 00000108(d)
        mov     dword [esp+4H], 8                       ; 0050 _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0058 _ C7. 04 24, 000000F0(d)
        call    _fifo8_init                             ; 005F _ E8, 00000000(rel)
        call    _timer_alloc                            ; 0064 _ E8, 00000000(rel)
        mov     dword [ebp-28H], eax                    ; 0069 _ 89. 45, D8
        mov     dword [esp+8H], 10                      ; 006C _ C7. 44 24, 08, 0000000A
        mov     dword [esp+4H], _timerinfo              ; 0074 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-28H]                    ; 007C _ 8B. 45, D8
        mov     dword [esp], eax                        ; 007F _ 89. 04 24
        call    _timer_init                             ; 0082 _ E8, 00000000(rel)
        mov     dword [esp+4H], 500                     ; 0087 _ C7. 44 24, 04, 000001F4
        mov     eax, dword [ebp-28H]                    ; 008F _ 8B. 45, D8
        mov     dword [esp], eax                        ; 0092 _ 89. 04 24
        call    _timer_settime                          ; 0095 _ E8, 00000000(rel)
        call    _timer_alloc                            ; 009A _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 009F _ 89. 45, D4
        mov     dword [esp+8H], 2                       ; 00A2 _ C7. 44 24, 08, 00000002
        mov     dword [esp+4H], _timerinfo              ; 00AA _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-2CH]                    ; 00B2 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00B5 _ 89. 04 24
        call    _timer_init                             ; 00B8 _ E8, 00000000(rel)
        mov     dword [esp+4H], 300                     ; 00BD _ C7. 44 24, 04, 0000012C
        mov     eax, dword [ebp-2CH]                    ; 00C5 _ 8B. 45, D4
        mov     dword [esp], eax                        ; 00C8 _ 89. 04 24
        call    _timer_settime                          ; 00CB _ E8, 00000000(rel)
        call    _timer_alloc                            ; 00D0 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 00D5 _ 89. 45, D0
        mov     dword [esp+8H], 1                       ; 00D8 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 00E0 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 00E8 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 00EB _ 89. 04 24
        call    _timer_init                             ; 00EE _ E8, 00000000(rel)
        mov     dword [esp+4H], 50                      ; 00F3 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 00FB _ 8B. 45, D0
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
        call    _init_palette                           ; 013E _ E8, 00000BDB
        call    _init_keyboard                          ; 0143 _ E8, 00001144
        call    _get_memory_block_count                 ; 0148 _ E8, 00000000(rel)
        mov     dword [ebp-34H], eax                    ; 014D _ 89. 45, CC
        call    _get_addr_buffer                        ; 0150 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 0155 _ 89. 45, C8
        mov     eax, dword [_memman]                    ; 0158 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 015D _ 89. 04 24
        call    _memman_init                            ; 0160 _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 0165 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 016A _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 0172 _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 017A _ 89. 04 24
        call    _memman_free                            ; 017D _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0182 _ 8B. 0D, 00000120(d)
        mov     edx, dword [_xsize]                     ; 0188 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_memman]                    ; 018E _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 0193 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0197 _ 89. 54 24, 08
        mov     edx, dword [ebp-1CH]                    ; 019B _ 8B. 55, E4
        mov     dword [esp+4H], edx                     ; 019E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01A2 _ 89. 04 24
        call    _shtctl_init                            ; 01A5 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 01AA _ 89. 45, C4
        mov     eax, dword [ebp-3CH]                    ; 01AD _ 8B. 45, C4
        mov     dword [esp], eax                        ; 01B0 _ 89. 04 24
        call    _sheet_alloc                            ; 01B3 _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 01B8 _ 89. 45, E0
        mov     eax, dword [ebp-3CH]                    ; 01BB _ 8B. 45, C4
        mov     dword [esp], eax                        ; 01BE _ 89. 04 24
        call    _sheet_alloc                            ; 01C1 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 01C6 _ 89. 45, DC
        mov     edx, dword [_xsize]                     ; 01C9 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_ysize]                     ; 01CF _ A1, 00000120(d)
        imul    eax, edx                                ; 01D4 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 01D7 _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 01DD _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 01E1 _ 89. 14 24
        call    _memman_alloc_4k                        ; 01E4 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 01E9 _ A3, 00000124(d)
        mov     ecx, dword [_ysize]                     ; 01EE _ 8B. 0D, 00000120(d)
        mov     edx, dword [_xsize]                     ; 01F4 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_buf_back]                  ; 01FA _ A1, 00000124(d)
        mov     dword [esp+10H], 99                     ; 01FF _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ecx                    ; 0207 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 020B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 020F _ 89. 44 24, 04
        mov     eax, dword [ebp-20H]                    ; 0213 _ 8B. 45, E0
        mov     dword [esp], eax                        ; 0216 _ 89. 04 24
        call    _sheet_setbuf                           ; 0219 _ E8, 00000000(rel)
        mov     dword [esp+10H], 99                     ; 021E _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0226 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 022E _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0236 _ C7. 44 24, 04, 00000140(d)
        mov     eax, dword [ebp-24H]                    ; 023E _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0241 _ 89. 04 24
        call    _sheet_setbuf                           ; 0244 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0249 _ 8B. 0D, 00000120(d)
        mov     edx, dword [_xsize]                     ; 024F _ 8B. 15, 0000011C(d)
        mov     eax, dword [_buf_back]                  ; 0255 _ A1, 00000124(d)
        mov     dword [esp+8H], ecx                     ; 025A _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 025E _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0262 _ 89. 04 24
        call    _init_screen8                           ; 0265 _ E8, 00000529
        mov     dword [esp+4H], 99                      ; 026A _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 0272 _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0279 _ E8, 00000D3C
        mov     dword [esp+0CH], 0                      ; 027E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0286 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-20H]                    ; 028E _ 8B. 45, E0
        mov     dword [esp+4H], eax                     ; 0291 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0295 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0298 _ 89. 04 24
        call    _sheet_slide                            ; 029B _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 02A0 _ A1, 0000011C(d)
        sub     eax, 16                                 ; 02A5 _ 83. E8, 10
        mov     edx, eax                                ; 02A8 _ 89. C2
        shr     edx, 31                                 ; 02AA _ C1. EA, 1F
        add     eax, edx                                ; 02AD _ 01. D0
        sar     eax, 1                                  ; 02AF _ D1. F8
        mov     dword [_mx], eax                        ; 02B1 _ A3, 00000114(d)
        mov     eax, dword [_ysize]                     ; 02B6 _ A1, 00000120(d)
        sub     eax, 44                                 ; 02BB _ 83. E8, 2C
        mov     edx, eax                                ; 02BE _ 89. C2
        shr     edx, 31                                 ; 02C0 _ C1. EA, 1F
        add     eax, edx                                ; 02C3 _ 01. D0
        sar     eax, 1                                  ; 02C5 _ D1. F8
        mov     dword [_my], eax                        ; 02C7 _ A3, 00000118(d)
        mov     edx, dword [_my]                        ; 02CC _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 02D2 _ A1, 00000114(d)
        mov     dword [esp+0CH], edx                    ; 02D7 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 02DB _ 89. 44 24, 08
        mov     eax, dword [ebp-24H]                    ; 02DF _ 8B. 45, DC
        mov     dword [esp+4H], eax                     ; 02E2 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 02E6 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 02E9 _ 89. 04 24
        call    _sheet_slide                            ; 02EC _ E8, 00000000(rel)
        mov     dword [ebp-0CH], 8                      ; 02F1 _ C7. 45, F4, 00000008
        mov     dword [ebp-10H], 7                      ; 02F8 _ C7. 45, F0, 00000007
        mov     dword [esp+4H], ?_161                   ; 02FF _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-3CH]                    ; 0307 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 030A _ 89. 04 24
        call    _message_box                            ; 030D _ E8, 00001495
        mov     dword [_shtMsgBox], eax                 ; 0312 _ A3, 00000110(d)
        mov     dword [esp+8H], 0                       ; 0317 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-20H]                    ; 031F _ 8B. 45, E0
        mov     dword [esp+4H], eax                     ; 0322 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0326 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0329 _ 89. 04 24
        call    _sheet_updown                           ; 032C _ E8, 00000000(rel)
        mov     dword [esp+8H], 100                     ; 0331 _ C7. 44 24, 08, 00000064
        mov     eax, dword [ebp-24H]                    ; 0339 _ 8B. 45, DC
        mov     dword [esp+4H], eax                     ; 033C _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0340 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0343 _ 89. 04 24
        call    _sheet_updown                           ; 0346 _ E8, 00000000(rel)
        call    _io_sti                                 ; 034B _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0350 _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 0357 _ E8, 00000F6B
        mov     dword [ebp-40H], 0                      ; 035C _ C7. 45, C0, 00000000
        mov     dword [ebp-14H], 0                      ; 0363 _ C7. 45, EC, 00000000
        mov     byte [ebp-15H], 0                       ; 036A _ C6. 45, EB, 00
?_001:  call    _io_cli                                 ; 036E _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0373 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 037A _ E8, 00000000(rel)
        mov     ebx, eax                                ; 037F _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0381 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0388 _ E8, 00000000(rel)
        add     ebx, eax                                ; 038D _ 01. C3
        mov     dword [esp], _timerinfo                 ; 038F _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0396 _ E8, 00000000(rel)
        add     eax, ebx                                ; 039B _ 01. D8
        test    eax, eax                                ; 039D _ 85. C0
        jnz     ?_002                                   ; 039F _ 75, 07
        call    _io_sti                                 ; 03A1 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 03A6 _ EB, C6

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 03A8 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 03AF _ E8, 00000000(rel)
        test    eax, eax                                ; 03B4 _ 85. C0
        je      ?_004                                   ; 03B6 _ 0F 84, 00000226
        call    _io_sti                                 ; 03BC _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 03C1 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 03C8 _ E8, 00000000(rel)
        mov     dword [ebp-40H], eax                    ; 03CD _ 89. 45, C0
        cmp     dword [ebp-40H], 28                     ; 03D0 _ 83. 7D, C0, 1C
        jnz     ?_003                                   ; 03D4 _ 75, 69
        mov     ebx, dword [_xsize]                     ; 03D6 _ 8B. 1D, 0000011C(d)
        mov     ecx, dword [_buf_back]                  ; 03DC _ 8B. 0D, 00000124(d)
        mov     edx, dword [ebp-14H]                    ; 03E2 _ 8B. 55, EC
        mov     eax, edx                                ; 03E5 _ 89. D0
        shl     eax, 2                                  ; 03E7 _ C1. E0, 02
        add     eax, edx                                ; 03EA _ 01. D0
        shl     eax, 2                                  ; 03EC _ C1. E0, 02
        mov     edx, eax                                ; 03EF _ 89. C2
        mov     eax, dword [ebp-38H]                    ; 03F1 _ 8B. 45, C8
        add     eax, edx                                ; 03F4 _ 01. D0
        mov     dword [esp+18H], 7                      ; 03F6 _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], ebx                    ; 03FE _ 89. 5C 24, 14
        mov     edx, dword [ebp-14H]                    ; 0402 _ 8B. 55, EC
        mov     dword [esp+10H], edx                    ; 0405 _ 89. 54 24, 10
        mov     dword [esp+0CH], ecx                    ; 0409 _ 89. 4C 24, 0C
        mov     dword [esp+8H], eax                     ; 040D _ 89. 44 24, 08
        mov     eax, dword [ebp-20H]                    ; 0411 _ 8B. 45, E0
        mov     dword [esp+4H], eax                     ; 0414 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0418 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 041B _ 89. 04 24
        call    _showMemoryInfo                         ; 041E _ E8, 00001079
        add     dword [ebp-14H], 1                      ; 0423 _ 83. 45, EC, 01
        mov     eax, dword [ebp-14H]                    ; 0427 _ 8B. 45, EC
        cmp     eax, dword [ebp-34H]                    ; 042A _ 3B. 45, CC
        jle     ?_001                                   ; 042D _ 0F 8E, FFFFFF3B
        mov     dword [ebp-14H], 0                      ; 0433 _ C7. 45, EC, 00000000
        jmp     ?_001                                   ; 043A _ E9, FFFFFF2F

?_003:  mov     eax, dword [ebp-40H]                    ; 043F _ 8B. 45, C0
        add     eax, _keytable                          ; 0442 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0447 _ 0F B6. 00
        test    al, al                                  ; 044A _ 84. C0
        je      ?_001                                   ; 044C _ 0F 84, FFFFFF1C
        cmp     dword [ebp-0CH], 143                    ; 0452 _ 81. 7D, F4, 0000008F
        jg      ?_001                                   ; 0459 _ 0F 8F, FFFFFF0F
        movsx   eax, byte [ebp-15H]                     ; 045F _ 0F BE. 45, EB
        add     eax, 50                                 ; 0463 _ 83. C0, 32
        mov     dword [esp+14H], ?_162                  ; 0466 _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 0                      ; 046E _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 0476 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], eax                     ; 047E _ 89. 44 24, 08
        mov     eax, dword [ebp-20H]                    ; 0482 _ 8B. 45, E0
        mov     dword [esp+4H], eax                     ; 0485 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0489 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 048C _ 89. 04 24
        call    _showString                             ; 048F _ E8, 000007E8
        movzx   eax, byte [ebp-15H]                     ; 0494 _ 0F B6. 45, EB
        add     eax, 25                                 ; 0498 _ 83. C0, 19
        mov     byte [ebp-15H], al                      ; 049B _ 88. 45, EB
        mov     eax, dword [ebp-0CH]                    ; 049E _ 8B. 45, F4
        lea     ecx, [eax+7H]                           ; 04A1 _ 8D. 48, 07
        mov     eax, dword [_shtMsgBox]                 ; 04A4 _ A1, 00000110(d)
        mov     edx, dword [eax+4H]                     ; 04A9 _ 8B. 50, 04
        mov     eax, dword [_shtMsgBox]                 ; 04AC _ A1, 00000110(d)
        mov     eax, dword [eax]                        ; 04B1 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 04B3 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ecx                    ; 04BB _ 89. 4C 24, 14
        mov     dword [esp+10H], 28                     ; 04BF _ C7. 44 24, 10, 0000001C
        mov     ecx, dword [ebp-0CH]                    ; 04C7 _ 8B. 4D, F4
        mov     dword [esp+0CH], ecx                    ; 04CA _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 04CE _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 04D6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 04DA _ 89. 04 24
        call    _boxfill8                               ; 04DD _ E8, 00000907
        mov     eax, dword [ebp-0CH]                    ; 04E2 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 04E5 _ 8D. 50, 08
        mov     eax, dword [_shtMsgBox]                 ; 04E8 _ A1, 00000110(d)
        mov     dword [esp+14H], 44                     ; 04ED _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 04F5 _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 04F9 _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 0501 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 0504 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0508 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 050C _ 8B. 45, C4
        mov     dword [esp], eax                        ; 050F _ 89. 04 24
        call    _sheet_refresh                          ; 0512 _ E8, 00000000(rel)
        mov     eax, dword [ebp-40H]                    ; 0517 _ 8B. 45, C0
        add     eax, _keytable                          ; 051A _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 051F _ 0F B6. 00
        mov     byte [ebp-46H], al                      ; 0522 _ 88. 45, BA
        mov     byte [ebp-45H], 0                       ; 0525 _ C6. 45, BB, 00
        mov     edx, dword [_shtMsgBox]                 ; 0529 _ 8B. 15, 00000110(d)
        lea     eax, [ebp-46H]                          ; 052F _ 8D. 45, BA
        mov     dword [esp+14H], eax                    ; 0532 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0536 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 053E _ C7. 44 24, 0C, 0000001C
        mov     eax, dword [ebp-0CH]                    ; 0546 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0549 _ 89. 44 24, 08
        mov     dword [esp+4H], edx                     ; 054D _ 89. 54 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0551 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0554 _ 89. 04 24
        call    _showString                             ; 0557 _ E8, 00000720
        add     dword [ebp-0CH], 8                      ; 055C _ 83. 45, F4, 08
        mov     eax, dword [ebp-0CH]                    ; 0560 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 0563 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 0566 _ 8B. 45, F0
        movzx   eax, al                                 ; 0569 _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 056C _ 8B. 15, 00000110(d)
        mov     ecx, dword [edx+4H]                     ; 0572 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0575 _ 8B. 15, 00000110(d)
        mov     edx, dword [edx]                        ; 057B _ 8B. 12
        mov     dword [esp+18H], 43                     ; 057D _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0585 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 0589 _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0591 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0594 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0598 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 059C _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 05A0 _ 89. 14 24
        call    _boxfill8                               ; 05A3 _ E8, 00000841
        mov     eax, dword [ebp-0CH]                    ; 05A8 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 05AB _ 8D. 50, 08
        mov     eax, dword [_shtMsgBox]                 ; 05AE _ A1, 00000110(d)
        mov     dword [esp+14H], 44                     ; 05B3 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 05BB _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 05BF _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 05C7 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 05CA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 05CE _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 05D2 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 05D5 _ 89. 04 24
        call    _sheet_refresh                          ; 05D8 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 05DD _ E9, FFFFFD8C

?_004:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 05E2 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 05E9 _ E8, 00000000(rel)
        test    eax, eax                                ; 05EE _ 85. C0
        jz      ?_005                                   ; 05F0 _ 74, 1E
        mov     eax, dword [ebp-24H]                    ; 05F2 _ 8B. 45, DC
        mov     dword [esp+8H], eax                     ; 05F5 _ 89. 44 24, 08
        mov     eax, dword [ebp-20H]                    ; 05F9 _ 8B. 45, E0
        mov     dword [esp+4H], eax                     ; 05FC _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0600 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0603 _ 89. 04 24
        call    _show_mouse_info                        ; 0606 _ E8, 00000598
        jmp     ?_001                                   ; 060B _ E9, FFFFFD5E

?_005:  ; Local function
        mov     dword [esp], _timerinfo                 ; 0610 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0617 _ E8, 00000000(rel)
        test    eax, eax                                ; 061C _ 85. C0
        je      ?_001                                   ; 061E _ 0F 84, FFFFFD4A
        call    _io_sti                                 ; 0624 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 0629 _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 0630 _ E8, 00000000(rel)
        mov     dword [ebp-44H], eax                    ; 0635 _ 89. 45, BC
        cmp     dword [ebp-44H], 10                     ; 0638 _ 83. 7D, BC, 0A
        jnz     ?_006                                   ; 063C _ 75, 37
        mov     dword [esp+14H], ?_163                  ; 063E _ C7. 44 24, 14, 0000000A(d)
        mov     dword [esp+10H], 7                      ; 0646 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 064E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0656 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-20H]                    ; 065E _ 8B. 45, E0
        mov     dword [esp+4H], eax                     ; 0661 _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0665 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0668 _ 89. 04 24
        call    _showString                             ; 066B _ E8, 0000060C
        jmp     ?_001                                   ; 0670 _ E9, FFFFFCF9

?_006:  ; Local function
        cmp     dword [ebp-44H], 2                      ; 0675 _ 83. 7D, BC, 02
        jnz     ?_007                                   ; 0679 _ 75, 37
        mov     dword [esp+14H], ?_164                  ; 067B _ C7. 44 24, 14, 00000012(d)
        mov     dword [esp+10H], 7                      ; 0683 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 16                     ; 068B _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 0                       ; 0693 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-20H]                    ; 069B _ 8B. 45, E0
        mov     dword [esp+4H], eax                     ; 069E _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 06A2 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 06A5 _ 89. 04 24
        call    _showString                             ; 06A8 _ E8, 000005CF
        jmp     ?_001                                   ; 06AD _ E9, FFFFFCBC

?_007:  ; Local function
        cmp     dword [ebp-44H], 0                      ; 06B2 _ 83. 7D, BC, 00
        jz      ?_008                                   ; 06B6 _ 74, 24
        mov     dword [esp+8H], 0                       ; 06B8 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 06C0 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 06C8 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 06CB _ 89. 04 24
        call    _timer_init                             ; 06CE _ E8, 00000000(rel)
        mov     dword [ebp-10H], 0                      ; 06D3 _ C7. 45, F0, 00000000
        jmp     ?_009                                   ; 06DA _ EB, 22

?_008:  mov     dword [esp+8H], 1                       ; 06DC _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 06E4 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-30H]                    ; 06EC _ 8B. 45, D0
        mov     dword [esp], eax                        ; 06EF _ 89. 04 24
        call    _timer_init                             ; 06F2 _ E8, 00000000(rel)
        mov     dword [ebp-10H], 7                      ; 06F7 _ C7. 45, F0, 00000007
?_009:  mov     dword [esp+4H], 50                      ; 06FE _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-30H]                    ; 0706 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0709 _ 89. 04 24
        call    _timer_settime                          ; 070C _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 0711 _ 8B. 45, F4
        lea     ebx, [eax+7H]                           ; 0714 _ 8D. 58, 07
        mov     eax, dword [ebp-10H]                    ; 0717 _ 8B. 45, F0
        movzx   eax, al                                 ; 071A _ 0F B6. C0
        mov     edx, dword [_shtMsgBox]                 ; 071D _ 8B. 15, 00000110(d)
        mov     ecx, dword [edx+4H]                     ; 0723 _ 8B. 4A, 04
        mov     edx, dword [_shtMsgBox]                 ; 0726 _ 8B. 15, 00000110(d)
        mov     edx, dword [edx]                        ; 072C _ 8B. 12
        mov     dword [esp+18H], 43                     ; 072E _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], ebx                    ; 0736 _ 89. 5C 24, 14
        mov     dword [esp+10H], 28                     ; 073A _ C7. 44 24, 10, 0000001C
        mov     ebx, dword [ebp-0CH]                    ; 0742 _ 8B. 5D, F4
        mov     dword [esp+0CH], ebx                    ; 0745 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 0749 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 074D _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0751 _ 89. 14 24
        call    _boxfill8                               ; 0754 _ E8, 00000690
        mov     eax, dword [ebp-0CH]                    ; 0759 _ 8B. 45, F4
        lea     edx, [eax+8H]                           ; 075C _ 8D. 50, 08
        mov     eax, dword [_shtMsgBox]                 ; 075F _ A1, 00000110(d)
        mov     dword [esp+14H], 44                     ; 0764 _ C7. 44 24, 14, 0000002C
        mov     dword [esp+10H], edx                    ; 076C _ 89. 54 24, 10
        mov     dword [esp+0CH], 28                     ; 0770 _ C7. 44 24, 0C, 0000001C
        mov     edx, dword [ebp-0CH]                    ; 0778 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 077B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 077F _ 89. 44 24, 04
        mov     eax, dword [ebp-3CH]                    ; 0783 _ 8B. 45, C4
        mov     dword [esp], eax                        ; 0786 _ 89. 04 24
        call    _sheet_refresh                          ; 0789 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 078E _ E9, FFFFFBDB

_init_screen8:; Function begin
        push    ebp                                     ; 0793 _ 55
        mov     ebp, esp                                ; 0794 _ 89. E5
        push    ebx                                     ; 0796 _ 53
        sub     esp, 36                                 ; 0797 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 079A _ 8B. 45, 10
        lea     edx, [eax-2AH]                          ; 079D _ 8D. 50, D6
        mov     eax, dword [ebp+0CH]                    ; 07A0 _ 8B. 45, 0C
        sub     eax, 1                                  ; 07A3 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 07A6 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 07AA _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 07AE _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 07B6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 07BE _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 07C6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07C9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07CD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07D0 _ 89. 04 24
        call    _boxfill8                               ; 07D3 _ E8, 00000611
        mov     eax, dword [ebp+10H]                    ; 07D8 _ 8B. 45, 10
        lea     ecx, [eax-29H]                          ; 07DB _ 8D. 48, D7
        mov     eax, dword [ebp+0CH]                    ; 07DE _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 07E1 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 07E4 _ 8B. 45, 10
        sub     eax, 41                                 ; 07E7 _ 83. E8, 29
        mov     dword [esp+18H], ecx                    ; 07EA _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 07EE _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 07F2 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 07F6 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 07FE _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0806 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0809 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 080D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0810 _ 89. 04 24
        call    _boxfill8                               ; 0813 _ E8, 000005D1
        mov     eax, dword [ebp+10H]                    ; 0818 _ 8B. 45, 10
        lea     ecx, [eax-28H]                          ; 081B _ 8D. 48, D8
        mov     eax, dword [ebp+0CH]                    ; 081E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0821 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0824 _ 8B. 45, 10
        sub     eax, 40                                 ; 0827 _ 83. E8, 28
        mov     dword [esp+18H], ecx                    ; 082A _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 082E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0832 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0836 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 083E _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0846 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0849 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 084D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0850 _ 89. 04 24
        call    _boxfill8                               ; 0853 _ E8, 00000591
        mov     eax, dword [ebp+10H]                    ; 0858 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 085B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 085E _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0861 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0864 _ 8B. 45, 10
        sub     eax, 39                                 ; 0867 _ 83. E8, 27
        mov     dword [esp+18H], ecx                    ; 086A _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 086E _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0872 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0876 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 087E _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0886 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0889 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 088D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0890 _ 89. 04 24
        call    _boxfill8                               ; 0893 _ E8, 00000551
        mov     eax, dword [ebp+10H]                    ; 0898 _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 089B _ 8D. 50, DB
        mov     eax, dword [ebp+10H]                    ; 089E _ 8B. 45, 10
        sub     eax, 37                                 ; 08A1 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 08A4 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 08A8 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 08B0 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 08B4 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 08BC _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 08C4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08C7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08CB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08CE _ 89. 04 24
        call    _boxfill8                               ; 08D1 _ E8, 00000513
        mov     eax, dword [ebp+10H]                    ; 08D6 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 08D9 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 08DC _ 8B. 45, 10
        sub     eax, 37                                 ; 08DF _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 08E2 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 08E6 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 08EE _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 08F2 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 08FA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0902 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0905 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0909 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 090C _ 89. 04 24
        call    _boxfill8                               ; 090F _ E8, 000004D5
        mov     eax, dword [ebp+10H]                    ; 0914 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0917 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 091A _ 8B. 45, 10
        sub     eax, 4                                  ; 091D _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0920 _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0924 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 092C _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0930 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0938 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0940 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0943 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0947 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 094A _ 89. 04 24
        call    _boxfill8                               ; 094D _ E8, 00000497
        mov     eax, dword [ebp+10H]                    ; 0952 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0955 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0958 _ 8B. 45, 10
        sub     eax, 36                                 ; 095B _ 83. E8, 24
        mov     dword [esp+18H], edx                    ; 095E _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 0962 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 096A _ 89. 44 24, 10
        mov     dword [esp+0CH], 72                     ; 096E _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 15                      ; 0976 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 097E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0981 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0985 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0988 _ 89. 04 24
        call    _boxfill8                               ; 098B _ E8, 00000459
        mov     eax, dword [ebp+10H]                    ; 0990 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0993 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0996 _ 8B. 45, 10
        sub     eax, 3                                  ; 0999 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 099C _ 89. 54 24, 18
        mov     dword [esp+14H], 72                     ; 09A0 _ C7. 44 24, 14, 00000048
        mov     dword [esp+10H], eax                    ; 09A8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 09AC _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 09B4 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 09BC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 09BF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 09C3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 09C6 _ 89. 04 24
        call    _boxfill8                               ; 09C9 _ E8, 0000041B
        mov     eax, dword [ebp+10H]                    ; 09CE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 09D1 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 09D4 _ 8B. 45, 10
        sub     eax, 37                                 ; 09D7 _ 83. E8, 25
        mov     dword [esp+18H], edx                    ; 09DA _ 89. 54 24, 18
        mov     dword [esp+14H], 73                     ; 09DE _ C7. 44 24, 14, 00000049
        mov     dword [esp+10H], eax                    ; 09E6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 73                     ; 09EA _ C7. 44 24, 0C, 00000049
        mov     dword [esp+8H], 0                       ; 09F2 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 09FA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 09FD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A01 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A04 _ 89. 04 24
        call    _boxfill8                               ; 0A07 _ E8, 000003DD
        mov     eax, dword [ebp+10H]                    ; 0A0C _ 8B. 45, 10
        lea     ebx, [eax-25H]                          ; 0A0F _ 8D. 58, DB
        mov     eax, dword [ebp+0CH]                    ; 0A12 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0A15 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0A18 _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0A1B _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 0A1E _ 8B. 45, 0C
        sub     eax, 61                                 ; 0A21 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0A24 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0A28 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0A2C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0A30 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0A34 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0A3C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A3F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A43 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A46 _ 89. 04 24
        call    _boxfill8                               ; 0A49 _ E8, 0000039B
        mov     eax, dword [ebp+10H]                    ; 0A4E _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0A51 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0A54 _ 8B. 45, 0C
        lea     ecx, [eax-3DH]                          ; 0A57 _ 8D. 48, C3
        mov     eax, dword [ebp+10H]                    ; 0A5A _ 8B. 45, 10
        lea     edx, [eax-24H]                          ; 0A5D _ 8D. 50, DC
        mov     eax, dword [ebp+0CH]                    ; 0A60 _ 8B. 45, 0C
        sub     eax, 61                                 ; 0A63 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0A66 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0A6A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0A6E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0A72 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0A76 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0A7E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A81 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A85 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A88 _ 89. 04 24
        call    _boxfill8                               ; 0A8B _ E8, 00000359
        mov     eax, dword [ebp+10H]                    ; 0A90 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0A93 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0A96 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0A99 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0A9C _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0A9F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0AA2 _ 8B. 45, 0C
        sub     eax, 61                                 ; 0AA5 _ 83. E8, 3D
        mov     dword [esp+18H], ebx                    ; 0AA8 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0AAC _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0AB0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0AB4 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0AB8 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0AC0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AC3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AC7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0ACA _ 89. 04 24
        call    _boxfill8                               ; 0ACD _ E8, 00000317
        mov     eax, dword [ebp+10H]                    ; 0AD2 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0AD5 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0AD8 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 0ADB _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 0ADE _ 8B. 45, 10
        lea     edx, [eax-25H]                          ; 0AE1 _ 8D. 50, DB
        mov     eax, dword [ebp+0CH]                    ; 0AE4 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0AE7 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0AEA _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0AEE _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0AF2 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0AF6 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0AFA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0B02 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B05 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B09 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0B0C _ 89. 04 24
        call    _boxfill8                               ; 0B0F _ E8, 000002D5
        nop                                             ; 0B14 _ 90
        add     esp, 36                                 ; 0B15 _ 83. C4, 24
        pop     ebx                                     ; 0B18 _ 5B
        pop     ebp                                     ; 0B19 _ 5D
        ret                                             ; 0B1A _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0B1B _ 55
        mov     ebp, esp                                ; 0B1C _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 0B1E _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0B21 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0B24 _ A1, 00000114(d)
        add     eax, edx                                ; 0B29 _ 01. D0
        mov     dword [_mx], eax                        ; 0B2B _ A3, 00000114(d)
        mov     eax, dword [ebp+10H]                    ; 0B30 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0B33 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0B36 _ A1, 00000118(d)
        add     eax, edx                                ; 0B3B _ 01. D0
        mov     dword [_my], eax                        ; 0B3D _ A3, 00000118(d)
        mov     eax, dword [_mx]                        ; 0B42 _ A1, 00000114(d)
        test    eax, eax                                ; 0B47 _ 85. C0
        jns     ?_010                                   ; 0B49 _ 79, 0A
        mov     dword [_mx], 0                          ; 0B4B _ C7. 05, 00000114(d), 00000000
?_010:  mov     eax, dword [_my]                        ; 0B55 _ A1, 00000118(d)
        test    eax, eax                                ; 0B5A _ 85. C0
        jns     ?_011                                   ; 0B5C _ 79, 0A
        mov     dword [_my], 0                          ; 0B5E _ C7. 05, 00000118(d), 00000000
?_011:  mov     edx, dword [_xsize]                     ; 0B68 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_mx]                        ; 0B6E _ A1, 00000114(d)
        cmp     edx, eax                                ; 0B73 _ 39. C2
        jg      ?_012                                   ; 0B75 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0B77 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 0B7C _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0B7F _ A3, 00000114(d)
?_012:  mov     edx, dword [_ysize]                     ; 0B84 _ 8B. 15, 00000120(d)
        mov     eax, dword [_my]                        ; 0B8A _ A1, 00000118(d)
        cmp     edx, eax                                ; 0B8F _ 39. C2
        jg      ?_013                                   ; 0B91 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0B93 _ A1, 00000120(d)
        sub     eax, 1                                  ; 0B98 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0B9B _ A3, 00000118(d)
?_013:  nop                                             ; 0BA0 _ 90
        pop     ebp                                     ; 0BA1 _ 5D
        ret                                             ; 0BA2 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0BA3 _ 55
        mov     ebp, esp                                ; 0BA4 _ 89. E5
        sub     esp, 40                                 ; 0BA6 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0BA9 _ A1, 00000124(d)
        mov     dword [ebp-0CH], eax                    ; 0BAE _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0BB1 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0BB5 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0BBA _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 0BC1 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0BC6 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0BC9 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0BCD _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0BD1 _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0BD8 _ E8, 00000780
        test    eax, eax                                ; 0BDD _ 85. C0
        jz      ?_014                                   ; 0BDF _ 74, 77
        mov     dword [esp+8H], _mdec                   ; 0BE1 _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0BE9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0BEC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0BF0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BF3 _ 89. 04 24
        call    _computeMousePosition                   ; 0BF6 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0BFB _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 0C01 _ A1, 00000114(d)
        mov     dword [esp+0CH], edx                    ; 0C06 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0C0A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0C0E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0C11 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C15 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C18 _ 89. 04 24
        call    _sheet_slide                            ; 0C1B _ E8, 00000000(rel)
        mov     eax, dword [?_173]                      ; 0C20 _ A1, 000000EC(d)
        and     eax, 01H                                ; 0C25 _ 83. E0, 01
        test    eax, eax                                ; 0C28 _ 85. C0
        jz      ?_014                                   ; 0C2A _ 74, 2C
        mov     eax, dword [_my]                        ; 0C2C _ A1, 00000118(d)
        lea     ecx, [eax-8H]                           ; 0C31 _ 8D. 48, F8
        mov     eax, dword [_mx]                        ; 0C34 _ A1, 00000114(d)
        lea     edx, [eax-50H]                          ; 0C39 _ 8D. 50, B0
        mov     eax, dword [_shtMsgBox]                 ; 0C3C _ A1, 00000110(d)
        mov     dword [esp+0CH], ecx                    ; 0C41 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0C45 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0C49 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0C4D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0C50 _ 89. 04 24
        call    _sheet_slide                            ; 0C53 _ E8, 00000000(rel)
?_014:  nop                                             ; 0C58 _ 90
        leave                                           ; 0C59 _ C9
        ret                                             ; 0C5A _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0C5B _ 55
        mov     ebp, esp                                ; 0C5C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0C5E _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0C61 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0C67 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 800                      ; 0C6A _ 66: C7. 40, 04, 0320
        mov     eax, dword [ebp+8H]                     ; 0C70 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 600                      ; 0C73 _ 66: C7. 40, 06, 0258
        nop                                             ; 0C79 _ 90
        pop     ebp                                     ; 0C7A _ 5D
        ret                                             ; 0C7B _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0C7C _ 55
        mov     ebp, esp                                ; 0C7D _ 89. E5
        push    ebx                                     ; 0C7F _ 53
        sub     esp, 68                                 ; 0C80 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0C83 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0C86 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0C89 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0C8C _ 89. 45, F4
        jmp     ?_016                                   ; 0C8F _ EB, 4B

?_015:  mov     eax, dword [ebp+1CH]                    ; 0C91 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0C94 _ 0F B6. 00
        movzx   eax, al                                 ; 0C97 _ 0F B6. C0
        shl     eax, 4                                  ; 0C9A _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0C9D _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0CA3 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0CA7 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0CAA _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0CAD _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0CB0 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0CB2 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0CB6 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0CBA _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0CBD _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0CC1 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0CC4 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0CC8 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0CCC _ 89. 14 24
        call    _showFont8                              ; 0CCF _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0CD4 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0CD8 _ 83. 45, 1C, 01
?_016:  mov     eax, dword [ebp+1CH]                    ; 0CDC _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0CDF _ 0F B6. 00
        test    al, al                                  ; 0CE2 _ 84. C0
        jnz     ?_015                                   ; 0CE4 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0CE6 _ 8B. 45, 14
        add     eax, 16                                 ; 0CE9 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0CEC _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0CF0 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0CF3 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0CF7 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0CFA _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0CFE _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0D01 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0D05 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0D08 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0D0C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0D0F _ 89. 04 24
        call    _sheet_refresh                          ; 0D12 _ E8, 00000000(rel)
        nop                                             ; 0D17 _ 90
        add     esp, 68                                 ; 0D18 _ 83. C4, 44
        pop     ebx                                     ; 0D1B _ 5B
        pop     ebp                                     ; 0D1C _ 5D
        ret                                             ; 0D1D _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0D1E _ 55
        mov     ebp, esp                                ; 0D1F _ 89. E5
        sub     esp, 24                                 ; 0D21 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2231         ; 0D24 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 0D2C _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0D34 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0D3B _ E8, 00000003
        nop                                             ; 0D40 _ 90
        leave                                           ; 0D41 _ C9
        ret                                             ; 0D42 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0D43 _ 55
        mov     ebp, esp                                ; 0D44 _ 89. E5
        sub     esp, 40                                 ; 0D46 _ 83. EC, 28
        call    _io_load_eflags                         ; 0D49 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0D4E _ 89. 45, F0
        call    _io_cli                                 ; 0D51 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0D56 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0D59 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0D5D _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0D64 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0D69 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0D6C _ 89. 45, F4
        jmp     ?_018                                   ; 0D6F _ EB, 62

?_017:  mov     eax, dword [ebp+10H]                    ; 0D71 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0D74 _ 0F B6. 00
        shr     al, 2                                   ; 0D77 _ C0. E8, 02
        movzx   eax, al                                 ; 0D7A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0D7D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0D81 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0D88 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0D8D _ 8B. 45, 10
        add     eax, 1                                  ; 0D90 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0D93 _ 0F B6. 00
        shr     al, 2                                   ; 0D96 _ C0. E8, 02
        movzx   eax, al                                 ; 0D99 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0D9C _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0DA0 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0DA7 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0DAC _ 8B. 45, 10
        add     eax, 2                                  ; 0DAF _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0DB2 _ 0F B6. 00
        shr     al, 2                                   ; 0DB5 _ C0. E8, 02
        movzx   eax, al                                 ; 0DB8 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0DBB _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0DBF _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0DC6 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0DCB _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0DCF _ 83. 45, F4, 01
?_018:  mov     eax, dword [ebp-0CH]                    ; 0DD3 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0DD6 _ 3B. 45, 0C
        jle     ?_017                                   ; 0DD9 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0DDB _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0DDE _ 89. 04 24
        call    _io_store_eflags                        ; 0DE1 _ E8, 00000000(rel)
        nop                                             ; 0DE6 _ 90
        leave                                           ; 0DE7 _ C9
        ret                                             ; 0DE8 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0DE9 _ 55
        mov     ebp, esp                                ; 0DEA _ 89. E5
        sub     esp, 20                                 ; 0DEC _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0DEF _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0DF2 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0DF5 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0DF8 _ 89. 45, F8
        jmp     ?_022                                   ; 0DFB _ EB, 31

?_019:  mov     eax, dword [ebp+14H]                    ; 0DFD _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0E00 _ 89. 45, FC
        jmp     ?_021                                   ; 0E03 _ EB, 1D

?_020:  mov     eax, dword [ebp-8H]                     ; 0E05 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0E08 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0E0C _ 8B. 55, FC
        add     eax, edx                                ; 0E0F _ 01. D0
        mov     edx, eax                                ; 0E11 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E13 _ 8B. 45, 08
        add     edx, eax                                ; 0E16 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E18 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E1C _ 88. 02
        add     dword [ebp-4H], 1                       ; 0E1E _ 83. 45, FC, 01
?_021:  mov     eax, dword [ebp-4H]                     ; 0E22 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0E25 _ 3B. 45, 1C
        jle     ?_020                                   ; 0E28 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0E2A _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 0E2E _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0E31 _ 3B. 45, 20
        jle     ?_019                                   ; 0E34 _ 7E, C7
        nop                                             ; 0E36 _ 90
        leave                                           ; 0E37 _ C9
        ret                                             ; 0E38 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0E39 _ 55
        mov     ebp, esp                                ; 0E3A _ 89. E5
        sub     esp, 20                                 ; 0E3C _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0E3F _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0E42 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0E45 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0E4C _ E9, 0000015C

?_023:  mov     edx, dword [ebp-4H]                     ; 0E51 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0E54 _ 8B. 45, 1C
        add     eax, edx                                ; 0E57 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E59 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0E5C _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0E5F _ 80. 7D, FB, 00
        jns     ?_024                                   ; 0E63 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0E65 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0E68 _ 8B. 45, FC
        add     eax, edx                                ; 0E6B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0E6D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0E71 _ 8B. 55, 10
        add     eax, edx                                ; 0E74 _ 01. D0
        mov     edx, eax                                ; 0E76 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E78 _ 8B. 45, 08
        add     edx, eax                                ; 0E7B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E7D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E81 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0E83 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0E87 _ 83. E0, 40
        test    eax, eax                                ; 0E8A _ 85. C0
        jz      ?_025                                   ; 0E8C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0E8E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0E91 _ 8B. 45, FC
        add     eax, edx                                ; 0E94 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0E96 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0E9A _ 8B. 55, 10
        add     eax, edx                                ; 0E9D _ 01. D0
        lea     edx, [eax+1H]                           ; 0E9F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0EA2 _ 8B. 45, 08
        add     edx, eax                                ; 0EA5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EA7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EAB _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0EAD _ 0F BE. 45, FB
        and     eax, 20H                                ; 0EB1 _ 83. E0, 20
        test    eax, eax                                ; 0EB4 _ 85. C0
        jz      ?_026                                   ; 0EB6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0EB8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0EBB _ 8B. 45, FC
        add     eax, edx                                ; 0EBE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0EC0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0EC4 _ 8B. 55, 10
        add     eax, edx                                ; 0EC7 _ 01. D0
        lea     edx, [eax+2H]                           ; 0EC9 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0ECC _ 8B. 45, 08
        add     edx, eax                                ; 0ECF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0ED1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0ED5 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 0ED7 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0EDB _ 83. E0, 10
        test    eax, eax                                ; 0EDE _ 85. C0
        jz      ?_027                                   ; 0EE0 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0EE2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0EE5 _ 8B. 45, FC
        add     eax, edx                                ; 0EE8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0EEA _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0EEE _ 8B. 55, 10
        add     eax, edx                                ; 0EF1 _ 01. D0
        lea     edx, [eax+3H]                           ; 0EF3 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0EF6 _ 8B. 45, 08
        add     edx, eax                                ; 0EF9 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EFB _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0EFF _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 0F01 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0F05 _ 83. E0, 08
        test    eax, eax                                ; 0F08 _ 85. C0
        jz      ?_028                                   ; 0F0A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0F0C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F0F _ 8B. 45, FC
        add     eax, edx                                ; 0F12 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F14 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0F18 _ 8B. 55, 10
        add     eax, edx                                ; 0F1B _ 01. D0
        lea     edx, [eax+4H]                           ; 0F1D _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0F20 _ 8B. 45, 08
        add     edx, eax                                ; 0F23 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F25 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F29 _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 0F2B _ 0F BE. 45, FB
        and     eax, 04H                                ; 0F2F _ 83. E0, 04
        test    eax, eax                                ; 0F32 _ 85. C0
        jz      ?_029                                   ; 0F34 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0F36 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F39 _ 8B. 45, FC
        add     eax, edx                                ; 0F3C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F3E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0F42 _ 8B. 55, 10
        add     eax, edx                                ; 0F45 _ 01. D0
        lea     edx, [eax+5H]                           ; 0F47 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0F4A _ 8B. 45, 08
        add     edx, eax                                ; 0F4D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F4F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F53 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 0F55 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0F59 _ 83. E0, 02
        test    eax, eax                                ; 0F5C _ 85. C0
        jz      ?_030                                   ; 0F5E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0F60 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F63 _ 8B. 45, FC
        add     eax, edx                                ; 0F66 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F68 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0F6C _ 8B. 55, 10
        add     eax, edx                                ; 0F6F _ 01. D0
        lea     edx, [eax+6H]                           ; 0F71 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0F74 _ 8B. 45, 08
        add     edx, eax                                ; 0F77 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0F79 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F7D _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 0F7F _ 0F BE. 45, FB
        and     eax, 01H                                ; 0F83 _ 83. E0, 01
        test    eax, eax                                ; 0F86 _ 85. C0
        jz      ?_031                                   ; 0F88 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0F8A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0F8D _ 8B. 45, FC
        add     eax, edx                                ; 0F90 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0F92 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0F96 _ 8B. 55, 10
        add     eax, edx                                ; 0F99 _ 01. D0
        lea     edx, [eax+7H]                           ; 0F9B _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0F9E _ 8B. 45, 08
        add     edx, eax                                ; 0FA1 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0FA3 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0FA7 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0FA9 _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0FAD _ 83. 7D, FC, 0F
        jle     ?_023                                   ; 0FB1 _ 0F 8E, FFFFFE9A
        nop                                             ; 0FB7 _ 90
        leave                                           ; 0FB8 _ C9
        ret                                             ; 0FB9 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0FBA _ 55
        mov     ebp, esp                                ; 0FBB _ 89. E5
        sub     esp, 20                                 ; 0FBD _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0FC0 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0FC3 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0FC6 _ C7. 45, F8, 00000000
        jmp     ?_039                                   ; 0FCD _ E9, 000000B1

?_033:  mov     dword [ebp-4H], 0                       ; 0FD2 _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 0FD9 _ E9, 00000097

?_034:  mov     eax, dword [ebp-8H]                     ; 0FDE _ 8B. 45, F8
        shl     eax, 4                                  ; 0FE1 _ C1. E0, 04
        mov     edx, eax                                ; 0FE4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0FE6 _ 8B. 45, FC
        add     eax, edx                                ; 0FE9 _ 01. D0
        add     eax, _cursor.2278                       ; 0FEB _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0FF0 _ 0F B6. 00
        cmp     al, 42                                  ; 0FF3 _ 3C, 2A
        jnz     ?_035                                   ; 0FF5 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0FF7 _ 8B. 45, F8
        shl     eax, 4                                  ; 0FFA _ C1. E0, 04
        mov     edx, eax                                ; 0FFD _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0FFF _ 8B. 45, FC
        add     eax, edx                                ; 1002 _ 01. D0
        mov     edx, eax                                ; 1004 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1006 _ 8B. 45, 08
        add     eax, edx                                ; 1009 _ 01. D0
        mov     byte [eax], 0                           ; 100B _ C6. 00, 00
?_035:  mov     eax, dword [ebp-8H]                     ; 100E _ 8B. 45, F8
        shl     eax, 4                                  ; 1011 _ C1. E0, 04
        mov     edx, eax                                ; 1014 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1016 _ 8B. 45, FC
        add     eax, edx                                ; 1019 _ 01. D0
        add     eax, _cursor.2278                       ; 101B _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1020 _ 0F B6. 00
        cmp     al, 79                                  ; 1023 _ 3C, 4F
        jnz     ?_036                                   ; 1025 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 1027 _ 8B. 45, F8
        shl     eax, 4                                  ; 102A _ C1. E0, 04
        mov     edx, eax                                ; 102D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 102F _ 8B. 45, FC
        add     eax, edx                                ; 1032 _ 01. D0
        mov     edx, eax                                ; 1034 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1036 _ 8B. 45, 08
        add     eax, edx                                ; 1039 _ 01. D0
        mov     byte [eax], 7                           ; 103B _ C6. 00, 07
?_036:  mov     eax, dword [ebp-8H]                     ; 103E _ 8B. 45, F8
        shl     eax, 4                                  ; 1041 _ C1. E0, 04
        mov     edx, eax                                ; 1044 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 1046 _ 8B. 45, FC
        add     eax, edx                                ; 1049 _ 01. D0
        add     eax, _cursor.2278                       ; 104B _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 1050 _ 0F B6. 00
        cmp     al, 46                                  ; 1053 _ 3C, 2E
        jnz     ?_037                                   ; 1055 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 1057 _ 8B. 45, F8
        shl     eax, 4                                  ; 105A _ C1. E0, 04
        mov     edx, eax                                ; 105D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 105F _ 8B. 45, FC
        add     eax, edx                                ; 1062 _ 01. D0
        mov     edx, eax                                ; 1064 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1066 _ 8B. 45, 08
        add     edx, eax                                ; 1069 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 106B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 106F _ 88. 02
?_037:  add     dword [ebp-4H], 1                       ; 1071 _ 83. 45, FC, 01
?_038:  cmp     dword [ebp-4H], 15                      ; 1075 _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 1079 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 107F _ 83. 45, F8, 01
?_039:  cmp     dword [ebp-8H], 15                      ; 1083 _ 83. 7D, F8, 0F
        jle     ?_033                                   ; 1087 _ 0F 8E, FFFFFF45
        nop                                             ; 108D _ 90
        leave                                           ; 108E _ C9
        ret                                             ; 108F _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 1090 _ 55
        mov     ebp, esp                                ; 1091 _ 89. E5
        push    ebx                                     ; 1093 _ 53
        sub     esp, 16                                 ; 1094 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 1097 _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 109E _ EB, 4E

?_040:  mov     dword [ebp-8H], 0                       ; 10A0 _ C7. 45, F8, 00000000
        jmp     ?_042                                   ; 10A7 _ EB, 39

?_041:  mov     eax, dword [ebp-0CH]                    ; 10A9 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 10AC _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 10B0 _ 8B. 55, F8
        add     eax, edx                                ; 10B3 _ 01. D0
        mov     edx, eax                                ; 10B5 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 10B7 _ 8B. 45, 20
        add     eax, edx                                ; 10BA _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 10BC _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 10BF _ 8B. 55, F4
        add     edx, ecx                                ; 10C2 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 10C4 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 10C8 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 10CB _ 8B. 4D, F8
        add     ecx, ebx                                ; 10CE _ 01. D9
        add     edx, ecx                                ; 10D0 _ 01. CA
        mov     ecx, edx                                ; 10D2 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 10D4 _ 8B. 55, 08
        add     edx, ecx                                ; 10D7 _ 01. CA
        movzx   eax, byte [eax]                         ; 10D9 _ 0F B6. 00
        mov     byte [edx], al                          ; 10DC _ 88. 02
        add     dword [ebp-8H], 1                       ; 10DE _ 83. 45, F8, 01
?_042:  mov     eax, dword [ebp-8H]                     ; 10E2 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 10E5 _ 3B. 45, 10
        jl      ?_041                                   ; 10E8 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 10EA _ 83. 45, F4, 01
?_043:  mov     eax, dword [ebp-0CH]                    ; 10EE _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 10F1 _ 3B. 45, 14
        jl      ?_040                                   ; 10F4 _ 7C, AA
        nop                                             ; 10F6 _ 90
        add     esp, 16                                 ; 10F7 _ 83. C4, 10
        pop     ebx                                     ; 10FA _ 5B
        pop     ebp                                     ; 10FB _ 5D
        ret                                             ; 10FC _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 10FD _ 55
        mov     ebp, esp                                ; 10FE _ 89. E5
        sub     esp, 40                                 ; 1100 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 1103 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 1108 _ 89. 45, F4
        movzx   eax, word [?_171]                       ; 110B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 1112 _ 98
        mov     dword [ebp-10H], eax                    ; 1113 _ 89. 45, F0
        movzx   eax, word [?_172]                       ; 1116 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 111D _ 98
        mov     dword [ebp-14H], eax                    ; 111E _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 1121 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1129 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1130 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 1135 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 1139 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1140 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 1145 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 1148 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 114C _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 1150 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 1157 _ E8, 00000000(rel)
        nop                                             ; 115C _ 90
        leave                                           ; 115D _ C9
        ret                                             ; 115E _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 115F _ 55
        mov     ebp, esp                                ; 1160 _ 89. E5
        sub     esp, 4                                  ; 1162 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 1165 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 1168 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 116B _ 80. 7D, FC, 09
        jle     ?_044                                   ; 116F _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1171 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1175 _ 83. C0, 37
        jmp     ?_045                                   ; 1178 _ EB, 07

?_044:  movzx   eax, byte [ebp-4H]                      ; 117A _ 0F B6. 45, FC
        add     eax, 48                                 ; 117E _ 83. C0, 30
?_045:  leave                                           ; 1181 _ C9
        ret                                             ; 1182 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1183 _ 55
        mov     ebp, esp                                ; 1184 _ 89. E5
        sub     esp, 24                                 ; 1186 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 1189 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 118C _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 118F _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 1196 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 119A _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 119D _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 11A0 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 11A4 _ 89. 04 24
        call    _charToHexVal                           ; 11A7 _ E8, FFFFFFB3
        mov     byte [?_160], al                        ; 11AC _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 11B1 _ 0F B6. 45, EC
        shr     al, 4                                   ; 11B5 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 11B8 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 11BB _ 0F B6. 45, EC
        movsx   eax, al                                 ; 11BF _ 0F BE. C0
        mov     dword [esp], eax                        ; 11C2 _ 89. 04 24
        call    _charToHexVal                           ; 11C5 _ E8, FFFFFF95
        mov     byte [?_159], al                        ; 11CA _ A2, 00000006(d)
        mov     eax, _keyval                            ; 11CF _ B8, 00000004(d)
        leave                                           ; 11D4 _ C9
        ret                                             ; 11D5 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 11D6 _ 55
        mov     ebp, esp                                ; 11D7 _ 89. E5
        sub     esp, 16                                 ; 11D9 _ 83. EC, 10
        mov     byte [_str.2326], 48                    ; 11DC _ C6. 05, 00000240(d), 30
        mov     byte [?_174], 88                        ; 11E3 _ C6. 05, 00000241(d), 58
        mov     byte [?_175], 0                         ; 11EA _ C6. 05, 0000024A(d), 00
        mov     dword [ebp-4H], 2                       ; 11F1 _ C7. 45, FC, 00000002
        jmp     ?_047                                   ; 11F8 _ EB, 0F

?_046:  mov     eax, dword [ebp-4H]                     ; 11FA _ 8B. 45, FC
        add     eax, _str.2326                          ; 11FD _ 05, 00000240(d)
        mov     byte [eax], 48                          ; 1202 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1205 _ 83. 45, FC, 01
?_047:  cmp     dword [ebp-4H], 9                       ; 1209 _ 83. 7D, FC, 09
        jle     ?_046                                   ; 120D _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 120F _ C7. 45, F8, 00000009
        jmp     ?_051                                   ; 1216 _ EB, 42

?_048:  mov     eax, dword [ebp+8H]                     ; 1218 _ 8B. 45, 08
        and     eax, 0FH                                ; 121B _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 121E _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 1221 _ 8B. 45, 08
        shr     eax, 4                                  ; 1224 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 1227 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 122A _ 83. 7D, F4, 09
        jle     ?_049                                   ; 122E _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 1230 _ 8B. 45, F4
        add     eax, 55                                 ; 1233 _ 83. C0, 37
        mov     edx, eax                                ; 1236 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 1238 _ 8B. 45, F8
        add     eax, _str.2326                          ; 123B _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 1240 _ 88. 10
        jmp     ?_050                                   ; 1242 _ EB, 12

?_049:  mov     eax, dword [ebp-0CH]                    ; 1244 _ 8B. 45, F4
        add     eax, 48                                 ; 1247 _ 83. C0, 30
        mov     edx, eax                                ; 124A _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 124C _ 8B. 45, F8
        add     eax, _str.2326                          ; 124F _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 1254 _ 88. 10
?_050:  sub     dword [ebp-8H], 1                       ; 1256 _ 83. 6D, F8, 01
?_051:  cmp     dword [ebp-8H], 1                       ; 125A _ 83. 7D, F8, 01
        jle     ?_052                                   ; 125E _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 1260 _ 83. 7D, 08, 00
        jnz     ?_048                                   ; 1264 _ 75, B2
?_052:  mov     eax, _str.2326                          ; 1266 _ B8, 00000240(d)
        leave                                           ; 126B _ C9
        ret                                             ; 126C _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 126D _ 55
        mov     ebp, esp                                ; 126E _ 89. E5
        sub     esp, 24                                 ; 1270 _ 83. EC, 18
?_053:  mov     dword [esp], 100                        ; 1273 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 127A _ E8, 00000000(rel)
        and     eax, 02H                                ; 127F _ 83. E0, 02
        test    eax, eax                                ; 1282 _ 85. C0
        jz      ?_054                                   ; 1284 _ 74, 02
        jmp     ?_053                                   ; 1286 _ EB, EB
; _wait_KBC_sendready End of function

?_054:  ; Local function
        nop                                             ; 1288 _ 90
        nop                                             ; 1289 _ 90
        leave                                           ; 128A _ C9
        ret                                             ; 128B _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 128C _ 55
        mov     ebp, esp                                ; 128D _ 89. E5
        sub     esp, 24                                 ; 128F _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1292 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 1297 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 129F _ C7. 04 24, 00000064
        call    _io_out8                                ; 12A6 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 12AB _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 12B0 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 12B8 _ C7. 04 24, 00000060
        call    _io_out8                                ; 12BF _ E8, 00000000(rel)
        nop                                             ; 12C4 _ 90
        leave                                           ; 12C5 _ C9
        ret                                             ; 12C6 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 12C7 _ 55
        mov     ebp, esp                                ; 12C8 _ 89. E5
        sub     esp, 24                                 ; 12CA _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 12CD _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 12D2 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 12DA _ C7. 04 24, 00000064
        call    _io_out8                                ; 12E1 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 12E6 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 12EB _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 12F3 _ C7. 04 24, 00000060
        call    _io_out8                                ; 12FA _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 12FF _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1302 _ C6. 40, 03, 00
        nop                                             ; 1306 _ 90
        leave                                           ; 1307 _ C9
        ret                                             ; 1308 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1309 _ 55
        mov     ebp, esp                                ; 130A _ 89. E5
        sub     esp, 40                                 ; 130C _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 130F _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1317 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 131E _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1323 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 132B _ C7. 04 24, 00000020
        call    _io_out8                                ; 1332 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1337 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 133E _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1343 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1346 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 134A _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 134E _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 1355 _ E8, 00000000(rel)
        nop                                             ; 135A _ 90
        leave                                           ; 135B _ C9
        ret                                             ; 135C _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 135D _ 55
        mov     ebp, esp                                ; 135E _ 89. E5
        sub     esp, 4                                  ; 1360 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1363 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1366 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1369 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 136C _ 0F B6. 40, 03
        test    al, al                                  ; 1370 _ 84. C0
        jnz     ?_056                                   ; 1372 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1374 _ 80. 7D, FC, FA
        jnz     ?_055                                   ; 1378 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 137A _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 137D _ C6. 40, 03, 01
?_055:  mov     eax, 0                                  ; 1381 _ B8, 00000000
        jmp     ?_063                                   ; 1386 _ E9, 0000010F

?_056:  mov     eax, dword [ebp+8H]                     ; 138B _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 138E _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1392 _ 3C, 01
        jnz     ?_058                                   ; 1394 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1396 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 139A _ 25, 000000C8
        cmp     eax, 8                                  ; 139F _ 83. F8, 08
        jnz     ?_057                                   ; 13A2 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 13A4 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 13A7 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 13AB _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 13AD _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 13B0 _ C6. 40, 03, 02
?_057:  mov     eax, 0                                  ; 13B4 _ B8, 00000000
        jmp     ?_063                                   ; 13B9 _ E9, 000000DC

?_058:  mov     eax, dword [ebp+8H]                     ; 13BE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 13C1 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 13C5 _ 3C, 02
        jnz     ?_059                                   ; 13C7 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 13C9 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 13CC _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 13D0 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 13D3 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 13D6 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 13DA _ B8, 00000000
        jmp     ?_063                                   ; 13DF _ E9, 000000B6

?_059:  mov     eax, dword [ebp+8H]                     ; 13E4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 13E7 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 13EB _ 3C, 03
        jne     ?_062                                   ; 13ED _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 13F3 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 13F6 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 13FA _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 13FD _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1400 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1404 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1407 _ 0F B6. 00
        movzx   eax, al                                 ; 140A _ 0F B6. C0
        and     eax, 07H                                ; 140D _ 83. E0, 07
        mov     edx, eax                                ; 1410 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1412 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1415 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1418 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 141B _ 0F B6. 40, 01
        movzx   eax, al                                 ; 141F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1422 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1425 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1428 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 142B _ 0F B6. 40, 02
        movzx   eax, al                                 ; 142F _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1432 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1435 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1438 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 143B _ 0F B6. 00
        movzx   eax, al                                 ; 143E _ 0F B6. C0
        and     eax, 10H                                ; 1441 _ 83. E0, 10
        test    eax, eax                                ; 1444 _ 85. C0
        jz      ?_060                                   ; 1446 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1448 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 144B _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 144E _ 0D, FFFFFF00
        mov     edx, eax                                ; 1453 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1455 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1458 _ 89. 50, 04
?_060:  mov     eax, dword [ebp+8H]                     ; 145B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 145E _ 0F B6. 00
        movzx   eax, al                                 ; 1461 _ 0F B6. C0
        and     eax, 20H                                ; 1464 _ 83. E0, 20
        test    eax, eax                                ; 1467 _ 85. C0
        jz      ?_061                                   ; 1469 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 146B _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 146E _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1471 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1476 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1478 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 147B _ 89. 50, 08
?_061:  mov     eax, dword [ebp+8H]                     ; 147E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1481 _ 8B. 40, 08
        neg     eax                                     ; 1484 _ F7. D8
        mov     edx, eax                                ; 1486 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1488 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 148B _ 89. 50, 08
        mov     eax, 1                                  ; 148E _ B8, 00000001
        jmp     ?_063                                   ; 1493 _ EB, 05

?_062:  mov     eax, 4294967295                         ; 1495 _ B8, FFFFFFFF
?_063:  leave                                           ; 149A _ C9
        ret                                             ; 149B _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 149C _ 55
        mov     ebp, esp                                ; 149D _ 89. E5
        sub     esp, 88                                 ; 149F _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 14A2 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 14A9 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 14B0 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 14B7 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 14BE _ 8B. 15, 00000120(d)
        mov     eax, dword [ebp+0CH]                    ; 14C4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 14C7 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 14C9 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 14CD _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 14D0 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 14D4 _ 89. 04 24
        call    _init_screen8                           ; 14D7 _ E8, FFFFF2B7
        mov     eax, dword [ebp+20H]                    ; 14DC _ 8B. 45, 20
        movsx   eax, al                                 ; 14DF _ 0F BE. C0
        mov     dword [esp+14H], ?_165                  ; 14E2 _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], eax                    ; 14EA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14EE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14F1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 14F5 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 14F8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14FC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1503 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1506 _ 89. 04 24
        call    _showString                             ; 1509 _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 150E _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1511 _ 89. 04 24
        call    _intToHexStr                            ; 1514 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 1519 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 151C _ 8B. 45, 20
        movsx   eax, al                                 ; 151F _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1522 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1525 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1529 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 152D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1530 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1534 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1537 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 153B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 153E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1542 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1545 _ 89. 04 24
        call    _showString                             ; 1548 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 154D _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1551 _ 8B. 45, 20
        movsx   eax, al                                 ; 1554 _ 0F BE. C0
        mov     dword [esp+14H], ?_166                  ; 1557 _ C7. 44 24, 14, 00000023(d)
        mov     dword [esp+10H], eax                    ; 155F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1563 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1566 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 156A _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 156D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1571 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1574 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1578 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 157B _ 89. 04 24
        call    _showString                             ; 157E _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1583 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1586 _ 8B. 00
        mov     dword [esp], eax                        ; 1588 _ 89. 04 24
        call    _intToHexStr                            ; 158B _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1590 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1593 _ 8B. 45, 20
        movsx   eax, al                                 ; 1596 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 1599 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 159C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 15A0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 15A4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 15A7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 15AB _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 15AE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 15B2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 15B5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15B9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15BC _ 89. 04 24
        call    _showString                             ; 15BF _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 15C4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 15C8 _ 8B. 45, 20
        movsx   eax, al                                 ; 15CB _ 0F BE. C0
        mov     dword [esp+14H], ?_167                  ; 15CE _ C7. 44 24, 14, 0000002F(d)
        mov     dword [esp+10H], eax                    ; 15D6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 15DA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 15DD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 15E1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 15E4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 15E8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 15EB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15EF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15F2 _ 89. 04 24
        call    _showString                             ; 15F5 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 15FA _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 15FD _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1600 _ 89. 04 24
        call    _intToHexStr                            ; 1603 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1608 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 160B _ 8B. 45, 20
        movsx   eax, al                                 ; 160E _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1611 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 1614 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1618 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 161C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 161F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1623 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1626 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 162A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 162D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1631 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1634 _ 89. 04 24
        call    _showString                             ; 1637 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 163C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1640 _ 8B. 45, 20
        movsx   eax, al                                 ; 1643 _ 0F BE. C0
        mov     dword [esp+14H], ?_168                  ; 1646 _ C7. 44 24, 14, 0000003B(d)
        mov     dword [esp+10H], eax                    ; 164E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1652 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1655 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1659 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 165C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1660 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1663 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1667 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 166A _ 89. 04 24
        call    _showString                             ; 166D _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1672 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1675 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1678 _ 89. 04 24
        call    _intToHexStr                            ; 167B _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1680 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1683 _ 8B. 45, 20
        movsx   eax, al                                 ; 1686 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 1689 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 168C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1690 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1694 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1697 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 169B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 169E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 16A2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 16A5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 16A9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 16AC _ 89. 04 24
        call    _showString                             ; 16AF _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 16B4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 16B8 _ 8B. 45, 20
        movsx   eax, al                                 ; 16BB _ 0F BE. C0
        mov     dword [esp+14H], ?_169                  ; 16BE _ C7. 44 24, 14, 00000047(d)
        mov     dword [esp+10H], eax                    ; 16C6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 16CA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 16CD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 16D1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 16D4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 16D8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 16DB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 16DF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 16E2 _ 89. 04 24
        call    _showString                             ; 16E5 _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 16EA _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 16ED _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 16F0 _ 89. 04 24
        call    _intToHexStr                            ; 16F3 _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 16F8 _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 16FB _ 8B. 45, 20
        movsx   eax, al                                 ; 16FE _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1701 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 1704 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1708 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 170C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 170F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1713 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1716 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 171A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 171D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1721 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1724 _ 89. 04 24
        call    _showString                             ; 1727 _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 172C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1730 _ 8B. 45, 20
        movsx   eax, al                                 ; 1733 _ 0F BE. C0
        mov     dword [esp+14H], ?_170                  ; 1736 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], eax                    ; 173E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1742 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1745 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1749 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 174C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1750 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1753 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1757 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 175A _ 89. 04 24
        call    _showString                             ; 175D _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 1762 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1765 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 1768 _ 89. 04 24
        call    _intToHexStr                            ; 176B _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 1770 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 1773 _ 8B. 45, 20
        movsx   eax, al                                 ; 1776 _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 1779 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 177C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1780 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1784 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1787 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 178B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 178E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1792 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1795 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1799 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 179C _ 89. 04 24
        call    _showString                             ; 179F _ E8, FFFFF4D8
        nop                                             ; 17A4 _ 90
        leave                                           ; 17A5 _ C9
        ret                                             ; 17A6 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 17A7 _ 55
        mov     ebp, esp                                ; 17A8 _ 89. E5
        sub     esp, 56                                 ; 17AA _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 17AD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17B0 _ 89. 04 24
        call    _sheet_alloc                            ; 17B3 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 17B8 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 17BB _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 17C0 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 17C8 _ 89. 04 24
        call    _memman_alloc_4k                        ; 17CB _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 17D0 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 17D3 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 17DB _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 17E3 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 17EB _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 17EE _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 17F2 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 17F5 _ 89. 04 24
        call    _sheet_setbuf                           ; 17F8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 17FD _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1800 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1804 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1807 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 180B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 180E _ 89. 04 24
        call    _make_window8                           ; 1811 _ E8, 00000074
        mov     dword [esp+14H], 7                      ; 1816 _ C7. 44 24, 14, 00000007
        mov     dword [esp+10H], 16                     ; 181E _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 144                    ; 1826 _ C7. 44 24, 0C, 00000090
        mov     dword [esp+8H], 28                      ; 182E _ C7. 44 24, 08, 0000001C
        mov     dword [esp+4H], 8                       ; 1836 _ C7. 44 24, 04, 00000008
        mov     eax, dword [ebp-0CH]                    ; 183E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1841 _ 89. 04 24
        call    _make_textbox8                          ; 1844 _ E8, 000003AA
        mov     dword [esp+0CH], 72                     ; 1849 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 1851 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 1859 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 185C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1860 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1863 _ 89. 04 24
        call    _sheet_slide                            ; 1866 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 186B _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 1873 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1876 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 187A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 187D _ 89. 04 24
        call    _sheet_updown                           ; 1880 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 1885 _ 8B. 45, F4
        leave                                           ; 1888 _ C9
        ret                                             ; 1889 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 188A _ 55
        mov     ebp, esp                                ; 188B _ 89. E5
        push    ebx                                     ; 188D _ 53
        sub     esp, 68                                 ; 188E _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1891 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1894 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1897 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 189A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 189D _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 18A0 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 18A3 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 18A6 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 18A9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 18AC _ 8B. 00
        mov     dword [esp+18H], 0                      ; 18AE _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 18B6 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 18BA _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 18C2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 18CA _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 18D2 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 18D5 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18D9 _ 89. 04 24
        call    _boxfill8                               ; 18DC _ E8, FFFFF508
        mov     eax, dword [ebp-18H]                    ; 18E1 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 18E4 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 18E7 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 18EA _ 8B. 00
        mov     dword [esp+18H], 1                      ; 18EC _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 18F4 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 18F8 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1900 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1908 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1910 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1913 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1917 _ 89. 04 24
        call    _boxfill8                               ; 191A _ E8, FFFFF4CA
        mov     eax, dword [ebp-1CH]                    ; 191F _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1922 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1925 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1928 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 192A _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 192E _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1936 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 193E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1946 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 194E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1951 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1955 _ 89. 04 24
        call    _boxfill8                               ; 1958 _ E8, FFFFF48C
        mov     eax, dword [ebp-1CH]                    ; 195D _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1960 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1963 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1966 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1968 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 196C _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 1974 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 197C _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1984 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 198C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 198F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1993 _ 89. 04 24
        call    _boxfill8                               ; 1996 _ E8, FFFFF44E
        mov     eax, dword [ebp-1CH]                    ; 199B _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 199E _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 19A1 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 19A4 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 19A7 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 19AA _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 19AD _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 19B0 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 19B2 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 19B6 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 19BA _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 19C2 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 19C6 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 19CE _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 19D1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 19D5 _ 89. 04 24
        call    _boxfill8                               ; 19D8 _ E8, FFFFF40C
        mov     eax, dword [ebp-1CH]                    ; 19DD _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 19E0 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 19E3 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 19E6 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 19E9 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 19EC _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 19EF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 19F2 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 19F4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 19F8 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 19FC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1A04 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1A08 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1A10 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1A13 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A17 _ 89. 04 24
        call    _boxfill8                               ; 1A1A _ E8, FFFFF3CA
        mov     eax, dword [ebp-1CH]                    ; 1A1F _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1A22 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1A25 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1A28 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1A2B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A2E _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1A30 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1A34 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1A38 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1A40 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1A48 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1A50 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1A53 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A57 _ 89. 04 24
        call    _boxfill8                               ; 1A5A _ E8, FFFFF38A
        mov     eax, dword [ebp-18H]                    ; 1A5F _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1A62 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 1A65 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1A68 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1A6A _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1A72 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 1A76 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1A7E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 1A86 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1A8E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1A91 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1A95 _ 89. 04 24
        call    _boxfill8                               ; 1A98 _ E8, FFFFF34C
        mov     eax, dword [ebp-1CH]                    ; 1A9D _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1AA0 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1AA3 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1AA6 _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1AA9 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1AAC _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1AAF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AB2 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1AB4 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1AB8 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1ABC _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1AC0 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1AC8 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1AD0 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1AD3 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1AD7 _ 89. 04 24
        call    _boxfill8                               ; 1ADA _ E8, FFFFF30A
        mov     eax, dword [ebp-1CH]                    ; 1ADF _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1AE2 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1AE5 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1AE8 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1AEB _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1AEE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1AF1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1AF4 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1AF6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1AFA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1AFE _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1B02 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1B0A _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1B12 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1B15 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1B19 _ 89. 04 24
        call    _boxfill8                               ; 1B1C _ E8, FFFFF2C8
        mov     eax, dword [ebp+10H]                    ; 1B21 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1B24 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1B28 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1B30 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1B38 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1B40 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1B43 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B47 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B4A _ 89. 04 24
        call    _showString                             ; 1B4D _ E8, FFFFF12A
        mov     dword [ebp-10H], 0                      ; 1B52 _ C7. 45, F0, 00000000
        jmp     ?_071                                   ; 1B59 _ E9, 00000084

?_064:  mov     dword [ebp-0CH], 0                      ; 1B5E _ C7. 45, F4, 00000000
        jmp     ?_070                                   ; 1B65 _ EB, 71

?_065:  mov     eax, dword [ebp-10H]                    ; 1B67 _ 8B. 45, F0
        shl     eax, 4                                  ; 1B6A _ C1. E0, 04
        mov     edx, eax                                ; 1B6D _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1B6F _ 8B. 45, F4
        add     eax, edx                                ; 1B72 _ 01. D0
        add     eax, _closebtn.2390                     ; 1B74 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 1B79 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1B7C _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1B7F _ 80. 7D, EF, 40
        jnz     ?_066                                   ; 1B83 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 1B85 _ C6. 45, EF, 00
        jmp     ?_069                                   ; 1B89 _ EB, 1C

?_066:  cmp     byte [ebp-11H], 36                      ; 1B8B _ 80. 7D, EF, 24
        jnz     ?_067                                   ; 1B8F _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1B91 _ C6. 45, EF, 0F
        jmp     ?_069                                   ; 1B95 _ EB, 10

?_067:  cmp     byte [ebp-11H], 81                      ; 1B97 _ 80. 7D, EF, 51
        jnz     ?_068                                   ; 1B9B _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1B9D _ C6. 45, EF, 08
        jmp     ?_069                                   ; 1BA1 _ EB, 04

?_068:  mov     byte [ebp-11H], 7                       ; 1BA3 _ C6. 45, EF, 07
?_069:  mov     eax, dword [ebp+0CH]                    ; 1BA7 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1BAA _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1BAC _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1BAF _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1BB2 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BB5 _ 8B. 40, 04
        imul    eax, edx                                ; 1BB8 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1BBB _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1BBE _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1BC1 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1BC4 _ 8B. 55, F4
        add     edx, ebx                                ; 1BC7 _ 01. DA
        add     eax, edx                                ; 1BC9 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1BCB _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1BCE _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1BD2 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1BD4 _ 83. 45, F4, 01
?_070:  cmp     dword [ebp-0CH], 15                     ; 1BD8 _ 83. 7D, F4, 0F
        jle     ?_065                                   ; 1BDC _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1BDE _ 83. 45, F0, 01
?_071:  cmp     dword [ebp-10H], 13                     ; 1BE2 _ 83. 7D, F0, 0D
        jle     ?_064                                   ; 1BE6 _ 0F 8E, FFFFFF72
        nop                                             ; 1BEC _ 90
        add     esp, 68                                 ; 1BED _ 83. C4, 44
        pop     ebx                                     ; 1BF0 _ 5B
        pop     ebp                                     ; 1BF1 _ 5D
        ret                                             ; 1BF2 _ C3
; _make_window8 End of function

_make_textbox8:; Function begin
        push    ebp                                     ; 1BF3 _ 55
        mov     ebp, esp                                ; 1BF4 _ 89. E5
        push    edi                                     ; 1BF6 _ 57
        push    esi                                     ; 1BF7 _ 56
        push    ebx                                     ; 1BF8 _ 53
        sub     esp, 44                                 ; 1BF9 _ 83. EC, 2C
        mov     edx, dword [ebp+0CH]                    ; 1BFC _ 8B. 55, 0C
        mov     eax, dword [ebp+14H]                    ; 1BFF _ 8B. 45, 14
        add     eax, edx                                ; 1C02 _ 01. D0
        mov     dword [ebp-10H], eax                    ; 1C04 _ 89. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1C07 _ 8B. 55, 10
        mov     eax, dword [ebp+18H]                    ; 1C0A _ 8B. 45, 18
        add     eax, edx                                ; 1C0D _ 01. D0
        mov     dword [ebp-14H], eax                    ; 1C0F _ 89. 45, EC
        mov     eax, dword [ebp+10H]                    ; 1C12 _ 8B. 45, 10
        lea     edi, [eax-3H]                           ; 1C15 _ 8D. 78, FD
        mov     eax, dword [ebp-10H]                    ; 1C18 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1C1B _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1C1E _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1C21 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1C24 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1C27 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1C2A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C2D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C30 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C33 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1C35 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1C39 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1C3D _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C41 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1C45 _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1C4D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C51 _ 89. 04 24
        call    _boxfill8                               ; 1C54 _ E8, FFFFF190
        mov     eax, dword [ebp-14H]                    ; 1C59 _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1C5C _ 8D. 78, 01
        mov     eax, dword [ebp+0CH]                    ; 1C5F _ 8B. 45, 0C
        lea     esi, [eax-3H]                           ; 1C62 _ 8D. 70, FD
        mov     eax, dword [ebp+10H]                    ; 1C65 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1C68 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 1C6B _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1C6E _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1C71 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1C74 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1C77 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1C7A _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1C7C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1C80 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1C84 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C88 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 15                      ; 1C8C _ C7. 44 24, 08, 0000000F
        mov     dword [esp+4H], edx                     ; 1C94 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1C98 _ 89. 04 24
        call    _boxfill8                               ; 1C9B _ E8, FFFFF149
        mov     eax, dword [ebp-14H]                    ; 1CA0 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1CA3 _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1CA6 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1CA9 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1CAC _ 8B. 45, EC
        lea     ebx, [eax+2H]                           ; 1CAF _ 8D. 58, 02
        mov     eax, dword [ebp+0CH]                    ; 1CB2 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 1CB5 _ 8D. 48, FD
        mov     eax, dword [ebp+8H]                     ; 1CB8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1CBB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1CBE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1CC1 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1CC3 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1CC7 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1CCB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1CCF _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1CD3 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1CDB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1CDF _ 89. 04 24
        call    _boxfill8                               ; 1CE2 _ E8, FFFFF102
        mov     eax, dword [ebp-14H]                    ; 1CE7 _ 8B. 45, EC
        lea     edi, [eax+2H]                           ; 1CEA _ 8D. 78, 02
        mov     eax, dword [ebp-10H]                    ; 1CED _ 8B. 45, F0
        lea     esi, [eax+2H]                           ; 1CF0 _ 8D. 70, 02
        mov     eax, dword [ebp+10H]                    ; 1CF3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 1CF6 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 1CF9 _ 8B. 45, F0
        lea     ecx, [eax+2H]                           ; 1CFC _ 8D. 48, 02
        mov     eax, dword [ebp+8H]                     ; 1CFF _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1D02 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D05 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D08 _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1D0A _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1D0E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1D12 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D16 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 7                       ; 1D1A _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 1D22 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D26 _ 89. 04 24
        call    _boxfill8                               ; 1D29 _ E8, FFFFF0BB
        mov     eax, dword [ebp+10H]                    ; 1D2E _ 8B. 45, 10
        lea     esi, [eax-2H]                           ; 1D31 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1D34 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1D37 _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1D3A _ 8B. 45, 0C
        lea     ecx, [eax-1H]                           ; 1D3D _ 8D. 48, FF
        mov     eax, dword [ebp+8H]                     ; 1D40 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1D43 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D46 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D49 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1D4B _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1D4F _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1D52 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1D56 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D5A _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1D5E _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1D66 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1D6A _ 89. 04 24
        call    _boxfill8                               ; 1D6D _ E8, FFFFF077
        mov     eax, dword [ebp+0CH]                    ; 1D72 _ 8B. 45, 0C
        lea     esi, [eax-2H]                           ; 1D75 _ 8D. 70, FE
        mov     eax, dword [ebp+10H]                    ; 1D78 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1D7B _ 8D. 58, FE
        mov     eax, dword [ebp+0CH]                    ; 1D7E _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1D81 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1D84 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1D87 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1D8A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1D8D _ 8B. 00
        mov     edi, dword [ebp-14H]                    ; 1D8F _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 1D92 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1D96 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1D9A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D9E _ 89. 4C 24, 0C
        mov     dword [esp+8H], 0                       ; 1DA2 _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 1DAA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DAE _ 89. 04 24
        call    _boxfill8                               ; 1DB1 _ E8, FFFFF033
        mov     eax, dword [ebp-14H]                    ; 1DB6 _ 8B. 45, EC
        lea     esi, [eax+1H]                           ; 1DB9 _ 8D. 70, 01
        mov     eax, dword [ebp-14H]                    ; 1DBC _ 8B. 45, EC
        lea     ebx, [eax+1H]                           ; 1DBF _ 8D. 58, 01
        mov     eax, dword [ebp+0CH]                    ; 1DC2 _ 8B. 45, 0C
        lea     ecx, [eax-2H]                           ; 1DC5 _ 8D. 48, FE
        mov     eax, dword [ebp+8H]                     ; 1DC8 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1DCB _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1DCE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1DD1 _ 8B. 00
        mov     dword [esp+18H], esi                    ; 1DD3 _ 89. 74 24, 18
        mov     esi, dword [ebp-10H]                    ; 1DD7 _ 8B. 75, F0
        mov     dword [esp+14H], esi                    ; 1DDA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1DDE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1DE2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 1DE6 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1DEE _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1DF2 _ 89. 04 24
        call    _boxfill8                               ; 1DF5 _ E8, FFFFEFEF
        mov     eax, dword [ebp-14H]                    ; 1DFA _ 8B. 45, EC
        lea     edi, [eax+1H]                           ; 1DFD _ 8D. 78, 01
        mov     eax, dword [ebp-10H]                    ; 1E00 _ 8B. 45, F0
        lea     esi, [eax+1H]                           ; 1E03 _ 8D. 70, 01
        mov     eax, dword [ebp+10H]                    ; 1E06 _ 8B. 45, 10
        lea     ebx, [eax-2H]                           ; 1E09 _ 8D. 58, FE
        mov     eax, dword [ebp-10H]                    ; 1E0C _ 8B. 45, F0
        lea     ecx, [eax+1H]                           ; 1E0F _ 8D. 48, 01
        mov     eax, dword [ebp+8H]                     ; 1E12 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1E15 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1E18 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E1B _ 8B. 00
        mov     dword [esp+18H], edi                    ; 1E1D _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1E21 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E25 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E29 _ 89. 4C 24, 0C
        mov     dword [esp+8H], 8                       ; 1E2D _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], edx                     ; 1E35 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1E39 _ 89. 04 24
        call    _boxfill8                               ; 1E3C _ E8, FFFFEFA8
        mov     eax, dword [ebp+10H]                    ; 1E41 _ 8B. 45, 10
        lea     esi, [eax-1H]                           ; 1E44 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1E47 _ 8B. 45, 0C
        lea     ebx, [eax-1H]                           ; 1E4A _ 8D. 58, FF
        mov     eax, dword [ebp+1CH]                    ; 1E4D _ 8B. 45, 1C
        movzx   eax, al                                 ; 1E50 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1E53 _ 8B. 55, 08
        mov     ecx, dword [edx+4H]                     ; 1E56 _ 8B. 4A, 04
        mov     edx, dword [ebp+8H]                     ; 1E59 _ 8B. 55, 08
        mov     edx, dword [edx]                        ; 1E5C _ 8B. 12
        mov     edi, dword [ebp-14H]                    ; 1E5E _ 8B. 7D, EC
        mov     dword [esp+18H], edi                    ; 1E61 _ 89. 7C 24, 18
        mov     edi, dword [ebp-10H]                    ; 1E65 _ 8B. 7D, F0
        mov     dword [esp+14H], edi                    ; 1E68 _ 89. 7C 24, 14
        mov     dword [esp+10H], esi                    ; 1E6C _ 89. 74 24, 10
        mov     dword [esp+0CH], ebx                    ; 1E70 _ 89. 5C 24, 0C
        mov     dword [esp+8H], eax                     ; 1E74 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 1E78 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 1E7C _ 89. 14 24
        call    _boxfill8                               ; 1E7F _ E8, FFFFEF65
        nop                                             ; 1E84 _ 90
        add     esp, 44                                 ; 1E85 _ 83. C4, 2C
        pop     ebx                                     ; 1E88 _ 5B
        pop     esi                                     ; 1E89 _ 5E
        pop     edi                                     ; 1E8A _ 5F
        pop     ebp                                     ; 1E8B _ 5D
        ret                                             ; 1E8C _ C3
; _make_textbox8 End of function

        nop                                             ; 1E8D _ 90
        nop                                             ; 1E8E _ 90
        nop                                             ; 1E8F _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 1E90 _ 55
        mov     ebp, esp                                ; 1E91 _ 89. E5
        sub     esp, 40                                 ; 1E93 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 1E96 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 1E9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EA1 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1EA4 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1EA9 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 1EAC _ 83. 7D, F0, 00
        jnz     ?_072                                   ; 1EB0 _ 75, 0A
        mov     eax, 0                                  ; 1EB2 _ B8, 00000000
        jmp     ?_076                                   ; 1EB7 _ E9, 0000009D

?_072:  mov     eax, dword [ebp+10H]                    ; 1EBC _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1EBF _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 1EC3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EC7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1ECA _ 89. 04 24
        call    _memman_alloc_4k                        ; 1ECD _ E8, 00000000(rel)
        mov     edx, eax                                ; 1ED2 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1ED4 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 1ED7 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 1EDA _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1EDD _ 8B. 40, 04
        test    eax, eax                                ; 1EE0 _ 85. C0
        jnz     ?_073                                   ; 1EE2 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 1EE4 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 1EE7 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 1EEF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EF3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EF6 _ 89. 04 24
        call    _memman_free_4k                         ; 1EF9 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 1EFE _ B8, 00000000
        jmp     ?_076                                   ; 1F03 _ EB, 54

?_073:  mov     eax, dword [ebp-10H]                    ; 1F05 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 1F08 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1F0B _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 1F0D _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1F10 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 1F13 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1F16 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 1F19 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1F1C _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 1F1F _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 1F22 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 1F29 _ C7. 45, F4, 00000000
        jmp     ?_075                                   ; 1F30 _ EB, 1B

?_074:  mov     edx, dword [ebp-10H]                    ; 1F32 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1F35 _ 8B. 45, F4
        add     eax, 33                                 ; 1F38 _ 83. C0, 21
        shl     eax, 5                                  ; 1F3B _ C1. E0, 05
        add     eax, edx                                ; 1F3E _ 01. D0
        add     eax, 16                                 ; 1F40 _ 83. C0, 10
        mov     dword [eax], 0                          ; 1F43 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 1F49 _ 83. 45, F4, 01
?_075:  cmp     dword [ebp-0CH], 255                    ; 1F4D _ 81. 7D, F4, 000000FF
        jle     ?_074                                   ; 1F54 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 1F56 _ 8B. 45, F0
?_076:  leave                                           ; 1F59 _ C9
        ret                                             ; 1F5A _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 1F5B _ 55
        mov     ebp, esp                                ; 1F5C _ 89. E5
        sub     esp, 16                                 ; 1F5E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1F61 _ C7. 45, FC, 00000000
        jmp     ?_079                                   ; 1F68 _ EB, 5B

?_077:  mov     edx, dword [ebp+8H]                     ; 1F6A _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1F6D _ 8B. 45, FC
        add     eax, 33                                 ; 1F70 _ 83. C0, 21
        shl     eax, 5                                  ; 1F73 _ C1. E0, 05
        add     eax, edx                                ; 1F76 _ 01. D0
        add     eax, 16                                 ; 1F78 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1F7B _ 8B. 00
        test    eax, eax                                ; 1F7D _ 85. C0
        jnz     ?_078                                   ; 1F7F _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 1F81 _ 8B. 45, FC
        shl     eax, 5                                  ; 1F84 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1F87 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1F8D _ 8B. 45, 08
        add     eax, edx                                ; 1F90 _ 01. D0
        add     eax, 4                                  ; 1F92 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 1F95 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1F98 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1F9B _ 8B. 55, FC
        add     edx, 4                                  ; 1F9E _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1FA1 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 1FA4 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 1FA8 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1FAB _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1FB2 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1FB5 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1FBC _ 8B. 45, F8
        jmp     ?_080                                   ; 1FBF _ EB, 12

?_078:  add     dword [ebp-4H], 1                       ; 1FC1 _ 83. 45, FC, 01
?_079:  cmp     dword [ebp-4H], 255                     ; 1FC5 _ 81. 7D, FC, 000000FF
        jle     ?_077                                   ; 1FCC _ 7E, 9C
        mov     eax, 0                                  ; 1FCE _ B8, 00000000
?_080:  leave                                           ; 1FD3 _ C9
        ret                                             ; 1FD4 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1FD5 _ 55
        mov     ebp, esp                                ; 1FD6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1FD8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1FDB _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1FDE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1FE0 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1FE3 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1FE6 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1FE9 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1FEC _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1FEF _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1FF2 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1FF5 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1FF8 _ 89. 50, 14
        nop                                             ; 1FFB _ 90
        pop     ebp                                     ; 1FFC _ 5D
        ret                                             ; 1FFD _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1FFE _ 55
        mov     ebp, esp                                ; 1FFF _ 89. E5
        push    edi                                     ; 2001 _ 57
        push    esi                                     ; 2002 _ 56
        push    ebx                                     ; 2003 _ 53
        sub     esp, 60                                 ; 2004 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 2007 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 200A _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 200D _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 2010 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2013 _ 8B. 40, 10
        add     eax, 1                                  ; 2016 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 2019 _ 39. 45, 10
        jle     ?_081                                   ; 201C _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 201E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2021 _ 8B. 40, 10
        add     eax, 1                                  ; 2024 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 2027 _ 89. 45, 10
?_081:  cmp     dword [ebp+10H], -1                     ; 202A _ 83. 7D, 10, FF
        jge     ?_082                                   ; 202E _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 2030 _ C7. 45, 10, FFFFFFFF
?_082:  mov     eax, dword [ebp+0CH]                    ; 2037 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 203A _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 203D _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 2040 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2043 _ 3B. 45, 10
        jle     ?_089                                   ; 2046 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 204C _ 83. 7D, 10, 00
        js      ?_085                                   ; 2050 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 2056 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2059 _ 89. 45, E4
        jmp     ?_084                                   ; 205C _ EB, 34

?_083:  mov     eax, dword [ebp-1CH]                    ; 205E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 2061 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2064 _ 8B. 45, 08
        add     edx, 4                                  ; 2067 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 206A _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 206E _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2071 _ 8B. 55, E4
        add     edx, 4                                  ; 2074 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2077 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 207B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 207E _ 8B. 55, E4
        add     edx, 4                                  ; 2081 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2084 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2088 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 208B _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 208E _ 83. 6D, E4, 01
?_084:  mov     eax, dword [ebp-1CH]                    ; 2092 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 2095 _ 3B. 45, 10
        jg      ?_083                                   ; 2098 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 209A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 209D _ 8B. 55, 10
        add     edx, 4                                  ; 20A0 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 20A3 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 20A6 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 20AA _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 20AD _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 20B0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 20B3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 20B6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 20B9 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 20BC _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 20BF _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 20C2 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 20C5 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 20C8 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 20CB _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 20CE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 20D1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 20D4 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 20D7 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 20DA _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 20DE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 20E2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 20E6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 20EA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 20EE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 20F1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 20F4 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 20F9 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 20FC _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 20FF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2102 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2105 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2108 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 210B _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 210E _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2111 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2114 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2117 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 211A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 211D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2120 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2123 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2126 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 2129 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 212C _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 2130 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2134 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2138 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 213C _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 2140 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2144 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2147 _ 89. 04 24
        call    _sheet_refreshsub                       ; 214A _ E8, 00000465
        jmp     ?_096                                   ; 214F _ E9, 0000027D

?_085:  mov     eax, dword [ebp+8H]                     ; 2154 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2157 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 215A _ 39. 45, E0
        jge     ?_088                                   ; 215D _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 215F _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2162 _ 89. 45, E4
        jmp     ?_087                                   ; 2165 _ EB, 34

?_086:  mov     eax, dword [ebp-1CH]                    ; 2167 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 216A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 216D _ 8B. 45, 08
        add     edx, 4                                  ; 2170 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2173 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2177 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 217A _ 8B. 55, E4
        add     edx, 4                                  ; 217D _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2180 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2184 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2187 _ 8B. 55, E4
        add     edx, 4                                  ; 218A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 218D _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 2191 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 2194 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 2197 _ 83. 45, E4, 01
?_087:  mov     eax, dword [ebp+8H]                     ; 219B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 219E _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 21A1 _ 39. 45, E4
        jl      ?_086                                   ; 21A4 _ 7C, C1
?_088:  mov     eax, dword [ebp+8H]                     ; 21A6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 21A9 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 21AC _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 21AF _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 21B2 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 21B5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 21B8 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 21BB _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 21BE _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 21C1 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 21C4 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 21C7 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 21CA _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 21CD _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 21D0 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 21D3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 21D6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 21D9 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 21DC _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 21DF _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 21E7 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 21EB _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 21EF _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 21F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 21F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 21FA _ 89. 04 24
        call    _sheet_refreshmap                       ; 21FD _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 2202 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 2205 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 2208 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 220B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 220E _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2211 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 2214 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2217 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 221A _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 221D _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2220 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2223 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2226 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2229 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 222C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 222F _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 2232 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 2236 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 223E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2242 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 2246 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 224A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 224E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2251 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2254 _ E8, 0000035B
        jmp     ?_096                                   ; 2259 _ E9, 00000173

?_089:  mov     eax, dword [ebp-20H]                    ; 225E _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 2261 _ 3B. 45, 10
        jge     ?_096                                   ; 2264 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 226A _ 83. 7D, E0, 00
        js      ?_092                                   ; 226E _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 2270 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 2273 _ 89. 45, E4
        jmp     ?_091                                   ; 2276 _ EB, 34

?_090:  mov     eax, dword [ebp-1CH]                    ; 2278 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 227B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 227E _ 8B. 45, 08
        add     edx, 4                                  ; 2281 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 2284 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2288 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 228B _ 8B. 55, E4
        add     edx, 4                                  ; 228E _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 2291 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2295 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 2298 _ 8B. 55, E4
        add     edx, 4                                  ; 229B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 229E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 22A2 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 22A5 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 22A8 _ 83. 45, E4, 01
?_091:  mov     eax, dword [ebp-1CH]                    ; 22AC _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 22AF _ 3B. 45, 10
        jl      ?_090                                   ; 22B2 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 22B4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 22B7 _ 8B. 55, 10
        add     edx, 4                                  ; 22BA _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 22BD _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 22C0 _ 89. 4C 90, 04
        jmp     ?_095                                   ; 22C4 _ EB, 6C

?_092:  mov     eax, dword [ebp+8H]                     ; 22C6 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 22C9 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 22CC _ 89. 45, E4
        jmp     ?_094                                   ; 22CF _ EB, 3A

?_093:  mov     eax, dword [ebp-1CH]                    ; 22D1 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 22D4 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 22D7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 22DA _ 8B. 55, E4
        add     edx, 4                                  ; 22DD _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 22E0 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 22E4 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 22E7 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 22EA _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 22EE _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 22F1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 22F4 _ 8B. 45, 08
        add     edx, 4                                  ; 22F7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 22FA _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 22FE _ 8B. 55, E4
        add     edx, 1                                  ; 2301 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 2304 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 2307 _ 83. 6D, E4, 01
?_094:  mov     eax, dword [ebp-1CH]                    ; 230B _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 230E _ 3B. 45, 10
        jge     ?_093                                   ; 2311 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 2313 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2316 _ 8B. 55, 10
        add     edx, 4                                  ; 2319 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 231C _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 231F _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 2323 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2326 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2329 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 232C _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 232F _ 89. 50, 10
?_095:  mov     eax, dword [ebp+0CH]                    ; 2332 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2335 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2338 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 233B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 233E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2341 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2344 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2347 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 234A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 234D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2350 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2353 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2356 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2359 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 235C _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 235F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2363 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2367 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 236B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 236F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2373 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2376 _ 89. 04 24
        call    _sheet_refreshmap                       ; 2379 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 237E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2381 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2384 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 2387 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 238A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 238D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2390 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 2393 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 2396 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 2399 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 239C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 239F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 23A2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 23A5 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 23A8 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 23AB _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 23AF _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 23B2 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 23B6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 23BA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 23BE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 23C2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 23C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 23C9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 23CC _ E8, 000001E3
?_096:  nop                                             ; 23D1 _ 90
        add     esp, 60                                 ; 23D2 _ 83. C4, 3C
        pop     ebx                                     ; 23D5 _ 5B
        pop     esi                                     ; 23D6 _ 5E
        pop     edi                                     ; 23D7 _ 5F
        pop     ebp                                     ; 23D8 _ 5D
        ret                                             ; 23D9 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 23DA _ 55
        mov     ebp, esp                                ; 23DB _ 89. E5
        push    edi                                     ; 23DD _ 57
        push    esi                                     ; 23DE _ 56
        push    ebx                                     ; 23DF _ 53
        sub     esp, 60                                 ; 23E0 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 23E3 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 23E6 _ 8B. 40, 18
        test    eax, eax                                ; 23E9 _ 85. C0
        js      ?_097                                   ; 23EB _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 23ED _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 23F0 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 23F3 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 23F6 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 23F9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 23FC _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 23FF _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 2402 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 2405 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 2408 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 240B _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 240E _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 2411 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 2414 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 2417 _ 8B. 45, 14
        add     edx, eax                                ; 241A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 241C _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 241F _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 2422 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 2425 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 2428 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 242B _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 242F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 2433 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 2437 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 243B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 243F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2443 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2446 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2449 _ E8, 00000166
?_097:  mov     eax, 0                                  ; 244E _ B8, 00000000
        add     esp, 60                                 ; 2453 _ 83. C4, 3C
        pop     ebx                                     ; 2456 _ 5B
        pop     esi                                     ; 2457 _ 5E
        pop     edi                                     ; 2458 _ 5F
        pop     ebp                                     ; 2459 _ 5D
        ret                                             ; 245A _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 245B _ 55
        mov     ebp, esp                                ; 245C _ 89. E5
        push    esi                                     ; 245E _ 56
        push    ebx                                     ; 245F _ 53
        sub     esp, 48                                 ; 2460 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 2463 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 2466 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 2469 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 246C _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 246F _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 2472 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 2475 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 2478 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 247B _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 247E _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 2481 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 2484 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 2487 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 248A _ 8B. 40, 18
        test    eax, eax                                ; 248D _ 85. C0
        js      ?_098                                   ; 248F _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 2495 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2498 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 249B _ 8B. 45, F0
        add     edx, eax                                ; 249E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 24A0 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 24A3 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 24A6 _ 8B. 45, F4
        add     eax, ecx                                ; 24A9 _ 01. C8
        mov     dword [esp+14H], 0                      ; 24AB _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 24B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 24B7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 24BB _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 24BE _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 24C2 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 24C5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 24C9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 24CC _ 89. 04 24
        call    _sheet_refreshmap                       ; 24CF _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 24D4 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 24D7 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 24DA _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 24DD _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 24E0 _ 8B. 45, 14
        add     edx, eax                                ; 24E3 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 24E5 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 24E8 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 24EB _ 8B. 45, 10
        add     eax, ebx                                ; 24EE _ 01. D8
        mov     dword [esp+14H], ecx                    ; 24F0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 24F4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 24F8 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 24FC _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 24FF _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2503 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2506 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 250A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 250D _ 89. 04 24
        call    _sheet_refreshmap                       ; 2510 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 2515 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 2518 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 251B _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 251E _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2521 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 2524 _ 8B. 45, F0
        add     edx, eax                                ; 2527 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2529 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 252C _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 252F _ 8B. 45, F4
        add     eax, ebx                                ; 2532 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2534 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 2538 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2540 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2544 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 2548 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 254B _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 254F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2552 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2556 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2559 _ 89. 04 24
        call    _sheet_refreshsub                       ; 255C _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2561 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2564 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2567 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 256A _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 256D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2570 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2573 _ 8B. 45, 14
        add     edx, eax                                ; 2576 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2578 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 257B _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 257E _ 8B. 45, 10
        add     eax, esi                                ; 2581 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 2583 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2587 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 258B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 258F _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2593 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2596 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 259A _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 259D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 25A1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 25A4 _ 89. 04 24
        call    _sheet_refreshsub                       ; 25A7 _ E8, 00000008
?_098:  nop                                             ; 25AC _ 90
        add     esp, 48                                 ; 25AD _ 83. C4, 30
        pop     ebx                                     ; 25B0 _ 5B
        pop     esi                                     ; 25B1 _ 5E
        pop     ebp                                     ; 25B2 _ 5D
        ret                                             ; 25B3 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 25B4 _ 55
        mov     ebp, esp                                ; 25B5 _ 89. E5
        sub     esp, 48                                 ; 25B7 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 25BA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25BD _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 25BF _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 25C2 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 25C5 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 25C8 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 25CB _ 83. 7D, 0C, 00
        jns     ?_099                                   ; 25CF _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 25D1 _ C7. 45, 0C, 00000000
?_099:  cmp     dword [ebp+10H], 8                      ; 25D8 _ 83. 7D, 10, 08
        jg      ?_100                                   ; 25DC _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 25DE _ C7. 45, 10, 00000000
?_100:  mov     eax, dword [ebp+8H]                     ; 25E5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 25E8 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 25EB _ 39. 45, 14
        jle     ?_101                                   ; 25EE _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 25F0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 25F3 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 25F6 _ 89. 45, 14
?_101:  mov     eax, dword [ebp+8H]                     ; 25F9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 25FC _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 25FF _ 39. 45, 18
        jle     ?_102                                   ; 2602 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2604 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2607 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 260A _ 89. 45, 18
?_102:  mov     eax, dword [ebp+1CH]                    ; 260D _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2610 _ 89. 45, FC
        jmp     ?_109                                   ; 2613 _ E9, 0000010F

?_103:  mov     eax, dword [ebp+8H]                     ; 2618 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 261B _ 8B. 55, FC
        add     edx, 4                                  ; 261E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2621 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 2625 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 2628 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 262B _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 262D _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2630 _ 8B. 45, 08
        add     eax, 1044                               ; 2633 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 2638 _ 8B. 55, E8
        sub     edx, eax                                ; 263B _ 29. C2
        mov     eax, edx                                ; 263D _ 89. D0
        sar     eax, 5                                  ; 263F _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 2642 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2645 _ C7. 45, F4, 00000000
        jmp     ?_108                                   ; 264C _ E9, 000000C3

?_104:  mov     eax, dword [ebp-18H]                    ; 2651 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2654 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2657 _ 8B. 45, F4
        add     eax, edx                                ; 265A _ 01. D0
        mov     dword [ebp-24H], eax                    ; 265C _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 265F _ C7. 45, F8, 00000000
        jmp     ?_107                                   ; 2666 _ E9, 00000096

?_105:  mov     eax, dword [ebp-18H]                    ; 266B _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 266E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2671 _ 8B. 45, F8
        add     eax, edx                                ; 2674 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2676 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2679 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 267C _ 3B. 45, D8
        jg      ?_106                                   ; 267F _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2681 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2684 _ 3B. 45, 14
        jge     ?_106                                   ; 2687 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2689 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 268C _ 3B. 45, DC
        jg      ?_106                                   ; 268F _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2691 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2694 _ 3B. 45, 18
        jge     ?_106                                   ; 2697 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2699 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 269C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 269F _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 26A3 _ 8B. 55, F8
        add     eax, edx                                ; 26A6 _ 01. D0
        mov     edx, eax                                ; 26A8 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 26AA _ 8B. 45, E4
        add     eax, edx                                ; 26AD _ 01. D0
        movzx   eax, byte [eax]                         ; 26AF _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 26B2 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 26B5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 26B8 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 26BB _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 26BF _ 8B. 55, D8
        add     eax, edx                                ; 26C2 _ 01. D0
        mov     edx, eax                                ; 26C4 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 26C6 _ 8B. 45, EC
        add     eax, edx                                ; 26C9 _ 01. D0
        movzx   eax, byte [eax]                         ; 26CB _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 26CE _ 38. 45, E3
        jnz     ?_106                                   ; 26D1 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 26D3 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 26D7 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 26DA _ 8B. 52, 14
        cmp     eax, edx                                ; 26DD _ 39. D0
        jz      ?_106                                   ; 26DF _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 26E1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 26E4 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 26E7 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 26EB _ 8B. 55, D8
        add     eax, edx                                ; 26EE _ 01. D0
        mov     edx, eax                                ; 26F0 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 26F2 _ 8B. 45, F0
        add     edx, eax                                ; 26F5 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 26F7 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 26FB _ 88. 02
?_106:  add     dword [ebp-8H], 1                       ; 26FD _ 83. 45, F8, 01
?_107:  mov     eax, dword [ebp-18H]                    ; 2701 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2704 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2707 _ 39. 45, F8
        jl      ?_105                                   ; 270A _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 2710 _ 83. 45, F4, 01
?_108:  mov     eax, dword [ebp-18H]                    ; 2714 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2717 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 271A _ 39. 45, F4
        jl      ?_104                                   ; 271D _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 2723 _ 83. 45, FC, 01
?_109:  mov     eax, dword [ebp-4H]                     ; 2727 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 272A _ 3B. 45, 20
        jle     ?_103                                   ; 272D _ 0F 8E, FFFFFEE5
        nop                                             ; 2733 _ 90
        leave                                           ; 2734 _ C9
        ret                                             ; 2735 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 2736 _ 55
        mov     ebp, esp                                ; 2737 _ 89. E5
        sub     esp, 64                                 ; 2739 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 273C _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 273F _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 2742 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2745 _ 83. 7D, 0C, 00
        jns     ?_110                                   ; 2749 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 274B _ C7. 45, 0C, 00000000
?_110:  cmp     dword [ebp+10H], 0                      ; 2752 _ 83. 7D, 10, 00
        jns     ?_111                                   ; 2756 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2758 _ C7. 45, 10, 00000000
?_111:  mov     eax, dword [ebp+8H]                     ; 275F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2762 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2765 _ 39. 45, 14
        jle     ?_112                                   ; 2768 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 276A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 276D _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2770 _ 89. 45, 14
?_112:  mov     eax, dword [ebp+8H]                     ; 2773 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2776 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2779 _ 39. 45, 18
        jle     ?_113                                   ; 277C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 277E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2781 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2784 _ 89. 45, 18
?_113:  mov     eax, dword [ebp+1CH]                    ; 2787 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 278A _ 89. 45, FC
        jmp     ?_124                                   ; 278D _ E9, 00000139

?_114:  mov     eax, dword [ebp+8H]                     ; 2792 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2795 _ 8B. 55, FC
        add     edx, 4                                  ; 2798 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 279B _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 279F _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 27A2 _ 8B. 45, 08
        add     eax, 1044                               ; 27A5 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 27AA _ 8B. 55, DC
        sub     edx, eax                                ; 27AD _ 29. C2
        mov     eax, edx                                ; 27AF _ 89. D0
        sar     eax, 5                                  ; 27B1 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 27B4 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 27B7 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 27BA _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 27BC _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 27BF _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 27C2 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 27C5 _ 8B. 55, 0C
        sub     edx, eax                                ; 27C8 _ 29. C2
        mov     eax, edx                                ; 27CA _ 89. D0
        mov     dword [ebp-10H], eax                    ; 27CC _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 27CF _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 27D2 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 27D5 _ 8B. 55, 10
        sub     edx, eax                                ; 27D8 _ 29. C2
        mov     eax, edx                                ; 27DA _ 89. D0
        mov     dword [ebp-14H], eax                    ; 27DC _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 27DF _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 27E2 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 27E5 _ 8B. 55, 14
        sub     edx, eax                                ; 27E8 _ 29. C2
        mov     eax, edx                                ; 27EA _ 89. D0
        mov     dword [ebp-18H], eax                    ; 27EC _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 27EF _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 27F2 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 27F5 _ 8B. 55, 18
        sub     edx, eax                                ; 27F8 _ 29. C2
        mov     eax, edx                                ; 27FA _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 27FC _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 27FF _ 83. 7D, F0, 00
        jns     ?_115                                   ; 2803 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2805 _ C7. 45, F0, 00000000
?_115:  cmp     dword [ebp-14H], 0                      ; 280C _ 83. 7D, EC, 00
        jns     ?_116                                   ; 2810 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 2812 _ C7. 45, EC, 00000000
?_116:  mov     eax, dword [ebp-24H]                    ; 2819 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 281C _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 281F _ 39. 45, E8
        jle     ?_117                                   ; 2822 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2824 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2827 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 282A _ 89. 45, E8
?_117:  mov     eax, dword [ebp-24H]                    ; 282D _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2830 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2833 _ 39. 45, E4
        jle     ?_118                                   ; 2836 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 2838 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 283B _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 283E _ 89. 45, E4
?_118:  mov     eax, dword [ebp-14H]                    ; 2841 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2844 _ 89. 45, F4
        jmp     ?_123                                   ; 2847 _ EB, 76

?_119:  mov     eax, dword [ebp-24H]                    ; 2849 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 284C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 284F _ 8B. 45, F4
        add     eax, edx                                ; 2852 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2854 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2857 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 285A _ 89. 45, F8
        jmp     ?_122                                   ; 285D _ EB, 54

?_120:  mov     eax, dword [ebp-24H]                    ; 285F _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2862 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2865 _ 8B. 45, F8
        add     eax, edx                                ; 2868 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 286A _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 286D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2870 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2873 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2877 _ 8B. 55, F8
        add     eax, edx                                ; 287A _ 01. D0
        mov     edx, eax                                ; 287C _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 287E _ 8B. 45, D4
        add     eax, edx                                ; 2881 _ 01. D0
        movzx   eax, byte [eax]                         ; 2883 _ 0F B6. 00
        movzx   eax, al                                 ; 2886 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2889 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 288C _ 8B. 52, 14
        cmp     eax, edx                                ; 288F _ 39. D0
        jz      ?_121                                   ; 2891 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2893 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2896 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2899 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 289D _ 8B. 55, CC
        add     eax, edx                                ; 28A0 _ 01. D0
        mov     edx, eax                                ; 28A2 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 28A4 _ 8B. 45, E0
        add     edx, eax                                ; 28A7 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 28A9 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 28AD _ 88. 02
?_121:  add     dword [ebp-8H], 1                       ; 28AF _ 83. 45, F8, 01
?_122:  mov     eax, dword [ebp-8H]                     ; 28B3 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 28B6 _ 3B. 45, E8
        jl      ?_120                                   ; 28B9 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 28BB _ 83. 45, F4, 01
?_123:  mov     eax, dword [ebp-0CH]                    ; 28BF _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 28C2 _ 3B. 45, E4
        jl      ?_119                                   ; 28C5 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 28C7 _ 83. 45, FC, 01
?_124:  mov     eax, dword [ebp+8H]                     ; 28CB _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 28CE _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 28D1 _ 39. 45, FC
        jle     ?_114                                   ; 28D4 _ 0F 8E, FFFFFEB8
        nop                                             ; 28DA _ 90
        leave                                           ; 28DB _ C9
        ret                                             ; 28DC _ C3
; _sheet_refreshmap End of function

        nop                                             ; 28DD _ 90
        nop                                             ; 28DE _ 90
        nop                                             ; 28DF _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 28E0 _ 55
        mov     ebp, esp                                ; 28E1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 28E3 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 28E6 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 28EC _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 28EF _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 28F6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 28F9 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 2900 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 2903 _ C7. 40, 0C, 00000000
        nop                                             ; 290A _ 90
        pop     ebp                                     ; 290B _ 5D
        ret                                             ; 290C _ C3

_memman_total:; Function begin
        push    ebp                                     ; 290D _ 55
        mov     ebp, esp                                ; 290E _ 89. E5
        sub     esp, 16                                 ; 2910 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2913 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 291A _ C7. 45, FC, 00000000
        jmp     ?_126                                   ; 2921 _ EB, 14

?_125:  mov     eax, dword [ebp+8H]                     ; 2923 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2926 _ 8B. 55, FC
        add     edx, 2                                  ; 2929 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 292C _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2930 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2933 _ 83. 45, FC, 01
?_126:  mov     eax, dword [ebp+8H]                     ; 2937 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 293A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 293C _ 39. 45, FC
        jc      ?_125                                   ; 293F _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2941 _ 8B. 45, F8
        leave                                           ; 2944 _ C9
        ret                                             ; 2945 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 2946 _ 55
        mov     ebp, esp                                ; 2947 _ 89. E5
        sub     esp, 16                                 ; 2949 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 294C _ C7. 45, FC, 00000000
        jmp     ?_130                                   ; 2953 _ E9, 00000083

?_127:  mov     eax, dword [ebp+8H]                     ; 2958 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 295B _ 8B. 55, FC
        add     edx, 2                                  ; 295E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2961 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2965 _ 39. 45, 0C
        ja      ?_129                                   ; 2968 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 296A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 296D _ 8B. 55, FC
        add     edx, 2                                  ; 2970 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2973 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2976 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2979 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 297C _ 8B. 55, FC
        add     edx, 2                                  ; 297F _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2982 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2985 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2988 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 298B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 298E _ 8B. 55, FC
        add     edx, 2                                  ; 2991 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2994 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2997 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 299A _ 8B. 55, FC
        add     edx, 2                                  ; 299D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 29A0 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 29A4 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 29A7 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 29AA _ 8B. 4D, FC
        add     ecx, 2                                  ; 29AD _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 29B0 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 29B4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 29B7 _ 8B. 55, FC
        add     edx, 2                                  ; 29BA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 29BD _ 8B. 44 D0, 04
        test    eax, eax                                ; 29C1 _ 85. C0
        jnz     ?_128                                   ; 29C3 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 29C5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29C8 _ 8B. 00
        lea     edx, [eax-1H]                           ; 29CA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 29CD _ 8B. 45, 08
        mov     dword [eax], edx                        ; 29D0 _ 89. 10
?_128:  mov     eax, dword [ebp-8H]                     ; 29D2 _ 8B. 45, F8
        jmp     ?_131                                   ; 29D5 _ EB, 17

?_129:  add     dword [ebp-4H], 1                       ; 29D7 _ 83. 45, FC, 01
?_130:  mov     eax, dword [ebp+8H]                     ; 29DB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 29DE _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 29E0 _ 39. 45, FC
        jc      ?_127                                   ; 29E3 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 29E9 _ B8, 00000000
?_131:  leave                                           ; 29EE _ C9
        ret                                             ; 29EF _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 29F0 _ 55
        mov     ebp, esp                                ; 29F1 _ 89. E5
        push    ebx                                     ; 29F3 _ 53
        sub     esp, 16                                 ; 29F4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 29F7 _ C7. 45, F8, 00000000
        jmp     ?_133                                   ; 29FE _ EB, 15

?_132:  mov     eax, dword [ebp+8H]                     ; 2A00 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2A03 _ 8B. 55, F8
        add     edx, 2                                  ; 2A06 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2A09 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2A0C _ 39. 45, 0C
        jc      ?_134                                   ; 2A0F _ 72, 10
        add     dword [ebp-8H], 1                       ; 2A11 _ 83. 45, F8, 01
?_133:  mov     eax, dword [ebp+8H]                     ; 2A15 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A18 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2A1A _ 39. 45, F8
        jl      ?_132                                   ; 2A1D _ 7C, E1
        jmp     ?_135                                   ; 2A1F _ EB, 01

?_134:  nop                                             ; 2A21 _ 90
?_135:  cmp     dword [ebp-8H], 0                       ; 2A22 _ 83. 7D, F8, 00
        jle     ?_137                                   ; 2A26 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2A2C _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2A2F _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2A32 _ 8B. 45, 08
        add     edx, 2                                  ; 2A35 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 2A38 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 2A3B _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2A3E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2A41 _ 8B. 45, 08
        add     edx, 2                                  ; 2A44 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2A47 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 2A4B _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2A4D _ 39. 45, 0C
        jne     ?_137                                   ; 2A50 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2A56 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2A59 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2A5C _ 8B. 45, 08
        add     edx, 2                                  ; 2A5F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2A62 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2A66 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2A69 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2A6C _ 8B. 45, 10
        add     ecx, eax                                ; 2A6F _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2A71 _ 8B. 45, 08
        add     edx, 2                                  ; 2A74 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2A77 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2A7B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2A7E _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2A80 _ 39. 45, F8
        jge     ?_136                                   ; 2A83 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2A85 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2A88 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2A8B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2A8E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2A91 _ 8B. 55, F8
        add     edx, 2                                  ; 2A94 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2A97 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2A9A _ 39. C1
        jnz     ?_136                                   ; 2A9C _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 2A9E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2AA1 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2AA4 _ 8B. 45, 08
        add     edx, 2                                  ; 2AA7 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2AAA _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2AAE _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2AB1 _ 8B. 55, F8
        add     edx, 2                                  ; 2AB4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2AB7 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2ABB _ 8B. 55, F8
        sub     edx, 1                                  ; 2ABE _ 83. EA, 01
        add     ecx, eax                                ; 2AC1 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2AC3 _ 8B. 45, 08
        add     edx, 2                                  ; 2AC6 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2AC9 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2ACD _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2AD0 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2AD2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2AD5 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2AD8 _ 89. 10
?_136:  mov     eax, 0                                  ; 2ADA _ B8, 00000000
        jmp     ?_143                                   ; 2ADF _ E9, 0000011C

?_137:  mov     eax, dword [ebp+8H]                     ; 2AE4 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2AE7 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2AE9 _ 39. 45, F8
        jge     ?_138                                   ; 2AEC _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 2AEE _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2AF1 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2AF4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2AF7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2AFA _ 8B. 55, F8
        add     edx, 2                                  ; 2AFD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2B00 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2B03 _ 39. C1
        jnz     ?_138                                   ; 2B05 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2B07 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B0A _ 8B. 55, F8
        add     edx, 2                                  ; 2B0D _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2B10 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2B13 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2B16 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B19 _ 8B. 55, F8
        add     edx, 2                                  ; 2B1C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 2B1F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 2B23 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2B26 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2B29 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2B2C _ 8B. 55, F8
        add     edx, 2                                  ; 2B2F _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2B32 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2B36 _ B8, 00000000
        jmp     ?_143                                   ; 2B3B _ E9, 000000C0

?_138:  mov     eax, dword [ebp+8H]                     ; 2B40 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B43 _ 8B. 00
        cmp     eax, 4095                               ; 2B45 _ 3D, 00000FFF
        jg      ?_142                                   ; 2B4A _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2B50 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B53 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2B55 _ 89. 45, F4
        jmp     ?_140                                   ; 2B58 _ EB, 28

?_139:  mov     eax, dword [ebp-0CH]                    ; 2B5A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2B5D _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2B60 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2B63 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2B66 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2B69 _ 8B. 45, 08
        add     edx, 2                                  ; 2B6C _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2B6F _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2B72 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2B74 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2B77 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 2B7A _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2B7E _ 83. 6D, F4, 01
?_140:  mov     eax, dword [ebp-0CH]                    ; 2B82 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2B85 _ 3B. 45, F8
        jg      ?_139                                   ; 2B88 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2B8A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2B8D _ 8B. 00
        lea     edx, [eax+1H]                           ; 2B8F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2B92 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2B95 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2B97 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2B9A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2B9D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2BA0 _ 8B. 00
        cmp     edx, eax                                ; 2BA2 _ 39. C2
        jge     ?_141                                   ; 2BA4 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2BA6 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2BA9 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2BAB _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2BAE _ 89. 50, 04
?_141:  mov     eax, dword [ebp+8H]                     ; 2BB1 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2BB4 _ 8B. 55, F8
        add     edx, 2                                  ; 2BB7 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2BBA _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2BBD _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2BC0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2BC3 _ 8B. 55, F8
        add     edx, 2                                  ; 2BC6 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2BC9 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2BCC _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2BD0 _ B8, 00000000
        jmp     ?_143                                   ; 2BD5 _ EB, 29

?_142:  mov     eax, dword [ebp+8H]                     ; 2BD7 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2BDA _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2BDD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2BE0 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2BE3 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2BE6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2BE9 _ 8B. 40, 08
        mov     edx, eax                                ; 2BEC _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 2BEE _ 8B. 45, 10
        add     eax, edx                                ; 2BF1 _ 01. D0
        mov     edx, eax                                ; 2BF3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2BF5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2BF8 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2BFB _ B8, FFFFFFFF
?_143:  add     esp, 16                                 ; 2C00 _ 83. C4, 10
        pop     ebx                                     ; 2C03 _ 5B
        pop     ebp                                     ; 2C04 _ 5D
        ret                                             ; 2C05 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2C06 _ 55
        mov     ebp, esp                                ; 2C07 _ 89. E5
        sub     esp, 24                                 ; 2C09 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2C0C _ 8B. 45, 0C
        add     eax, 4095                               ; 2C0F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2C14 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2C19 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2C1C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C1F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C23 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C26 _ 89. 04 24
        call    _memman_alloc                           ; 2C29 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 2C2E _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2C31 _ 8B. 45, FC
        leave                                           ; 2C34 _ C9
        ret                                             ; 2C35 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 2C36 _ 55
        mov     ebp, esp                                ; 2C37 _ 89. E5
        sub     esp, 28                                 ; 2C39 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2C3C _ 8B. 45, 10
        add     eax, 4095                               ; 2C3F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2C44 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 2C49 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2C4C _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2C4F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2C53 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2C56 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2C5A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2C5D _ 89. 04 24
        call    _memman_free                            ; 2C60 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 2C65 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2C68 _ 8B. 45, FC
        leave                                           ; 2C6B _ C9
        ret                                             ; 2C6C _ C3
; _memman_free_4k End of function

        nop                                             ; 2C6D _ 90
        nop                                             ; 2C6E _ 90
        nop                                             ; 2C6F _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 2C70 _ 55
        mov     ebp, esp                                ; 2C71 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2C73 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C76 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2C79 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2C7C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2C7F _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2C82 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2C84 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2C87 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2C8A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2C8D _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2C90 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2C97 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2C9A _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2CA1 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2CA4 _ C7. 40, 08, 00000000
        nop                                             ; 2CAB _ 90
        pop     ebp                                     ; 2CAC _ 5D
        ret                                             ; 2CAD _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 2CAE _ 55
        mov     ebp, esp                                ; 2CAF _ 89. E5
        sub     esp, 4                                  ; 2CB1 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2CB4 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2CB7 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2CBA _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2CBD _ 8B. 40, 10
        test    eax, eax                                ; 2CC0 _ 85. C0
        jnz     ?_144                                   ; 2CC2 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2CC4 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2CC7 _ 8B. 40, 14
        or      eax, 01H                                ; 2CCA _ 83. C8, 01
        mov     edx, eax                                ; 2CCD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2CCF _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2CD2 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2CD5 _ B8, FFFFFFFF
        jmp     ?_146                                   ; 2CDA _ EB, 50

?_144:  mov     eax, dword [ebp+8H]                     ; 2CDC _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2CDF _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2CE1 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2CE4 _ 8B. 40, 04
        add     edx, eax                                ; 2CE7 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2CE9 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2CED _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 2CEF _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2CF2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2CF5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2CF8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2CFB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2CFE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2D01 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2D04 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D07 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2D0A _ 39. C2
        jnz     ?_145                                   ; 2D0C _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2D0E _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2D11 _ C7. 40, 04, 00000000
?_145:  mov     eax, dword [ebp+8H]                     ; 2D18 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D1B _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 2D1E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2D21 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2D24 _ 89. 50, 10
        mov     eax, 0                                  ; 2D27 _ B8, 00000000
?_146:  leave                                           ; 2D2C _ C9
        ret                                             ; 2D2D _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 2D2E _ 55
        mov     ebp, esp                                ; 2D2F _ 89. E5
        sub     esp, 16                                 ; 2D31 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2D34 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 2D37 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2D3A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D3D _ 8B. 40, 0C
        cmp     edx, eax                                ; 2D40 _ 39. C2
        jnz     ?_147                                   ; 2D42 _ 75, 07
        mov     eax, 4294967295                         ; 2D44 _ B8, FFFFFFFF
        jmp     ?_149                                   ; 2D49 _ EB, 51

?_147:  mov     eax, dword [ebp+8H]                     ; 2D4B _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2D4E _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2D50 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D53 _ 8B. 40, 08
        add     eax, edx                                ; 2D56 _ 01. D0
        movzx   eax, byte [eax]                         ; 2D58 _ 0F B6. 00
        movzx   eax, al                                 ; 2D5B _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2D5E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2D61 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2D64 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2D67 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D6A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2D6D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2D70 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2D73 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2D76 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2D79 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2D7C _ 39. C2
        jnz     ?_148                                   ; 2D7E _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2D80 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2D83 _ C7. 40, 08, 00000000
?_148:  mov     eax, dword [ebp+8H]                     ; 2D8A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2D8D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2D90 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2D93 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2D96 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2D99 _ 8B. 45, FC
?_149:  leave                                           ; 2D9C _ C9
        ret                                             ; 2D9D _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 2D9E _ 55
        mov     ebp, esp                                ; 2D9F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2DA1 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2DA4 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2DA7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2DAA _ 8B. 40, 10
        sub     edx, eax                                ; 2DAD _ 29. C2
        mov     eax, edx                                ; 2DAF _ 89. D0
        pop     ebp                                     ; 2DB1 _ 5D
        ret                                             ; 2DB2 _ C3
; _fifo8_status End of function

        nop                                             ; 2DB3 _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 2DB4 _ 55
        mov     ebp, esp                                ; 2DB5 _ 89. E5
        sub     esp, 40                                 ; 2DB7 _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 2DBA _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 2DC2 _ C7. 04 24, 00000043
        call    _io_out8                                ; 2DC9 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 2DCE _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 2DD6 _ C7. 04 24, 00000040
        call    _io_out8                                ; 2DDD _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 2DE2 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 2DEA _ C7. 04 24, 00000040
        call    _io_out8                                ; 2DF1 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 2DF6 _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 2E00 _ C7. 45, F4, 00000000
        jmp     ?_151                                   ; 2E07 _ EB, 15

?_150:  mov     eax, dword [ebp-0CH]                    ; 2E09 _ 8B. 45, F4
        shl     eax, 4                                  ; 2E0C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2E0F _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 2E14 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 2E1A _ 83. 45, F4, 01
?_151:  cmp     dword [ebp-0CH], 499                    ; 2E1E _ 81. 7D, F4, 000001F3
        jle     ?_150                                   ; 2E25 _ 7E, E2
        nop                                             ; 2E27 _ 90
        leave                                           ; 2E28 _ C9
        ret                                             ; 2E29 _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 2E2A _ 55
        mov     ebp, esp                                ; 2E2B _ 89. E5
        sub     esp, 16                                 ; 2E2D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2E30 _ C7. 45, FC, 00000000
        jmp     ?_154                                   ; 2E37 _ EB, 36

?_152:  mov     eax, dword [ebp-4H]                     ; 2E39 _ 8B. 45, FC
        shl     eax, 4                                  ; 2E3C _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2E3F _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 2E44 _ 8B. 00
        test    eax, eax                                ; 2E46 _ 85. C0
        jnz     ?_153                                   ; 2E48 _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 2E4A _ 8B. 45, FC
        shl     eax, 4                                  ; 2E4D _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2E50 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 2E55 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 2E5B _ 8B. 45, FC
        shl     eax, 4                                  ; 2E5E _ C1. E0, 04
        add     eax, _timerctl                               ; 2E61 _ 05, 00000000(d)
        add     eax, 4                                  ; 2E66 _ 83. C0, 04
        jmp     ?_155                                   ; 2E69 _ EB, 12

?_153:  add     dword [ebp-4H], 1                       ; 2E6B _ 83. 45, FC, 01
?_154:  cmp     dword [ebp-4H], 499                     ; 2E6F _ 81. 7D, FC, 000001F3
        jle     ?_152                                   ; 2E76 _ 7E, C1
        mov     eax, 0                                  ; 2E78 _ B8, 00000000
?_155:  leave                                           ; 2E7D _ C9
        ret                                             ; 2E7E _ C3
; _timer_alloc End of function

_timer_init:; Function begin
        push    ebp                                     ; 2E7F _ 55
        mov     ebp, esp                                ; 2E80 _ 89. E5
        sub     esp, 4                                  ; 2E82 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2E85 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 2E88 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2E8B _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2E8E _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2E91 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 2E94 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 2E97 _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 2E9B _ 88. 42, 0C
        nop                                             ; 2E9E _ 90
        leave                                           ; 2E9F _ C9
        ret                                             ; 2EA0 _ C3
; _timer_init End of function

_timer_free:; Function begin
        push    ebp                                     ; 2EA1 _ 55
        mov     ebp, esp                                ; 2EA2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2EA4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2EA7 _ C7. 40, 04, 00000000
        nop                                             ; 2EAE _ 90
        pop     ebp                                     ; 2EAF _ 5D
        ret                                             ; 2EB0 _ C3
; _timer_free End of function

_timer_settime:; Function begin
        push    ebp                                     ; 2EB1 _ 55
        mov     ebp, esp                                ; 2EB2 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2EB4 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2EB7 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 2EBA _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2EBC _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2EBF _ C7. 40, 04, 00000002
        nop                                             ; 2EC6 _ 90
        pop     ebp                                     ; 2EC7 _ 5D
        ret                                             ; 2EC8 _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 2EC9 _ 55
        mov     ebp, esp                                ; 2ECA _ 89. E5
        sub     esp, 40                                 ; 2ECC _ 83. EC, 28
        mov     dword [esp+4H], 96                      ; 2ECF _ C7. 44 24, 04, 00000060
        mov     dword [esp], 32                         ; 2ED7 _ C7. 04 24, 00000020
        call    _io_out8                                ; 2EDE _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 2EE3 _ A1, 00000000(d)
        add     eax, 1                                  ; 2EE8 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 2EEB _ A3, 00000000(d)
        mov     dword [ebp-0CH], 0                      ; 2EF0 _ C7. 45, F4, 00000000
        jmp     ?_158                                   ; 2EF7 _ E9, 00000080

?_156:  mov     eax, dword [ebp-0CH]                    ; 2EFC _ 8B. 45, F4
        shl     eax, 4                                  ; 2EFF _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2F02 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 2F07 _ 8B. 00
        cmp     eax, 2                                  ; 2F09 _ 83. F8, 02
        jnz     ?_157                                   ; 2F0C _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 2F0E _ 8B. 45, F4
        shl     eax, 4                                  ; 2F11 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 2F14 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 2F19 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2F1B _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 2F1E _ 8B. 45, F4
        shl     eax, 4                                  ; 2F21 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 2F24 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 2F29 _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 2F2B _ 8B. 45, F4
        shl     eax, 4                                  ; 2F2E _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 2F31 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 2F36 _ 8B. 00
        test    eax, eax                                ; 2F38 _ 85. C0
        jnz     ?_157                                   ; 2F3A _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2F3C _ 8B. 45, F4
        shl     eax, 4                                  ; 2F3F _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2F42 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 2F47 _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2F4D _ 8B. 45, F4
        shl     eax, 4                                  ; 2F50 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 2F53 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 2F58 _ 0F B6. 00
        movzx   eax, al                                 ; 2F5B _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 2F5E _ 8B. 55, F4
        shl     edx, 4                                  ; 2F61 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 2F64 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 2F6A _ 8B. 12
        mov     dword [esp+4H], eax                     ; 2F6C _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2F70 _ 89. 14 24
        call    _fifo8_put                              ; 2F73 _ E8, 00000000(rel)
?_157:  add     dword [ebp-0CH], 1                      ; 2F78 _ 83. 45, F4, 01
?_158:  cmp     dword [ebp-0CH], 499                    ; 2F7C _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 2F83 _ 0F 8E, FFFFFF73
        nop                                             ; 2F89 _ 90
        leave                                           ; 2F8A _ C9
        ret                                             ; 2F8B _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 2F8C _ B8, 00000000(d)
        ret                                             ; 2F91 _ C3
; _getTimerController End of function

        nop                                             ; 2F92 _ 90
        nop                                             ; 2F93 _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_159:  db 00H                                          ; 0006 _ .

?_160:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
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

_table_rgb.2231:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2278:                                           ; byte
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

_closebtn.2390:                                         ; byte
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



?_161:                                                  ; byte
        db 6DH, 65H, 73H, 73H, 61H, 67H, 65H, 00H       ; 0000 _ message.

?_162:                                                  ; byte
        db 74H, 00H                                     ; 0008 _ t.

?_163:                                                  ; byte
        db 20H, 35H, 5BH, 73H, 65H, 63H, 5DH, 00H       ; 000A _  5[sec].

?_164:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0012 _ 3[sec].

?_165:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0019 _ page is:
        db 20H, 00H                                     ; 0021 _  .

?_166:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0023 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 002B _ L: .

?_167:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002F _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0037 _ H: .

?_168:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 003B _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0043 _ w: .

?_169:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0047 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 004F _ gh: .

?_170:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H, 00H       ; 0054 _ type: ..



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
        resb    12                                      ; 00E0

?_173:  resd    1                                       ; 00EC

_timerinfo:                                             ; byte
        resb    24                                      ; 00F0

_timerbuf:                                              ; byte
        resb    8                                       ; 0108

_shtMsgBox:                                             ; dword
        resd    1                                       ; 0110

_mx:    resd    1                                       ; 0114

_my:    resd    1                                       ; 0118

_xsize: resd    1                                       ; 011C

_ysize: resd    1                                       ; 0120

_buf_back:                                              ; dword
        resd    7                                       ; 0124

_buf_mouse:                                             ; byte
        resb    256                                     ; 0140

_str.2326:                                              ; byte
        resb    1                                       ; 0240

?_174:  resb    9                                       ; 0241

?_175:  resb    22                                      ; 024A

_timerctl:                                              ; byte
        resb    8032                                    ; 0260


