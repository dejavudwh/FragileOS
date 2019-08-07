; Disassembly of file: ckernel.o
; Wed Aug  7 17:33:14 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 84                                 ; 0004 _ 83. EC, 54
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000E _ E8, 00000963
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 0018 _ 89. 45, F0
        movzx   eax, word [?_159]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 00000118(d)
        movzx   eax, word [?_160]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 0000011C(d)
        mov     dword [ebp-14H], 0                      ; 0035 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 003C _ C7. 45, E8, 00000000
        call    _init_pit                               ; 0043 _ E8, 00000000(rel)
        mov     dword [esp+8H], _timerbuf               ; 0048 _ C7. 44 24, 08, 00000108(d)
        mov     dword [esp+4H], 8                       ; 0050 _ C7. 44 24, 04, 00000008
        mov     dword [esp], _timerinfo                 ; 0058 _ C7. 04 24, 000000F0(d)
        call    _fifo8_init                             ; 005F _ E8, 00000000(rel)
        mov     dword [esp+8H], 1                       ; 0064 _ C7. 44 24, 08, 00000001
        mov     dword [esp+4H], _timerinfo              ; 006C _ C7. 44 24, 04, 000000F0(d)
        mov     dword [esp], 500                        ; 0074 _ C7. 04 24, 000001F4
        call    _settimer                               ; 007B _ E8, 00000000(rel)
        mov     dword [esp+8H], _keybuf                 ; 0080 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 0088 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0090 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 0097 _ E8, 00000000(rel)
        mov     dword [esp+8H], _mousebuf               ; 009C _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 00A4 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 00AC _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 00B3 _ E8, 00000000(rel)
        call    _init_palette                           ; 00B8 _ E8, 0000097C
        call    _init_keyboard                          ; 00BD _ E8, 00000EE5
        call    _get_memory_block_count                 ; 00C2 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 00C7 _ 89. 45, E4
        call    _get_addr_buffer                        ; 00CA _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 00CF _ 89. 45, E0
        mov     eax, dword [_memman]                    ; 00D2 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 00D7 _ 89. 04 24
        call    _memman_init                            ; 00DA _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 00DF _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 00E4 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 00EC _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 00F4 _ 89. 04 24
        call    _memman_free                            ; 00F7 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 00FC _ 8B. 0D, 0000011C(d)
        mov     edx, dword [_xsize]                     ; 0102 _ 8B. 15, 00000118(d)
        mov     eax, dword [_memman]                    ; 0108 _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 010D _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0111 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 0115 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 0118 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 011C _ 89. 04 24
        call    _shtctl_init                            ; 011F _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 0124 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 0127 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 012A _ 89. 04 24
        call    _sheet_alloc                            ; 012D _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 0132 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 0135 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0138 _ 89. 04 24
        call    _sheet_alloc                            ; 013B _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0140 _ 89. 45, E8
        mov     edx, dword [_xsize]                     ; 0143 _ 8B. 15, 00000118(d)
        mov     eax, dword [_ysize]                     ; 0149 _ A1, 0000011C(d)
        imul    eax, edx                                ; 014E _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 0151 _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 0157 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 015B _ 89. 14 24
        call    _memman_alloc_4k                        ; 015E _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 0163 _ A3, 00000120(d)
        mov     ecx, dword [_ysize]                     ; 0168 _ 8B. 0D, 0000011C(d)
        mov     edx, dword [_xsize]                     ; 016E _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 0174 _ A1, 00000120(d)
        mov     dword [esp+10H], 99                     ; 0179 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ecx                    ; 0181 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0185 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 0189 _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 018D _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0190 _ 89. 04 24
        call    _sheet_setbuf                           ; 0193 _ E8, 00000000(rel)
        mov     dword [esp+10H], 99                     ; 0198 _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 01A0 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 01A8 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 01B0 _ C7. 44 24, 04, 00000140(d)
        mov     eax, dword [ebp-18H]                    ; 01B8 _ 8B. 45, E8
        mov     dword [esp], eax                        ; 01BB _ 89. 04 24
        call    _sheet_setbuf                           ; 01BE _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 01C3 _ 8B. 0D, 0000011C(d)
        mov     edx, dword [_xsize]                     ; 01C9 _ 8B. 15, 00000118(d)
        mov     eax, dword [_buf_back]                  ; 01CF _ A1, 00000120(d)
        mov     dword [esp+8H], ecx                     ; 01D4 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 01D8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 01DC _ 89. 04 24
        call    _init_screen8                           ; 01DF _ E8, 000002CD
        mov     dword [esp+4H], 99                      ; 01E4 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 01EC _ C7. 04 24, 00000140(d)
        call    _init_mouse_cursor                      ; 01F3 _ E8, 00000ADD
        mov     dword [esp+0CH], 0                      ; 01F8 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0200 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 0208 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 020B _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 020F _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0212 _ 89. 04 24
        call    _sheet_slide                            ; 0215 _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 021A _ A1, 00000118(d)
        sub     eax, 16                                 ; 021F _ 83. E8, 10
        mov     edx, eax                                ; 0222 _ 89. C2
        shr     edx, 31                                 ; 0224 _ C1. EA, 1F
        add     eax, edx                                ; 0227 _ 01. D0
        sar     eax, 1                                  ; 0229 _ D1. F8
        mov     dword [_mx], eax                        ; 022B _ A3, 00000110(d)
        mov     eax, dword [_ysize]                     ; 0230 _ A1, 0000011C(d)
        sub     eax, 44                                 ; 0235 _ 83. E8, 2C
        mov     edx, eax                                ; 0238 _ 89. C2
        shr     edx, 31                                 ; 023A _ C1. EA, 1F
        add     eax, edx                                ; 023D _ 01. D0
        sar     eax, 1                                  ; 023F _ D1. F8
        mov     dword [_my], eax                        ; 0241 _ A3, 00000114(d)
        mov     edx, dword [_my]                        ; 0246 _ 8B. 15, 00000114(d)
        mov     eax, dword [_mx]                        ; 024C _ A1, 00000110(d)
        mov     dword [esp+0CH], edx                    ; 0251 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0255 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 0259 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 025C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0260 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0263 _ 89. 04 24
        call    _sheet_slide                            ; 0266 _ E8, 00000000(rel)
        mov     dword [esp+4H], ?_148                   ; 026B _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-24H]                    ; 0273 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0276 _ 89. 04 24
        call    _message_box                            ; 0279 _ E8, 00001244
        mov     dword [ebp-28H], eax                    ; 027E _ 89. 45, D8
        mov     dword [esp+8H], 0                       ; 0281 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 0289 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 028C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0290 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0293 _ 89. 04 24
        call    _sheet_updown                           ; 0296 _ E8, 00000000(rel)
        mov     dword [esp+8H], 100                     ; 029B _ C7. 44 24, 08, 00000064
        mov     eax, dword [ebp-18H]                    ; 02A3 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 02A6 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 02AA _ 8B. 45, DC
        mov     dword [esp], eax                        ; 02AD _ 89. 04 24
        call    _sheet_updown                           ; 02B0 _ E8, 00000000(rel)
        call    _io_sti                                 ; 02B5 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 02BA _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 02C1 _ E8, 00000D1C
        mov     dword [ebp-2CH], 0                      ; 02C6 _ C7. 45, D4, 00000000
        mov     dword [ebp-0CH], 0                      ; 02CD _ C7. 45, F4, 00000000
        call    _getTimer                               ; 02D4 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 02D9 _ 89. 45, D0
?_001:  mov     eax, dword [ebp-30H]                    ; 02DC _ 8B. 45, D0
        mov     eax, dword [eax+4H]                     ; 02DF _ 8B. 40, 04
        mov     dword [esp], eax                        ; 02E2 _ 89. 04 24
        call    _intToHexStr                            ; 02E5 _ E8, 00000C07
        mov     dword [ebp-34H], eax                    ; 02EA _ 89. 45, CC
        mov     eax, dword [ebp-28H]                    ; 02ED _ 8B. 45, D8
        mov     eax, dword [eax]                        ; 02F0 _ 8B. 00
        mov     dword [esp+18H], 43                     ; 02F2 _ C7. 44 24, 18, 0000002B
        mov     dword [esp+14H], 119                    ; 02FA _ C7. 44 24, 14, 00000077
        mov     dword [esp+10H], 28                     ; 0302 _ C7. 44 24, 10, 0000001C
        mov     dword [esp+0CH], 40                     ; 030A _ C7. 44 24, 0C, 00000028
        mov     dword [esp+8H], 8                       ; 0312 _ C7. 44 24, 08, 00000008
        mov     dword [esp+4H], 160                     ; 031A _ C7. 44 24, 04, 000000A0
        mov     dword [esp], eax                        ; 0322 _ 89. 04 24
        call    _boxfill8                               ; 0325 _ E8, 000007DA
        mov     eax, dword [ebp-34H]                    ; 032A _ 8B. 45, CC
        mov     dword [esp+14H], eax                    ; 032D _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0331 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 0339 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 40                      ; 0341 _ C7. 44 24, 08, 00000028
        mov     eax, dword [ebp-28H]                    ; 0349 _ 8B. 45, D8
        mov     dword [esp+4H], eax                     ; 034C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0350 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0353 _ 89. 04 24
        call    _showString                             ; 0356 _ E8, 0000063C
        call    _io_cli                                 ; 035B _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0360 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 0367 _ E8, 00000000(rel)
        mov     ebx, eax                                ; 036C _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 036E _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0375 _ E8, 00000000(rel)
        add     ebx, eax                                ; 037A _ 01. C3
        mov     dword [esp], _timerinfo                 ; 037C _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0383 _ E8, 00000000(rel)
        add     eax, ebx                                ; 0388 _ 01. D8
        test    eax, eax                                ; 038A _ 85. C0
        jnz     ?_002                                   ; 038C _ 75, 0A
        call    _io_sti                                 ; 038E _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0393 _ E9, FFFFFF44

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 0398 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 039F _ E8, 00000000(rel)
        test    eax, eax                                ; 03A4 _ 85. C0
        je      ?_003                                   ; 03A6 _ 0F 84, 00000087
        call    _io_sti                                 ; 03AC _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 03B1 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 03B8 _ E8, 00000000(rel)
        mov     dword [ebp-2CH], eax                    ; 03BD _ 89. 45, D4
        cmp     dword [ebp-2CH], 28                     ; 03C0 _ 83. 7D, D4, 1C
        jne     ?_001                                   ; 03C4 _ 0F 85, FFFFFF12
        mov     ebx, dword [_xsize]                     ; 03CA _ 8B. 1D, 00000118(d)
        mov     ecx, dword [_buf_back]                  ; 03D0 _ 8B. 0D, 00000120(d)
        mov     edx, dword [ebp-0CH]                    ; 03D6 _ 8B. 55, F4
        mov     eax, edx                                ; 03D9 _ 89. D0
        shl     eax, 2                                  ; 03DB _ C1. E0, 02
        add     eax, edx                                ; 03DE _ 01. D0
        shl     eax, 2                                  ; 03E0 _ C1. E0, 02
        mov     edx, eax                                ; 03E3 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 03E5 _ 8B. 45, E0
        add     eax, edx                                ; 03E8 _ 01. D0
        mov     dword [esp+18H], 7                      ; 03EA _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], ebx                    ; 03F2 _ 89. 5C 24, 14
        mov     edx, dword [ebp-0CH]                    ; 03F6 _ 8B. 55, F4
        mov     dword [esp+10H], edx                    ; 03F9 _ 89. 54 24, 10
        mov     dword [esp+0CH], ecx                    ; 03FD _ 89. 4C 24, 0C
        mov     dword [esp+8H], eax                     ; 0401 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 0405 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0408 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 040C _ 8B. 45, DC
        mov     dword [esp], eax                        ; 040F _ 89. 04 24
        call    _showMemoryInfo                         ; 0412 _ E8, 00000DA0
        add     dword [ebp-0CH], 1                      ; 0417 _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 041B _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 041E _ 3B. 45, E4
        jle     ?_001                                   ; 0421 _ 0F 8E, FFFFFEB5
        mov     dword [ebp-0CH], 0                      ; 0427 _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 042E _ E9, FFFFFEA9

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0433 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 043A _ E8, 00000000(rel)
        test    eax, eax                                ; 043F _ 85. C0
        jz      ?_004                                   ; 0441 _ 74, 1E
        mov     eax, dword [ebp-18H]                    ; 0443 _ 8B. 45, E8
        mov     dword [esp+8H], eax                     ; 0446 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 044A _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 044D _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0451 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0454 _ 89. 04 24
        call    _show_mouse_info                        ; 0457 _ E8, 0000049A
        jmp     ?_001                                   ; 045C _ E9, FFFFFE7B

?_004:  ; Local function
        mov     dword [esp], _timerinfo                 ; 0461 _ C7. 04 24, 000000F0(d)
        call    _fifo8_status                           ; 0468 _ E8, 00000000(rel)
        test    eax, eax                                ; 046D _ 85. C0
        je      ?_001                                   ; 046F _ 0F 84, FFFFFE67
        call    _io_sti                                 ; 0475 _ E8, 00000000(rel)
        mov     dword [esp+14H], ?_149                  ; 047A _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 0482 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 048A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 0492 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 049A _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 049D _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 04A1 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 04A4 _ 89. 04 24
        call    _showString                             ; 04A7 _ E8, 000004EB
        jmp     ?_001                                   ; 04AC _ E9, FFFFFE2B

_init_screen8:; Function begin
        push    ebp                                     ; 04B1 _ 55
        mov     ebp, esp                                ; 04B2 _ 89. E5
        push    ebx                                     ; 04B4 _ 53
        sub     esp, 36                                 ; 04B5 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 04B8 _ 8B. 45, 10
        lea     edx, [eax-11H]                          ; 04BB _ 8D. 50, EF
        mov     eax, dword [ebp+0CH]                    ; 04BE _ 8B. 45, 0C
        sub     eax, 1                                  ; 04C1 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 04C4 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 04C8 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 04CC _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 04D4 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 04DC _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 04E4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 04E7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 04EB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 04EE _ 89. 04 24
        call    _boxfill8                               ; 04F1 _ E8, 0000060E
        mov     eax, dword [ebp+10H]                    ; 04F6 _ 8B. 45, 10
        lea     ecx, [eax-10H]                          ; 04F9 _ 8D. 48, F0
        mov     eax, dword [ebp+0CH]                    ; 04FC _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 04FF _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0502 _ 8B. 45, 10
        sub     eax, 16                                 ; 0505 _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 0508 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 050C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0510 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0514 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 051C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0524 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0527 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 052B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 052E _ 89. 04 24
        call    _boxfill8                               ; 0531 _ E8, 000005CE
        mov     eax, dword [ebp+10H]                    ; 0536 _ 8B. 45, 10
        lea     ecx, [eax-0FH]                          ; 0539 _ 8D. 48, F1
        mov     eax, dword [ebp+0CH]                    ; 053C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 053F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0542 _ 8B. 45, 10
        sub     eax, 15                                 ; 0545 _ 83. E8, 0F
        mov     dword [esp+18H], ecx                    ; 0548 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 054C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0550 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0554 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 055C _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0564 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0567 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 056B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 056E _ 89. 04 24
        call    _boxfill8                               ; 0571 _ E8, 0000058E
        mov     eax, dword [ebp+10H]                    ; 0576 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0579 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 057C _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 057F _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0582 _ 8B. 45, 10
        sub     eax, 14                                 ; 0585 _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 0588 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 058C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0590 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0594 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 059C _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 05A4 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05A7 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05AB _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05AE _ 89. 04 24
        call    _boxfill8                               ; 05B1 _ E8, 0000054E
        mov     eax, dword [ebp+10H]                    ; 05B6 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 05B9 _ 8D. 50, F4
        mov     eax, dword [ebp+10H]                    ; 05BC _ 8B. 45, 10
        sub     eax, 12                                 ; 05BF _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 05C2 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 05C6 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 05CE _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 05D2 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 05DA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 05E2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05EC _ 89. 04 24
        call    _boxfill8                               ; 05EF _ E8, 00000510
        mov     eax, dword [ebp+10H]                    ; 05F4 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 05F7 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 05FA _ 8B. 45, 10
        sub     eax, 12                                 ; 05FD _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 0600 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0604 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 060C _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0610 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0618 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0620 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0623 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0627 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 062A _ 89. 04 24
        call    _boxfill8                               ; 062D _ E8, 000004D2
        mov     eax, dword [ebp+10H]                    ; 0632 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 0635 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0638 _ 8B. 45, 10
        sub     eax, 4                                  ; 063B _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 063E _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0642 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 064A _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 064E _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0656 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 065E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0661 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0665 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0668 _ 89. 04 24
        call    _boxfill8                               ; 066B _ E8, 00000494
        mov     eax, dword [ebp+10H]                    ; 0670 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0673 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0676 _ 8B. 45, 10
        sub     eax, 11                                 ; 0679 _ 83. E8, 0B
        mov     dword [esp+18H], edx                    ; 067C _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0680 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0688 _ 89. 44 24, 10
        mov     dword [esp+0CH], 30                     ; 068C _ C7. 44 24, 0C, 0000001E
        mov     dword [esp+8H], 15                      ; 0694 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 069C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 069F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06A6 _ 89. 04 24
        call    _boxfill8                               ; 06A9 _ E8, 00000456
        mov     eax, dword [ebp+10H]                    ; 06AE _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 06B1 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 06B4 _ 8B. 45, 10
        sub     eax, 3                                  ; 06B7 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 06BA _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 06BE _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 06C6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 06CA _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 06D2 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 06DA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06DD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06E1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06E4 _ 89. 04 24
        call    _boxfill8                               ; 06E7 _ E8, 00000418
        mov     eax, dword [ebp+10H]                    ; 06EC _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 06EF _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 06F2 _ 8B. 45, 10
        sub     eax, 12                                 ; 06F5 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 06F8 _ 89. 54 24, 18
        mov     dword [esp+14H], 31                     ; 06FC _ C7. 44 24, 14, 0000001F
        mov     dword [esp+10H], eax                    ; 0704 _ 89. 44 24, 10
        mov     dword [esp+0CH], 31                     ; 0708 _ C7. 44 24, 0C, 0000001F
        mov     dword [esp+8H], 0                       ; 0710 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 0718 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 071B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 071F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0722 _ 89. 04 24
        call    _boxfill8                               ; 0725 _ E8, 000003DA
        mov     eax, dword [ebp+10H]                    ; 072A _ 8B. 45, 10
        lea     ebx, [eax-0CH]                          ; 072D _ 8D. 58, F4
        mov     eax, dword [ebp+0CH]                    ; 0730 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 0733 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0736 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0739 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 073C _ 8B. 45, 0C
        sub     eax, 36                                 ; 073F _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 0742 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0746 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 074A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 074E _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0752 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 075A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 075D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0761 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0764 _ 89. 04 24
        call    _boxfill8                               ; 0767 _ E8, 00000398
        mov     eax, dword [ebp+10H]                    ; 076C _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 076F _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0772 _ 8B. 45, 0C
        lea     ecx, [eax-24H]                          ; 0775 _ 8D. 48, DC
        mov     eax, dword [ebp+10H]                    ; 0778 _ 8B. 45, 10
        lea     edx, [eax-0BH]                          ; 077B _ 8D. 50, F5
        mov     eax, dword [ebp+0CH]                    ; 077E _ 8B. 45, 0C
        sub     eax, 36                                 ; 0781 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 0784 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0788 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 078C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0790 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0794 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 079C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 079F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07A6 _ 89. 04 24
        call    _boxfill8                               ; 07A9 _ E8, 00000356
        mov     eax, dword [ebp+10H]                    ; 07AE _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 07B1 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 07B4 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 07B7 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 07BA _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 07BD _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 07C0 _ 8B. 45, 0C
        sub     eax, 36                                 ; 07C3 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 07C6 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 07CA _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 07CE _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 07D2 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 07D6 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 07DE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07E1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07E5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07E8 _ 89. 04 24
        call    _boxfill8                               ; 07EB _ E8, 00000314
        mov     eax, dword [ebp+10H]                    ; 07F0 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 07F3 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 07F6 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 07F9 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 07FC _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 07FF _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 0802 _ 8B. 45, 0C
        sub     eax, 3                                  ; 0805 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0808 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 080C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0810 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0814 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0818 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0820 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0823 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0827 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 082A _ 89. 04 24
        call    _boxfill8                               ; 082D _ E8, 000002D2
        nop                                             ; 0832 _ 90
        add     esp, 36                                 ; 0833 _ 83. C4, 24
        pop     ebx                                     ; 0836 _ 5B
        pop     ebp                                     ; 0837 _ 5D
        ret                                             ; 0838 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0839 _ 55
        mov     ebp, esp                                ; 083A _ 89. E5
        sub     esp, 40                                 ; 083C _ 83. EC, 28
        mov     eax, dword [ebp+10H]                    ; 083F _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 0842 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0845 _ A1, 00000110(d)
        add     eax, edx                                ; 084A _ 01. D0
        mov     dword [_mx], eax                        ; 084C _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 0851 _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0854 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0857 _ A1, 00000114(d)
        add     eax, edx                                ; 085C _ 01. D0
        mov     dword [_my], eax                        ; 085E _ A3, 00000114(d)
        mov     eax, dword [_mx]                        ; 0863 _ A1, 00000110(d)
        test    eax, eax                                ; 0868 _ 85. C0
        jns     ?_005                                   ; 086A _ 79, 0A
        mov     dword [_mx], 0                          ; 086C _ C7. 05, 00000110(d), 00000000
?_005:  mov     eax, dword [_my]                        ; 0876 _ A1, 00000114(d)
        test    eax, eax                                ; 087B _ 85. C0
        jns     ?_006                                   ; 087D _ 79, 0A
        mov     dword [_my], 0                          ; 087F _ C7. 05, 00000114(d), 00000000
?_006:  mov     edx, dword [_xsize]                     ; 0889 _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 088F _ A1, 00000110(d)
        cmp     edx, eax                                ; 0894 _ 39. C2
        jg      ?_007                                   ; 0896 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0898 _ A1, 00000118(d)
        sub     eax, 1                                  ; 089D _ 83. E8, 01
        mov     dword [_mx], eax                        ; 08A0 _ A3, 00000110(d)
?_007:  mov     edx, dword [_ysize]                     ; 08A5 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_my]                        ; 08AB _ A1, 00000114(d)
        cmp     edx, eax                                ; 08B0 _ 39. C2
        jg      ?_008                                   ; 08B2 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 08B4 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 08B9 _ 83. E8, 01
        mov     dword [_my], eax                        ; 08BC _ A3, 00000114(d)
?_008:  mov     dword [esp+14H], ?_150                  ; 08C1 _ C7. 44 24, 14, 0000000F(d)
        mov     dword [esp+10H], 7                      ; 08C9 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 08D1 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 08D9 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 08E1 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08E4 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08E8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08EB _ 89. 04 24
        call    _showString                             ; 08EE _ E8, 000000A4
        nop                                             ; 08F3 _ 90
        leave                                           ; 08F4 _ C9
        ret                                             ; 08F5 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 08F6 _ 55
        mov     ebp, esp                                ; 08F7 _ 89. E5
        sub     esp, 40                                 ; 08F9 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 08FC _ A1, 00000120(d)
        mov     dword [ebp-0CH], eax                    ; 0901 _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0904 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0908 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 090D _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 0914 _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 0919 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 091C _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 0920 _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0924 _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 092B _ E8, 00000748
        test    eax, eax                                ; 0930 _ 85. C0
        jz      ?_009                                   ; 0932 _ 74, 3F
        mov     dword [esp+8H], _mdec                   ; 0934 _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 093C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 093F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0943 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0946 _ 89. 04 24
        call    _computeMousePosition                   ; 0949 _ E8, FFFFFEEB
        mov     edx, dword [_my]                        ; 094E _ 8B. 15, 00000114(d)
        mov     eax, dword [_mx]                        ; 0954 _ A1, 00000110(d)
        mov     dword [esp+0CH], edx                    ; 0959 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 095D _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 0961 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 0964 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0968 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 096B _ 89. 04 24
        call    _sheet_slide                            ; 096E _ E8, 00000000(rel)
?_009:  nop                                             ; 0973 _ 90
        leave                                           ; 0974 _ C9
        ret                                             ; 0975 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0976 _ 55
        mov     ebp, esp                                ; 0977 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0979 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 097C _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 0982 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0985 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 098B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 098E _ 66: C7. 40, 06, 00C8
        nop                                             ; 0994 _ 90
        pop     ebp                                     ; 0995 _ 5D
        ret                                             ; 0996 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0997 _ 55
        mov     ebp, esp                                ; 0998 _ 89. E5
        push    ebx                                     ; 099A _ 53
        sub     esp, 68                                 ; 099B _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 099E _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 09A1 _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 09A4 _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 09A7 _ 89. 45, F4
        jmp     ?_011                                   ; 09AA _ EB, 4B

?_010:  mov     eax, dword [ebp+1CH]                    ; 09AC _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 09AF _ 0F B6. 00
        movzx   eax, al                                 ; 09B2 _ 0F B6. C0
        shl     eax, 4                                  ; 09B5 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 09B8 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 09BE _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 09C2 _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 09C5 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 09C8 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 09CB _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 09CD _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 09D1 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 09D5 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 09D8 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 09DC _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 09DF _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 09E3 _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 09E7 _ 89. 14 24
        call    _showFont8                              ; 09EA _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 09EF _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 09F3 _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 09F7 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 09FA _ 0F B6. 00
        test    al, al                                  ; 09FD _ 84. C0
        jnz     ?_010                                   ; 09FF _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 0A01 _ 8B. 45, 14
        add     eax, 16                                 ; 0A04 _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0A07 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0A0B _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0A0E _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0A12 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0A15 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0A19 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0A1C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0A20 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0A23 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0A27 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0A2A _ 89. 04 24
        call    _sheet_refresh                          ; 0A2D _ E8, 00000000(rel)
        nop                                             ; 0A32 _ 90
        add     esp, 68                                 ; 0A33 _ 83. C4, 44
        pop     ebx                                     ; 0A36 _ 5B
        pop     ebp                                     ; 0A37 _ 5D
        ret                                             ; 0A38 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0A39 _ 55
        mov     ebp, esp                                ; 0A3A _ 89. E5
        sub     esp, 24                                 ; 0A3C _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2213         ; 0A3F _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0A47 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0A4F _ C7. 04 24, 00000000
        call    _set_palette                            ; 0A56 _ E8, 00000003
        nop                                             ; 0A5B _ 90
        leave                                           ; 0A5C _ C9
        ret                                             ; 0A5D _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0A5E _ 55
        mov     ebp, esp                                ; 0A5F _ 89. E5
        sub     esp, 40                                 ; 0A61 _ 83. EC, 28
        call    _io_load_eflags                         ; 0A64 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0A69 _ 89. 45, F0
        call    _io_cli                                 ; 0A6C _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0A71 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0A74 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0A78 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0A7F _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0A84 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0A87 _ 89. 45, F4
        jmp     ?_013                                   ; 0A8A _ EB, 62

?_012:  mov     eax, dword [ebp+10H]                    ; 0A8C _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0A8F _ 0F B6. 00
        shr     al, 2                                   ; 0A92 _ C0. E8, 02
        movzx   eax, al                                 ; 0A95 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0A98 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0A9C _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0AA3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0AA8 _ 8B. 45, 10
        add     eax, 1                                  ; 0AAB _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0AAE _ 0F B6. 00
        shr     al, 2                                   ; 0AB1 _ C0. E8, 02
        movzx   eax, al                                 ; 0AB4 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0AB7 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0ABB _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0AC2 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0AC7 _ 8B. 45, 10
        add     eax, 2                                  ; 0ACA _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0ACD _ 0F B6. 00
        shr     al, 2                                   ; 0AD0 _ C0. E8, 02
        movzx   eax, al                                 ; 0AD3 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0AD6 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0ADA _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0AE1 _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0AE6 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0AEA _ 83. 45, F4, 01
?_013:  mov     eax, dword [ebp-0CH]                    ; 0AEE _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0AF1 _ 3B. 45, 0C
        jle     ?_012                                   ; 0AF4 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0AF6 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0AF9 _ 89. 04 24
        call    _io_store_eflags                        ; 0AFC _ E8, 00000000(rel)
        nop                                             ; 0B01 _ 90
        leave                                           ; 0B02 _ C9
        ret                                             ; 0B03 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0B04 _ 55
        mov     ebp, esp                                ; 0B05 _ 89. E5
        sub     esp, 20                                 ; 0B07 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0B0A _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0B0D _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0B10 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0B13 _ 89. 45, F8
        jmp     ?_017                                   ; 0B16 _ EB, 31

?_014:  mov     eax, dword [ebp+14H]                    ; 0B18 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0B1B _ 89. 45, FC
        jmp     ?_016                                   ; 0B1E _ EB, 1D

?_015:  mov     eax, dword [ebp-8H]                     ; 0B20 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0B23 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0B27 _ 8B. 55, FC
        add     eax, edx                                ; 0B2A _ 01. D0
        mov     edx, eax                                ; 0B2C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B2E _ 8B. 45, 08
        add     edx, eax                                ; 0B31 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B33 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B37 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0B39 _ 83. 45, FC, 01
?_016:  mov     eax, dword [ebp-4H]                     ; 0B3D _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0B40 _ 3B. 45, 1C
        jle     ?_015                                   ; 0B43 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0B45 _ 83. 45, F8, 01
?_017:  mov     eax, dword [ebp-8H]                     ; 0B49 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0B4C _ 3B. 45, 20
        jle     ?_014                                   ; 0B4F _ 7E, C7
        nop                                             ; 0B51 _ 90
        leave                                           ; 0B52 _ C9
        ret                                             ; 0B53 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0B54 _ 55
        mov     ebp, esp                                ; 0B55 _ 89. E5
        sub     esp, 20                                 ; 0B57 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0B5A _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0B5D _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0B60 _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 0B67 _ E9, 0000015C

?_018:  mov     edx, dword [ebp-4H]                     ; 0B6C _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0B6F _ 8B. 45, 1C
        add     eax, edx                                ; 0B72 _ 01. D0
        movzx   eax, byte [eax]                         ; 0B74 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0B77 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0B7A _ 80. 7D, FB, 00
        jns     ?_019                                   ; 0B7E _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0B80 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B83 _ 8B. 45, FC
        add     eax, edx                                ; 0B86 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B88 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B8C _ 8B. 55, 10
        add     eax, edx                                ; 0B8F _ 01. D0
        mov     edx, eax                                ; 0B91 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B93 _ 8B. 45, 08
        add     edx, eax                                ; 0B96 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B98 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B9C _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0B9E _ 0F BE. 45, FB
        and     eax, 40H                                ; 0BA2 _ 83. E0, 40
        test    eax, eax                                ; 0BA5 _ 85. C0
        jz      ?_020                                   ; 0BA7 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BA9 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BAC _ 8B. 45, FC
        add     eax, edx                                ; 0BAF _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BB1 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BB5 _ 8B. 55, 10
        add     eax, edx                                ; 0BB8 _ 01. D0
        lea     edx, [eax+1H]                           ; 0BBA _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0BBD _ 8B. 45, 08
        add     edx, eax                                ; 0BC0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BC2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BC6 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0BC8 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0BCC _ 83. E0, 20
        test    eax, eax                                ; 0BCF _ 85. C0
        jz      ?_021                                   ; 0BD1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BD3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BD6 _ 8B. 45, FC
        add     eax, edx                                ; 0BD9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BDB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BDF _ 8B. 55, 10
        add     eax, edx                                ; 0BE2 _ 01. D0
        lea     edx, [eax+2H]                           ; 0BE4 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0BE7 _ 8B. 45, 08
        add     edx, eax                                ; 0BEA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BEC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BF0 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0BF2 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0BF6 _ 83. E0, 10
        test    eax, eax                                ; 0BF9 _ 85. C0
        jz      ?_022                                   ; 0BFB _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BFD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C00 _ 8B. 45, FC
        add     eax, edx                                ; 0C03 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C05 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C09 _ 8B. 55, 10
        add     eax, edx                                ; 0C0C _ 01. D0
        lea     edx, [eax+3H]                           ; 0C0E _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0C11 _ 8B. 45, 08
        add     edx, eax                                ; 0C14 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C16 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C1A _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0C1C _ 0F BE. 45, FB
        and     eax, 08H                                ; 0C20 _ 83. E0, 08
        test    eax, eax                                ; 0C23 _ 85. C0
        jz      ?_023                                   ; 0C25 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0C27 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C2A _ 8B. 45, FC
        add     eax, edx                                ; 0C2D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C2F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C33 _ 8B. 55, 10
        add     eax, edx                                ; 0C36 _ 01. D0
        lea     edx, [eax+4H]                           ; 0C38 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C3B _ 8B. 45, 08
        add     edx, eax                                ; 0C3E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C40 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C44 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0C46 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0C4A _ 83. E0, 04
        test    eax, eax                                ; 0C4D _ 85. C0
        jz      ?_024                                   ; 0C4F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0C51 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C54 _ 8B. 45, FC
        add     eax, edx                                ; 0C57 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C59 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C5D _ 8B. 55, 10
        add     eax, edx                                ; 0C60 _ 01. D0
        lea     edx, [eax+5H]                           ; 0C62 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0C65 _ 8B. 45, 08
        add     edx, eax                                ; 0C68 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C6A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C6E _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0C70 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0C74 _ 83. E0, 02
        test    eax, eax                                ; 0C77 _ 85. C0
        jz      ?_025                                   ; 0C79 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0C7B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C7E _ 8B. 45, FC
        add     eax, edx                                ; 0C81 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C83 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C87 _ 8B. 55, 10
        add     eax, edx                                ; 0C8A _ 01. D0
        lea     edx, [eax+6H]                           ; 0C8C _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0C8F _ 8B. 45, 08
        add     edx, eax                                ; 0C92 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C94 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C98 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0C9A _ 0F BE. 45, FB
        and     eax, 01H                                ; 0C9E _ 83. E0, 01
        test    eax, eax                                ; 0CA1 _ 85. C0
        jz      ?_026                                   ; 0CA3 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0CA5 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0CA8 _ 8B. 45, FC
        add     eax, edx                                ; 0CAB _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0CAD _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0CB1 _ 8B. 55, 10
        add     eax, edx                                ; 0CB4 _ 01. D0
        lea     edx, [eax+7H]                           ; 0CB6 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0CB9 _ 8B. 45, 08
        add     edx, eax                                ; 0CBC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0CBE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0CC2 _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 0CC4 _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 0CC8 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 0CCC _ 0F 8E, FFFFFE9A
        nop                                             ; 0CD2 _ 90
        leave                                           ; 0CD3 _ C9
        ret                                             ; 0CD4 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0CD5 _ 55
        mov     ebp, esp                                ; 0CD6 _ 89. E5
        sub     esp, 20                                 ; 0CD8 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0CDB _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0CDE _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0CE1 _ C7. 45, F8, 00000000
        jmp     ?_034                                   ; 0CE8 _ E9, 000000B1

?_028:  mov     dword [ebp-4H], 0                       ; 0CED _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 0CF4 _ E9, 00000097

?_029:  mov     eax, dword [ebp-8H]                     ; 0CF9 _ 8B. 45, F8
        shl     eax, 4                                  ; 0CFC _ C1. E0, 04
        mov     edx, eax                                ; 0CFF _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D01 _ 8B. 45, FC
        add     eax, edx                                ; 0D04 _ 01. D0
        add     eax, _cursor.2260                       ; 0D06 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0D0B _ 0F B6. 00
        cmp     al, 42                                  ; 0D0E _ 3C, 2A
        jnz     ?_030                                   ; 0D10 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0D12 _ 8B. 45, F8
        shl     eax, 4                                  ; 0D15 _ C1. E0, 04
        mov     edx, eax                                ; 0D18 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D1A _ 8B. 45, FC
        add     eax, edx                                ; 0D1D _ 01. D0
        mov     edx, eax                                ; 0D1F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D21 _ 8B. 45, 08
        add     eax, edx                                ; 0D24 _ 01. D0
        mov     byte [eax], 0                           ; 0D26 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-8H]                     ; 0D29 _ 8B. 45, F8
        shl     eax, 4                                  ; 0D2C _ C1. E0, 04
        mov     edx, eax                                ; 0D2F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D31 _ 8B. 45, FC
        add     eax, edx                                ; 0D34 _ 01. D0
        add     eax, _cursor.2260                       ; 0D36 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0D3B _ 0F B6. 00
        cmp     al, 79                                  ; 0D3E _ 3C, 4F
        jnz     ?_031                                   ; 0D40 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0D42 _ 8B. 45, F8
        shl     eax, 4                                  ; 0D45 _ C1. E0, 04
        mov     edx, eax                                ; 0D48 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D4A _ 8B. 45, FC
        add     eax, edx                                ; 0D4D _ 01. D0
        mov     edx, eax                                ; 0D4F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D51 _ 8B. 45, 08
        add     eax, edx                                ; 0D54 _ 01. D0
        mov     byte [eax], 7                           ; 0D56 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-8H]                     ; 0D59 _ 8B. 45, F8
        shl     eax, 4                                  ; 0D5C _ C1. E0, 04
        mov     edx, eax                                ; 0D5F _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D61 _ 8B. 45, FC
        add     eax, edx                                ; 0D64 _ 01. D0
        add     eax, _cursor.2260                       ; 0D66 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0D6B _ 0F B6. 00
        cmp     al, 46                                  ; 0D6E _ 3C, 2E
        jnz     ?_032                                   ; 0D70 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0D72 _ 8B. 45, F8
        shl     eax, 4                                  ; 0D75 _ C1. E0, 04
        mov     edx, eax                                ; 0D78 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D7A _ 8B. 45, FC
        add     eax, edx                                ; 0D7D _ 01. D0
        mov     edx, eax                                ; 0D7F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D81 _ 8B. 45, 08
        add     edx, eax                                ; 0D84 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D86 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D8A _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 0D8C _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 0D90 _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 0D94 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0D9A _ 83. 45, F8, 01
?_034:  cmp     dword [ebp-8H], 15                      ; 0D9E _ 83. 7D, F8, 0F
        jle     ?_028                                   ; 0DA2 _ 0F 8E, FFFFFF45
        nop                                             ; 0DA8 _ 90
        leave                                           ; 0DA9 _ C9
        ret                                             ; 0DAA _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0DAB _ 55
        mov     ebp, esp                                ; 0DAC _ 89. E5
        push    ebx                                     ; 0DAE _ 53
        sub     esp, 16                                 ; 0DAF _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0DB2 _ C7. 45, F4, 00000000
        jmp     ?_038                                   ; 0DB9 _ EB, 4E

?_035:  mov     dword [ebp-8H], 0                       ; 0DBB _ C7. 45, F8, 00000000
        jmp     ?_037                                   ; 0DC2 _ EB, 39

?_036:  mov     eax, dword [ebp-0CH]                    ; 0DC4 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0DC7 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0DCB _ 8B. 55, F8
        add     eax, edx                                ; 0DCE _ 01. D0
        mov     edx, eax                                ; 0DD0 _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0DD2 _ 8B. 45, 20
        add     eax, edx                                ; 0DD5 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0DD7 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0DDA _ 8B. 55, F4
        add     edx, ecx                                ; 0DDD _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0DDF _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0DE3 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0DE6 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0DE9 _ 01. D9
        add     edx, ecx                                ; 0DEB _ 01. CA
        mov     ecx, edx                                ; 0DED _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0DEF _ 8B. 55, 08
        add     edx, ecx                                ; 0DF2 _ 01. CA
        movzx   eax, byte [eax]                         ; 0DF4 _ 0F B6. 00
        mov     byte [edx], al                          ; 0DF7 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0DF9 _ 83. 45, F8, 01
?_037:  mov     eax, dword [ebp-8H]                     ; 0DFD _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0E00 _ 3B. 45, 10
        jl      ?_036                                   ; 0E03 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0E05 _ 83. 45, F4, 01
?_038:  mov     eax, dword [ebp-0CH]                    ; 0E09 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0E0C _ 3B. 45, 14
        jl      ?_035                                   ; 0E0F _ 7C, AA
        nop                                             ; 0E11 _ 90
        add     esp, 16                                 ; 0E12 _ 83. C4, 10
        pop     ebx                                     ; 0E15 _ 5B
        pop     ebp                                     ; 0E16 _ 5D
        ret                                             ; 0E17 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0E18 _ 55
        mov     ebp, esp                                ; 0E19 _ 89. E5
        sub     esp, 40                                 ; 0E1B _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0E1E _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0E23 _ 89. 45, F4
        movzx   eax, word [?_159]                       ; 0E26 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0E2D _ 98
        mov     dword [ebp-10H], eax                    ; 0E2E _ 89. 45, F0
        movzx   eax, word [?_160]                       ; 0E31 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E38 _ 98
        mov     dword [ebp-14H], eax                    ; 0E39 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0E3C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0E44 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0E4B _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0E50 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0E54 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0E5B _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0E60 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0E63 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0E67 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0E6B _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0E72 _ E8, 00000000(rel)
        nop                                             ; 0E77 _ 90
        leave                                           ; 0E78 _ C9
        ret                                             ; 0E79 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0E7A _ 55
        mov     ebp, esp                                ; 0E7B _ 89. E5
        sub     esp, 4                                  ; 0E7D _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0E80 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0E83 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0E86 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0E8A _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0E8C _ 0F B6. 45, FC
        add     eax, 55                                 ; 0E90 _ 83. C0, 37
        jmp     ?_040                                   ; 0E93 _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0E95 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0E99 _ 83. C0, 30
?_040:  leave                                           ; 0E9C _ C9
        ret                                             ; 0E9D _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0E9E _ 55
        mov     ebp, esp                                ; 0E9F _ 89. E5
        sub     esp, 24                                 ; 0EA1 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0EA4 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0EA7 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0EAA _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0EB1 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0EB5 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0EB8 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0EBB _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0EBF _ 89. 04 24
        call    _charToHexVal                           ; 0EC2 _ E8, FFFFFFB3
        mov     byte [?_147], al                        ; 0EC7 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0ECC _ 0F B6. 45, EC
        shr     al, 4                                   ; 0ED0 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0ED3 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0ED6 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0EDA _ 0F BE. C0
        mov     dword [esp], eax                        ; 0EDD _ 89. 04 24
        call    _charToHexVal                           ; 0EE0 _ E8, FFFFFF95
        mov     byte [?_146], al                        ; 0EE5 _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0EEA _ B8, 00000004(d)
        leave                                           ; 0EEF _ C9
        ret                                             ; 0EF0 _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0EF1 _ 55
        mov     ebp, esp                                ; 0EF2 _ 89. E5
        sub     esp, 16                                 ; 0EF4 _ 83. EC, 10
        mov     byte [_str.2308], 48                    ; 0EF7 _ C6. 05, 00000240(d), 30
        mov     byte [?_161], 88                        ; 0EFE _ C6. 05, 00000241(d), 58
        mov     byte [?_162], 0                         ; 0F05 _ C6. 05, 0000024A(d), 00
        mov     dword [ebp-4H], 2                       ; 0F0C _ C7. 45, FC, 00000002
        jmp     ?_042                                   ; 0F13 _ EB, 0F

?_041:  mov     eax, dword [ebp-4H]                     ; 0F15 _ 8B. 45, FC
        add     eax, _str.2308                          ; 0F18 _ 05, 00000240(d)
        mov     byte [eax], 48                          ; 0F1D _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0F20 _ 83. 45, FC, 01
?_042:  cmp     dword [ebp-4H], 9                       ; 0F24 _ 83. 7D, FC, 09
        jle     ?_041                                   ; 0F28 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0F2A _ C7. 45, F8, 00000009
        jmp     ?_046                                   ; 0F31 _ EB, 42

?_043:  mov     eax, dword [ebp+8H]                     ; 0F33 _ 8B. 45, 08
        and     eax, 0FH                                ; 0F36 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0F39 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0F3C _ 8B. 45, 08
        shr     eax, 4                                  ; 0F3F _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0F42 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0F45 _ 83. 7D, F4, 09
        jle     ?_044                                   ; 0F49 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0F4B _ 8B. 45, F4
        add     eax, 55                                 ; 0F4E _ 83. C0, 37
        mov     edx, eax                                ; 0F51 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F53 _ 8B. 45, F8
        add     eax, _str.2308                          ; 0F56 _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 0F5B _ 88. 10
        jmp     ?_045                                   ; 0F5D _ EB, 12

?_044:  mov     eax, dword [ebp-0CH]                    ; 0F5F _ 8B. 45, F4
        add     eax, 48                                 ; 0F62 _ 83. C0, 30
        mov     edx, eax                                ; 0F65 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F67 _ 8B. 45, F8
        add     eax, _str.2308                          ; 0F6A _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 0F6F _ 88. 10
?_045:  sub     dword [ebp-8H], 1                       ; 0F71 _ 83. 6D, F8, 01
?_046:  cmp     dword [ebp-8H], 1                       ; 0F75 _ 83. 7D, F8, 01
        jle     ?_047                                   ; 0F79 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0F7B _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 0F7F _ 75, B2
?_047:  mov     eax, _str.2308                          ; 0F81 _ B8, 00000240(d)
        leave                                           ; 0F86 _ C9
        ret                                             ; 0F87 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0F88 _ 55
        mov     ebp, esp                                ; 0F89 _ 89. E5
        sub     esp, 24                                 ; 0F8B _ 83. EC, 18
?_048:  mov     dword [esp], 100                        ; 0F8E _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0F95 _ E8, 00000000(rel)
        and     eax, 02H                                ; 0F9A _ 83. E0, 02
        test    eax, eax                                ; 0F9D _ 85. C0
        jz      ?_049                                   ; 0F9F _ 74, 02
        jmp     ?_048                                   ; 0FA1 _ EB, EB
; _wait_KBC_sendready End of function

?_049:  ; Local function
        nop                                             ; 0FA3 _ 90
        nop                                             ; 0FA4 _ 90
        leave                                           ; 0FA5 _ C9
        ret                                             ; 0FA6 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0FA7 _ 55
        mov     ebp, esp                                ; 0FA8 _ 89. E5
        sub     esp, 24                                 ; 0FAA _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0FAD _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0FB2 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0FBA _ C7. 04 24, 00000064
        call    _io_out8                                ; 0FC1 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0FC6 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0FCB _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0FD3 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0FDA _ E8, 00000000(rel)
        nop                                             ; 0FDF _ 90
        leave                                           ; 0FE0 _ C9
        ret                                             ; 0FE1 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0FE2 _ 55
        mov     ebp, esp                                ; 0FE3 _ 89. E5
        sub     esp, 24                                 ; 0FE5 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0FE8 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0FED _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0FF5 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0FFC _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 1001 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 1006 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 100E _ C7. 04 24, 00000060
        call    _io_out8                                ; 1015 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 101A _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 101D _ C6. 40, 03, 00
        nop                                             ; 1021 _ 90
        leave                                           ; 1022 _ C9
        ret                                             ; 1023 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 1024 _ 55
        mov     ebp, esp                                ; 1025 _ 89. E5
        sub     esp, 40                                 ; 1027 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 102A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 1032 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 1039 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 103E _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1046 _ C7. 04 24, 00000020
        call    _io_out8                                ; 104D _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 1052 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1059 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 105E _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 1061 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1065 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1069 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 1070 _ E8, 00000000(rel)
        nop                                             ; 1075 _ 90
        leave                                           ; 1076 _ C9
        ret                                             ; 1077 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1078 _ 55
        mov     ebp, esp                                ; 1079 _ 89. E5
        sub     esp, 4                                  ; 107B _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 107E _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 1081 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1084 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1087 _ 0F B6. 40, 03
        test    al, al                                  ; 108B _ 84. C0
        jnz     ?_051                                   ; 108D _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 108F _ 80. 7D, FC, FA
        jnz     ?_050                                   ; 1093 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1095 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1098 _ C6. 40, 03, 01
?_050:  mov     eax, 0                                  ; 109C _ B8, 00000000
        jmp     ?_058                                   ; 10A1 _ E9, 0000010F

?_051:  mov     eax, dword [ebp+8H]                     ; 10A6 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10A9 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 10AD _ 3C, 01
        jnz     ?_053                                   ; 10AF _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 10B1 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 10B5 _ 25, 000000C8
        cmp     eax, 8                                  ; 10BA _ 83. F8, 08
        jnz     ?_052                                   ; 10BD _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 10BF _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 10C2 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 10C6 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 10C8 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 10CB _ C6. 40, 03, 02
?_052:  mov     eax, 0                                  ; 10CF _ B8, 00000000
        jmp     ?_058                                   ; 10D4 _ E9, 000000DC

?_053:  mov     eax, dword [ebp+8H]                     ; 10D9 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10DC _ 0F B6. 40, 03
        cmp     al, 2                                   ; 10E0 _ 3C, 02
        jnz     ?_054                                   ; 10E2 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 10E4 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 10E7 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 10EB _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 10EE _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 10F1 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 10F5 _ B8, 00000000
        jmp     ?_058                                   ; 10FA _ E9, 000000B6

?_054:  mov     eax, dword [ebp+8H]                     ; 10FF _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1102 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1106 _ 3C, 03
        jne     ?_057                                   ; 1108 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 110E _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1111 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1115 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1118 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 111B _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 111F _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1122 _ 0F B6. 00
        movzx   eax, al                                 ; 1125 _ 0F B6. C0
        and     eax, 07H                                ; 1128 _ 83. E0, 07
        mov     edx, eax                                ; 112B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 112D _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1130 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1133 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1136 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 113A _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 113D _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1140 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1143 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1146 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 114A _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 114D _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1150 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1153 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1156 _ 0F B6. 00
        movzx   eax, al                                 ; 1159 _ 0F B6. C0
        and     eax, 10H                                ; 115C _ 83. E0, 10
        test    eax, eax                                ; 115F _ 85. C0
        jz      ?_055                                   ; 1161 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1163 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1166 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1169 _ 0D, FFFFFF00
        mov     edx, eax                                ; 116E _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1170 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1173 _ 89. 50, 04
?_055:  mov     eax, dword [ebp+8H]                     ; 1176 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1179 _ 0F B6. 00
        movzx   eax, al                                 ; 117C _ 0F B6. C0
        and     eax, 20H                                ; 117F _ 83. E0, 20
        test    eax, eax                                ; 1182 _ 85. C0
        jz      ?_056                                   ; 1184 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1186 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1189 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 118C _ 0D, FFFFFF00
        mov     edx, eax                                ; 1191 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1193 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1196 _ 89. 50, 08
?_056:  mov     eax, dword [ebp+8H]                     ; 1199 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 119C _ 8B. 40, 08
        neg     eax                                     ; 119F _ F7. D8
        mov     edx, eax                                ; 11A1 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11A3 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11A6 _ 89. 50, 08
        mov     eax, 1                                  ; 11A9 _ B8, 00000001
        jmp     ?_058                                   ; 11AE _ EB, 05

?_057:  mov     eax, 4294967295                         ; 11B0 _ B8, FFFFFFFF
?_058:  leave                                           ; 11B5 _ C9
        ret                                             ; 11B6 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 11B7 _ 55
        mov     ebp, esp                                ; 11B8 _ 89. E5
        sub     esp, 88                                 ; 11BA _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 11BD _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 11C4 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 11CB _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 11D2 _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 11D9 _ 8B. 15, 0000011C(d)
        mov     eax, dword [ebp+0CH]                    ; 11DF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 11E2 _ 8B. 00
        mov     dword [esp+8H], edx                     ; 11E4 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 11E8 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 11EB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11EF _ 89. 04 24
        call    _init_screen8                           ; 11F2 _ E8, FFFFF2BA
        mov     eax, dword [ebp+20H]                    ; 11F7 _ 8B. 45, 20
        movsx   eax, al                                 ; 11FA _ 0F BE. C0
        mov     dword [esp+14H], ?_151                  ; 11FD _ C7. 44 24, 14, 00000026(d)
        mov     dword [esp+10H], eax                    ; 1205 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1209 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 120C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1210 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1213 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1217 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 121A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 121E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1221 _ 89. 04 24
        call    _showString                             ; 1224 _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 1229 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 122C _ 89. 04 24
        call    _intToHexStr                            ; 122F _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 1234 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1237 _ 8B. 45, 20
        movsx   eax, al                                 ; 123A _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 123D _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 1240 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1244 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1248 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 124B _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 124F _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1252 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1256 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1259 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 125D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1260 _ 89. 04 24
        call    _showString                             ; 1263 _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1268 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 126C _ 8B. 45, 20
        movsx   eax, al                                 ; 126F _ 0F BE. C0
        mov     dword [esp+14H], ?_152                  ; 1272 _ C7. 44 24, 14, 00000030(d)
        mov     dword [esp+10H], eax                    ; 127A _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 127E _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1281 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1285 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1288 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 128C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 128F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1293 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1296 _ 89. 04 24
        call    _showString                             ; 1299 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 129E _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12A1 _ 8B. 00
        mov     dword [esp], eax                        ; 12A3 _ 89. 04 24
        call    _intToHexStr                            ; 12A6 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 12AB _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 12AE _ 8B. 45, 20
        movsx   eax, al                                 ; 12B1 _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 12B4 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 12B7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 12BB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12BF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12C2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 12C6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 12C9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12CD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12D0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12D4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12D7 _ 89. 04 24
        call    _showString                             ; 12DA _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 12DF _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 12E3 _ 8B. 45, 20
        movsx   eax, al                                 ; 12E6 _ 0F BE. C0
        mov     dword [esp+14H], ?_153                  ; 12E9 _ C7. 44 24, 14, 0000003C(d)
        mov     dword [esp+10H], eax                    ; 12F1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12F5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12F8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12FC _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12FF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1303 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1306 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 130A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 130D _ 89. 04 24
        call    _showString                             ; 1310 _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 1315 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1318 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 131B _ 89. 04 24
        call    _intToHexStr                            ; 131E _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 1323 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1326 _ 8B. 45, 20
        movsx   eax, al                                 ; 1329 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 132C _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 132F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1333 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1337 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 133A _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 133E _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1341 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1345 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1348 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 134C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 134F _ 89. 04 24
        call    _showString                             ; 1352 _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1357 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 135B _ 8B. 45, 20
        movsx   eax, al                                 ; 135E _ 0F BE. C0
        mov     dword [esp+14H], ?_154                  ; 1361 _ C7. 44 24, 14, 00000048(d)
        mov     dword [esp+10H], eax                    ; 1369 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 136D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1370 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1374 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1377 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 137B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 137E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1382 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1385 _ 89. 04 24
        call    _showString                             ; 1388 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 138D _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 1390 _ 8B. 40, 08
        mov     dword [esp], eax                        ; 1393 _ 89. 04 24
        call    _intToHexStr                            ; 1396 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 139B _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 139E _ 8B. 45, 20
        movsx   eax, al                                 ; 13A1 _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 13A4 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 13A7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13AB _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13AF _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13B2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13B6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13B9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13BD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13C0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13C4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13C7 _ 89. 04 24
        call    _showString                             ; 13CA _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 13CF _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 13D3 _ 8B. 45, 20
        movsx   eax, al                                 ; 13D6 _ 0F BE. C0
        mov     dword [esp+14H], ?_155                  ; 13D9 _ C7. 44 24, 14, 00000054(d)
        mov     dword [esp+10H], eax                    ; 13E1 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13E5 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13E8 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13EC _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13EF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13F3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13F6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13FA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13FD _ 89. 04 24
        call    _showString                             ; 1400 _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 1405 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1408 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 140B _ 89. 04 24
        call    _intToHexStr                            ; 140E _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 1413 _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 1416 _ 8B. 45, 20
        movsx   eax, al                                 ; 1419 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 141C _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 141F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1423 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1427 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 142A _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 142E _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1431 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1435 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1438 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 143C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 143F _ 89. 04 24
        call    _showString                             ; 1442 _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 1447 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 144B _ 8B. 45, 20
        movsx   eax, al                                 ; 144E _ 0F BE. C0
        mov     dword [esp+14H], ?_156                  ; 1451 _ C7. 44 24, 14, 00000061(d)
        mov     dword [esp+10H], eax                    ; 1459 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 145D _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1460 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1464 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1467 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 146B _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 146E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1472 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1475 _ 89. 04 24
        call    _showString                             ; 1478 _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 147D _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 1480 _ 8B. 40, 10
        mov     dword [esp], eax                        ; 1483 _ 89. 04 24
        call    _intToHexStr                            ; 1486 _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 148B _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 148E _ 8B. 45, 20
        movsx   eax, al                                 ; 1491 _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 1494 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 1497 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 149B _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 149F _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14A2 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14A6 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14A9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14AD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14B0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14B4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14B7 _ 89. 04 24
        call    _showString                             ; 14BA _ E8, FFFFF4D8
        nop                                             ; 14BF _ 90
        leave                                           ; 14C0 _ C9
        ret                                             ; 14C1 _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 14C2 _ 55
        mov     ebp, esp                                ; 14C3 _ 89. E5
        sub     esp, 56                                 ; 14C5 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 14C8 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14CB _ 89. 04 24
        call    _sheet_alloc                            ; 14CE _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 14D3 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 14D6 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 14DB _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 14E3 _ 89. 04 24
        call    _memman_alloc_4k                        ; 14E6 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 14EB _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 14EE _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 14F6 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 14FE _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1506 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1509 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 150D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 1510 _ 89. 04 24
        call    _sheet_setbuf                           ; 1513 _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1518 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 151B _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 151F _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1522 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1526 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1529 _ 89. 04 24
        call    _make_window8                           ; 152C _ E8, 000000A5
        mov     dword [esp+14H], ?_157                  ; 1531 _ C7. 44 24, 14, 00000068(d)
        mov     dword [esp+10H], 0                      ; 1539 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 1541 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 1549 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 1551 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1554 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1558 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 155B _ 89. 04 24
        call    _showString                             ; 155E _ E8, FFFFF434
        mov     dword [esp+14H], ?_158                  ; 1563 _ C7. 44 24, 14, 00000073(d)
        mov     dword [esp+10H], 0                      ; 156B _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 44                     ; 1573 _ C7. 44 24, 0C, 0000002C
        mov     dword [esp+8H], 24                      ; 157B _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 1583 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1586 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 158A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 158D _ 89. 04 24
        call    _showString                             ; 1590 _ E8, FFFFF402
        mov     dword [esp+0CH], 72                     ; 1595 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 159D _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 15A5 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15A8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15AC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15AF _ 89. 04 24
        call    _sheet_slide                            ; 15B2 _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 15B7 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 15BF _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15C2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15C6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15C9 _ 89. 04 24
        call    _sheet_updown                           ; 15CC _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 15D1 _ 8B. 45, F4
        leave                                           ; 15D4 _ C9
        ret                                             ; 15D5 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 15D6 _ 55
        mov     ebp, esp                                ; 15D7 _ 89. E5
        push    ebx                                     ; 15D9 _ 53
        sub     esp, 68                                 ; 15DA _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 15DD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15E0 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 15E3 _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 15E6 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 15E9 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 15EC _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 15EF _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 15F2 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 15F5 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15F8 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 15FA _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 1602 _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1606 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 160E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1616 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 161E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1621 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1625 _ 89. 04 24
        call    _boxfill8                               ; 1628 _ E8, FFFFF4D7
        mov     eax, dword [ebp-18H]                    ; 162D _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1630 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1633 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1636 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1638 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 1640 _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 1644 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 164C _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 1654 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 165C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 165F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1663 _ 89. 04 24
        call    _boxfill8                               ; 1666 _ E8, FFFFF499
        mov     eax, dword [ebp-1CH]                    ; 166B _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 166E _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1671 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1674 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1676 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 167A _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 1682 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 168A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1692 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 169A _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 169D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16A1 _ 89. 04 24
        call    _boxfill8                               ; 16A4 _ E8, FFFFF45B
        mov     eax, dword [ebp-1CH]                    ; 16A9 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 16AC _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16AF _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16B2 _ 8B. 00
        mov     dword [esp+18H], edx                    ; 16B4 _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 16B8 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 16C0 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 16C8 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 16D0 _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 16D8 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16DB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16DF _ 89. 04 24
        call    _boxfill8                               ; 16E2 _ E8, FFFFF41D
        mov     eax, dword [ebp-1CH]                    ; 16E7 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 16EA _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 16ED _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 16F0 _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 16F3 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 16F6 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 16F9 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16FC _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 16FE _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1702 _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1706 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 170E _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 1712 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 171A _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 171D _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1721 _ 89. 04 24
        call    _boxfill8                               ; 1724 _ E8, FFFFF3DB
        mov     eax, dword [ebp-1CH]                    ; 1729 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 172C _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 172F _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1732 _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1735 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1738 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 173B _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 173E _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1740 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1744 _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1748 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 1750 _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 1754 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 175C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 175F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1763 _ 89. 04 24
        call    _boxfill8                               ; 1766 _ E8, FFFFF399
        mov     eax, dword [ebp-1CH]                    ; 176B _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 176E _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 1771 _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 1774 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1777 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 177A _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 177C _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 1780 _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 1784 _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 178C _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 1794 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 179C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 179F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17A3 _ 89. 04 24
        call    _boxfill8                               ; 17A6 _ E8, FFFFF359
        mov     eax, dword [ebp-18H]                    ; 17AB _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 17AE _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 17B1 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17B4 _ 8B. 00
        mov     dword [esp+18H], 20                     ; 17B6 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 17BE _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 17C2 _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 17CA _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 17D2 _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 17DA _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17E1 _ 89. 04 24
        call    _boxfill8                               ; 17E4 _ E8, FFFFF31B
        mov     eax, dword [ebp-1CH]                    ; 17E9 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 17EC _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 17EF _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 17F2 _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 17F5 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 17F8 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 17FB _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17FE _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1800 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1804 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1808 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 180C _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 1814 _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 181C _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 181F _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1823 _ 89. 04 24
        call    _boxfill8                               ; 1826 _ E8, FFFFF2D9
        mov     eax, dword [ebp-1CH]                    ; 182B _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 182E _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 1831 _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 1834 _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1837 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 183A _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 183D _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1840 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1842 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1846 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 184A _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 184E _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1856 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 185E _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1861 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1865 _ 89. 04 24
        call    _boxfill8                               ; 1868 _ E8, FFFFF297
        mov     eax, dword [ebp+10H]                    ; 186D _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 1870 _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 1874 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 187C _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 1884 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 188C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 188F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1893 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1896 _ 89. 04 24
        call    _showString                             ; 1899 _ E8, FFFFF0F9
        mov     dword [ebp-10H], 0                      ; 189E _ C7. 45, F0, 00000000
        jmp     ?_066                                   ; 18A5 _ E9, 00000084

?_059:  mov     dword [ebp-0CH], 0                      ; 18AA _ C7. 45, F4, 00000000
        jmp     ?_065                                   ; 18B1 _ EB, 71

?_060:  mov     eax, dword [ebp-10H]                    ; 18B3 _ 8B. 45, F0
        shl     eax, 4                                  ; 18B6 _ C1. E0, 04
        mov     edx, eax                                ; 18B9 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 18BB _ 8B. 45, F4
        add     eax, edx                                ; 18BE _ 01. D0
        add     eax, _closebtn.2372                     ; 18C0 _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 18C5 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 18C8 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 18CB _ 80. 7D, EF, 40
        jnz     ?_061                                   ; 18CF _ 75, 06
        mov     byte [ebp-11H], 0                       ; 18D1 _ C6. 45, EF, 00
        jmp     ?_064                                   ; 18D5 _ EB, 1C

?_061:  cmp     byte [ebp-11H], 36                      ; 18D7 _ 80. 7D, EF, 24
        jnz     ?_062                                   ; 18DB _ 75, 06
        mov     byte [ebp-11H], 15                      ; 18DD _ C6. 45, EF, 0F
        jmp     ?_064                                   ; 18E1 _ EB, 10

?_062:  cmp     byte [ebp-11H], 81                      ; 18E3 _ 80. 7D, EF, 51
        jnz     ?_063                                   ; 18E7 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 18E9 _ C6. 45, EF, 08
        jmp     ?_064                                   ; 18ED _ EB, 04

?_063:  mov     byte [ebp-11H], 7                       ; 18EF _ C6. 45, EF, 07
?_064:  mov     eax, dword [ebp+0CH]                    ; 18F3 _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 18F6 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 18F8 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 18FB _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 18FE _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1901 _ 8B. 40, 04
        imul    eax, edx                                ; 1904 _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1907 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 190A _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 190D _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 1910 _ 8B. 55, F4
        add     edx, ebx                                ; 1913 _ 01. DA
        add     eax, edx                                ; 1915 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1917 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 191A _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 191E _ 88. 02
        add     dword [ebp-0CH], 1                      ; 1920 _ 83. 45, F4, 01
?_065:  cmp     dword [ebp-0CH], 15                     ; 1924 _ 83. 7D, F4, 0F
        jle     ?_060                                   ; 1928 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 192A _ 83. 45, F0, 01
?_066:  cmp     dword [ebp-10H], 13                     ; 192E _ 83. 7D, F0, 0D
        jle     ?_059                                   ; 1932 _ 0F 8E, FFFFFF72
        nop                                             ; 1938 _ 90
        add     esp, 68                                 ; 1939 _ 83. C4, 44
        pop     ebx                                     ; 193C _ 5B
        pop     ebp                                     ; 193D _ 5D
        ret                                             ; 193E _ C3
; _make_window8 End of function

        nop                                             ; 193F _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 1940 _ 55
        mov     ebp, esp                                ; 1941 _ 89. E5
        sub     esp, 40                                 ; 1943 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 1946 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 194E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1951 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1954 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1959 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 195C _ 83. 7D, F0, 00
        jnz     ?_067                                   ; 1960 _ 75, 0A
        mov     eax, 0                                  ; 1962 _ B8, 00000000
        jmp     ?_071                                   ; 1967 _ E9, 0000009D

?_067:  mov     eax, dword [ebp+10H]                    ; 196C _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 196F _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 1973 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1977 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 197A _ 89. 04 24
        call    _memman_alloc_4k                        ; 197D _ E8, 00000000(rel)
        mov     edx, eax                                ; 1982 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1984 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 1987 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 198A _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 198D _ 8B. 40, 04
        test    eax, eax                                ; 1990 _ 85. C0
        jnz     ?_068                                   ; 1992 _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 1994 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 1997 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 199F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 19A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 19A6 _ 89. 04 24
        call    _memman_free_4k                         ; 19A9 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 19AE _ B8, 00000000
        jmp     ?_071                                   ; 19B3 _ EB, 54

?_068:  mov     eax, dword [ebp-10H]                    ; 19B5 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 19B8 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 19BB _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 19BD _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 19C0 _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 19C3 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 19C6 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 19C9 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 19CC _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 19CF _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 19D2 _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 19D9 _ C7. 45, F4, 00000000
        jmp     ?_070                                   ; 19E0 _ EB, 1B

?_069:  mov     edx, dword [ebp-10H]                    ; 19E2 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 19E5 _ 8B. 45, F4
        add     eax, 33                                 ; 19E8 _ 83. C0, 21
        shl     eax, 5                                  ; 19EB _ C1. E0, 05
        add     eax, edx                                ; 19EE _ 01. D0
        add     eax, 16                                 ; 19F0 _ 83. C0, 10
        mov     dword [eax], 0                          ; 19F3 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 19F9 _ 83. 45, F4, 01
?_070:  cmp     dword [ebp-0CH], 255                    ; 19FD _ 81. 7D, F4, 000000FF
        jle     ?_069                                   ; 1A04 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 1A06 _ 8B. 45, F0
?_071:  leave                                           ; 1A09 _ C9
        ret                                             ; 1A0A _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 1A0B _ 55
        mov     ebp, esp                                ; 1A0C _ 89. E5
        sub     esp, 16                                 ; 1A0E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1A11 _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 1A18 _ EB, 5B

?_072:  mov     edx, dword [ebp+8H]                     ; 1A1A _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1A1D _ 8B. 45, FC
        add     eax, 33                                 ; 1A20 _ 83. C0, 21
        shl     eax, 5                                  ; 1A23 _ C1. E0, 05
        add     eax, edx                                ; 1A26 _ 01. D0
        add     eax, 16                                 ; 1A28 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 1A2B _ 8B. 00
        test    eax, eax                                ; 1A2D _ 85. C0
        jnz     ?_073                                   ; 1A2F _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 1A31 _ 8B. 45, FC
        shl     eax, 5                                  ; 1A34 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1A37 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1A3D _ 8B. 45, 08
        add     eax, edx                                ; 1A40 _ 01. D0
        add     eax, 4                                  ; 1A42 _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 1A45 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1A48 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1A4B _ 8B. 55, FC
        add     edx, 4                                  ; 1A4E _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1A51 _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 1A54 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 1A58 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1A5B _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1A62 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1A65 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1A6C _ 8B. 45, F8
        jmp     ?_075                                   ; 1A6F _ EB, 12

?_073:  add     dword [ebp-4H], 1                       ; 1A71 _ 83. 45, FC, 01
?_074:  cmp     dword [ebp-4H], 255                     ; 1A75 _ 81. 7D, FC, 000000FF
        jle     ?_072                                   ; 1A7C _ 7E, 9C
        mov     eax, 0                                  ; 1A7E _ B8, 00000000
?_075:  leave                                           ; 1A83 _ C9
        ret                                             ; 1A84 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1A85 _ 55
        mov     ebp, esp                                ; 1A86 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1A88 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1A8B _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1A8E _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1A90 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A93 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1A96 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A99 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1A9C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1A9F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1AA2 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1AA5 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1AA8 _ 89. 50, 14
        nop                                             ; 1AAB _ 90
        pop     ebp                                     ; 1AAC _ 5D
        ret                                             ; 1AAD _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1AAE _ 55
        mov     ebp, esp                                ; 1AAF _ 89. E5
        push    edi                                     ; 1AB1 _ 57
        push    esi                                     ; 1AB2 _ 56
        push    ebx                                     ; 1AB3 _ 53
        sub     esp, 60                                 ; 1AB4 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1AB7 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1ABA _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 1ABD _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1AC0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1AC3 _ 8B. 40, 10
        add     eax, 1                                  ; 1AC6 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1AC9 _ 39. 45, 10
        jle     ?_076                                   ; 1ACC _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1ACE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1AD1 _ 8B. 40, 10
        add     eax, 1                                  ; 1AD4 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1AD7 _ 89. 45, 10
?_076:  cmp     dword [ebp+10H], -1                     ; 1ADA _ 83. 7D, 10, FF
        jge     ?_077                                   ; 1ADE _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1AE0 _ C7. 45, 10, FFFFFFFF
?_077:  mov     eax, dword [ebp+0CH]                    ; 1AE7 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1AEA _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1AED _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 1AF0 _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1AF3 _ 3B. 45, 10
        jle     ?_084                                   ; 1AF6 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 1AFC _ 83. 7D, 10, 00
        js      ?_080                                   ; 1B00 _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 1B06 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1B09 _ 89. 45, E4
        jmp     ?_079                                   ; 1B0C _ EB, 34

?_078:  mov     eax, dword [ebp-1CH]                    ; 1B0E _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1B11 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1B14 _ 8B. 45, 08
        add     edx, 4                                  ; 1B17 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1B1A _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1B1E _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1B21 _ 8B. 55, E4
        add     edx, 4                                  ; 1B24 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1B27 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1B2B _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1B2E _ 8B. 55, E4
        add     edx, 4                                  ; 1B31 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1B34 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1B38 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1B3B _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1B3E _ 83. 6D, E4, 01
?_079:  mov     eax, dword [ebp-1CH]                    ; 1B42 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1B45 _ 3B. 45, 10
        jg      ?_078                                   ; 1B48 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1B4A _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1B4D _ 8B. 55, 10
        add     edx, 4                                  ; 1B50 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1B53 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1B56 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 1B5A _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1B5D _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1B60 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B63 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B66 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B69 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1B6C _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1B6F _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1B72 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B75 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B78 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1B7B _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1B7E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B81 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B84 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1B87 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 1B8A _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1B8E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1B92 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1B96 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1B9A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BA1 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1BA4 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 1BA9 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1BAC _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1BAF _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BB2 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BB5 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1BB8 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1BBB _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1BBE _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1BC1 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1BC4 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BC7 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1BCA _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1BCD _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BD0 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BD3 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1BD6 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 1BD9 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 1BDC _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1BE0 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1BE4 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1BE8 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1BEC _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1BF0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BF4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BF7 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1BFA _ E8, 00000465
        jmp     ?_091                                   ; 1BFF _ E9, 0000027D

?_080:  mov     eax, dword [ebp+8H]                     ; 1C04 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C07 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 1C0A _ 39. 45, E0
        jge     ?_083                                   ; 1C0D _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 1C0F _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1C12 _ 89. 45, E4
        jmp     ?_082                                   ; 1C15 _ EB, 34

?_081:  mov     eax, dword [ebp-1CH]                    ; 1C17 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1C1A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C1D _ 8B. 45, 08
        add     edx, 4                                  ; 1C20 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1C23 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C27 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C2A _ 8B. 55, E4
        add     edx, 4                                  ; 1C2D _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1C30 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C34 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C37 _ 8B. 55, E4
        add     edx, 4                                  ; 1C3A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1C3D _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1C41 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1C44 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1C47 _ 83. 45, E4, 01
?_082:  mov     eax, dword [ebp+8H]                     ; 1C4B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C4E _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 1C51 _ 39. 45, E4
        jl      ?_081                                   ; 1C54 _ 7C, C1
?_083:  mov     eax, dword [ebp+8H]                     ; 1C56 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C59 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1C5C _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C5F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1C62 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C65 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C68 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C6B _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C6E _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C71 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C74 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C77 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C7A _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C7D _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C80 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C83 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C86 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C89 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1C8C _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 1C8F _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1C97 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C9B _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C9F _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CA3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CA7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CAA _ 89. 04 24
        call    _sheet_refreshmap                       ; 1CAD _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 1CB2 _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 1CB5 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1CB8 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CBB _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CBE _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CC1 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CC4 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CC7 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CCA _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CCD _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CD0 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CD3 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CD6 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CD9 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CDC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CDF _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 1CE2 _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 1CE6 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1CEE _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1CF2 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CF6 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CFA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CFE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D01 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1D04 _ E8, 0000035B
        jmp     ?_091                                   ; 1D09 _ E9, 00000173

?_084:  mov     eax, dword [ebp-20H]                    ; 1D0E _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1D11 _ 3B. 45, 10
        jge     ?_091                                   ; 1D14 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 1D1A _ 83. 7D, E0, 00
        js      ?_087                                   ; 1D1E _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 1D20 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1D23 _ 89. 45, E4
        jmp     ?_086                                   ; 1D26 _ EB, 34

?_085:  mov     eax, dword [ebp-1CH]                    ; 1D28 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1D2B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D2E _ 8B. 45, 08
        add     edx, 4                                  ; 1D31 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1D34 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D38 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D3B _ 8B. 55, E4
        add     edx, 4                                  ; 1D3E _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1D41 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D45 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D48 _ 8B. 55, E4
        add     edx, 4                                  ; 1D4B _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D4E _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1D52 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1D55 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1D58 _ 83. 45, E4, 01
?_086:  mov     eax, dword [ebp-1CH]                    ; 1D5C _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1D5F _ 3B. 45, 10
        jl      ?_085                                   ; 1D62 _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1D64 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D67 _ 8B. 55, 10
        add     edx, 4                                  ; 1D6A _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1D6D _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1D70 _ 89. 4C 90, 04
        jmp     ?_090                                   ; 1D74 _ EB, 6C

?_087:  mov     eax, dword [ebp+8H]                     ; 1D76 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D79 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 1D7C _ 89. 45, E4
        jmp     ?_089                                   ; 1D7F _ EB, 3A

?_088:  mov     eax, dword [ebp-1CH]                    ; 1D81 _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 1D84 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1D87 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D8A _ 8B. 55, E4
        add     edx, 4                                  ; 1D8D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1D90 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D94 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1D97 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1D9A _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 1D9E _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1DA1 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DA4 _ 8B. 45, 08
        add     edx, 4                                  ; 1DA7 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1DAA _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1DAE _ 8B. 55, E4
        add     edx, 1                                  ; 1DB1 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1DB4 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1DB7 _ 83. 6D, E4, 01
?_089:  mov     eax, dword [ebp-1CH]                    ; 1DBB _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1DBE _ 3B. 45, 10
        jge     ?_088                                   ; 1DC1 _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1DC3 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1DC6 _ 8B. 55, 10
        add     edx, 4                                  ; 1DC9 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1DCC _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1DCF _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1DD3 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1DD6 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1DD9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DDC _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1DDF _ 89. 50, 10
?_090:  mov     eax, dword [ebp+0CH]                    ; 1DE2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DE5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DE8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DEB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DEE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DF1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DF4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DF7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DFA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DFD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E00 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E03 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E06 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E09 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1E0C _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1E0F _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E13 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E17 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E1B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1E1F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E23 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E26 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1E29 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 1E2E _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E31 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E34 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E37 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E3A _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E3D _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E40 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E43 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E46 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1E49 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E4C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E4F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E52 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E55 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1E58 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 1E5B _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 1E5F _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1E62 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E66 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E6A _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E6E _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1E72 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E76 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E79 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1E7C _ E8, 000001E3
?_091:  nop                                             ; 1E81 _ 90
        add     esp, 60                                 ; 1E82 _ 83. C4, 3C
        pop     ebx                                     ; 1E85 _ 5B
        pop     esi                                     ; 1E86 _ 5E
        pop     edi                                     ; 1E87 _ 5F
        pop     ebp                                     ; 1E88 _ 5D
        ret                                             ; 1E89 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1E8A _ 55
        mov     ebp, esp                                ; 1E8B _ 89. E5
        push    edi                                     ; 1E8D _ 57
        push    esi                                     ; 1E8E _ 56
        push    ebx                                     ; 1E8F _ 53
        sub     esp, 60                                 ; 1E90 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1E93 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1E96 _ 8B. 40, 18
        test    eax, eax                                ; 1E99 _ 85. C0
        js      ?_092                                   ; 1E9B _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 1E9D _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 1EA0 _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 1EA3 _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 1EA6 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 1EA9 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EAC _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1EAF _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1EB2 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1EB5 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1EB8 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1EBB _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1EBE _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1EC1 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1EC4 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1EC7 _ 8B. 45, 14
        add     edx, eax                                ; 1ECA _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1ECC _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1ECF _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 1ED2 _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1ED5 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 1ED8 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 1EDB _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1EDF _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1EE3 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EE7 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1EEB _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1EEF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EF3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EF6 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1EF9 _ E8, 00000166
?_092:  mov     eax, 0                                  ; 1EFE _ B8, 00000000
        add     esp, 60                                 ; 1F03 _ 83. C4, 3C
        pop     ebx                                     ; 1F06 _ 5B
        pop     esi                                     ; 1F07 _ 5E
        pop     edi                                     ; 1F08 _ 5F
        pop     ebp                                     ; 1F09 _ 5D
        ret                                             ; 1F0A _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 1F0B _ 55
        mov     ebp, esp                                ; 1F0C _ 89. E5
        push    esi                                     ; 1F0E _ 56
        push    ebx                                     ; 1F0F _ 53
        sub     esp, 48                                 ; 1F10 _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 1F13 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1F16 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1F19 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1F1C _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1F1F _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1F22 _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1F25 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1F28 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1F2B _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1F2E _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1F31 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1F34 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F37 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F3A _ 8B. 40, 18
        test    eax, eax                                ; 1F3D _ 85. C0
        js      ?_093                                   ; 1F3F _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 1F45 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F48 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1F4B _ 8B. 45, F0
        add     edx, eax                                ; 1F4E _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F50 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1F53 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 1F56 _ 8B. 45, F4
        add     eax, ecx                                ; 1F59 _ 01. C8
        mov     dword [esp+14H], 0                      ; 1F5B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 1F63 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1F67 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1F6B _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1F6E _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1F72 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1F75 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F79 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F7C _ 89. 04 24
        call    _sheet_refreshmap                       ; 1F7F _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 1F84 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1F87 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1F8A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F8D _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1F90 _ 8B. 45, 14
        add     edx, eax                                ; 1F93 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F95 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1F98 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 1F9B _ 8B. 45, 10
        add     eax, ebx                                ; 1F9E _ 01. D8
        mov     dword [esp+14H], ecx                    ; 1FA0 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1FA4 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1FA8 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1FAC _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1FAF _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1FB3 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1FB6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1FBA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1FBD _ 89. 04 24
        call    _sheet_refreshmap                       ; 1FC0 _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 1FC5 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1FC8 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 1FCB _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1FCE _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1FD1 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1FD4 _ 8B. 45, F0
        add     edx, eax                                ; 1FD7 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FD9 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1FDC _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 1FDF _ 8B. 45, F4
        add     eax, ebx                                ; 1FE2 _ 01. D8
        mov     dword [esp+18H], ecx                    ; 1FE4 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 1FE8 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 1FF0 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1FF4 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1FF8 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1FFB _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1FFF _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 2002 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2006 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2009 _ 89. 04 24
        call    _sheet_refreshsub                       ; 200C _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 2011 _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 2014 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 2017 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 201A _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 201D _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 2020 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 2023 _ 8B. 45, 14
        add     edx, eax                                ; 2026 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 2028 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 202B _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 202E _ 8B. 45, 10
        add     eax, esi                                ; 2031 _ 01. F0
        mov     dword [esp+18H], ebx                    ; 2033 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2037 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 203B _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 203F _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 2043 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2046 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 204A _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 204D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 2051 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2054 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2057 _ E8, 00000008
?_093:  nop                                             ; 205C _ 90
        add     esp, 48                                 ; 205D _ 83. C4, 30
        pop     ebx                                     ; 2060 _ 5B
        pop     esi                                     ; 2061 _ 5E
        pop     ebp                                     ; 2062 _ 5D
        ret                                             ; 2063 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2064 _ 55
        mov     ebp, esp                                ; 2065 _ 89. E5
        sub     esp, 48                                 ; 2067 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 206A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 206D _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 206F _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 2072 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2075 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2078 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 207B _ 83. 7D, 0C, 00
        jns     ?_094                                   ; 207F _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 2081 _ C7. 45, 0C, 00000000
?_094:  cmp     dword [ebp+10H], 8                      ; 2088 _ 83. 7D, 10, 08
        jg      ?_095                                   ; 208C _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 208E _ C7. 45, 10, 00000000
?_095:  mov     eax, dword [ebp+8H]                     ; 2095 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2098 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 209B _ 39. 45, 14
        jle     ?_096                                   ; 209E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 20A0 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 20A3 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 20A6 _ 89. 45, 14
?_096:  mov     eax, dword [ebp+8H]                     ; 20A9 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 20AC _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 20AF _ 39. 45, 18
        jle     ?_097                                   ; 20B2 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 20B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 20B7 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 20BA _ 89. 45, 18
?_097:  mov     eax, dword [ebp+1CH]                    ; 20BD _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 20C0 _ 89. 45, FC
        jmp     ?_104                                   ; 20C3 _ E9, 0000010F

?_098:  mov     eax, dword [ebp+8H]                     ; 20C8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 20CB _ 8B. 55, FC
        add     edx, 4                                  ; 20CE _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 20D1 _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 20D5 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 20D8 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 20DB _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 20DD _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 20E0 _ 8B. 45, 08
        add     eax, 1044                               ; 20E3 _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 20E8 _ 8B. 55, E8
        sub     edx, eax                                ; 20EB _ 29. C2
        mov     eax, edx                                ; 20ED _ 89. D0
        sar     eax, 5                                  ; 20EF _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 20F2 _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 20F5 _ C7. 45, F4, 00000000
        jmp     ?_103                                   ; 20FC _ E9, 000000C3

?_099:  mov     eax, dword [ebp-18H]                    ; 2101 _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 2104 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 2107 _ 8B. 45, F4
        add     eax, edx                                ; 210A _ 01. D0
        mov     dword [ebp-24H], eax                    ; 210C _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 210F _ C7. 45, F8, 00000000
        jmp     ?_102                                   ; 2116 _ E9, 00000096

?_100:  mov     eax, dword [ebp-18H]                    ; 211B _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 211E _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2121 _ 8B. 45, F8
        add     eax, edx                                ; 2124 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 2126 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 2129 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 212C _ 3B. 45, D8
        jg      ?_101                                   ; 212F _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 2131 _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2134 _ 3B. 45, 14
        jge     ?_101                                   ; 2137 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2139 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 213C _ 3B. 45, DC
        jg      ?_101                                   ; 213F _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 2141 _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2144 _ 3B. 45, 18
        jge     ?_101                                   ; 2147 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2149 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 214C _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 214F _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2153 _ 8B. 55, F8
        add     eax, edx                                ; 2156 _ 01. D0
        mov     edx, eax                                ; 2158 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 215A _ 8B. 45, E4
        add     eax, edx                                ; 215D _ 01. D0
        movzx   eax, byte [eax]                         ; 215F _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 2162 _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2165 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2168 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 216B _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 216F _ 8B. 55, D8
        add     eax, edx                                ; 2172 _ 01. D0
        mov     edx, eax                                ; 2174 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2176 _ 8B. 45, EC
        add     eax, edx                                ; 2179 _ 01. D0
        movzx   eax, byte [eax]                         ; 217B _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 217E _ 38. 45, E3
        jnz     ?_101                                   ; 2181 _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 2183 _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2187 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 218A _ 8B. 52, 14
        cmp     eax, edx                                ; 218D _ 39. D0
        jz      ?_101                                   ; 218F _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2191 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2194 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2197 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 219B _ 8B. 55, D8
        add     eax, edx                                ; 219E _ 01. D0
        mov     edx, eax                                ; 21A0 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 21A2 _ 8B. 45, F0
        add     edx, eax                                ; 21A5 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 21A7 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 21AB _ 88. 02
?_101:  add     dword [ebp-8H], 1                       ; 21AD _ 83. 45, F8, 01
?_102:  mov     eax, dword [ebp-18H]                    ; 21B1 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 21B4 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 21B7 _ 39. 45, F8
        jl      ?_100                                   ; 21BA _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 21C0 _ 83. 45, F4, 01
?_103:  mov     eax, dword [ebp-18H]                    ; 21C4 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 21C7 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 21CA _ 39. 45, F4
        jl      ?_099                                   ; 21CD _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 21D3 _ 83. 45, FC, 01
?_104:  mov     eax, dword [ebp-4H]                     ; 21D7 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 21DA _ 3B. 45, 20
        jle     ?_098                                   ; 21DD _ 0F 8E, FFFFFEE5
        nop                                             ; 21E3 _ 90
        leave                                           ; 21E4 _ C9
        ret                                             ; 21E5 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 21E6 _ 55
        mov     ebp, esp                                ; 21E7 _ 89. E5
        sub     esp, 64                                 ; 21E9 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 21EC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 21EF _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 21F2 _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 21F5 _ 83. 7D, 0C, 00
        jns     ?_105                                   ; 21F9 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 21FB _ C7. 45, 0C, 00000000
?_105:  cmp     dword [ebp+10H], 0                      ; 2202 _ 83. 7D, 10, 00
        jns     ?_106                                   ; 2206 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 2208 _ C7. 45, 10, 00000000
?_106:  mov     eax, dword [ebp+8H]                     ; 220F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2212 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2215 _ 39. 45, 14
        jle     ?_107                                   ; 2218 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 221A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 221D _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2220 _ 89. 45, 14
?_107:  mov     eax, dword [ebp+8H]                     ; 2223 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2226 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 2229 _ 39. 45, 18
        jle     ?_108                                   ; 222C _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 222E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2231 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2234 _ 89. 45, 18
?_108:  mov     eax, dword [ebp+1CH]                    ; 2237 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 223A _ 89. 45, FC
        jmp     ?_119                                   ; 223D _ E9, 00000139

?_109:  mov     eax, dword [ebp+8H]                     ; 2242 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2245 _ 8B. 55, FC
        add     edx, 4                                  ; 2248 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 224B _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 224F _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 2252 _ 8B. 45, 08
        add     eax, 1044                               ; 2255 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 225A _ 8B. 55, DC
        sub     edx, eax                                ; 225D _ 29. C2
        mov     eax, edx                                ; 225F _ 89. D0
        sar     eax, 5                                  ; 2261 _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2264 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2267 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 226A _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 226C _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 226F _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2272 _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2275 _ 8B. 55, 0C
        sub     edx, eax                                ; 2278 _ 29. C2
        mov     eax, edx                                ; 227A _ 89. D0
        mov     dword [ebp-10H], eax                    ; 227C _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 227F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 2282 _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2285 _ 8B. 55, 10
        sub     edx, eax                                ; 2288 _ 29. C2
        mov     eax, edx                                ; 228A _ 89. D0
        mov     dword [ebp-14H], eax                    ; 228C _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 228F _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 2292 _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2295 _ 8B. 55, 14
        sub     edx, eax                                ; 2298 _ 29. C2
        mov     eax, edx                                ; 229A _ 89. D0
        mov     dword [ebp-18H], eax                    ; 229C _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 229F _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 22A2 _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 22A5 _ 8B. 55, 18
        sub     edx, eax                                ; 22A8 _ 29. C2
        mov     eax, edx                                ; 22AA _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 22AC _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 22AF _ 83. 7D, F0, 00
        jns     ?_110                                   ; 22B3 _ 79, 07
        mov     dword [ebp-10H], 0                      ; 22B5 _ C7. 45, F0, 00000000
?_110:  cmp     dword [ebp-14H], 0                      ; 22BC _ 83. 7D, EC, 00
        jns     ?_111                                   ; 22C0 _ 79, 07
        mov     dword [ebp-14H], 0                      ; 22C2 _ C7. 45, EC, 00000000
?_111:  mov     eax, dword [ebp-24H]                    ; 22C9 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 22CC _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 22CF _ 39. 45, E8
        jle     ?_112                                   ; 22D2 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 22D4 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 22D7 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 22DA _ 89. 45, E8
?_112:  mov     eax, dword [ebp-24H]                    ; 22DD _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 22E0 _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 22E3 _ 39. 45, E4
        jle     ?_113                                   ; 22E6 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 22E8 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 22EB _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 22EE _ 89. 45, E4
?_113:  mov     eax, dword [ebp-14H]                    ; 22F1 _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 22F4 _ 89. 45, F4
        jmp     ?_118                                   ; 22F7 _ EB, 76

?_114:  mov     eax, dword [ebp-24H]                    ; 22F9 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 22FC _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 22FF _ 8B. 45, F4
        add     eax, edx                                ; 2302 _ 01. D0
        mov     dword [ebp-30H], eax                    ; 2304 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 2307 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 230A _ 89. 45, F8
        jmp     ?_117                                   ; 230D _ EB, 54

?_115:  mov     eax, dword [ebp-24H]                    ; 230F _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 2312 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 2315 _ 8B. 45, F8
        add     eax, edx                                ; 2318 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 231A _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 231D _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2320 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 2323 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 2327 _ 8B. 55, F8
        add     eax, edx                                ; 232A _ 01. D0
        mov     edx, eax                                ; 232C _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 232E _ 8B. 45, D4
        add     eax, edx                                ; 2331 _ 01. D0
        movzx   eax, byte [eax]                         ; 2333 _ 0F B6. 00
        movzx   eax, al                                 ; 2336 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2339 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 233C _ 8B. 52, 14
        cmp     eax, edx                                ; 233F _ 39. D0
        jz      ?_116                                   ; 2341 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 2343 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2346 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2349 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 234D _ 8B. 55, CC
        add     eax, edx                                ; 2350 _ 01. D0
        mov     edx, eax                                ; 2352 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2354 _ 8B. 45, E0
        add     edx, eax                                ; 2357 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2359 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 235D _ 88. 02
?_116:  add     dword [ebp-8H], 1                       ; 235F _ 83. 45, F8, 01
?_117:  mov     eax, dword [ebp-8H]                     ; 2363 _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2366 _ 3B. 45, E8
        jl      ?_115                                   ; 2369 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 236B _ 83. 45, F4, 01
?_118:  mov     eax, dword [ebp-0CH]                    ; 236F _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 2372 _ 3B. 45, E4
        jl      ?_114                                   ; 2375 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2377 _ 83. 45, FC, 01
?_119:  mov     eax, dword [ebp+8H]                     ; 237B _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 237E _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 2381 _ 39. 45, FC
        jle     ?_109                                   ; 2384 _ 0F 8E, FFFFFEB8
        nop                                             ; 238A _ 90
        leave                                           ; 238B _ C9
        ret                                             ; 238C _ C3
; _sheet_refreshmap End of function

        nop                                             ; 238D _ 90
        nop                                             ; 238E _ 90
        nop                                             ; 238F _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 2390 _ 55
        mov     ebp, esp                                ; 2391 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2393 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2396 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 239C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 239F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 23A6 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 23A9 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 23B0 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 23B3 _ C7. 40, 0C, 00000000
        nop                                             ; 23BA _ 90
        pop     ebp                                     ; 23BB _ 5D
        ret                                             ; 23BC _ C3

_memman_total:; Function begin
        push    ebp                                     ; 23BD _ 55
        mov     ebp, esp                                ; 23BE _ 89. E5
        sub     esp, 16                                 ; 23C0 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 23C3 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 23CA _ C7. 45, FC, 00000000
        jmp     ?_121                                   ; 23D1 _ EB, 14

?_120:  mov     eax, dword [ebp+8H]                     ; 23D3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23D6 _ 8B. 55, FC
        add     edx, 2                                  ; 23D9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 23DC _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 23E0 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 23E3 _ 83. 45, FC, 01
?_121:  mov     eax, dword [ebp+8H]                     ; 23E7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23EA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 23EC _ 39. 45, FC
        jc      ?_120                                   ; 23EF _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 23F1 _ 8B. 45, F8
        leave                                           ; 23F4 _ C9
        ret                                             ; 23F5 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 23F6 _ 55
        mov     ebp, esp                                ; 23F7 _ 89. E5
        sub     esp, 16                                 ; 23F9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 23FC _ C7. 45, FC, 00000000
        jmp     ?_125                                   ; 2403 _ E9, 00000083

?_122:  mov     eax, dword [ebp+8H]                     ; 2408 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 240B _ 8B. 55, FC
        add     edx, 2                                  ; 240E _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2411 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 2415 _ 39. 45, 0C
        ja      ?_124                                   ; 2418 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 241A _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 241D _ 8B. 55, FC
        add     edx, 2                                  ; 2420 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2423 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 2426 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 2429 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 242C _ 8B. 55, FC
        add     edx, 2                                  ; 242F _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2432 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2435 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2438 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 243B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 243E _ 8B. 55, FC
        add     edx, 2                                  ; 2441 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2444 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2447 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 244A _ 8B. 55, FC
        add     edx, 2                                  ; 244D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2450 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2454 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2457 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 245A _ 8B. 4D, FC
        add     ecx, 2                                  ; 245D _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2460 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2464 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2467 _ 8B. 55, FC
        add     edx, 2                                  ; 246A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 246D _ 8B. 44 D0, 04
        test    eax, eax                                ; 2471 _ 85. C0
        jnz     ?_123                                   ; 2473 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2475 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2478 _ 8B. 00
        lea     edx, [eax-1H]                           ; 247A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 247D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2480 _ 89. 10
?_123:  mov     eax, dword [ebp-8H]                     ; 2482 _ 8B. 45, F8
        jmp     ?_126                                   ; 2485 _ EB, 17

?_124:  add     dword [ebp-4H], 1                       ; 2487 _ 83. 45, FC, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 248B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 248E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2490 _ 39. 45, FC
        jc      ?_122                                   ; 2493 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2499 _ B8, 00000000
?_126:  leave                                           ; 249E _ C9
        ret                                             ; 249F _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 24A0 _ 55
        mov     ebp, esp                                ; 24A1 _ 89. E5
        push    ebx                                     ; 24A3 _ 53
        sub     esp, 16                                 ; 24A4 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 24A7 _ C7. 45, F8, 00000000
        jmp     ?_128                                   ; 24AE _ EB, 15

?_127:  mov     eax, dword [ebp+8H]                     ; 24B0 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 24B3 _ 8B. 55, F8
        add     edx, 2                                  ; 24B6 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 24B9 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 24BC _ 39. 45, 0C
        jc      ?_129                                   ; 24BF _ 72, 10
        add     dword [ebp-8H], 1                       ; 24C1 _ 83. 45, F8, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 24C5 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24C8 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 24CA _ 39. 45, F8
        jl      ?_127                                   ; 24CD _ 7C, E1
        jmp     ?_130                                   ; 24CF _ EB, 01

?_129:  nop                                             ; 24D1 _ 90
?_130:  cmp     dword [ebp-8H], 0                       ; 24D2 _ 83. 7D, F8, 00
        jle     ?_132                                   ; 24D6 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 24DC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24DF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24E2 _ 8B. 45, 08
        add     edx, 2                                  ; 24E5 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 24E8 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 24EB _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24EE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24F1 _ 8B. 45, 08
        add     edx, 2                                  ; 24F4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 24F7 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 24FB _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 24FD _ 39. 45, 0C
        jne     ?_132                                   ; 2500 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 2506 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2509 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 250C _ 8B. 45, 08
        add     edx, 2                                  ; 250F _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2512 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 2516 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2519 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 251C _ 8B. 45, 10
        add     ecx, eax                                ; 251F _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2521 _ 8B. 45, 08
        add     edx, 2                                  ; 2524 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2527 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 252B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 252E _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2530 _ 39. 45, F8
        jge     ?_131                                   ; 2533 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2535 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2538 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 253B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 253E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2541 _ 8B. 55, F8
        add     edx, 2                                  ; 2544 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2547 _ 8B. 04 D0
        cmp     ecx, eax                                ; 254A _ 39. C1
        jnz     ?_131                                   ; 254C _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 254E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2551 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2554 _ 8B. 45, 08
        add     edx, 2                                  ; 2557 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 255A _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 255E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2561 _ 8B. 55, F8
        add     edx, 2                                  ; 2564 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2567 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 256B _ 8B. 55, F8
        sub     edx, 1                                  ; 256E _ 83. EA, 01
        add     ecx, eax                                ; 2571 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2573 _ 8B. 45, 08
        add     edx, 2                                  ; 2576 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2579 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 257D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2580 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2582 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2585 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2588 _ 89. 10
?_131:  mov     eax, 0                                  ; 258A _ B8, 00000000
        jmp     ?_138                                   ; 258F _ E9, 0000011C

?_132:  mov     eax, dword [ebp+8H]                     ; 2594 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2597 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2599 _ 39. 45, F8
        jge     ?_133                                   ; 259C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 259E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 25A1 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 25A4 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 25A7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25AA _ 8B. 55, F8
        add     edx, 2                                  ; 25AD _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 25B0 _ 8B. 04 D0
        cmp     ecx, eax                                ; 25B3 _ 39. C1
        jnz     ?_133                                   ; 25B5 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 25B7 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25BA _ 8B. 55, F8
        add     edx, 2                                  ; 25BD _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 25C0 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 25C3 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 25C6 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25C9 _ 8B. 55, F8
        add     edx, 2                                  ; 25CC _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 25CF _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 25D3 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 25D6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 25D9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25DC _ 8B. 55, F8
        add     edx, 2                                  ; 25DF _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 25E2 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 25E6 _ B8, 00000000
        jmp     ?_138                                   ; 25EB _ E9, 000000C0

?_133:  mov     eax, dword [ebp+8H]                     ; 25F0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25F3 _ 8B. 00
        cmp     eax, 4095                               ; 25F5 _ 3D, 00000FFF
        jg      ?_137                                   ; 25FA _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 2600 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2603 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 2605 _ 89. 45, F4
        jmp     ?_135                                   ; 2608 _ EB, 28

?_134:  mov     eax, dword [ebp-0CH]                    ; 260A _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 260D _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 2610 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 2613 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 2616 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 2619 _ 8B. 45, 08
        add     edx, 2                                  ; 261C _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 261F _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 2622 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 2624 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 2627 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 262A _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 262E _ 83. 6D, F4, 01
?_135:  mov     eax, dword [ebp-0CH]                    ; 2632 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2635 _ 3B. 45, F8
        jg      ?_134                                   ; 2638 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 263A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 263D _ 8B. 00
        lea     edx, [eax+1H]                           ; 263F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2642 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2645 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2647 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 264A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 264D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2650 _ 8B. 00
        cmp     edx, eax                                ; 2652 _ 39. C2
        jge     ?_136                                   ; 2654 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2656 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2659 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 265B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 265E _ 89. 50, 04
?_136:  mov     eax, dword [ebp+8H]                     ; 2661 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2664 _ 8B. 55, F8
        add     edx, 2                                  ; 2667 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 266A _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 266D _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2670 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2673 _ 8B. 55, F8
        add     edx, 2                                  ; 2676 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2679 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 267C _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2680 _ B8, 00000000
        jmp     ?_138                                   ; 2685 _ EB, 29

?_137:  mov     eax, dword [ebp+8H]                     ; 2687 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 268A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 268D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2690 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2693 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2696 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2699 _ 8B. 40, 08
        mov     edx, eax                                ; 269C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 269E _ 8B. 45, 10
        add     eax, edx                                ; 26A1 _ 01. D0
        mov     edx, eax                                ; 26A3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 26A5 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 26A8 _ 89. 50, 08
        mov     eax, 4294967295                         ; 26AB _ B8, FFFFFFFF
?_138:  add     esp, 16                                 ; 26B0 _ 83. C4, 10
        pop     ebx                                     ; 26B3 _ 5B
        pop     ebp                                     ; 26B4 _ 5D
        ret                                             ; 26B5 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 26B6 _ 55
        mov     ebp, esp                                ; 26B7 _ 89. E5
        sub     esp, 24                                 ; 26B9 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 26BC _ 8B. 45, 0C
        add     eax, 4095                               ; 26BF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 26C4 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 26C9 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 26CC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 26CF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26D3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26D6 _ 89. 04 24
        call    _memman_alloc                           ; 26D9 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 26DE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 26E1 _ 8B. 45, FC
        leave                                           ; 26E4 _ C9
        ret                                             ; 26E5 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 26E6 _ 55
        mov     ebp, esp                                ; 26E7 _ 89. E5
        sub     esp, 28                                 ; 26E9 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 26EC _ 8B. 45, 10
        add     eax, 4095                               ; 26EF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 26F4 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 26F9 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 26FC _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 26FF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 2703 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 2706 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 270A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 270D _ 89. 04 24
        call    _memman_free                            ; 2710 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 2715 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 2718 _ 8B. 45, FC
        leave                                           ; 271B _ C9
        ret                                             ; 271C _ C3
; _memman_free_4k End of function

        nop                                             ; 271D _ 90
        nop                                             ; 271E _ 90
        nop                                             ; 271F _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 2720 _ 55
        mov     ebp, esp                                ; 2721 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2723 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2726 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 2729 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 272C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 272F _ 8B. 55, 10
        mov     dword [eax], edx                        ; 2732 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2734 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2737 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 273A _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 273D _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 2740 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2747 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 274A _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2751 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2754 _ C7. 40, 08, 00000000
        nop                                             ; 275B _ 90
        pop     ebp                                     ; 275C _ 5D
        ret                                             ; 275D _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 275E _ 55
        mov     ebp, esp                                ; 275F _ 89. E5
        sub     esp, 4                                  ; 2761 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2764 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2767 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 276A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 276D _ 8B. 40, 10
        test    eax, eax                                ; 2770 _ 85. C0
        jnz     ?_139                                   ; 2772 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2774 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2777 _ 8B. 40, 14
        or      eax, 01H                                ; 277A _ 83. C8, 01
        mov     edx, eax                                ; 277D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 277F _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 2782 _ 89. 50, 14
        mov     eax, 4294967295                         ; 2785 _ B8, FFFFFFFF
        jmp     ?_141                                   ; 278A _ EB, 50

?_139:  mov     eax, dword [ebp+8H]                     ; 278C _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 278F _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2791 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2794 _ 8B. 40, 04
        add     edx, eax                                ; 2797 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2799 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 279D _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 279F _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 27A2 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 27A5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27A8 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 27AB _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27AE _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 27B1 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 27B4 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 27B7 _ 8B. 40, 0C
        cmp     edx, eax                                ; 27BA _ 39. C2
        jnz     ?_140                                   ; 27BC _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 27BE _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 27C1 _ C7. 40, 04, 00000000
?_140:  mov     eax, dword [ebp+8H]                     ; 27C8 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 27CB _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 27CE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 27D1 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27D4 _ 89. 50, 10
        mov     eax, 0                                  ; 27D7 _ B8, 00000000
?_141:  leave                                           ; 27DC _ C9
        ret                                             ; 27DD _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 27DE _ 55
        mov     ebp, esp                                ; 27DF _ 89. E5
        sub     esp, 16                                 ; 27E1 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 27E4 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 27E7 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 27EA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 27ED _ 8B. 40, 0C
        cmp     edx, eax                                ; 27F0 _ 39. C2
        jnz     ?_142                                   ; 27F2 _ 75, 07
        mov     eax, 4294967295                         ; 27F4 _ B8, FFFFFFFF
        jmp     ?_144                                   ; 27F9 _ EB, 51

?_142:  mov     eax, dword [ebp+8H]                     ; 27FB _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 27FE _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2800 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2803 _ 8B. 40, 08
        add     eax, edx                                ; 2806 _ 01. D0
        movzx   eax, byte [eax]                         ; 2808 _ 0F B6. 00
        movzx   eax, al                                 ; 280B _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 280E _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2811 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2814 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 2817 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 281A _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 281D _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2820 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 2823 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 2826 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2829 _ 8B. 40, 0C
        cmp     edx, eax                                ; 282C _ 39. C2
        jnz     ?_143                                   ; 282E _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 2830 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2833 _ C7. 40, 08, 00000000
?_143:  mov     eax, dword [ebp+8H]                     ; 283A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 283D _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 2840 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2843 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2846 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2849 _ 8B. 45, FC
?_144:  leave                                           ; 284C _ C9
        ret                                             ; 284D _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 284E _ 55
        mov     ebp, esp                                ; 284F _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 2851 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2854 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2857 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 285A _ 8B. 40, 10
        sub     edx, eax                                ; 285D _ 29. C2
        mov     eax, edx                                ; 285F _ 89. D0
        pop     ebp                                     ; 2861 _ 5D
        ret                                             ; 2862 _ C3
; _fifo8_status End of function

        nop                                             ; 2863 _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 2864 _ 55
        mov     ebp, esp                                ; 2865 _ 89. E5
        sub     esp, 24                                 ; 2867 _ 83. EC, 18
        mov     dword [esp+4H], 52                      ; 286A _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 2872 _ C7. 04 24, 00000043
        call    _io_out8                                ; 2879 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 287E _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 2886 _ C7. 04 24, 00000040
        call    _io_out8                                ; 288D _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 2892 _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 289A _ C7. 04 24, 00000040
        call    _io_out8                                ; 28A1 _ E8, 00000000(rel)
        mov     dword [_timerctl], 32                        ; 28A6 _ C7. 05, 00000000(d), 00000020
        mov     dword [_timerctl+4H], 0                      ; 28B0 _ C7. 05, 00000004(d), 00000000
        nop                                             ; 28BA _ 90
        leave                                           ; 28BB _ C9
        ret                                             ; 28BC _ C3

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 28BD _ 55
        mov     ebp, esp                                ; 28BE _ 89. E5
        sub     esp, 24                                 ; 28C0 _ 83. EC, 18
        mov     dword [esp+4H], 96                      ; 28C3 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 32                         ; 28CB _ C7. 04 24, 00000020
        call    _io_out8                                ; 28D2 _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 28D7 _ A1, 00000000(d)
        add     eax, 1                                  ; 28DC _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 28DF _ A3, 00000000(d)
        mov     eax, dword [_timerctl+4H]                    ; 28E4 _ A1, 00000004(d)
        test    eax, eax                                ; 28E9 _ 85. C0
        jz      ?_145                                   ; 28EB _ 74, 33
        mov     eax, dword [_timerctl+4H]                    ; 28ED _ A1, 00000004(d)
        sub     eax, 1                                  ; 28F2 _ 83. E8, 01
        mov     dword [_timerctl+4H], eax                    ; 28F5 _ A3, 00000004(d)
        mov     eax, dword [_timerctl+4H]                    ; 28FA _ A1, 00000004(d)
        test    eax, eax                                ; 28FF _ 85. C0
        jnz     ?_145                                   ; 2901 _ 75, 1D
        movzx   eax, byte [_timerctl+0CH]                    ; 2903 _ 0F B6. 05, 0000000C(d)
        movzx   eax, al                                 ; 290A _ 0F B6. C0
        mov     edx, dword [_timerctl+8H]                    ; 290D _ 8B. 15, 00000008(d)
        mov     dword [esp+4H], eax                     ; 2913 _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 2917 _ 89. 14 24
        call    _fifo8_put                              ; 291A _ E8, 00000000(rel)
        nop                                             ; 291F _ 90
?_145:  nop                                             ; 2920 _ 90
        leave                                           ; 2921 _ C9
        ret                                             ; 2922 _ C3
; _intHandlerForTimer End of function

_settimer:; Function begin
        push    ebp                                     ; 2923 _ 55
        mov     ebp, esp                                ; 2924 _ 89. E5
        sub     esp, 56                                 ; 2926 _ 83. EC, 38
        mov     eax, dword [ebp+10H]                    ; 2929 _ 8B. 45, 10
        mov     byte [ebp-1CH], al                      ; 292C _ 88. 45, E4
        call    _io_load_eflags                         ; 292F _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2934 _ 89. 45, F4
        call    _io_cli                                 ; 2937 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 293C _ 8B. 45, 08
        mov     dword [_timerctl+4H], eax                    ; 293F _ A3, 00000004(d)
        mov     eax, dword [ebp+0CH]                    ; 2944 _ 8B. 45, 0C
        mov     dword [_timerctl+8H], eax                    ; 2947 _ A3, 00000008(d)
        movzx   eax, byte [ebp-1CH]                     ; 294C _ 0F B6. 45, E4
        mov     byte [_timerctl+0CH], al                     ; 2950 _ A2, 0000000C(d)
        mov     eax, dword [ebp-0CH]                    ; 2955 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2958 _ 89. 04 24
        call    _io_store_eflags                        ; 295B _ E8, 00000000(rel)
        nop                                             ; 2960 _ 90
        leave                                           ; 2961 _ C9
        ret                                             ; 2962 _ C3
; _settimer End of function

_getTimer:; Function begin
        mov     eax, _timerctl                               ; 2963 _ B8, 00000000(d)
        ret                                             ; 2968 _ C3
; _getTimer End of function

        nop                                             ; 2969 _ 90
        nop                                             ; 296A _ 90
        nop                                             ; 296B _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_146:  db 00H                                          ; 0006 _ .

?_147:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2213:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2260:                                           ; byte
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

_closebtn.2372:                                         ; byte
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


?_148:                                                  
        db 63H, 6FH, 75H, 6EH, 74H, 65H, 72H, 00H       ; 0000 _ counter.

?_149:                                                  ; byte
        db 35H, 5BH, 73H, 65H, 63H, 5DH, 00H            ; 0008 _ 5[sec].

?_150:                                                  ; byte
        db 69H, 6DH, 70H, 72H, 6FH, 76H, 65H, 20H       ; 000F _ improve 
        db 73H, 74H, 72H, 69H, 6EH, 67H, 20H, 73H       ; 0017 _ string s
        db 68H, 6FH, 77H, 69H, 6EH, 67H, 00H            ; 001F _ howing.

?_151:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0026 _ page is:
        db 20H, 00H                                     ; 002E _  .

?_152:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0030 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0038 _ L: .

?_153:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 003C _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0044 _ H: .

?_154:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0048 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0050 _ w: .

?_155:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0054 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 005C _ gh: .

?_156:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0061 _ type: .

?_157:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0068 _ Welcome 
        db 74H, 6FH, 00H                                ; 0070 _ to.

?_158:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0073 _ Fragile 
        db 4FH, 53H, 00H, 00H, 00H                      ; 007B _ OS...


_bootInfo:                                              
        resd    1                                       ; 0000

?_159:  resw    1                                       ; 0004

?_160:  resw    1                                       ; 0006

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

_str.2308:                                              ; byte
        resb    1                                       ; 0240

?_161:  resb    9                                       ; 0241

?_162:  resb    22                                      ; 024A

_timerctl:      
        resb    16                                      ; 0260


