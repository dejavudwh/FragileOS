; Disassembly of file: ckernel.o
; Thu Aug  8 11:36:06 2019
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
        call    _initBootInfo                           ; 000E _ E8, 00000AD9
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 0018 _ 89. 45, F0
        movzx   eax, word [?_168]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 00000118(d)
        movzx   eax, word [?_169]                       ; 0028 _ 0F B7. 05, 00000006(d)
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
        call    _init_palette                           ; 013E _ E8, 00000A6C
        call    _init_keyboard                          ; 0143 _ E8, 00000FD5
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
        call    _init_screen8                           ; 0265 _ E8, 000003F2
        mov     dword [esp+4H], 99                      ; 026A _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 0272 _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 0279 _ E8, 00000BCD
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
        mov     dword [esp+4H], ?_161                   ; 02F1 _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-30H]                    ; 02F9 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 02FC _ 89. 04 24
        call    _message_box                            ; 02FF _ E8, 00001244
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
        call    _enable_mouse                           ; 0347 _ E8, 00000E0C
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
        je      ?_004                                   ; 03A2 _ 0F 84, 000000DE
        call    _io_sti                                 ; 03A8 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 03AD _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 03B4 _ E8, 00000000(rel)
        mov     dword [ebp-38H], eax                    ; 03B9 _ 89. 45, C8
        cmp     dword [ebp-38H], 28                     ; 03BC _ 83. 7D, C8, 1C
        jnz     ?_003                                   ; 03C0 _ 75, 69
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
        call    _showMemoryInfo                         ; 040A _ E8, 00000F1E
        add     dword [ebp-0CH], 1                      ; 040F _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 0413 _ 8B. 45, F4
        cmp     eax, dword [ebp-28H]                    ; 0416 _ 3B. 45, D8
        jle     ?_001                                   ; 0419 _ 0F 8E, FFFFFF3B
        mov     dword [ebp-0CH], 0                      ; 041F _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 0426 _ E9, FFFFFF2F

?_003:  mov     eax, dword [ebp-38H]                    ; 042B _ 8B. 45, C8
        add     eax, _keytable                          ; 042E _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0433 _ 0F B6. 00
        test    al, al                                  ; 0436 _ 84. C0
        je      ?_001                                   ; 0438 _ 0F 84, FFFFFF1C
        mov     eax, dword [ebp-38H]                    ; 043E _ 8B. 45, C8
        add     eax, _keytable                          ; 0441 _ 05, 00000020(d)
        movzx   eax, byte [eax]                         ; 0446 _ 0F B6. 00
        mov     byte [ebp-3EH], al                      ; 0449 _ 88. 45, C2
        mov     byte [ebp-3DH], 0                       ; 044C _ C6. 45, C3, 00
        lea     eax, [ebp-3EH]                          ; 0450 _ 8D. 45, C2
        mov     dword [esp+14H], eax                    ; 0453 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0457 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 045F _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 40                      ; 0467 _ C7. 44 24, 08, 00000028
        mov     eax, dword [ebp-34H]                    ; 046F _ 8B. 45, CC
        mov     dword [esp+4H], eax                     ; 0472 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0476 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0479 _ 89. 04 24
        call    _showString                             ; 047C _ E8, 0000068C
        jmp     ?_001                                   ; 0481 _ E9, FFFFFED4

?_004:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0486 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 048D _ E8, 00000000(rel)
        test    eax, eax                                ; 0492 _ 85. C0
        jz      ?_005                                   ; 0494 _ 74, 1E
        mov     eax, dword [ebp-18H]                    ; 0496 _ 8B. 45, E8
        mov     dword [esp+8H], eax                     ; 0499 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 049D _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 04A0 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 04A4 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 04A7 _ 89. 04 24
        call    _show_mouse_info                        ; 04AA _ E8, 000005BD
        jmp     ?_001                                   ; 04AF _ E9, FFFFFEA6

?_005:  ; Local function
        mov     dword [esp], _timerinfo                 ; 04B4 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 04BB _ E8, 00000000(rel)
        test    eax, eax                                ; 04C0 _ 85. C0
        je      ?_001                                   ; 04C2 _ 0F 84, FFFFFE92
        call    _io_sti                                 ; 04C8 _ E8, 00000000(rel)
        mov     dword [esp], _timerinfo                 ; 04CD _ C7. 04 24, 000000F0(d)
        call    _fifo8_get                              ; 04D4 _ E8, 00000000(rel)
        mov     dword [ebp-3CH], eax                    ; 04D9 _ 89. 45, C4
        cmp     dword [ebp-3CH], 10                     ; 04DC _ 83. 7D, C4, 0A
        jnz     ?_006                                   ; 04E0 _ 75, 37
        mov     dword [esp+14H], ?_162                  ; 04E2 _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 04EA _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 04F2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 04FA _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 0502 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0505 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0509 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 050C _ 89. 04 24
        call    _showString                             ; 050F _ E8, 000005F9
        jmp     ?_001                                   ; 0514 _ E9, FFFFFE41

?_006:  ; Local function
        cmp     dword [ebp-3CH], 2                      ; 0519 _ 83. 7D, C4, 02
        jnz     ?_007                                   ; 051D _ 75, 37
        mov     dword [esp+14H], ?_163                  ; 051F _ C7. 44 24, 14, 00000014(d)
        mov     dword [esp+10H], 7                      ; 0527 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 16                     ; 052F _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 0                       ; 0537 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 053F _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0542 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 0546 _ 8B. 45, D0
        mov     dword [esp], eax                        ; 0549 _ 89. 04 24
        call    _showString                             ; 054C _ E8, 000005BC
        jmp     ?_001                                   ; 0551 _ E9, FFFFFE04

?_007:  ; Local function
        cmp     dword [ebp-3CH], 0                      ; 0556 _ 83. 7D, C4, 00
        jz      ?_008                                   ; 055A _ 74, 5C
        mov     dword [esp+8H], 0                       ; 055C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], _timerinfo              ; 0564 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-24H]                    ; 056C _ 8B. 45, DC
        mov     dword [esp], eax                        ; 056F _ 89. 04 24
        call    _timer_init                             ; 0572 _ E8, 00000000(rel)
        mov     edx, dword [_xsize]                     ; 0577 _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 057D _ A1, 00000120(d)
        mov     dword [esp+18H], 111                    ; 0582 _ C7. 44 24, 18, 0000006F
        mov     dword [esp+14H], 15                     ; 058A _ C7. 44 24, 14, 0000000F
        mov     dword [esp+10H], 96                     ; 0592 _ C7. 44 24, 10, 00000060
        mov     dword [esp+0CH], 8                      ; 059A _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 7                       ; 05A2 _ C7. 44 24, 08, 00000007
        mov     dword [esp+4H], edx                     ; 05AA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 05AE _ 89. 04 24
        call    _boxfill8                               ; 05B1 _ E8, 000006C4
        jmp     ?_009                                   ; 05B6 _ EB, 5A

?_008:  mov     dword [esp+8H], 1                       ; 05B8 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 05C0 _ C7. 44 24, 04, 000000F0(d)
        mov     eax, dword [ebp-24H]                    ; 05C8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 05CB _ 89. 04 24
        call    _timer_init                             ; 05CE _ E8, 00000000(rel)
        mov     edx, dword [_xsize]                     ; 05D3 _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 05D9 _ A1, 00000120(d)
        mov     dword [esp+18H], 111                    ; 05DE _ C7. 44 24, 18, 0000006F
        mov     dword [esp+14H], 15                     ; 05E6 _ C7. 44 24, 14, 0000000F
        mov     dword [esp+10H], 96                     ; 05EE _ C7. 44 24, 10, 00000060
        mov     dword [esp+0CH], 8                      ; 05F6 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 14                      ; 05FE _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], edx                     ; 0606 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 060A _ 89. 04 24
        call    _boxfill8                               ; 060D _ E8, 00000668
?_009:  mov     dword [esp+4H], 50                      ; 0612 _ C7. 44 24, 04, 00000032
        mov     eax, dword [ebp-24H]                    ; 061A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 061D _ 89. 04 24
        call    _timer_settime                          ; 0620 _ E8, 00000000(rel)
        mov     dword [esp+14H], 112                    ; 0625 _ C7. 44 24, 14, 00000070
        mov     dword [esp+10H], 16                     ; 062D _ C7. 44 24, 10, 00000010
        mov     dword [esp+0CH], 96                     ; 0635 _ C7. 44 24, 0C, 00000060
        mov     dword [esp+8H], 8                       ; 063D _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-14H]                    ; 0645 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0648 _ 89. 44 24, 04
        mov     eax, dword [ebp-30H]                    ; 064C _ 8B. 45, D0
        mov     dword [esp], eax                        ; 064F _ 89. 04 24
        call    _sheet_refresh                          ; 0652 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0657 _ E9, FFFFFCFE

_init_screen8:; Function begin
        push    ebp                                     ; 065C _ 55
        mov     ebp, esp                                ; 065D _ 89. E5
        push    ebx                                     ; 065F _ 53
        sub     esp, 36                                 ; 0660 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0663 _ 8B. 45, 10
        lea     edx, [eax-1DH]                          ; 0666 _ 8D. 50, E3
        mov     eax, dword [ebp+0CH]                    ; 0669 _ 8B. 45, 0C
        sub     eax, 1                                  ; 066C _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 066F _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0673 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0677 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 067F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0687 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 068F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0692 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0696 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0699 _ 89. 04 24
        call    _boxfill8                               ; 069C _ E8, 000005D9
        mov     eax, dword [ebp+10H]                    ; 06A1 _ 8B. 45, 10
        lea     ecx, [eax-1CH]                          ; 06A4 _ 8D. 48, E4
        mov     eax, dword [ebp+0CH]                    ; 06A7 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 06AA _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 06AD _ 8B. 45, 10
        sub     eax, 28                                 ; 06B0 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 06B3 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 06B7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 06BB _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 06BF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 06C7 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 06CF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06D9 _ 89. 04 24
        call    _boxfill8                               ; 06DC _ E8, 00000599
        mov     eax, dword [ebp+10H]                    ; 06E1 _ 8B. 45, 10
        lea     ecx, [eax-1BH]                          ; 06E4 _ 8D. 48, E5
        mov     eax, dword [ebp+0CH]                    ; 06E7 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 06EA _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 06ED _ 8B. 45, 10
        sub     eax, 27                                 ; 06F0 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 06F3 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 06F7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 06FB _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 06FF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0707 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 070F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0712 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0716 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0719 _ 89. 04 24
        call    _boxfill8                               ; 071C _ E8, 00000559
        mov     eax, dword [ebp+10H]                    ; 0721 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0724 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0727 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 072A _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 072D _ 8B. 45, 10
        sub     eax, 26                                 ; 0730 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0733 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0737 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 073B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 073F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0747 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 074F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0752 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0756 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0759 _ 89. 04 24
        call    _boxfill8                               ; 075C _ E8, 00000519
        mov     eax, dword [ebp+10H]                    ; 0761 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 0764 _ 8D. 50, E8
        mov     eax, dword [ebp+10H]                    ; 0767 _ 8B. 45, 10
        sub     eax, 24                                 ; 076A _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 076D _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0771 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0779 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 077D _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0785 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 078D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0790 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0794 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0797 _ 89. 04 24
        call    _boxfill8                               ; 079A _ E8, 000004DB
        mov     eax, dword [ebp+10H]                    ; 079F _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 07A2 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 07A5 _ 8B. 45, 10
        sub     eax, 24                                 ; 07A8 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 07AB _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 07AF _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 07B7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 07BB _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 07C3 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 07CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07D5 _ 89. 04 24
        call    _boxfill8                               ; 07D8 _ E8, 0000049D
        mov     eax, dword [ebp+10H]                    ; 07DD _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 07E0 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 07E3 _ 8B. 45, 10
        sub     eax, 4                                  ; 07E6 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 07E9 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 07ED _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 07F5 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 07F9 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0801 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0809 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 080C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0810 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0813 _ 89. 04 24
        call    _boxfill8                               ; 0816 _ E8, 0000045F
        mov     eax, dword [ebp+10H]                    ; 081B _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 081E _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0821 _ 8B. 45, 10
        sub     eax, 23                                 ; 0824 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 0827 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 082B _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0833 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0837 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 083F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0847 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 084A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 084E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0851 _ 89. 04 24
        call    _boxfill8                               ; 0854 _ E8, 00000421
        mov     eax, dword [ebp+10H]                    ; 0859 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 085C _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 085F _ 8B. 45, 10
        sub     eax, 3                                  ; 0862 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0865 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0869 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0871 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0875 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 087D _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0885 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0888 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 088C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 088F _ 89. 04 24
        call    _boxfill8                               ; 0892 _ E8, 000003E3
        mov     eax, dword [ebp+10H]                    ; 0897 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 089A _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 089D _ 8B. 45, 10
        sub     eax, 24                                 ; 08A0 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 08A3 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 08A7 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 08AF _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 08B3 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 08BB _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 08C3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08C6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08CA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08CD _ 89. 04 24
        call    _boxfill8                               ; 08D0 _ E8, 000003A5
        mov     eax, dword [ebp+10H]                    ; 08D5 _ 8B. 45, 10
        lea     ebx, [eax-18H]                          ; 08D8 _ 8D. 58, E8
        mov     eax, dword [ebp+0CH]                    ; 08DB _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 08DE _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 08E1 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 08E4 _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 08E7 _ 8B. 45, 0C
        sub     eax, 47                                 ; 08EA _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 08ED _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 08F1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 08F5 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 08F9 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 08FD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0905 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0908 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 090C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 090F _ 89. 04 24
        call    _boxfill8                               ; 0912 _ E8, 00000363
        mov     eax, dword [ebp+10H]                    ; 0917 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 091A _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 091D _ 8B. 45, 0C
        lea     ecx, [eax-2FH]                          ; 0920 _ 8D. 48, D1
        mov     eax, dword [ebp+10H]                    ; 0923 _ 8B. 45, 10
        lea     edx, [eax-17H]                          ; 0926 _ 8D. 50, E9
        mov     eax, dword [ebp+0CH]                    ; 0929 _ 8B. 45, 0C
        sub     eax, 47                                 ; 092C _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 092F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0933 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0937 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 093B _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 093F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0947 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 094A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 094E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0951 _ 89. 04 24
        call    _boxfill8                               ; 0954 _ E8, 00000321
        mov     eax, dword [ebp+10H]                    ; 0959 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 095C _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 095F _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0962 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0965 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0968 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 096B _ 8B. 45, 0C
        sub     eax, 47                                 ; 096E _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0971 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0975 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0979 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 097D _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0981 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0989 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 098C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0990 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0993 _ 89. 04 24
        call    _boxfill8                               ; 0996 _ E8, 000002DF
        mov     eax, dword [ebp+10H]                    ; 099B _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 099E _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 09A1 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 09A4 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 09A7 _ 8B. 45, 10
        lea     edx, [eax-18H]                          ; 09AA _ 8D. 50, E8
        mov     eax, dword [ebp+0CH]                    ; 09AD _ 8B. 45, 0C
        sub     eax, 3                                  ; 09B0 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 09B3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 09B7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 09BB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 09BF _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 09C3 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 09CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 09CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 09D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 09D5 _ 89. 04 24
        call    _boxfill8                               ; 09D8 _ E8, 0000029D
        nop                                             ; 09DD _ 90
        add     esp, 36                                 ; 09DE _ 83. C4, 24
        pop     ebx                                     ; 09E1 _ 5B
        pop     ebp                                     ; 09E2 _ 5D
        ret                                             ; 09E3 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 09E4 _ 55
        mov     ebp, esp                                ; 09E5 _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 09E7 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 09EA _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 09ED _ A1, 00000110(d)
        add     eax, edx                                ; 09F2 _ 01. D0
        mov     dword [_mx], eax                        ; 09F4 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 09F9 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 09FC _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 09FF _ A1, 00000114(d)
        add     eax, edx                                ; 0A04 _ 01. D0
        mov     dword [_my], eax                        ; 0A06 _ A3, 00000114(d)
        mov     eax, dword [_mx]                        ; 0A0B _ A1, 00000110(d)
        test    eax, eax                                ; 0A10 _ 85. C0
        jns     ?_010                                   ; 0A12 _ 79, 0A
        mov     dword [_mx], 0                          ; 0A14 _ C7. 05, 00000110(d), 00000000
?_010:  mov     eax, dword [_my]                        ; 0A1E _ A1, 00000114(d)
        test    eax, eax                                ; 0A23 _ 85. C0
        jns     ?_011                                   ; 0A25 _ 79, 0A
        mov     dword [_my], 0                          ; 0A27 _ C7. 05, 00000114(d), 00000000
?_011:  mov     edx, dword [_xsize]                     ; 0A31 _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 0A37 _ A1, 00000110(d)
        cmp     edx, eax                                ; 0A3C _ 39. C2
        jg      ?_012                                   ; 0A3E _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0A40 _ A1, 00000118(d)
        sub     eax, 1                                  ; 0A45 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 0A48 _ A3, 00000110(d)
?_012:  mov     edx, dword [_ysize]                     ; 0A4D _ 8B. 15, 0000011C(d)
        mov     eax, dword [_my]                        ; 0A53 _ A1, 00000114(d)
        cmp     edx, eax                                ; 0A58 _ 39. C2
        jg      ?_013                                   ; 0A5A _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 0A5C _ A1, 0000011C(d)
        sub     eax, 1                                  ; 0A61 _ 83. E8, 01
        mov     dword [_my], eax                        ; 0A64 _ A3, 00000114(d)
?_013:  nop                                             ; 0A69 _ 90
        pop     ebp                                     ; 0A6A _ 5D
        ret                                             ; 0A6B _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0A6C _ 55
        mov     ebp, esp                                ; 0A6D _ 89. E5
        sub     esp, 40                                 ; 0A6F _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0A72 _ A1, 00000120(d)
        mov     dword [ebp-0CH], eax                    ; 0A77 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0A7A _ C6. 45, F3, 00
        call    _io_sti                                 ; 0A7E _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0A83 _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 0A8A _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0A8F _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0A92 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0A96 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0A9A _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0AA1 _ E8, 00000748
        test    eax, eax                                ; 0AA6 _ 85. C0
        jz      ?_014                                   ; 0AA8 _ 74, 3F
        mov     dword [esp+8H], _mdec                   ; 0AAA _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0AB2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0AB5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0AB9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0ABC _ 89. 04 24
        call    _computeMousePosition                   ; 0ABF _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0AC4 _ 8B. 15, 00000114(d)
        mov     eax, dword [_mx]                        ; 0ACA _ A1, 00000110(d)
        mov     dword [esp+0CH], edx                    ; 0ACF _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0AD3 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0AD7 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0ADA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0ADE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0AE1 _ 89. 04 24
        call    _sheet_slide                            ; 0AE4 _ E8, 00000000(rel)
?_014:  nop                                             ; 0AE9 _ 90
        leave                                           ; 0AEA _ C9
        ret                                             ; 0AEB _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0AEC _ 55
        mov     ebp, esp                                ; 0AED _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0AEF _ 8B. 45, 08
        mov     dword [eax], -536870912                 ; 0AF2 _ C7. 00, E0000000
        mov     eax, dword [ebp+8H]                     ; 0AF8 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 800                      ; 0AFB _ 66: C7. 40, 04, 0320
        mov     eax, dword [ebp+8H]                     ; 0B01 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 600                      ; 0B04 _ 66: C7. 40, 06, 0258
        nop                                             ; 0B0A _ 90
        pop     ebp                                     ; 0B0B _ 5D
        ret                                             ; 0B0C _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0B0D _ 55
        mov     ebp, esp                                ; 0B0E _ 89. E5
        push    ebx                                     ; 0B10 _ 53
        sub     esp, 68                                 ; 0B11 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0B14 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 0B17 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 0B1A _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0B1D _ 89. 45, F4
        jmp     ?_016                                   ; 0B20 _ EB, 4B

?_015:  mov     eax, dword [ebp+1CH]                    ; 0B22 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B25 _ 0F B6. 00
        movzx   eax, al                                 ; 0B28 _ 0F B6. C0
        shl     eax, 4                                  ; 0B2B _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0B2E _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0B34 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 0B38 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0B3B _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0B3E _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0B41 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0B43 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 0B47 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0B4B _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0B4E _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0B52 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0B55 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 0B59 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 0B5D _ 89. 14 24
        call    _showFont8                              ; 0B60 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 0B65 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0B69 _ 83. 45, 1C, 01
?_016:  mov     eax, dword [ebp+1CH]                    ; 0B6D _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0B70 _ 0F B6. 00
        test    al, al                                  ; 0B73 _ 84. C0
        jnz     ?_015                                   ; 0B75 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0B77 _ 8B. 45, 14
        add     eax, 16                                 ; 0B7A _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0B7D _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0B81 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0B84 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0B88 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0B8B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0B8F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0B92 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0B96 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0B99 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0B9D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0BA0 _ 89. 04 24
        call    _sheet_refresh                          ; 0BA3 _ E8, 00000000(rel)
        nop                                             ; 0BA8 _ 90
        add     esp, 68                                 ; 0BA9 _ 83. C4, 44
        pop     ebx                                     ; 0BAC _ 5B
        pop     ebp                                     ; 0BAD _ 5D
        ret                                             ; 0BAE _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0BAF _ 55
        mov     ebp, esp                                ; 0BB0 _ 89. E5
        sub     esp, 24                                 ; 0BB2 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2220         ; 0BB5 _ C7. 44 24, 08, 00000080(d)
        mov     dword [esp+4H], 15                      ; 0BBD _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0BC5 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0BCC _ E8, 00000003
        nop                                             ; 0BD1 _ 90
        leave                                           ; 0BD2 _ C9
        ret                                             ; 0BD3 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0BD4 _ 55
        mov     ebp, esp                                ; 0BD5 _ 89. E5
        sub     esp, 40                                 ; 0BD7 _ 83. EC, 28
        call    _io_load_eflags                         ; 0BDA _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0BDF _ 89. 45, F0
        call    _io_cli                                 ; 0BE2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0BE7 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0BEA _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0BEE _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0BF5 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0BFA _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0BFD _ 89. 45, F4
        jmp     ?_018                                   ; 0C00 _ EB, 62

?_017:  mov     eax, dword [ebp+10H]                    ; 0C02 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0C05 _ 0F B6. 00
        shr     al, 2                                   ; 0C08 _ C0. E8, 02
        movzx   eax, al                                 ; 0C0B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0C0E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0C12 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0C19 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0C1E _ 8B. 45, 10
        add     eax, 1                                  ; 0C21 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0C24 _ 0F B6. 00
        shr     al, 2                                   ; 0C27 _ C0. E8, 02
        movzx   eax, al                                 ; 0C2A _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0C2D _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0C31 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0C38 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0C3D _ 8B. 45, 10
        add     eax, 2                                  ; 0C40 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0C43 _ 0F B6. 00
        shr     al, 2                                   ; 0C46 _ C0. E8, 02
        movzx   eax, al                                 ; 0C49 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0C4C _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0C50 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0C57 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0C5C _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0C60 _ 83. 45, F4, 01
?_018:  mov     eax, dword [ebp-0CH]                    ; 0C64 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0C67 _ 3B. 45, 0C
        jle     ?_017                                   ; 0C6A _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0C6C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0C6F _ 89. 04 24
        call    _io_store_eflags                        ; 0C72 _ E8, 00000000(rel)
        nop                                             ; 0C77 _ 90
        leave                                           ; 0C78 _ C9
        ret                                             ; 0C79 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0C7A _ 55
        mov     ebp, esp                                ; 0C7B _ 89. E5
        sub     esp, 20                                 ; 0C7D _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0C80 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0C83 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0C86 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0C89 _ 89. 45, F8
        jmp     ?_022                                   ; 0C8C _ EB, 31

?_019:  mov     eax, dword [ebp+14H]                    ; 0C8E _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0C91 _ 89. 45, FC
        jmp     ?_021                                   ; 0C94 _ EB, 1D

?_020:  mov     eax, dword [ebp-8H]                     ; 0C96 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0C99 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0C9D _ 8B. 55, FC
        add     eax, edx                                ; 0CA0 _ 01. D0
        mov     edx, eax                                ; 0CA2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CA4 _ 8B. 45, 08
        add     edx, eax                                ; 0CA7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CA9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CAD _ 88. 02
        add     dword [ebp-4H], 1                       ; 0CAF _ 83. 45, FC, 01
?_021:  mov     eax, dword [ebp-4H]                     ; 0CB3 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0CB6 _ 3B. 45, 1C
        jle     ?_020                                   ; 0CB9 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0CBB _ 83. 45, F8, 01
?_022:  mov     eax, dword [ebp-8H]                     ; 0CBF _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0CC2 _ 3B. 45, 20
        jle     ?_019                                   ; 0CC5 _ 7E, C7
        nop                                             ; 0CC7 _ 90
        leave                                           ; 0CC8 _ C9
        ret                                             ; 0CC9 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0CCA _ 55
        mov     ebp, esp                                ; 0CCB _ 89. E5
        sub     esp, 20                                 ; 0CCD _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0CD0 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0CD3 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0CD6 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0CDD _ E9, 0000015C

?_023:  mov     edx, dword [ebp-4H]                     ; 0CE2 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0CE5 _ 8B. 45, 1C
        add     eax, edx                                ; 0CE8 _ 01. D0
        movzx   eax, byte [eax]                         ; 0CEA _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0CED _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0CF0 _ 80. 7D, FB, 00
        jns     ?_024                                   ; 0CF4 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0CF6 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0CF9 _ 8B. 45, FC
        add     eax, edx                                ; 0CFC _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0CFE _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0D02 _ 8B. 55, 10
        add     eax, edx                                ; 0D05 _ 01. D0
        mov     edx, eax                                ; 0D07 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D09 _ 8B. 45, 08
        add     edx, eax                                ; 0D0C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D0E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D12 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0D14 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0D18 _ 83. E0, 40
        test    eax, eax                                ; 0D1B _ 85. C0
        jz      ?_025                                   ; 0D1D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D1F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0D22 _ 8B. 45, FC
        add     eax, edx                                ; 0D25 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D27 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0D2B _ 8B. 55, 10
        add     eax, edx                                ; 0D2E _ 01. D0
        lea     edx, [eax+1H]                           ; 0D30 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0D33 _ 8B. 45, 08
        add     edx, eax                                ; 0D36 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D38 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D3C _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0D3E _ 0F BE. 45, FB
        and     eax, 20H                                ; 0D42 _ 83. E0, 20
        test    eax, eax                                ; 0D45 _ 85. C0
        jz      ?_026                                   ; 0D47 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D49 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0D4C _ 8B. 45, FC
        add     eax, edx                                ; 0D4F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D51 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0D55 _ 8B. 55, 10
        add     eax, edx                                ; 0D58 _ 01. D0
        lea     edx, [eax+2H]                           ; 0D5A _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0D5D _ 8B. 45, 08
        add     edx, eax                                ; 0D60 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D62 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D66 _ 88. 02
?_026:  movsx   eax, byte [ebp-5H]                      ; 0D68 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0D6C _ 83. E0, 10
        test    eax, eax                                ; 0D6F _ 85. C0
        jz      ?_027                                   ; 0D71 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D73 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0D76 _ 8B. 45, FC
        add     eax, edx                                ; 0D79 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0D7B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0D7F _ 8B. 55, 10
        add     eax, edx                                ; 0D82 _ 01. D0
        lea     edx, [eax+3H]                           ; 0D84 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0D87 _ 8B. 45, 08
        add     edx, eax                                ; 0D8A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D8C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D90 _ 88. 02
?_027:  movsx   eax, byte [ebp-5H]                      ; 0D92 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0D96 _ 83. E0, 08
        test    eax, eax                                ; 0D99 _ 85. C0
        jz      ?_028                                   ; 0D9B _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0D9D _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0DA0 _ 8B. 45, FC
        add     eax, edx                                ; 0DA3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0DA5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0DA9 _ 8B. 55, 10
        add     eax, edx                                ; 0DAC _ 01. D0
        lea     edx, [eax+4H]                           ; 0DAE _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DB1 _ 8B. 45, 08
        add     edx, eax                                ; 0DB4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0DB6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0DBA _ 88. 02
?_028:  movsx   eax, byte [ebp-5H]                      ; 0DBC _ 0F BE. 45, FB
        and     eax, 04H                                ; 0DC0 _ 83. E0, 04
        test    eax, eax                                ; 0DC3 _ 85. C0
        jz      ?_029                                   ; 0DC5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0DC7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0DCA _ 8B. 45, FC
        add     eax, edx                                ; 0DCD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0DCF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0DD3 _ 8B. 55, 10
        add     eax, edx                                ; 0DD6 _ 01. D0
        lea     edx, [eax+5H]                           ; 0DD8 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0DDB _ 8B. 45, 08
        add     edx, eax                                ; 0DDE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0DE0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0DE4 _ 88. 02
?_029:  movsx   eax, byte [ebp-5H]                      ; 0DE6 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0DEA _ 83. E0, 02
        test    eax, eax                                ; 0DED _ 85. C0
        jz      ?_030                                   ; 0DEF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0DF1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0DF4 _ 8B. 45, FC
        add     eax, edx                                ; 0DF7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0DF9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0DFD _ 8B. 55, 10
        add     eax, edx                                ; 0E00 _ 01. D0
        lea     edx, [eax+6H]                           ; 0E02 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0E05 _ 8B. 45, 08
        add     edx, eax                                ; 0E08 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E0A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E0E _ 88. 02
?_030:  movsx   eax, byte [ebp-5H]                      ; 0E10 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0E14 _ 83. E0, 01
        test    eax, eax                                ; 0E17 _ 85. C0
        jz      ?_031                                   ; 0E19 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0E1B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0E1E _ 8B. 45, FC
        add     eax, edx                                ; 0E21 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0E23 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0E27 _ 8B. 55, 10
        add     eax, edx                                ; 0E2A _ 01. D0
        lea     edx, [eax+7H]                           ; 0E2C _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0E2F _ 8B. 45, 08
        add     edx, eax                                ; 0E32 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0E34 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0E38 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0E3A _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0E3E _ 83. 7D, FC, 0F
        jle     ?_023                                   ; 0E42 _ 0F 8E, FFFFFE9A
        nop                                             ; 0E48 _ 90
        leave                                           ; 0E49 _ C9
        ret                                             ; 0E4A _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0E4B _ 55
        mov     ebp, esp                                ; 0E4C _ 89. E5
        sub     esp, 20                                 ; 0E4E _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0E51 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0E54 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0E57 _ C7. 45, F8, 00000000
        jmp     ?_039                                   ; 0E5E _ E9, 000000B1

?_033:  mov     dword [ebp-4H], 0                       ; 0E63 _ C7. 45, FC, 00000000
        jmp     ?_038                                   ; 0E6A _ E9, 00000097

?_034:  mov     eax, dword [ebp-8H]                     ; 0E6F _ 8B. 45, F8
        shl     eax, 4                                  ; 0E72 _ C1. E0, 04
        mov     edx, eax                                ; 0E75 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E77 _ 8B. 45, FC
        add     eax, edx                                ; 0E7A _ 01. D0
        add     eax, _cursor.2267                       ; 0E7C _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0E81 _ 0F B6. 00
        cmp     al, 42                                  ; 0E84 _ 3C, 2A
        jnz     ?_035                                   ; 0E86 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0E88 _ 8B. 45, F8
        shl     eax, 4                                  ; 0E8B _ C1. E0, 04
        mov     edx, eax                                ; 0E8E _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0E90 _ 8B. 45, FC
        add     eax, edx                                ; 0E93 _ 01. D0
        mov     edx, eax                                ; 0E95 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0E97 _ 8B. 45, 08
        add     eax, edx                                ; 0E9A _ 01. D0
        mov     byte [eax], 0                           ; 0E9C _ C6. 00, 00
?_035:  mov     eax, dword [ebp-8H]                     ; 0E9F _ 8B. 45, F8
        shl     eax, 4                                  ; 0EA2 _ C1. E0, 04
        mov     edx, eax                                ; 0EA5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0EA7 _ 8B. 45, FC
        add     eax, edx                                ; 0EAA _ 01. D0
        add     eax, _cursor.2267                       ; 0EAC _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0EB1 _ 0F B6. 00
        cmp     al, 79                                  ; 0EB4 _ 3C, 4F
        jnz     ?_036                                   ; 0EB6 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0EB8 _ 8B. 45, F8
        shl     eax, 4                                  ; 0EBB _ C1. E0, 04
        mov     edx, eax                                ; 0EBE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0EC0 _ 8B. 45, FC
        add     eax, edx                                ; 0EC3 _ 01. D0
        mov     edx, eax                                ; 0EC5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EC7 _ 8B. 45, 08
        add     eax, edx                                ; 0ECA _ 01. D0
        mov     byte [eax], 7                           ; 0ECC _ C6. 00, 07
?_036:  mov     eax, dword [ebp-8H]                     ; 0ECF _ 8B. 45, F8
        shl     eax, 4                                  ; 0ED2 _ C1. E0, 04
        mov     edx, eax                                ; 0ED5 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0ED7 _ 8B. 45, FC
        add     eax, edx                                ; 0EDA _ 01. D0
        add     eax, _cursor.2267                       ; 0EDC _ 05, 000000C0(d)
        movzx   eax, byte [eax]                         ; 0EE1 _ 0F B6. 00
        cmp     al, 46                                  ; 0EE4 _ 3C, 2E
        jnz     ?_037                                   ; 0EE6 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0EE8 _ 8B. 45, F8
        shl     eax, 4                                  ; 0EEB _ C1. E0, 04
        mov     edx, eax                                ; 0EEE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0EF0 _ 8B. 45, FC
        add     eax, edx                                ; 0EF3 _ 01. D0
        mov     edx, eax                                ; 0EF5 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0EF7 _ 8B. 45, 08
        add     edx, eax                                ; 0EFA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0EFC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0F00 _ 88. 02
?_037:  add     dword [ebp-4H], 1                       ; 0F02 _ 83. 45, FC, 01
?_038:  cmp     dword [ebp-4H], 15                      ; 0F06 _ 83. 7D, FC, 0F
        jle     ?_034                                   ; 0F0A _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0F10 _ 83. 45, F8, 01
?_039:  cmp     dword [ebp-8H], 15                      ; 0F14 _ 83. 7D, F8, 0F
        jle     ?_033                                   ; 0F18 _ 0F 8E, FFFFFF45
        nop                                             ; 0F1E _ 90
        leave                                           ; 0F1F _ C9
        ret                                             ; 0F20 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0F21 _ 55
        mov     ebp, esp                                ; 0F22 _ 89. E5
        push    ebx                                     ; 0F24 _ 53
        sub     esp, 16                                 ; 0F25 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0F28 _ C7. 45, F4, 00000000
        jmp     ?_043                                   ; 0F2F _ EB, 4E

?_040:  mov     dword [ebp-8H], 0                       ; 0F31 _ C7. 45, F8, 00000000
        jmp     ?_042                                   ; 0F38 _ EB, 39

?_041:  mov     eax, dword [ebp-0CH]                    ; 0F3A _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0F3D _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0F41 _ 8B. 55, F8
        add     eax, edx                                ; 0F44 _ 01. D0
        mov     edx, eax                                ; 0F46 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0F48 _ 8B. 45, 20
        add     eax, edx                                ; 0F4B _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0F4D _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0F50 _ 8B. 55, F4
        add     edx, ecx                                ; 0F53 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0F55 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0F59 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0F5C _ 8B. 4D, F8
        add     ecx, ebx                                ; 0F5F _ 01. D9
        add     edx, ecx                                ; 0F61 _ 01. CA
        mov     ecx, edx                                ; 0F63 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0F65 _ 8B. 55, 08
        add     edx, ecx                                ; 0F68 _ 01. CA
        movzx   eax, byte [eax]                         ; 0F6A _ 0F B6. 00
        mov     byte [edx], al                          ; 0F6D _ 88. 02
        add     dword [ebp-8H], 1                       ; 0F6F _ 83. 45, F8, 01
?_042:  mov     eax, dword [ebp-8H]                     ; 0F73 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0F76 _ 3B. 45, 10
        jl      ?_041                                   ; 0F79 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0F7B _ 83. 45, F4, 01
?_043:  mov     eax, dword [ebp-0CH]                    ; 0F7F _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0F82 _ 3B. 45, 14
        jl      ?_040                                   ; 0F85 _ 7C, AA
        nop                                             ; 0F87 _ 90
        add     esp, 16                                 ; 0F88 _ 83. C4, 10
        pop     ebx                                     ; 0F8B _ 5B
        pop     ebp                                     ; 0F8C _ 5D
        ret                                             ; 0F8D _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0F8E _ 55
        mov     ebp, esp                                ; 0F8F _ 89. E5
        sub     esp, 40                                 ; 0F91 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0F94 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0F99 _ 89. 45, F4
        movzx   eax, word [?_168]                       ; 0F9C _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0FA3 _ 98
        mov     dword [ebp-10H], eax                    ; 0FA4 _ 89. 45, F0
        movzx   eax, word [?_169]                       ; 0FA7 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0FAE _ 98
        mov     dword [ebp-14H], eax                    ; 0FAF _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0FB2 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0FBA _ C7. 04 24, 00000020
        call    _io_out8                                ; 0FC1 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0FC6 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0FCA _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0FD1 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0FD6 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0FD9 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0FDD _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0FE1 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0FE8 _ E8, 00000000(rel)
        nop                                             ; 0FED _ 90
        leave                                           ; 0FEE _ C9
        ret                                             ; 0FEF _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0FF0 _ 55
        mov     ebp, esp                                ; 0FF1 _ 89. E5
        sub     esp, 4                                  ; 0FF3 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0FF6 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0FF9 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0FFC _ 80. 7D, FC, 09
        jle     ?_044                                   ; 1000 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 1002 _ 0F B6. 45, FC
        add     eax, 55                                 ; 1006 _ 83. C0, 37
        jmp     ?_045                                   ; 1009 _ EB, 07

?_044:  movzx   eax, byte [ebp-4H]                      ; 100B _ 0F B6. 45, FC
        add     eax, 48                                 ; 100F _ 83. C0, 30
?_045:  leave                                           ; 1012 _ C9
        ret                                             ; 1013 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 1014 _ 55
        mov     ebp, esp                                ; 1015 _ 89. E5
        sub     esp, 24                                 ; 1017 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 101A _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 101D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 1020 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 1027 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 102B _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 102E _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 1031 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 1035 _ 89. 04 24
        call    _charToHexVal                           ; 1038 _ E8, FFFFFFB3
        mov     byte [?_160], al                        ; 103D _ A2, 00000077(d)
        movzx   eax, byte [ebp-14H]                     ; 1042 _ 0F B6. 45, EC
        shr     al, 4                                   ; 1046 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 1049 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 104C _ 0F B6. 45, EC
        movsx   eax, al                                 ; 1050 _ 0F BE. C0
        mov     dword [esp], eax                        ; 1053 _ 89. 04 24
        call    _charToHexVal                           ; 1056 _ E8, FFFFFF95
        mov     byte [?_159], al                        ; 105B _ A2, 00000076(d)
        mov     eax, _keyval                            ; 1060 _ B8, 00000074(d)
        leave                                           ; 1065 _ C9
        ret                                             ; 1066 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 1067 _ 55
        mov     ebp, esp                                ; 1068 _ 89. E5
        sub     esp, 16                                 ; 106A _ 83. EC, 10
        mov     byte [_str.2315], 48                    ; 106D _ C6. 05, 00000240(d), 30
        mov     byte [?_170], 88                        ; 1074 _ C6. 05, 00000241(d), 58
        mov     byte [?_171], 0                         ; 107B _ C6. 05, 0000024A(d), 00
        mov     dword [ebp-4H], 2                       ; 1082 _ C7. 45, FC, 00000002
        jmp     ?_047                                   ; 1089 _ EB, 0F

?_046:  mov     eax, dword [ebp-4H]                     ; 108B _ 8B. 45, FC
        add     eax, _str.2315                          ; 108E _ 05, 00000240(d)
        mov     byte [eax], 48                          ; 1093 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 1096 _ 83. 45, FC, 01
?_047:  cmp     dword [ebp-4H], 9                       ; 109A _ 83. 7D, FC, 09
        jle     ?_046                                   ; 109E _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 10A0 _ C7. 45, F8, 00000009
        jmp     ?_051                                   ; 10A7 _ EB, 42

?_048:  mov     eax, dword [ebp+8H]                     ; 10A9 _ 8B. 45, 08
        and     eax, 0FH                                ; 10AC _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 10AF _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 10B2 _ 8B. 45, 08
        shr     eax, 4                                  ; 10B5 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 10B8 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 10BB _ 83. 7D, F4, 09
        jle     ?_049                                   ; 10BF _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 10C1 _ 8B. 45, F4
        add     eax, 55                                 ; 10C4 _ 83. C0, 37
        mov     edx, eax                                ; 10C7 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 10C9 _ 8B. 45, F8
        add     eax, _str.2315                          ; 10CC _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 10D1 _ 88. 10
        jmp     ?_050                                   ; 10D3 _ EB, 12

?_049:  mov     eax, dword [ebp-0CH]                    ; 10D5 _ 8B. 45, F4
        add     eax, 48                                 ; 10D8 _ 83. C0, 30
        mov     edx, eax                                ; 10DB _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 10DD _ 8B. 45, F8
        add     eax, _str.2315                          ; 10E0 _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 10E5 _ 88. 10
?_050:  sub     dword [ebp-8H], 1                       ; 10E7 _ 83. 6D, F8, 01
?_051:  cmp     dword [ebp-8H], 1                       ; 10EB _ 83. 7D, F8, 01
        jle     ?_052                                   ; 10EF _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 10F1 _ 83. 7D, 08, 00
        jnz     ?_048                                   ; 10F5 _ 75, B2
?_052:  mov     eax, _str.2315                          ; 10F7 _ B8, 00000240(d)
        leave                                           ; 10FC _ C9
        ret                                             ; 10FD _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 10FE _ 55
        mov     ebp, esp                                ; 10FF _ 89. E5
        sub     esp, 24                                 ; 1101 _ 83. EC, 18
?_053:  mov     dword [esp], 100                        ; 1104 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 110B _ E8, 00000000(rel)
        and     eax, 02H                                ; 1110 _ 83. E0, 02
        test    eax, eax                                ; 1113 _ 85. C0
        jz      ?_054                                   ; 1115 _ 74, 02
        jmp     ?_053                                   ; 1117 _ EB, EB
; _wait_KBC_sendready End of function

?_054:  ; Local function
        nop                                             ; 1119 _ 90
        nop                                             ; 111A _ 90
        leave                                           ; 111B _ C9
        ret                                             ; 111C _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 111D _ 55
        mov     ebp, esp                                ; 111E _ 89. E5
        sub     esp, 24                                 ; 1120 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 1123 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 1128 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 1130 _ C7. 04 24, 00000064
        call    _io_out8                                ; 1137 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 113C _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 1141 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 1149 _ C7. 04 24, 00000060
        call    _io_out8                                ; 1150 _ E8, 00000000(rel)
        nop                                             ; 1155 _ 90
        leave                                           ; 1156 _ C9
        ret                                             ; 1157 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 1158 _ 55
        mov     ebp, esp                                ; 1159 _ 89. E5
        sub     esp, 24                                 ; 115B _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 115E _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 1163 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 116B _ C7. 04 24, 00000064
        call    _io_out8                                ; 1172 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1177 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 117C _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 1184 _ C7. 04 24, 00000060
        call    _io_out8                                ; 118B _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 1190 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 1193 _ C6. 40, 03, 00
        nop                                             ; 1197 _ 90
        leave                                           ; 1198 _ C9
        ret                                             ; 1199 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 119A _ 55
        mov     ebp, esp                                ; 119B _ 89. E5
        sub     esp, 40                                 ; 119D _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 11A0 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 11A8 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 11AF _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 11B4 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 11BC _ C7. 04 24, 00000020
        call    _io_out8                                ; 11C3 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 11C8 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 11CF _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 11D4 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 11D7 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 11DB _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 11DF _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 11E6 _ E8, 00000000(rel)
        nop                                             ; 11EB _ 90
        leave                                           ; 11EC _ C9
        ret                                             ; 11ED _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 11EE _ 55
        mov     ebp, esp                                ; 11EF _ 89. E5
        sub     esp, 4                                  ; 11F1 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 11F4 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 11F7 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 11FA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 11FD _ 0F B6. 40, 03
        test    al, al                                  ; 1201 _ 84. C0
        jnz     ?_056                                   ; 1203 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 1205 _ 80. 7D, FC, FA
        jnz     ?_055                                   ; 1209 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 120B _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 120E _ C6. 40, 03, 01
?_055:  mov     eax, 0                                  ; 1212 _ B8, 00000000
        jmp     ?_063                                   ; 1217 _ E9, 0000010F

?_056:  mov     eax, dword [ebp+8H]                     ; 121C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 121F _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1223 _ 3C, 01
        jnz     ?_058                                   ; 1225 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 1227 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 122B _ 25, 000000C8
        cmp     eax, 8                                  ; 1230 _ 83. F8, 08
        jnz     ?_057                                   ; 1233 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 1235 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1238 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 123C _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 123E _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1241 _ C6. 40, 03, 02
?_057:  mov     eax, 0                                  ; 1245 _ B8, 00000000
        jmp     ?_063                                   ; 124A _ E9, 000000DC

?_058:  mov     eax, dword [ebp+8H]                     ; 124F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1252 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1256 _ 3C, 02
        jnz     ?_059                                   ; 1258 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 125A _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 125D _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1261 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 1264 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1267 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 126B _ B8, 00000000
        jmp     ?_063                                   ; 1270 _ E9, 000000B6

?_059:  mov     eax, dword [ebp+8H]                     ; 1275 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1278 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 127C _ 3C, 03
        jne     ?_062                                   ; 127E _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 1284 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1287 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 128B _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 128E _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1291 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1295 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1298 _ 0F B6. 00
        movzx   eax, al                                 ; 129B _ 0F B6. C0
        and     eax, 07H                                ; 129E _ 83. E0, 07
        mov     edx, eax                                ; 12A1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12A3 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 12A6 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 12A9 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 12AC _ 0F B6. 40, 01
        movzx   eax, al                                 ; 12B0 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 12B3 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 12B6 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 12B9 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 12BC _ 0F B6. 40, 02
        movzx   eax, al                                 ; 12C0 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 12C3 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 12C6 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 12C9 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 12CC _ 0F B6. 00
        movzx   eax, al                                 ; 12CF _ 0F B6. C0
        and     eax, 10H                                ; 12D2 _ 83. E0, 10
        test    eax, eax                                ; 12D5 _ 85. C0
        jz      ?_060                                   ; 12D7 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 12D9 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 12DC _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 12DF _ 0D, FFFFFF00
        mov     edx, eax                                ; 12E4 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 12E6 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 12E9 _ 89. 50, 04
?_060:  mov     eax, dword [ebp+8H]                     ; 12EC _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 12EF _ 0F B6. 00
        movzx   eax, al                                 ; 12F2 _ 0F B6. C0
        and     eax, 20H                                ; 12F5 _ 83. E0, 20
        test    eax, eax                                ; 12F8 _ 85. C0
        jz      ?_061                                   ; 12FA _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 12FC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 12FF _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1302 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1307 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1309 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 130C _ 89. 50, 08
?_061:  mov     eax, dword [ebp+8H]                     ; 130F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1312 _ 8B. 40, 08
        neg     eax                                     ; 1315 _ F7. D8
        mov     edx, eax                                ; 1317 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1319 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 131C _ 89. 50, 08
        mov     eax, 1                                  ; 131F _ B8, 00000001
        jmp     ?_063                                   ; 1324 _ EB, 05

?_062:  mov     eax, 4294967295                         ; 1326 _ B8, FFFFFFFF
?_063:  leave                                           ; 132B _ C9
        ret                                             ; 132C _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 132D _ 55
        mov     ebp, esp                                ; 132E _ 89. E5
        sub     esp, 72                                 ; 1330 _ 83. EC, 48
        mov     dword [ebp-0CH], 0                      ; 1333 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 133A _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1341 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 1348 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 134F _ 8B. 15, 0000011C(d)
        mov     eax, dword [ebp+0CH]                    ; 1355 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1358 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 135A _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 135E _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1361 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1365 _ 89. 04 24
        call    _init_screen8                           ; 1368 _ E8, FFFFF2EF
        mov     eax, dword [ebp+20H]                    ; 136D _ 8B. 45, 20
        movsx   eax, al                                 ; 1370 _ 0F BE. C0
        mov     dword [esp+14H], ?_164                  ; 1373 _ C7. 44 24, 14, 0000001B(d)
        mov     dword [esp+10H], eax                    ; 137B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 137F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1382 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1386 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1389 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 138D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1390 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1394 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1397 _ 89. 04 24
        call    _showString                             ; 139A _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 139F _ 8B. 45, 18
        mov     dword [esp], eax                        ; 13A2 _ 89. 04 24
        call    _intToHexStr                            ; 13A5 _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 13AA _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 13AD _ 8B. 45, 20
        movsx   eax, al                                 ; 13B0 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 13B3 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 13B6 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13BA _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13BE _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13C1 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13C5 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13C8 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13CC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13D6 _ 89. 04 24
        call    _showString                             ; 13D9 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 13DE _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 13E2 _ 8B. 45, 20
        movsx   eax, al                                 ; 13E5 _ 0F BE. C0
        mov     dword [esp+14H], ?_165                  ; 13E8 _ C7. 44 24, 14, 00000025(d)
        mov     dword [esp+10H], eax                    ; 13F0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13F4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13F7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13FB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13FE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1402 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1405 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1409 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 140C _ 89. 04 24
        call    _showString                             ; 140F _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1414 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 1417 _ 8B. 00
        mov     dword [esp], eax                        ; 1419 _ 89. 04 24
        call    _intToHexStr                            ; 141C _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1421 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1424 _ 8B. 45, 20
        movsx   eax, al                                 ; 1427 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 142A _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 142D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1431 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1435 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1438 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 143C _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 143F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1443 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1446 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 144A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 144D _ 89. 04 24
        call    _showString                             ; 1450 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 1455 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1459 _ 8B. 45, 20
        movsx   eax, al                                 ; 145C _ 0F BE. C0
        mov     dword [esp+14H], ?_166                  ; 145F _ C7. 44 24, 14, 00000031(d)
        mov     dword [esp+10H], eax                    ; 1467 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 146B _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 146E _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1472 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1475 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1479 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 147C _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1480 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1483 _ 89. 04 24
        call    _showString                             ; 1486 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 148B _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 148E _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1491 _ 89. 04 24
        call    _intToHexStr                            ; 1494 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1499 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 149C _ 8B. 45, 20
        movsx   eax, al                                 ; 149F _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 14A2 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 14A5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 14A9 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14AD _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14B0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14B4 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14B7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14BB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14BE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14C2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14C5 _ 89. 04 24
        call    _showString                             ; 14C8 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 14CD _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 14D1 _ 8B. 45, 20
        movsx   eax, al                                 ; 14D4 _ 0F BE. C0
        mov     dword [esp+14H], ?_167                  ; 14D7 _ C7. 44 24, 14, 0000003D(d)
        mov     dword [esp+10H], eax                    ; 14DF _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14E3 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14E6 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 14EA _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 14ED _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14F1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14F4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14F8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14FB _ 89. 04 24
        call    _showString                             ; 14FE _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1503 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1506 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1509 _ 89. 04 24
        call    _intToHexStr                            ; 150C _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1511 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1514 _ 8B. 45, 20
        movsx   eax, al                                 ; 1517 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 151A _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 151D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1521 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1525 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1528 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 152C _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 152F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1533 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1536 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 153A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 153D _ 89. 04 24
        call    _showString                             ; 1540 _ E8, FFFFF5C8
        nop                                             ; 1545 _ 90
        leave                                           ; 1546 _ C9
        ret                                             ; 1547 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 1548 _ 55
        mov     ebp, esp                                ; 1549 _ 89. E5
        sub     esp, 56                                 ; 154B _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 154E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1551 _ 89. 04 24
        call    _sheet_alloc                            ; 1554 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1559 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 155C _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1561 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1569 _ 89. 04 24
        call    _memman_alloc_4k                        ; 156C _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1571 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 1574 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 157C _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 1584 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 158C _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 158F _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 1593 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1596 _ 89. 04 24
        call    _sheet_setbuf                           ; 1599 _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 159E _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 15A1 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 15A5 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15AF _ 89. 04 24
        call    _make_window8                           ; 15B2 _ E8, 00000041
        mov     dword [esp+0CH], 72                     ; 15B7 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 15BF _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 15C7 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15CA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15CE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15D1 _ 89. 04 24
        call    _sheet_slide                            ; 15D4 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 15D9 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 15E1 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15E4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15E8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15EB _ 89. 04 24
        call    _sheet_updown                           ; 15EE _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 15F3 _ 8B. 45, F4
        leave                                           ; 15F6 _ C9
        ret                                             ; 15F7 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 15F8 _ 55
        mov     ebp, esp                                ; 15F9 _ 89. E5
        push    ebx                                     ; 15FB _ 53
        sub     esp, 68                                 ; 15FC _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 15FF _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1602 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 1605 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1608 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 160B _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 160E _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 1611 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1614 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1617 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 161A _ 8B. 00
        mov     dword [esp+18H], 0                      ; 161C _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1624 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1628 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1630 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1638 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1640 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1643 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1647 _ 89. 04 24
        call    _boxfill8                               ; 164A _ E8, FFFFF62B
        mov     eax, dword [ebp-18H]                    ; 164F _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1652 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1655 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1658 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 165A _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1662 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1666 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 166E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1676 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 167E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1681 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1685 _ 89. 04 24
        call    _boxfill8                               ; 1688 _ E8, FFFFF5ED
        mov     eax, dword [ebp-1CH]                    ; 168D _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1690 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1693 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1696 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1698 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 169C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 16A4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 16AC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 16B4 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 16BC _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16BF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16C3 _ 89. 04 24
        call    _boxfill8                               ; 16C6 _ E8, FFFFF5AF
        mov     eax, dword [ebp-1CH]                    ; 16CB _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 16CE _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16D1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16D4 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 16D6 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 16DA _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 16E2 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 16EA _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 16F2 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 16FA _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16FD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1701 _ 89. 04 24
        call    _boxfill8                               ; 1704 _ E8, FFFFF571
        mov     eax, dword [ebp-1CH]                    ; 1709 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 170C _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 170F _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1712 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 1715 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1718 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 171B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 171E _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1720 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1724 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1728 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1730 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1734 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 173C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 173F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1743 _ 89. 04 24
        call    _boxfill8                               ; 1746 _ E8, FFFFF52F
        mov     eax, dword [ebp-1CH]                    ; 174B _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 174E _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1751 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1754 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1757 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 175A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 175D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1760 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1762 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1766 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 176A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1772 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1776 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 177E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1781 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1785 _ 89. 04 24
        call    _boxfill8                               ; 1788 _ E8, FFFFF4ED
        mov     eax, dword [ebp-1CH]                    ; 178D _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1790 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1793 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1796 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1799 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 179C _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 179E _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 17A2 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 17A6 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 17AE _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 17B6 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 17BE _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17C1 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17C5 _ 89. 04 24
        call    _boxfill8                               ; 17C8 _ E8, FFFFF4AD
        mov     eax, dword [ebp-18H]                    ; 17CD _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 17D0 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 17D3 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17D6 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 17D8 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 17E0 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 17E4 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 17EC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 17F4 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 17FC _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17FF _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1803 _ 89. 04 24
        call    _boxfill8                               ; 1806 _ E8, FFFFF46F
        mov     eax, dword [ebp-1CH]                    ; 180B _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 180E _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1811 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 1814 _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1817 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 181A _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 181D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1820 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1822 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1826 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 182A _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 182E _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1836 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 183E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1841 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1845 _ 89. 04 24
        call    _boxfill8                               ; 1848 _ E8, FFFFF42D
        mov     eax, dword [ebp-1CH]                    ; 184D _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1850 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1853 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1856 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1859 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 185C _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 185F _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1862 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1864 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1868 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 186C _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1870 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1878 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1880 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1883 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1887 _ 89. 04 24
        call    _boxfill8                               ; 188A _ E8, FFFFF3EB
        mov     eax, dword [ebp+10H]                    ; 188F _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1892 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1896 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 189E _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 18A6 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 18AE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18B1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18B5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18B8 _ 89. 04 24
        call    _showString                             ; 18BB _ E8, FFFFF24D
        mov     dword [ebp-10H], 0                      ; 18C0 _ C7. 45, F0, 00000000
        jmp     ?_071                                   ; 18C7 _ E9, 00000084

?_064:  mov     dword [ebp-0CH], 0                      ; 18CC _ C7. 45, F4, 00000000
        jmp     ?_070                                   ; 18D3 _ EB, 71

?_065:  mov     eax, dword [ebp-10H]                    ; 18D5 _ 8B. 45, F0
        shl     eax, 4                                  ; 18D8 _ C1. E0, 04
        mov     edx, eax                                ; 18DB _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 18DD _ 8B. 45, F4
        add     eax, edx                                ; 18E0 _ 01. D0
        add     eax, _closebtn.2377                     ; 18E2 _ 05, 000001C0(d)
        movzx   eax, byte [eax]                         ; 18E7 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 18EA _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 18ED _ 80. 7D, EF, 40
        jnz     ?_066                                   ; 18F1 _ 75, 06
        mov     byte [ebp-11H], 0                       ; 18F3 _ C6. 45, EF, 00
        jmp     ?_069                                   ; 18F7 _ EB, 1C

?_066:  cmp     byte [ebp-11H], 36                      ; 18F9 _ 80. 7D, EF, 24
        jnz     ?_067                                   ; 18FD _ 75, 06
        mov     byte [ebp-11H], 15                      ; 18FF _ C6. 45, EF, 0F
        jmp     ?_069                                   ; 1903 _ EB, 10

?_067:  cmp     byte [ebp-11H], 81                      ; 1905 _ 80. 7D, EF, 51
        jnz     ?_068                                   ; 1909 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 190B _ C6. 45, EF, 08
        jmp     ?_069                                   ; 190F _ EB, 04

?_068:  mov     byte [ebp-11H], 7                       ; 1911 _ C6. 45, EF, 07
?_069:  mov     eax, dword [ebp+0CH]                    ; 1915 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1918 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 191A _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 191D _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1920 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1923 _ 8B. 40, 04
        imul    eax, edx                                ; 1926 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1929 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 192C _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 192F _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1932 _ 8B. 55, F4
        add     edx, ebx                                ; 1935 _ 01. DA
        add     eax, edx                                ; 1937 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1939 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 193C _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1940 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1942 _ 83. 45, F4, 01
?_070:  cmp     dword [ebp-0CH], 15                     ; 1946 _ 83. 7D, F4, 0F
        jle     ?_065                                   ; 194A _ 7E, 89
        add     dword [ebp-10H], 1                      ; 194C _ 83. 45, F0, 01
?_071:  cmp     dword [ebp-10H], 13                     ; 1950 _ 83. 7D, F0, 0D
        jle     ?_064                                   ; 1954 _ 0F 8E, FFFFFF72
        nop                                             ; 195A _ 90
        add     esp, 68                                 ; 195B _ 83. C4, 44
        pop     ebx                                     ; 195E _ 5B
        pop     ebp                                     ; 195F _ 5D
        ret                                             ; 1960 _ C3
; _make_window8 End of function

        nop                                             ; 1961 _ 90
        nop                                             ; 1962 _ 90
        nop                                             ; 1963 _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 1964 _ 55
        mov     ebp, esp                                ; 1965 _ 89. E5
        sub     esp, 40                                 ; 1967 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 196A _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 1972 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1975 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1978 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 197D _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 1980 _ 83. 7D, F0, 00
        jnz     ?_072                                   ; 1984 _ 75, 0A
        mov     eax, 0                                  ; 1986 _ B8, 00000000
        jmp     ?_076                                   ; 198B _ E9, 0000009D

?_072:  mov     eax, dword [ebp+10H]                    ; 1990 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 1993 _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 1997 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 199B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 199E _ 89. 04 24
        call    _memman_alloc_4k                        ; 19A1 _ E8, 00000000(rel)
        mov     edx, eax                                ; 19A6 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 19A8 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 19AB _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 19AE _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 19B1 _ 8B. 40, 04
        test    eax, eax                                ; 19B4 _ 85. C0
        jnz     ?_073                                   ; 19B6 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 19B8 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 19BB _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 19C3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19C7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19CA _ 89. 04 24
        call    _memman_free_4k                         ; 19CD _ E8, 00000000(rel)
        mov     eax, 0                                  ; 19D2 _ B8, 00000000
        jmp     ?_076                                   ; 19D7 _ EB, 54

?_073:  mov     eax, dword [ebp-10H]                    ; 19D9 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 19DC _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 19DF _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 19E1 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 19E4 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 19E7 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 19EA _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 19ED _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 19F0 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 19F3 _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 19F6 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 19FD _ C7. 45, F4, 00000000
        jmp     ?_075                                   ; 1A04 _ EB, 1B

?_074:  mov     edx, dword [ebp-10H]                    ; 1A06 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1A09 _ 8B. 45, F4
        add     eax, 33                                 ; 1A0C _ 83. C0, 21
        shl     eax, 5                                  ; 1A0F _ C1. E0, 05
        add     eax, edx                                ; 1A12 _ 01. D0
        add     eax, 16                                 ; 1A14 _ 83. C0, 10
        mov     dword [eax], 0                          ; 1A17 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 1A1D _ 83. 45, F4, 01
?_075:  cmp     dword [ebp-0CH], 255                    ; 1A21 _ 81. 7D, F4, 000000FF
        jle     ?_074                                   ; 1A28 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 1A2A _ 8B. 45, F0
?_076:  leave                                           ; 1A2D _ C9
        ret                                             ; 1A2E _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 1A2F _ 55
        mov     ebp, esp                                ; 1A30 _ 89. E5
        sub     esp, 16                                 ; 1A32 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1A35 _ C7. 45, FC, 00000000
        jmp     ?_079                                   ; 1A3C _ EB, 5B

?_077:  mov     edx, dword [ebp+8H]                     ; 1A3E _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1A41 _ 8B. 45, FC
        add     eax, 33                                 ; 1A44 _ 83. C0, 21
        shl     eax, 5                                  ; 1A47 _ C1. E0, 05
        add     eax, edx                                ; 1A4A _ 01. D0
        add     eax, 16                                 ; 1A4C _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1A4F _ 8B. 00
        test    eax, eax                                ; 1A51 _ 85. C0
        jnz     ?_078                                   ; 1A53 _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 1A55 _ 8B. 45, FC
        shl     eax, 5                                  ; 1A58 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1A5B _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1A61 _ 8B. 45, 08
        add     eax, edx                                ; 1A64 _ 01. D0
        add     eax, 4                                  ; 1A66 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 1A69 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1A6C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1A6F _ 8B. 55, FC
        add     edx, 4                                  ; 1A72 _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1A75 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 1A78 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 1A7C _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1A7F _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1A86 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1A89 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1A90 _ 8B. 45, F8
        jmp     ?_080                                   ; 1A93 _ EB, 12

?_078:  add     dword [ebp-4H], 1                       ; 1A95 _ 83. 45, FC, 01
?_079:  cmp     dword [ebp-4H], 255                     ; 1A99 _ 81. 7D, FC, 000000FF
        jle     ?_077                                   ; 1AA0 _ 7E, 9C
        mov     eax, 0                                  ; 1AA2 _ B8, 00000000
?_080:  leave                                           ; 1AA7 _ C9
        ret                                             ; 1AA8 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1AA9 _ 55
        mov     ebp, esp                                ; 1AAA _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1AAC _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1AAF _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1AB2 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1AB4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1AB7 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1ABA _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1ABD _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1AC0 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1AC3 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1AC6 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1AC9 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1ACC _ 89. 50, 14
        nop                                             ; 1ACF _ 90
        pop     ebp                                     ; 1AD0 _ 5D
        ret                                             ; 1AD1 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1AD2 _ 55
        mov     ebp, esp                                ; 1AD3 _ 89. E5
        push    edi                                     ; 1AD5 _ 57
        push    esi                                     ; 1AD6 _ 56
        push    ebx                                     ; 1AD7 _ 53
        sub     esp, 60                                 ; 1AD8 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1ADB _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1ADE _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 1AE1 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1AE4 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1AE7 _ 8B. 40, 10
        add     eax, 1                                  ; 1AEA _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1AED _ 39. 45, 10
        jle     ?_081                                   ; 1AF0 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1AF2 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1AF5 _ 8B. 40, 10
        add     eax, 1                                  ; 1AF8 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1AFB _ 89. 45, 10
?_081:  cmp     dword [ebp+10H], -1                     ; 1AFE _ 83. 7D, 10, FF
        jge     ?_082                                   ; 1B02 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1B04 _ C7. 45, 10, FFFFFFFF
?_082:  mov     eax, dword [ebp+0CH]                    ; 1B0B _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1B0E _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1B11 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 1B14 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1B17 _ 3B. 45, 10
        jle     ?_089                                   ; 1B1A _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 1B20 _ 83. 7D, 10, 00
        js      ?_085                                   ; 1B24 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 1B2A _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1B2D _ 89. 45, E4
        jmp     ?_084                                   ; 1B30 _ EB, 34

?_083:  mov     eax, dword [ebp-1CH]                    ; 1B32 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1B35 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1B38 _ 8B. 45, 08
        add     edx, 4                                  ; 1B3B _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1B3E _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1B42 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1B45 _ 8B. 55, E4
        add     edx, 4                                  ; 1B48 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1B4B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1B4F _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1B52 _ 8B. 55, E4
        add     edx, 4                                  ; 1B55 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1B58 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1B5C _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1B5F _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1B62 _ 83. 6D, E4, 01
?_084:  mov     eax, dword [ebp-1CH]                    ; 1B66 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1B69 _ 3B. 45, 10
        jg      ?_083                                   ; 1B6C _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1B6E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1B71 _ 8B. 55, 10
        add     edx, 4                                  ; 1B74 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1B77 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1B7A _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 1B7E _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1B81 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1B84 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B87 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B8A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B8D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1B90 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1B93 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1B96 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B99 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B9C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1B9F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1BA2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BA5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BA8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1BAB _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 1BAE _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1BB2 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1BB6 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1BBA _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1BBE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BC2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BC5 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1BC8 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 1BCD _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1BD0 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1BD3 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BD6 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BD9 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1BDC _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1BDF _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1BE2 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1BE5 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1BE8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BEB _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1BEE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1BF1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BF4 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BF7 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1BFA _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 1BFD _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 1C00 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1C04 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1C08 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C0C _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C10 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1C14 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C18 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C1B _ 89. 04 24
        call    _sheet_refreshsub                       ; 1C1E _ E8, 00000465
        jmp     ?_096                                   ; 1C23 _ E9, 0000027D

?_085:  mov     eax, dword [ebp+8H]                     ; 1C28 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C2B _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 1C2E _ 39. 45, E0
        jge     ?_088                                   ; 1C31 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 1C33 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1C36 _ 89. 45, E4
        jmp     ?_087                                   ; 1C39 _ EB, 34

?_086:  mov     eax, dword [ebp-1CH]                    ; 1C3B _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1C3E _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C41 _ 8B. 45, 08
        add     edx, 4                                  ; 1C44 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1C47 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C4B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C4E _ 8B. 55, E4
        add     edx, 4                                  ; 1C51 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1C54 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C58 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C5B _ 8B. 55, E4
        add     edx, 4                                  ; 1C5E _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1C61 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1C65 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1C68 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1C6B _ 83. 45, E4, 01
?_087:  mov     eax, dword [ebp+8H]                     ; 1C6F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C72 _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 1C75 _ 39. 45, E4
        jl      ?_086                                   ; 1C78 _ 7C, C1
?_088:  mov     eax, dword [ebp+8H]                     ; 1C7A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C7D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1C80 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C83 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1C86 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C89 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C8C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C8F _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C92 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C95 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C98 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C9B _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C9E _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CA1 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CA4 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CA7 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CAA _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CAD _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CB0 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 1CB3 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1CBB _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1CBF _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CC3 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CC7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CCB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CCE _ 89. 04 24
        call    _sheet_refreshmap                       ; 1CD1 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 1CD6 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 1CD9 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1CDC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CDF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CE2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CE5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CE8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CEB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CEE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CF1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CF4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CF7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CFA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CFD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D00 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1D03 _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 1D06 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 1D0A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1D12 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D16 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D1A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1D1E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D22 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D25 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1D28 _ E8, 0000035B
        jmp     ?_096                                   ; 1D2D _ E9, 00000173

?_089:  mov     eax, dword [ebp-20H]                    ; 1D32 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1D35 _ 3B. 45, 10
        jge     ?_096                                   ; 1D38 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 1D3E _ 83. 7D, E0, 00
        js      ?_092                                   ; 1D42 _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 1D44 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1D47 _ 89. 45, E4
        jmp     ?_091                                   ; 1D4A _ EB, 34

?_090:  mov     eax, dword [ebp-1CH]                    ; 1D4C _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1D4F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D52 _ 8B. 45, 08
        add     edx, 4                                  ; 1D55 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1D58 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D5C _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D5F _ 8B. 55, E4
        add     edx, 4                                  ; 1D62 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1D65 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D69 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D6C _ 8B. 55, E4
        add     edx, 4                                  ; 1D6F _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D72 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1D76 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1D79 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1D7C _ 83. 45, E4, 01
?_091:  mov     eax, dword [ebp-1CH]                    ; 1D80 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1D83 _ 3B. 45, 10
        jl      ?_090                                   ; 1D86 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1D88 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D8B _ 8B. 55, 10
        add     edx, 4                                  ; 1D8E _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1D91 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1D94 _ 89. 4C 90, 04
        jmp     ?_095                                   ; 1D98 _ EB, 6C

?_092:  mov     eax, dword [ebp+8H]                     ; 1D9A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D9D _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 1DA0 _ 89. 45, E4
        jmp     ?_094                                   ; 1DA3 _ EB, 3A

?_093:  mov     eax, dword [ebp-1CH]                    ; 1DA5 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 1DA8 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1DAB _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1DAE _ 8B. 55, E4
        add     edx, 4                                  ; 1DB1 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1DB4 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1DB8 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1DBB _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1DBE _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 1DC2 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1DC5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DC8 _ 8B. 45, 08
        add     edx, 4                                  ; 1DCB _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1DCE _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1DD2 _ 8B. 55, E4
        add     edx, 1                                  ; 1DD5 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1DD8 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1DDB _ 83. 6D, E4, 01
?_094:  mov     eax, dword [ebp-1CH]                    ; 1DDF _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1DE2 _ 3B. 45, 10
        jge     ?_093                                   ; 1DE5 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1DE7 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1DEA _ 8B. 55, 10
        add     edx, 4                                  ; 1DED _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1DF0 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1DF3 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1DF7 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1DFA _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1DFD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1E00 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1E03 _ 89. 50, 10
?_095:  mov     eax, dword [ebp+0CH]                    ; 1E06 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E09 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E0C _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E0F _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E12 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E15 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E18 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E1B _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E1E _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1E21 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E24 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E27 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E2A _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E2D _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1E30 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1E33 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E37 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E3B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E3F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1E43 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E47 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E4A _ 89. 04 24
        call    _sheet_refreshmap                       ; 1E4D _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 1E52 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E55 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E58 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E5B _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E5E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E61 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E64 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E67 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E6A _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1E6D _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E70 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E73 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E76 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E79 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1E7C _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 1E7F _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 1E83 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1E86 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E8A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E8E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E92 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1E96 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E9A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E9D _ 89. 04 24
        call    _sheet_refreshsub                       ; 1EA0 _ E8, 000001E3
?_096:  nop                                             ; 1EA5 _ 90
        add     esp, 60                                 ; 1EA6 _ 83. C4, 3C
        pop     ebx                                     ; 1EA9 _ 5B
        pop     esi                                     ; 1EAA _ 5E
        pop     edi                                     ; 1EAB _ 5F
        pop     ebp                                     ; 1EAC _ 5D
        ret                                             ; 1EAD _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1EAE _ 55
        mov     ebp, esp                                ; 1EAF _ 89. E5
        push    edi                                     ; 1EB1 _ 57
        push    esi                                     ; 1EB2 _ 56
        push    ebx                                     ; 1EB3 _ 53
        sub     esp, 60                                 ; 1EB4 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1EB7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1EBA _ 8B. 40, 18
        test    eax, eax                                ; 1EBD _ 85. C0
        js      ?_097                                   ; 1EBF _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 1EC1 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 1EC4 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 1EC7 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 1ECA _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 1ECD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1ED0 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1ED3 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1ED6 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1ED9 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1EDC _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1EDF _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1EE2 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1EE5 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EE8 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1EEB _ 8B. 45, 14
        add     edx, eax                                ; 1EEE _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1EF0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1EF3 _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 1EF6 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1EF9 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 1EFC _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 1EFF _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1F03 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1F07 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1F0B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1F0F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1F13 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F17 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F1A _ 89. 04 24
        call    _sheet_refreshsub                       ; 1F1D _ E8, 00000166
?_097:  mov     eax, 0                                  ; 1F22 _ B8, 00000000
        add     esp, 60                                 ; 1F27 _ 83. C4, 3C
        pop     ebx                                     ; 1F2A _ 5B
        pop     esi                                     ; 1F2B _ 5E
        pop     edi                                     ; 1F2C _ 5F
        pop     ebp                                     ; 1F2D _ 5D
        ret                                             ; 1F2E _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 1F2F _ 55
        mov     ebp, esp                                ; 1F30 _ 89. E5
        push    esi                                     ; 1F32 _ 56
        push    ebx                                     ; 1F33 _ 53
        sub     esp, 48                                 ; 1F34 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 1F37 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F3A _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1F3D _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1F40 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1F43 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1F46 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1F49 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1F4C _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1F4F _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F52 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1F55 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1F58 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F5B _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F5E _ 8B. 40, 18
        test    eax, eax                                ; 1F61 _ 85. C0
        js      ?_098                                   ; 1F63 _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 1F69 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F6C _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1F6F _ 8B. 45, F0
        add     edx, eax                                ; 1F72 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F74 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1F77 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 1F7A _ 8B. 45, F4
        add     eax, ecx                                ; 1F7D _ 01. C8
        mov     dword [esp+14H], 0                      ; 1F7F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 1F87 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1F8B _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1F8F _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1F92 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1F96 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1F99 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F9D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1FA0 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1FA3 _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 1FA8 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1FAB _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1FAE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1FB1 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1FB4 _ 8B. 45, 14
        add     edx, eax                                ; 1FB7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FB9 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1FBC _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 1FBF _ 8B. 45, 10
        add     eax, ebx                                ; 1FC2 _ 01. D8
        mov     dword [esp+14H], ecx                    ; 1FC4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1FC8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1FCC _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1FD0 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1FD3 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1FD7 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1FDA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1FDE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1FE1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1FE4 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 1FE9 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1FEC _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 1FEF _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1FF2 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1FF5 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1FF8 _ 8B. 45, F0
        add     edx, eax                                ; 1FFB _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FFD _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 2000 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 2003 _ 8B. 45, F4
        add     eax, ebx                                ; 2006 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 2008 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 200C _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 2014 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2018 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 201C _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 201F _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 2023 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2026 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 202A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 202D _ 89. 04 24
        call    _sheet_refreshsub                       ; 2030 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2035 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2038 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 203B _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 203E _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 2041 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2044 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2047 _ 8B. 45, 14
        add     edx, eax                                ; 204A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 204C _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 204F _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 2052 _ 8B. 45, 10
        add     eax, esi                                ; 2055 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 2057 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 205B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 205F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 2063 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2067 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 206A _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 206E _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2071 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2075 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2078 _ 89. 04 24
        call    _sheet_refreshsub                       ; 207B _ E8, 00000008
?_098:  nop                                             ; 2080 _ 90
        add     esp, 48                                 ; 2081 _ 83. C4, 30
        pop     ebx                                     ; 2084 _ 5B
        pop     esi                                     ; 2085 _ 5E
        pop     ebp                                     ; 2086 _ 5D
        ret                                             ; 2087 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2088 _ 55
        mov     ebp, esp                                ; 2089 _ 89. E5
        sub     esp, 48                                 ; 208B _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 208E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2091 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 2093 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 2096 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2099 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 209C _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 209F _ 83. 7D, 0C, 00
        jns     ?_099                                   ; 20A3 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 20A5 _ C7. 45, 0C, 00000000
?_099:  cmp     dword [ebp+10H], 8                      ; 20AC _ 83. 7D, 10, 08
        jg      ?_100                                   ; 20B0 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 20B2 _ C7. 45, 10, 00000000
?_100:  mov     eax, dword [ebp+8H]                     ; 20B9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 20BC _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 20BF _ 39. 45, 14
        jle     ?_101                                   ; 20C2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 20C4 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 20C7 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 20CA _ 89. 45, 14
?_101:  mov     eax, dword [ebp+8H]                     ; 20CD _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 20D0 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 20D3 _ 39. 45, 18
        jle     ?_102                                   ; 20D6 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 20D8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 20DB _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 20DE _ 89. 45, 18
?_102:  mov     eax, dword [ebp+1CH]                    ; 20E1 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 20E4 _ 89. 45, FC
        jmp     ?_109                                   ; 20E7 _ E9, 0000010F

?_103:  mov     eax, dword [ebp+8H]                     ; 20EC _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 20EF _ 8B. 55, FC
        add     edx, 4                                  ; 20F2 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 20F5 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 20F9 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 20FC _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 20FF _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 2101 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 2104 _ 8B. 45, 08
        add     eax, 1044                               ; 2107 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 210C _ 8B. 55, E8
        sub     edx, eax                                ; 210F _ 29. C2
        mov     eax, edx                                ; 2111 _ 89. D0
        sar     eax, 5                                  ; 2113 _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 2116 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 2119 _ C7. 45, F4, 00000000
        jmp     ?_108                                   ; 2120 _ E9, 000000C3

?_104:  mov     eax, dword [ebp-18H]                    ; 2125 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2128 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 212B _ 8B. 45, F4
        add     eax, edx                                ; 212E _ 01. D0
        mov     dword [ebp-24H], eax                    ; 2130 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 2133 _ C7. 45, F8, 00000000
        jmp     ?_107                                   ; 213A _ E9, 00000096

?_105:  mov     eax, dword [ebp-18H]                    ; 213F _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 2142 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2145 _ 8B. 45, F8
        add     eax, edx                                ; 2148 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 214A _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 214D _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 2150 _ 3B. 45, D8
        jg      ?_106                                   ; 2153 _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2155 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2158 _ 3B. 45, 14
        jge     ?_106                                   ; 215B _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 215D _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2160 _ 3B. 45, DC
        jg      ?_106                                   ; 2163 _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2165 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2168 _ 3B. 45, 18
        jge     ?_106                                   ; 216B _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 216D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2170 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2173 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2177 _ 8B. 55, F8
        add     eax, edx                                ; 217A _ 01. D0
        mov     edx, eax                                ; 217C _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 217E _ 8B. 45, E4
        add     eax, edx                                ; 2181 _ 01. D0
        movzx   eax, byte [eax]                         ; 2183 _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2186 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2189 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 218C _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 218F _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2193 _ 8B. 55, D8
        add     eax, edx                                ; 2196 _ 01. D0
        mov     edx, eax                                ; 2198 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 219A _ 8B. 45, EC
        add     eax, edx                                ; 219D _ 01. D0
        movzx   eax, byte [eax]                         ; 219F _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 21A2 _ 38. 45, E3
        jnz     ?_106                                   ; 21A5 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 21A7 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 21AB _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 21AE _ 8B. 52, 14
        cmp     eax, edx                                ; 21B1 _ 39. D0
        jz      ?_106                                   ; 21B3 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 21B5 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21B8 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 21BB _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 21BF _ 8B. 55, D8
        add     eax, edx                                ; 21C2 _ 01. D0
        mov     edx, eax                                ; 21C4 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 21C6 _ 8B. 45, F0
        add     edx, eax                                ; 21C9 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 21CB _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 21CF _ 88. 02
?_106:  add     dword [ebp-8H], 1                       ; 21D1 _ 83. 45, F8, 01
?_107:  mov     eax, dword [ebp-18H]                    ; 21D5 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 21D8 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 21DB _ 39. 45, F8
        jl      ?_105                                   ; 21DE _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 21E4 _ 83. 45, F4, 01
?_108:  mov     eax, dword [ebp-18H]                    ; 21E8 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 21EB _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 21EE _ 39. 45, F4
        jl      ?_104                                   ; 21F1 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 21F7 _ 83. 45, FC, 01
?_109:  mov     eax, dword [ebp-4H]                     ; 21FB _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 21FE _ 3B. 45, 20
        jle     ?_103                                   ; 2201 _ 0F 8E, FFFFFEE5
        nop                                             ; 2207 _ 90
        leave                                           ; 2208 _ C9
        ret                                             ; 2209 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 220A _ 55
        mov     ebp, esp                                ; 220B _ 89. E5
        sub     esp, 64                                 ; 220D _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 2210 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2213 _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 2216 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 2219 _ 83. 7D, 0C, 00
        jns     ?_110                                   ; 221D _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 221F _ C7. 45, 0C, 00000000
?_110:  cmp     dword [ebp+10H], 0                      ; 2226 _ 83. 7D, 10, 00
        jns     ?_111                                   ; 222A _ 79, 07
        mov     dword [ebp+10H], 0                      ; 222C _ C7. 45, 10, 00000000
?_111:  mov     eax, dword [ebp+8H]                     ; 2233 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2236 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2239 _ 39. 45, 14
        jle     ?_112                                   ; 223C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 223E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2241 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2244 _ 89. 45, 14
?_112:  mov     eax, dword [ebp+8H]                     ; 2247 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 224A _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 224D _ 39. 45, 18
        jle     ?_113                                   ; 2250 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2252 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2255 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2258 _ 89. 45, 18
?_113:  mov     eax, dword [ebp+1CH]                    ; 225B _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 225E _ 89. 45, FC
        jmp     ?_124                                   ; 2261 _ E9, 00000139

?_114:  mov     eax, dword [ebp+8H]                     ; 2266 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2269 _ 8B. 55, FC
        add     edx, 4                                  ; 226C _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 226F _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 2273 _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 2276 _ 8B. 45, 08
        add     eax, 1044                               ; 2279 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 227E _ 8B. 55, DC
        sub     edx, eax                                ; 2281 _ 29. C2
        mov     eax, edx                                ; 2283 _ 89. D0
        sar     eax, 5                                  ; 2285 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2288 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 228B _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 228E _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2290 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 2293 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2296 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2299 _ 8B. 55, 0C
        sub     edx, eax                                ; 229C _ 29. C2
        mov     eax, edx                                ; 229E _ 89. D0
        mov     dword [ebp-10H], eax                    ; 22A0 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 22A3 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 22A6 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 22A9 _ 8B. 55, 10
        sub     edx, eax                                ; 22AC _ 29. C2
        mov     eax, edx                                ; 22AE _ 89. D0
        mov     dword [ebp-14H], eax                    ; 22B0 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 22B3 _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 22B6 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 22B9 _ 8B. 55, 14
        sub     edx, eax                                ; 22BC _ 29. C2
        mov     eax, edx                                ; 22BE _ 89. D0
        mov     dword [ebp-18H], eax                    ; 22C0 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 22C3 _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 22C6 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 22C9 _ 8B. 55, 18
        sub     edx, eax                                ; 22CC _ 29. C2
        mov     eax, edx                                ; 22CE _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 22D0 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 22D3 _ 83. 7D, F0, 00
        jns     ?_115                                   ; 22D7 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 22D9 _ C7. 45, F0, 00000000
?_115:  cmp     dword [ebp-14H], 0                      ; 22E0 _ 83. 7D, EC, 00
        jns     ?_116                                   ; 22E4 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 22E6 _ C7. 45, EC, 00000000
?_116:  mov     eax, dword [ebp-24H]                    ; 22ED _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 22F0 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 22F3 _ 39. 45, E8
        jle     ?_117                                   ; 22F6 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 22F8 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 22FB _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 22FE _ 89. 45, E8
?_117:  mov     eax, dword [ebp-24H]                    ; 2301 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 2304 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 2307 _ 39. 45, E4
        jle     ?_118                                   ; 230A _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 230C _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 230F _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 2312 _ 89. 45, E4
?_118:  mov     eax, dword [ebp-14H]                    ; 2315 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 2318 _ 89. 45, F4
        jmp     ?_123                                   ; 231B _ EB, 76

?_119:  mov     eax, dword [ebp-24H]                    ; 231D _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 2320 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2323 _ 8B. 45, F4
        add     eax, edx                                ; 2326 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2328 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 232B _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 232E _ 89. 45, F8
        jmp     ?_122                                   ; 2331 _ EB, 54

?_120:  mov     eax, dword [ebp-24H]                    ; 2333 _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2336 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2339 _ 8B. 45, F8
        add     eax, edx                                ; 233C _ 01. D0
        mov     dword [ebp-34H], eax                    ; 233E _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 2341 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2344 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2347 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 234B _ 8B. 55, F8
        add     eax, edx                                ; 234E _ 01. D0
        mov     edx, eax                                ; 2350 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 2352 _ 8B. 45, D4
        add     eax, edx                                ; 2355 _ 01. D0
        movzx   eax, byte [eax]                         ; 2357 _ 0F B6. 00
        movzx   eax, al                                 ; 235A _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 235D _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2360 _ 8B. 52, 14
        cmp     eax, edx                                ; 2363 _ 39. D0
        jz      ?_121                                   ; 2365 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2367 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 236A _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 236D _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2371 _ 8B. 55, CC
        add     eax, edx                                ; 2374 _ 01. D0
        mov     edx, eax                                ; 2376 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2378 _ 8B. 45, E0
        add     edx, eax                                ; 237B _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 237D _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2381 _ 88. 02
?_121:  add     dword [ebp-8H], 1                       ; 2383 _ 83. 45, F8, 01
?_122:  mov     eax, dword [ebp-8H]                     ; 2387 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 238A _ 3B. 45, E8
        jl      ?_120                                   ; 238D _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 238F _ 83. 45, F4, 01
?_123:  mov     eax, dword [ebp-0CH]                    ; 2393 _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2396 _ 3B. 45, E4
        jl      ?_119                                   ; 2399 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 239B _ 83. 45, FC, 01
?_124:  mov     eax, dword [ebp+8H]                     ; 239F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 23A2 _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 23A5 _ 39. 45, FC
        jle     ?_114                                   ; 23A8 _ 0F 8E, FFFFFEB8
        nop                                             ; 23AE _ 90
        leave                                           ; 23AF _ C9
        ret                                             ; 23B0 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 23B1 _ 90
        nop                                             ; 23B2 _ 90
        nop                                             ; 23B3 _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 23B4 _ 55
        mov     ebp, esp                                ; 23B5 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 23B7 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 23BA _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 23C0 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 23C3 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 23CA _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 23CD _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 23D4 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 23D7 _ C7. 40, 0C, 00000000
        nop                                             ; 23DE _ 90
        pop     ebp                                     ; 23DF _ 5D
        ret                                             ; 23E0 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 23E1 _ 55
        mov     ebp, esp                                ; 23E2 _ 89. E5
        sub     esp, 16                                 ; 23E4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 23E7 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 23EE _ C7. 45, FC, 00000000
        jmp     ?_126                                   ; 23F5 _ EB, 14

?_125:  mov     eax, dword [ebp+8H]                     ; 23F7 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23FA _ 8B. 55, FC
        add     edx, 2                                  ; 23FD _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2400 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 2404 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 2407 _ 83. 45, FC, 01
?_126:  mov     eax, dword [ebp+8H]                     ; 240B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 240E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2410 _ 39. 45, FC
        jc      ?_125                                   ; 2413 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 2415 _ 8B. 45, F8
        leave                                           ; 2418 _ C9
        ret                                             ; 2419 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 241A _ 55
        mov     ebp, esp                                ; 241B _ 89. E5
        sub     esp, 16                                 ; 241D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2420 _ C7. 45, FC, 00000000
        jmp     ?_130                                   ; 2427 _ E9, 00000083

?_127:  mov     eax, dword [ebp+8H]                     ; 242C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 242F _ 8B. 55, FC
        add     edx, 2                                  ; 2432 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2435 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2439 _ 39. 45, 0C
        ja      ?_129                                   ; 243C _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 243E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2441 _ 8B. 55, FC
        add     edx, 2                                  ; 2444 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2447 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 244A _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 244D _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2450 _ 8B. 55, FC
        add     edx, 2                                  ; 2453 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2456 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2459 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 245C _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 245F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2462 _ 8B. 55, FC
        add     edx, 2                                  ; 2465 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2468 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 246B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 246E _ 8B. 55, FC
        add     edx, 2                                  ; 2471 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2474 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2478 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 247B _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 247E _ 8B. 4D, FC
        add     ecx, 2                                  ; 2481 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2484 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2488 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 248B _ 8B. 55, FC
        add     edx, 2                                  ; 248E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2491 _ 8B. 44 D0, 04
        test    eax, eax                                ; 2495 _ 85. C0
        jnz     ?_128                                   ; 2497 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2499 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 249C _ 8B. 00
        lea     edx, [eax-1H]                           ; 249E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24A1 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 24A4 _ 89. 10
?_128:  mov     eax, dword [ebp-8H]                     ; 24A6 _ 8B. 45, F8
        jmp     ?_131                                   ; 24A9 _ EB, 17

?_129:  add     dword [ebp-4H], 1                       ; 24AB _ 83. 45, FC, 01
?_130:  mov     eax, dword [ebp+8H]                     ; 24AF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24B2 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 24B4 _ 39. 45, FC
        jc      ?_127                                   ; 24B7 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 24BD _ B8, 00000000
?_131:  leave                                           ; 24C2 _ C9
        ret                                             ; 24C3 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 24C4 _ 55
        mov     ebp, esp                                ; 24C5 _ 89. E5
        push    ebx                                     ; 24C7 _ 53
        sub     esp, 16                                 ; 24C8 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 24CB _ C7. 45, F8, 00000000
        jmp     ?_133                                   ; 24D2 _ EB, 15

?_132:  mov     eax, dword [ebp+8H]                     ; 24D4 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 24D7 _ 8B. 55, F8
        add     edx, 2                                  ; 24DA _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 24DD _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 24E0 _ 39. 45, 0C
        jc      ?_134                                   ; 24E3 _ 72, 10
        add     dword [ebp-8H], 1                       ; 24E5 _ 83. 45, F8, 01
?_133:  mov     eax, dword [ebp+8H]                     ; 24E9 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24EC _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 24EE _ 39. 45, F8
        jl      ?_132                                   ; 24F1 _ 7C, E1
        jmp     ?_135                                   ; 24F3 _ EB, 01

?_134:  nop                                             ; 24F5 _ 90
?_135:  cmp     dword [ebp-8H], 0                       ; 24F6 _ 83. 7D, F8, 00
        jle     ?_137                                   ; 24FA _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 2500 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2503 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2506 _ 8B. 45, 08
        add     edx, 2                                  ; 2509 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 250C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 250F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2512 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2515 _ 8B. 45, 08
        add     edx, 2                                  ; 2518 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 251B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 251F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 2521 _ 39. 45, 0C
        jne     ?_137                                   ; 2524 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 252A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 252D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2530 _ 8B. 45, 08
        add     edx, 2                                  ; 2533 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2536 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 253A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 253D _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 2540 _ 8B. 45, 10
        add     ecx, eax                                ; 2543 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2545 _ 8B. 45, 08
        add     edx, 2                                  ; 2548 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 254B _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 254F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2552 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2554 _ 39. 45, F8
        jge     ?_136                                   ; 2557 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2559 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 255C _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 255F _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2562 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2565 _ 8B. 55, F8
        add     edx, 2                                  ; 2568 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 256B _ 8B. 04 D0
        cmp     ecx, eax                                ; 256E _ 39. C1
        jnz     ?_136                                   ; 2570 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 2572 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2575 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2578 _ 8B. 45, 08
        add     edx, 2                                  ; 257B _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 257E _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2582 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2585 _ 8B. 55, F8
        add     edx, 2                                  ; 2588 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 258B _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 258F _ 8B. 55, F8
        sub     edx, 1                                  ; 2592 _ 83. EA, 01
        add     ecx, eax                                ; 2595 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2597 _ 8B. 45, 08
        add     edx, 2                                  ; 259A _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 259D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 25A1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25A4 _ 8B. 00
        lea     edx, [eax-1H]                           ; 25A6 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 25A9 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 25AC _ 89. 10
?_136:  mov     eax, 0                                  ; 25AE _ B8, 00000000
        jmp     ?_143                                   ; 25B3 _ E9, 0000011C

?_137:  mov     eax, dword [ebp+8H]                     ; 25B8 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25BB _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 25BD _ 39. 45, F8
        jge     ?_138                                   ; 25C0 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 25C2 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 25C5 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 25C8 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 25CB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25CE _ 8B. 55, F8
        add     edx, 2                                  ; 25D1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 25D4 _ 8B. 04 D0
        cmp     ecx, eax                                ; 25D7 _ 39. C1
        jnz     ?_138                                   ; 25D9 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 25DB _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25DE _ 8B. 55, F8
        add     edx, 2                                  ; 25E1 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 25E4 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 25E7 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 25EA _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25ED _ 8B. 55, F8
        add     edx, 2                                  ; 25F0 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 25F3 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 25F7 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 25FA _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 25FD _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2600 _ 8B. 55, F8
        add     edx, 2                                  ; 2603 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2606 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 260A _ B8, 00000000
        jmp     ?_143                                   ; 260F _ E9, 000000C0

?_138:  mov     eax, dword [ebp+8H]                     ; 2614 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2617 _ 8B. 00
        cmp     eax, 4095                               ; 2619 _ 3D, 00000FFF
        jg      ?_142                                   ; 261E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2624 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2627 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2629 _ 89. 45, F4
        jmp     ?_140                                   ; 262C _ EB, 28

?_139:  mov     eax, dword [ebp-0CH]                    ; 262E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 2631 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2634 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2637 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 263A _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 263D _ 8B. 45, 08
        add     edx, 2                                  ; 2640 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 2643 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2646 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2648 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 264B _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 264E _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 2652 _ 83. 6D, F4, 01
?_140:  mov     eax, dword [ebp-0CH]                    ; 2656 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2659 _ 3B. 45, F8
        jg      ?_139                                   ; 265C _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 265E _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2661 _ 8B. 00
        lea     edx, [eax+1H]                           ; 2663 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2666 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2669 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 266B _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 266E _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2671 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2674 _ 8B. 00
        cmp     edx, eax                                ; 2676 _ 39. C2
        jge     ?_141                                   ; 2678 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 267A _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 267D _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 267F _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2682 _ 89. 50, 04
?_141:  mov     eax, dword [ebp+8H]                     ; 2685 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2688 _ 8B. 55, F8
        add     edx, 2                                  ; 268B _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 268E _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2691 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2694 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2697 _ 8B. 55, F8
        add     edx, 2                                  ; 269A _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 269D _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 26A0 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 26A4 _ B8, 00000000
        jmp     ?_143                                   ; 26A9 _ EB, 29

?_142:  mov     eax, dword [ebp+8H]                     ; 26AB _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 26AE _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 26B1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 26B4 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 26B7 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 26BA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 26BD _ 8B. 40, 08
        mov     edx, eax                                ; 26C0 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 26C2 _ 8B. 45, 10
        add     eax, edx                                ; 26C5 _ 01. D0
        mov     edx, eax                                ; 26C7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 26C9 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 26CC _ 89. 50, 08
        mov     eax, 4294967295                         ; 26CF _ B8, FFFFFFFF
?_143:  add     esp, 16                                 ; 26D4 _ 83. C4, 10
        pop     ebx                                     ; 26D7 _ 5B
        pop     ebp                                     ; 26D8 _ 5D
        ret                                             ; 26D9 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 26DA _ 55
        mov     ebp, esp                                ; 26DB _ 89. E5
        sub     esp, 24                                 ; 26DD _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 26E0 _ 8B. 45, 0C
        add     eax, 4095                               ; 26E3 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 26E8 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 26ED _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 26F0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 26F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26FA _ 89. 04 24
        call    _memman_alloc                           ; 26FD _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 2702 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2705 _ 8B. 45, FC
        leave                                           ; 2708 _ C9
        ret                                             ; 2709 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 270A _ 55
        mov     ebp, esp                                ; 270B _ 89. E5
        sub     esp, 28                                 ; 270D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 2710 _ 8B. 45, 10
        add     eax, 4095                               ; 2713 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2718 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 271D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 2720 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 2723 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2727 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 272A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 272E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2731 _ 89. 04 24
        call    _memman_free                            ; 2734 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 2739 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 273C _ 8B. 45, FC
        leave                                           ; 273F _ C9
        ret                                             ; 2740 _ C3
; _memman_free_4k End of function

        nop                                             ; 2741 _ 90
        nop                                             ; 2742 _ 90
        nop                                             ; 2743 _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 2744 _ 55
        mov     ebp, esp                                ; 2745 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2747 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 274A _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 274D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2750 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 2753 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2756 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2758 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 275B _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 275E _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2761 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2764 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 276B _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 276E _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2775 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2778 _ C7. 40, 08, 00000000
        nop                                             ; 277F _ 90
        pop     ebp                                     ; 2780 _ 5D
        ret                                             ; 2781 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 2782 _ 55
        mov     ebp, esp                                ; 2783 _ 89. E5
        sub     esp, 4                                  ; 2785 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2788 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 278B _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 278E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2791 _ 8B. 40, 10
        test    eax, eax                                ; 2794 _ 85. C0
        jnz     ?_144                                   ; 2796 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2798 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 279B _ 8B. 40, 14
        or      eax, 01H                                ; 279E _ 83. C8, 01
        mov     edx, eax                                ; 27A1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 27A3 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 27A6 _ 89. 50, 14
        mov     eax, 4294967295                         ; 27A9 _ B8, FFFFFFFF
        jmp     ?_146                                   ; 27AE _ EB, 50

?_144:  mov     eax, dword [ebp+8H]                     ; 27B0 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 27B3 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 27B5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27B8 _ 8B. 40, 04
        add     edx, eax                                ; 27BB _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 27BD _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 27C1 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 27C3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27C6 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 27C9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27CC _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 27CF _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27D2 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 27D5 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27D8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 27DB _ 8B. 40, 0C
        cmp     edx, eax                                ; 27DE _ 39. C2
        jnz     ?_145                                   ; 27E0 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 27E2 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 27E5 _ C7. 40, 04, 00000000
?_145:  mov     eax, dword [ebp+8H]                     ; 27EC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27EF _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 27F2 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27F5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27F8 _ 89. 50, 10
        mov     eax, 0                                  ; 27FB _ B8, 00000000
?_146:  leave                                           ; 2800 _ C9
        ret                                             ; 2801 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 2802 _ 55
        mov     ebp, esp                                ; 2803 _ 89. E5
        sub     esp, 16                                 ; 2805 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 2808 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 280B _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 280E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2811 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2814 _ 39. C2
        jnz     ?_147                                   ; 2816 _ 75, 07
        mov     eax, 4294967295                         ; 2818 _ B8, FFFFFFFF
        jmp     ?_149                                   ; 281D _ EB, 51

?_147:  mov     eax, dword [ebp+8H]                     ; 281F _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2822 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2824 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2827 _ 8B. 40, 08
        add     eax, edx                                ; 282A _ 01. D0
        movzx   eax, byte [eax]                         ; 282C _ 0F B6. 00
        movzx   eax, al                                 ; 282F _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 2832 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2835 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2838 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 283B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 283E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2841 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2844 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2847 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 284A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 284D _ 8B. 40, 0C
        cmp     edx, eax                                ; 2850 _ 39. C2
        jnz     ?_148                                   ; 2852 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2854 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2857 _ C7. 40, 08, 00000000
?_148:  mov     eax, dword [ebp+8H]                     ; 285E _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2861 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2864 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2867 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 286A _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 286D _ 8B. 45, FC
?_149:  leave                                           ; 2870 _ C9
        ret                                             ; 2871 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 2872 _ 55
        mov     ebp, esp                                ; 2873 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2875 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2878 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 287B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 287E _ 8B. 40, 10
        sub     edx, eax                                ; 2881 _ 29. C2
        mov     eax, edx                                ; 2883 _ 89. D0
        pop     ebp                                     ; 2885 _ 5D
        ret                                             ; 2886 _ C3
; _fifo8_status End of function

        nop                                             ; 2887 _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 2888 _ 55
        mov     ebp, esp                                ; 2889 _ 89. E5
        sub     esp, 40                                 ; 288B _ 83. EC, 28
        mov     dword [esp+4H], 52                      ; 288E _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 2896 _ C7. 04 24, 00000043
        call    _io_out8                                ; 289D _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 28A2 _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 28AA _ C7. 04 24, 00000040
        call    _io_out8                                ; 28B1 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 28B6 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 28BE _ C7. 04 24, 00000040
        call    _io_out8                                ; 28C5 _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 28CA _ C7. 05, 00000000(d), 00000000
        mov     dword [ebp-0CH], 0                      ; 28D4 _ C7. 45, F4, 00000000
        jmp     ?_151                                   ; 28DB _ EB, 15

?_150:  mov     eax, dword [ebp-0CH]                    ; 28DD _ 8B. 45, F4
        shl     eax, 4                                  ; 28E0 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 28E3 _ 05, 00000008(d)
        mov     dword [eax], 0                          ; 28E8 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 28EE _ 83. 45, F4, 01
?_151:  cmp     dword [ebp-0CH], 499                    ; 28F2 _ 81. 7D, F4, 000001F3
        jle     ?_150                                   ; 28F9 _ 7E, E2
        nop                                             ; 28FB _ 90
        leave                                           ; 28FC _ C9
        ret                                             ; 28FD _ C3

_timer_alloc:; Function begin
        push    ebp                                     ; 28FE _ 55
        mov     ebp, esp                                ; 28FF _ 89. E5
        sub     esp, 16                                 ; 2901 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 2904 _ C7. 45, FC, 00000000
        jmp     ?_154                                   ; 290B _ EB, 36

?_152:  mov     eax, dword [ebp-4H]                     ; 290D _ 8B. 45, FC
        shl     eax, 4                                  ; 2910 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2913 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 2918 _ 8B. 00
        test    eax, eax                                ; 291A _ 85. C0
        jnz     ?_153                                   ; 291C _ 75, 21
        mov     eax, dword [ebp-4H]                     ; 291E _ 8B. 45, FC
        shl     eax, 4                                  ; 2921 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2924 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 2929 _ C7. 00, 00000001
        mov     eax, dword [ebp-4H]                     ; 292F _ 8B. 45, FC
        shl     eax, 4                                  ; 2932 _ C1. E0, 04
        add     eax, _timerctl                               ; 2935 _ 05, 00000000(d)
        add     eax, 4                                  ; 293A _ 83. C0, 04
        jmp     ?_155                                   ; 293D _ EB, 12

?_153:  add     dword [ebp-4H], 1                       ; 293F _ 83. 45, FC, 01
?_154:  cmp     dword [ebp-4H], 499                     ; 2943 _ 81. 7D, FC, 000001F3
        jle     ?_152                                   ; 294A _ 7E, C1
        mov     eax, 0                                  ; 294C _ B8, 00000000
?_155:  leave                                           ; 2951 _ C9
        ret                                             ; 2952 _ C3
; _timer_alloc End of function

_timer_init:; Function begin
        push    ebp                                     ; 2953 _ 55
        mov     ebp, esp                                ; 2954 _ 89. E5
        sub     esp, 4                                  ; 2956 _ 83. EC, 04
        mov     eax, dword [ebp+10H]                    ; 2959 _ 8B. 45, 10
        mov     byte [ebp-4H], al                       ; 295C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 295F _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2962 _ 8B. 55, 0C
        mov     dword [eax+8H], edx                     ; 2965 _ 89. 50, 08
        mov     edx, dword [ebp+8H]                     ; 2968 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 296B _ 0F B6. 45, FC
        mov     byte [edx+0CH], al                      ; 296F _ 88. 42, 0C
        nop                                             ; 2972 _ 90
        leave                                           ; 2973 _ C9
        ret                                             ; 2974 _ C3
; _timer_init End of function

_timer_free:; Function begin
        push    ebp                                     ; 2975 _ 55
        mov     ebp, esp                                ; 2976 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2978 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 297B _ C7. 40, 04, 00000000
        nop                                             ; 2982 _ 90
        pop     ebp                                     ; 2983 _ 5D
        ret                                             ; 2984 _ C3
; _timer_free End of function

_timer_settime:; Function begin
        push    ebp                                     ; 2985 _ 55
        mov     ebp, esp                                ; 2986 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2988 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 298B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 298E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2990 _ 8B. 45, 08
        mov     dword [eax+4H], 2                       ; 2993 _ C7. 40, 04, 00000002
        nop                                             ; 299A _ 90
        pop     ebp                                     ; 299B _ 5D
        ret                                             ; 299C _ C3
; _timer_settime End of function

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 299D _ 55
        mov     ebp, esp                                ; 299E _ 89. E5
        sub     esp, 40                                 ; 29A0 _ 83. EC, 28
        mov     dword [esp+4H], 96                      ; 29A3 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 32                         ; 29AB _ C7. 04 24, 00000020
        call    _io_out8                                ; 29B2 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 29B7 _ A1, 00000000(d)
        add     eax, 1                                  ; 29BC _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 29BF _ A3, 00000000(d)
        mov     dword [ebp-0CH], 0                      ; 29C4 _ C7. 45, F4, 00000000
        jmp     ?_158                                   ; 29CB _ E9, 00000080

?_156:  mov     eax, dword [ebp-0CH]                    ; 29D0 _ 8B. 45, F4
        shl     eax, 4                                  ; 29D3 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 29D6 _ 05, 00000008(d)
        mov     eax, dword [eax]                        ; 29DB _ 8B. 00
        cmp     eax, 2                                  ; 29DD _ 83. F8, 02
        jnz     ?_157                                   ; 29E0 _ 75, 6A
        mov     eax, dword [ebp-0CH]                    ; 29E2 _ 8B. 45, F4
        shl     eax, 4                                  ; 29E5 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 29E8 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 29ED _ 8B. 00
        lea     edx, [eax-1H]                           ; 29EF _ 8D. 50, FF
        mov     eax, dword [ebp-0CH]                    ; 29F2 _ 8B. 45, F4
        shl     eax, 4                                  ; 29F5 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 29F8 _ 05, 00000004(d)
        mov     dword [eax], edx                        ; 29FD _ 89. 10
        mov     eax, dword [ebp-0CH]                    ; 29FF _ 8B. 45, F4
        shl     eax, 4                                  ; 2A02 _ C1. E0, 04
        add     eax, _timerctl+4H                            ; 2A05 _ 05, 00000004(d)
        mov     eax, dword [eax]                        ; 2A0A _ 8B. 00
        test    eax, eax                                ; 2A0C _ 85. C0
        jnz     ?_157                                   ; 2A0E _ 75, 3C
        mov     eax, dword [ebp-0CH]                    ; 2A10 _ 8B. 45, F4
        shl     eax, 4                                  ; 2A13 _ C1. E0, 04
        add     eax, _timerctl+8H                            ; 2A16 _ 05, 00000008(d)
        mov     dword [eax], 1                          ; 2A1B _ C7. 00, 00000001
        mov     eax, dword [ebp-0CH]                    ; 2A21 _ 8B. 45, F4
        shl     eax, 4                                  ; 2A24 _ C1. E0, 04
        add     eax, _timerctl+10H                           ; 2A27 _ 05, 00000010(d)
        movzx   eax, byte [eax]                         ; 2A2C _ 0F B6. 00
        movzx   eax, al                                 ; 2A2F _ 0F B6. C0
        mov     edx, dword [ebp-0CH]                    ; 2A32 _ 8B. 55, F4
        shl     edx, 4                                  ; 2A35 _ C1. E2, 04
        add     edx, _timerctl+0CH                           ; 2A38 _ 81. C2, 0000000C(d)
        mov     edx, dword [edx]                        ; 2A3E _ 8B. 12
        mov     dword [esp+4H], eax                     ; 2A40 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2A44 _ 89. 14 24
        call    _fifo8_put                              ; 2A47 _ E8, 00000000(rel)
?_157:  add     dword [ebp-0CH], 1                      ; 2A4C _ 83. 45, F4, 01
?_158:  cmp     dword [ebp-0CH], 499                    ; 2A50 _ 81. 7D, F4, 000001F3
        jle     ?_156                                   ; 2A57 _ 0F 8E, FFFFFF73
        nop                                             ; 2A5D _ 90
        leave                                           ; 2A5E _ C9
        ret                                             ; 2A5F _ C3
; _intHandlerForTimer End of function

_getTimerController:; Function begin
        mov     eax, _timerctl                               ; 2A60 _ B8, 00000000(d)
        ret                                             ; 2A65 _ C3
; _getTimerController End of function

        nop                                             ; 2A66 _ 90
        nop                                             ; 2A67 _ 90



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

?_159:  db 00H                                          ; 0076 _ .

?_160:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0077 _ ........
        db 00H                                          ; 007F _ .

_table_rgb.2220:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0080 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0088 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0090 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0098 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 00A0 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 00A8 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B0 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 00B8 _ ........

_cursor.2267:                                           ; byte
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

_closebtn.2377:                                         ; byte
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
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_162:                                                  ; byte
        db 20H, 6EH, 65H, 77H, 20H, 35H, 5BH, 73H       ; 0008 _  new 5[s
        db 65H, 63H, 5DH, 00H                           ; 0010 _ ec].

?_163:                                                  ; byte
        db 33H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0014 _ 3[sec].

?_164:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 001B _ page is:
        db 20H, 00H                                     ; 0023 _  .

?_165:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0025 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 002D _ L: .

?_166:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0031 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0039 _ H: .

?_167:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 003D _ lengthLo
        db 77H, 3AH, 20H, 00H, 00H, 00H, 00H            ; 0045 _ w: ....



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

?_168:  resw    1                                       ; 0004

?_169:  resw    1                                       ; 0006

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

_str.2315:                                              ; byte
        resb    1                                       ; 0240

?_170:  resb    9                                       ; 0241

?_171:  resb    22                                      ; 024A

_timerctl:                                              ; byte
        resb    8032                                    ; 0260


