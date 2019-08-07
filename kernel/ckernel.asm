; Disassembly of file: ckernel.o
; Wed Aug  7 21:23:31 2019
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
        call    _initBootInfo                           ; 000E _ E8, 0000092E
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 0018 _ 89. 45, F0
        movzx   eax, word [?_158]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 00000118(d)
        movzx   eax, word [?_159]                       ; 0028 _ 0F B7. 05, 00000006(d)
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
        call    _init_palette                           ; 00B8 _ E8, 00000947
        call    _init_keyboard                          ; 00BD _ E8, 00000EB0
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
        call    _init_mouse_cursor                      ; 01F3 _ E8, 00000AA8
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
        call    _message_box                            ; 0279 _ E8, 0000120F
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
        call    _enable_mouse                           ; 02C1 _ E8, 00000CE7
        mov     dword [ebp-2CH], 0                      ; 02C6 _ C7. 45, D4, 00000000
        mov     dword [ebp-0CH], 0                      ; 02CD _ C7. 45, F4, 00000000
        call    _getTimer                               ; 02D4 _ E8, 00000000(rel)
        mov     dword [ebp-30H], eax                    ; 02D9 _ 89. 45, D0
?_001:  mov     eax, dword [ebp-30H]                    ; 02DC _ 8B. 45, D0
        mov     eax, dword [eax+4H]                     ; 02DF _ 8B. 40, 04
        mov     dword [esp], eax                        ; 02E2 _ 89. 04 24
        call    _intToHexStr                            ; 02E5 _ E8, 00000BD2
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
        call    _boxfill8                               ; 0325 _ E8, 000007A5
        mov     eax, dword [ebp-34H]                    ; 032A _ 8B. 45, CC
        mov     dword [esp+14H], eax                    ; 032D _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0331 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 0339 _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 40                      ; 0341 _ C7. 44 24, 08, 00000028
        mov     eax, dword [ebp-28H]                    ; 0349 _ 8B. 45, D8
        mov     dword [esp+4H], eax                     ; 034C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0350 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0353 _ 89. 04 24
        call    _showString                             ; 0356 _ E8, 00000607
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
        call    _showMemoryInfo                         ; 0412 _ E8, 00000D6B
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
        call    _show_mouse_info                        ; 0457 _ E8, 00000465
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
        call    _showString                             ; 04A7 _ E8, 000004B6
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
        call    _boxfill8                               ; 04F1 _ E8, 000005D9
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
        call    _boxfill8                               ; 0531 _ E8, 00000599
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
        call    _boxfill8                               ; 0571 _ E8, 00000559
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
        call    _boxfill8                               ; 05B1 _ E8, 00000519
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
        call    _boxfill8                               ; 05EF _ E8, 000004DB
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
        call    _boxfill8                               ; 062D _ E8, 0000049D
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
        call    _boxfill8                               ; 066B _ E8, 0000045F
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
        call    _boxfill8                               ; 06A9 _ E8, 00000421
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
        call    _boxfill8                               ; 06E7 _ E8, 000003E3
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
        call    _boxfill8                               ; 0725 _ E8, 000003A5
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
        call    _boxfill8                               ; 0767 _ E8, 00000363
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
        call    _boxfill8                               ; 07A9 _ E8, 00000321
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
        call    _boxfill8                               ; 07EB _ E8, 000002DF
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
        call    _boxfill8                               ; 082D _ E8, 0000029D
        nop                                             ; 0832 _ 90
        add     esp, 36                                 ; 0833 _ 83. C4, 24
        pop     ebx                                     ; 0836 _ 5B
        pop     ebp                                     ; 0837 _ 5D
        ret                                             ; 0838 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0839 _ 55
        mov     ebp, esp                                ; 083A _ 89. E5
        mov     eax, dword [ebp+10H]                    ; 083C _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 083F _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0842 _ A1, 00000110(d)
        add     eax, edx                                ; 0847 _ 01. D0
        mov     dword [_mx], eax                        ; 0849 _ A3, 00000110(d)
        mov     eax, dword [ebp+10H]                    ; 084E _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 0851 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0854 _ A1, 00000114(d)
        add     eax, edx                                ; 0859 _ 01. D0
        mov     dword [_my], eax                        ; 085B _ A3, 00000114(d)
        mov     eax, dword [_mx]                        ; 0860 _ A1, 00000110(d)
        test    eax, eax                                ; 0865 _ 85. C0
        jns     ?_005                                   ; 0867 _ 79, 0A
        mov     dword [_mx], 0                          ; 0869 _ C7. 05, 00000110(d), 00000000
?_005:  mov     eax, dword [_my]                        ; 0873 _ A1, 00000114(d)
        test    eax, eax                                ; 0878 _ 85. C0
        jns     ?_006                                   ; 087A _ 79, 0A
        mov     dword [_my], 0                          ; 087C _ C7. 05, 00000114(d), 00000000
?_006:  mov     edx, dword [_xsize]                     ; 0886 _ 8B. 15, 00000118(d)
        mov     eax, dword [_mx]                        ; 088C _ A1, 00000110(d)
        cmp     edx, eax                                ; 0891 _ 39. C2
        jg      ?_007                                   ; 0893 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 0895 _ A1, 00000118(d)
        sub     eax, 1                                  ; 089A _ 83. E8, 01
        mov     dword [_mx], eax                        ; 089D _ A3, 00000110(d)
?_007:  mov     edx, dword [_ysize]                     ; 08A2 _ 8B. 15, 0000011C(d)
        mov     eax, dword [_my]                        ; 08A8 _ A1, 00000114(d)
        cmp     edx, eax                                ; 08AD _ 39. C2
        jg      ?_008                                   ; 08AF _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 08B1 _ A1, 0000011C(d)
        sub     eax, 1                                  ; 08B6 _ 83. E8, 01
        mov     dword [_my], eax                        ; 08B9 _ A3, 00000114(d)
?_008:  nop                                             ; 08BE _ 90
        pop     ebp                                     ; 08BF _ 5D
        ret                                             ; 08C0 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 08C1 _ 55
        mov     ebp, esp                                ; 08C2 _ 89. E5
        sub     esp, 40                                 ; 08C4 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 08C7 _ A1, 00000120(d)
        mov     dword [ebp-0CH], eax                    ; 08CC _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 08CF _ C6. 45, F3, 00
        call    _io_sti                                 ; 08D3 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 08D8 _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 08DF _ E8, 00000000(rel)
        mov     byte [ebp-0DH], al                      ; 08E4 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 08E7 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 08EB _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 08EF _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 08F6 _ E8, 00000748
        test    eax, eax                                ; 08FB _ 85. C0
        jz      ?_009                                   ; 08FD _ 74, 3F
        mov     dword [esp+8H], _mdec                   ; 08FF _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0907 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 090A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 090E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0911 _ 89. 04 24
        call    _computeMousePosition                   ; 0914 _ E8, FFFFFF20
        mov     edx, dword [_my]                        ; 0919 _ 8B. 15, 00000114(d)
        mov     eax, dword [_mx]                        ; 091F _ A1, 00000110(d)
        mov     dword [esp+0CH], edx                    ; 0924 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0928 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 092C _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 092F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0933 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0936 _ 89. 04 24
        call    _sheet_slide                            ; 0939 _ E8, 00000000(rel)
?_009:  nop                                             ; 093E _ 90
        leave                                           ; 093F _ C9
        ret                                             ; 0940 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0941 _ 55
        mov     ebp, esp                                ; 0942 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0944 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0947 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 094D _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0950 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0956 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0959 _ 66: C7. 40, 06, 00C8
        nop                                             ; 095F _ 90
        pop     ebp                                     ; 0960 _ 5D
        ret                                             ; 0961 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0962 _ 55
        mov     ebp, esp                                ; 0963 _ 89. E5
        push    ebx                                     ; 0965 _ 53
        sub     esp, 68                                 ; 0966 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 0969 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 096C _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 096F _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 0972 _ 89. 45, F4
        jmp     ?_011                                   ; 0975 _ EB, 4B

?_010:  mov     eax, dword [ebp+1CH]                    ; 0977 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 097A _ 0F B6. 00
        movzx   eax, al                                 ; 097D _ 0F B6. C0
        shl     eax, 4                                  ; 0980 _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 0983 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 0989 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 098D _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 0990 _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 0993 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 0996 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 0998 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 099C _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 09A0 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 09A3 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 09A7 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 09AA _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 09AE _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 09B2 _ 89. 14 24
        call    _showFont8                              ; 09B5 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 09BA _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 09BE _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 09C2 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 09C5 _ 0F B6. 00
        test    al, al                                  ; 09C8 _ 84. C0
        jnz     ?_010                                   ; 09CA _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 09CC _ 8B. 45, 14
        add     eax, 16                                 ; 09CF _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 09D2 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 09D6 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 09D9 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 09DD _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 09E0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 09E4 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 09E7 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 09EB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 09EE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 09F2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 09F5 _ 89. 04 24
        call    _sheet_refresh                          ; 09F8 _ E8, 00000000(rel)
        nop                                             ; 09FD _ 90
        add     esp, 68                                 ; 09FE _ 83. C4, 44
        pop     ebx                                     ; 0A01 _ 5B
        pop     ebp                                     ; 0A02 _ 5D
        ret                                             ; 0A03 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0A04 _ 55
        mov     ebp, esp                                ; 0A05 _ 89. E5
        sub     esp, 24                                 ; 0A07 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2208         ; 0A0A _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0A12 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0A1A _ C7. 04 24, 00000000
        call    _set_palette                            ; 0A21 _ E8, 00000003
        nop                                             ; 0A26 _ 90
        leave                                           ; 0A27 _ C9
        ret                                             ; 0A28 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0A29 _ 55
        mov     ebp, esp                                ; 0A2A _ 89. E5
        sub     esp, 40                                 ; 0A2C _ 83. EC, 28
        call    _io_load_eflags                         ; 0A2F _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0A34 _ 89. 45, F0
        call    _io_cli                                 ; 0A37 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0A3C _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0A3F _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0A43 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0A4A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0A4F _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0A52 _ 89. 45, F4
        jmp     ?_013                                   ; 0A55 _ EB, 62

?_012:  mov     eax, dword [ebp+10H]                    ; 0A57 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0A5A _ 0F B6. 00
        shr     al, 2                                   ; 0A5D _ C0. E8, 02
        movzx   eax, al                                 ; 0A60 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0A63 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0A67 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0A6E _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0A73 _ 8B. 45, 10
        add     eax, 1                                  ; 0A76 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0A79 _ 0F B6. 00
        shr     al, 2                                   ; 0A7C _ C0. E8, 02
        movzx   eax, al                                 ; 0A7F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0A82 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0A86 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0A8D _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0A92 _ 8B. 45, 10
        add     eax, 2                                  ; 0A95 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0A98 _ 0F B6. 00
        shr     al, 2                                   ; 0A9B _ C0. E8, 02
        movzx   eax, al                                 ; 0A9E _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0AA1 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0AA5 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0AAC _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0AB1 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0AB5 _ 83. 45, F4, 01
?_013:  mov     eax, dword [ebp-0CH]                    ; 0AB9 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0ABC _ 3B. 45, 0C
        jle     ?_012                                   ; 0ABF _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0AC1 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0AC4 _ 89. 04 24
        call    _io_store_eflags                        ; 0AC7 _ E8, 00000000(rel)
        nop                                             ; 0ACC _ 90
        leave                                           ; 0ACD _ C9
        ret                                             ; 0ACE _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0ACF _ 55
        mov     ebp, esp                                ; 0AD0 _ 89. E5
        sub     esp, 20                                 ; 0AD2 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0AD5 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0AD8 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0ADB _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0ADE _ 89. 45, F8
        jmp     ?_017                                   ; 0AE1 _ EB, 31

?_014:  mov     eax, dword [ebp+14H]                    ; 0AE3 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0AE6 _ 89. 45, FC
        jmp     ?_016                                   ; 0AE9 _ EB, 1D

?_015:  mov     eax, dword [ebp-8H]                     ; 0AEB _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0AEE _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0AF2 _ 8B. 55, FC
        add     eax, edx                                ; 0AF5 _ 01. D0
        mov     edx, eax                                ; 0AF7 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AF9 _ 8B. 45, 08
        add     edx, eax                                ; 0AFC _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AFE _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B02 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0B04 _ 83. 45, FC, 01
?_016:  mov     eax, dword [ebp-4H]                     ; 0B08 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0B0B _ 3B. 45, 1C
        jle     ?_015                                   ; 0B0E _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0B10 _ 83. 45, F8, 01
?_017:  mov     eax, dword [ebp-8H]                     ; 0B14 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0B17 _ 3B. 45, 20
        jle     ?_014                                   ; 0B1A _ 7E, C7
        nop                                             ; 0B1C _ 90
        leave                                           ; 0B1D _ C9
        ret                                             ; 0B1E _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0B1F _ 55
        mov     ebp, esp                                ; 0B20 _ 89. E5
        sub     esp, 20                                 ; 0B22 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0B25 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0B28 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0B2B _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 0B32 _ E9, 0000015C

?_018:  mov     edx, dword [ebp-4H]                     ; 0B37 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0B3A _ 8B. 45, 1C
        add     eax, edx                                ; 0B3D _ 01. D0
        movzx   eax, byte [eax]                         ; 0B3F _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0B42 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0B45 _ 80. 7D, FB, 00
        jns     ?_019                                   ; 0B49 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0B4B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B4E _ 8B. 45, FC
        add     eax, edx                                ; 0B51 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B53 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B57 _ 8B. 55, 10
        add     eax, edx                                ; 0B5A _ 01. D0
        mov     edx, eax                                ; 0B5C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0B5E _ 8B. 45, 08
        add     edx, eax                                ; 0B61 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B63 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B67 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0B69 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0B6D _ 83. E0, 40
        test    eax, eax                                ; 0B70 _ 85. C0
        jz      ?_020                                   ; 0B72 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B74 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B77 _ 8B. 45, FC
        add     eax, edx                                ; 0B7A _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B7C _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B80 _ 8B. 55, 10
        add     eax, edx                                ; 0B83 _ 01. D0
        lea     edx, [eax+1H]                           ; 0B85 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0B88 _ 8B. 45, 08
        add     edx, eax                                ; 0B8B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B8D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B91 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0B93 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0B97 _ 83. E0, 20
        test    eax, eax                                ; 0B9A _ 85. C0
        jz      ?_021                                   ; 0B9C _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B9E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BA1 _ 8B. 45, FC
        add     eax, edx                                ; 0BA4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BA6 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BAA _ 8B. 55, 10
        add     eax, edx                                ; 0BAD _ 01. D0
        lea     edx, [eax+2H]                           ; 0BAF _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0BB2 _ 8B. 45, 08
        add     edx, eax                                ; 0BB5 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BB7 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BBB _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0BBD _ 0F BE. 45, FB
        and     eax, 10H                                ; 0BC1 _ 83. E0, 10
        test    eax, eax                                ; 0BC4 _ 85. C0
        jz      ?_022                                   ; 0BC6 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BC8 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BCB _ 8B. 45, FC
        add     eax, edx                                ; 0BCE _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BD0 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BD4 _ 8B. 55, 10
        add     eax, edx                                ; 0BD7 _ 01. D0
        lea     edx, [eax+3H]                           ; 0BD9 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0BDC _ 8B. 45, 08
        add     edx, eax                                ; 0BDF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BE1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BE5 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0BE7 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0BEB _ 83. E0, 08
        test    eax, eax                                ; 0BEE _ 85. C0
        jz      ?_023                                   ; 0BF0 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BF2 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BF5 _ 8B. 45, FC
        add     eax, edx                                ; 0BF8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BFA _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BFE _ 8B. 55, 10
        add     eax, edx                                ; 0C01 _ 01. D0
        lea     edx, [eax+4H]                           ; 0C03 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0C06 _ 8B. 45, 08
        add     edx, eax                                ; 0C09 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C0B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C0F _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0C11 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0C15 _ 83. E0, 04
        test    eax, eax                                ; 0C18 _ 85. C0
        jz      ?_024                                   ; 0C1A _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0C1C _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C1F _ 8B. 45, FC
        add     eax, edx                                ; 0C22 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C24 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C28 _ 8B. 55, 10
        add     eax, edx                                ; 0C2B _ 01. D0
        lea     edx, [eax+5H]                           ; 0C2D _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0C30 _ 8B. 45, 08
        add     edx, eax                                ; 0C33 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C35 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C39 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0C3B _ 0F BE. 45, FB
        and     eax, 02H                                ; 0C3F _ 83. E0, 02
        test    eax, eax                                ; 0C42 _ 85. C0
        jz      ?_025                                   ; 0C44 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0C46 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C49 _ 8B. 45, FC
        add     eax, edx                                ; 0C4C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C4E _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C52 _ 8B. 55, 10
        add     eax, edx                                ; 0C55 _ 01. D0
        lea     edx, [eax+6H]                           ; 0C57 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0C5A _ 8B. 45, 08
        add     edx, eax                                ; 0C5D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C5F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C63 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0C65 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0C69 _ 83. E0, 01
        test    eax, eax                                ; 0C6C _ 85. C0
        jz      ?_026                                   ; 0C6E _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0C70 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0C73 _ 8B. 45, FC
        add     eax, edx                                ; 0C76 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0C78 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0C7C _ 8B. 55, 10
        add     eax, edx                                ; 0C7F _ 01. D0
        lea     edx, [eax+7H]                           ; 0C81 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0C84 _ 8B. 45, 08
        add     edx, eax                                ; 0C87 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C89 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C8D _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 0C8F _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 0C93 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 0C97 _ 0F 8E, FFFFFE9A
        nop                                             ; 0C9D _ 90
        leave                                           ; 0C9E _ C9
        ret                                             ; 0C9F _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0CA0 _ 55
        mov     ebp, esp                                ; 0CA1 _ 89. E5
        sub     esp, 20                                 ; 0CA3 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0CA6 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0CA9 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0CAC _ C7. 45, F8, 00000000
        jmp     ?_034                                   ; 0CB3 _ E9, 000000B1

?_028:  mov     dword [ebp-4H], 0                       ; 0CB8 _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 0CBF _ E9, 00000097

?_029:  mov     eax, dword [ebp-8H]                     ; 0CC4 _ 8B. 45, F8
        shl     eax, 4                                  ; 0CC7 _ C1. E0, 04
        mov     edx, eax                                ; 0CCA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0CCC _ 8B. 45, FC
        add     eax, edx                                ; 0CCF _ 01. D0
        add     eax, _cursor.2255                       ; 0CD1 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0CD6 _ 0F B6. 00
        cmp     al, 42                                  ; 0CD9 _ 3C, 2A
        jnz     ?_030                                   ; 0CDB _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0CDD _ 8B. 45, F8
        shl     eax, 4                                  ; 0CE0 _ C1. E0, 04
        mov     edx, eax                                ; 0CE3 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0CE5 _ 8B. 45, FC
        add     eax, edx                                ; 0CE8 _ 01. D0
        mov     edx, eax                                ; 0CEA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0CEC _ 8B. 45, 08
        add     eax, edx                                ; 0CEF _ 01. D0
        mov     byte [eax], 0                           ; 0CF1 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-8H]                     ; 0CF4 _ 8B. 45, F8
        shl     eax, 4                                  ; 0CF7 _ C1. E0, 04
        mov     edx, eax                                ; 0CFA _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0CFC _ 8B. 45, FC
        add     eax, edx                                ; 0CFF _ 01. D0
        add     eax, _cursor.2255                       ; 0D01 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0D06 _ 0F B6. 00
        cmp     al, 79                                  ; 0D09 _ 3C, 4F
        jnz     ?_031                                   ; 0D0B _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0D0D _ 8B. 45, F8
        shl     eax, 4                                  ; 0D10 _ C1. E0, 04
        mov     edx, eax                                ; 0D13 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D15 _ 8B. 45, FC
        add     eax, edx                                ; 0D18 _ 01. D0
        mov     edx, eax                                ; 0D1A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D1C _ 8B. 45, 08
        add     eax, edx                                ; 0D1F _ 01. D0
        mov     byte [eax], 7                           ; 0D21 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-8H]                     ; 0D24 _ 8B. 45, F8
        shl     eax, 4                                  ; 0D27 _ C1. E0, 04
        mov     edx, eax                                ; 0D2A _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D2C _ 8B. 45, FC
        add     eax, edx                                ; 0D2F _ 01. D0
        add     eax, _cursor.2255                       ; 0D31 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0D36 _ 0F B6. 00
        cmp     al, 46                                  ; 0D39 _ 3C, 2E
        jnz     ?_032                                   ; 0D3B _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0D3D _ 8B. 45, F8
        shl     eax, 4                                  ; 0D40 _ C1. E0, 04
        mov     edx, eax                                ; 0D43 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0D45 _ 8B. 45, FC
        add     eax, edx                                ; 0D48 _ 01. D0
        mov     edx, eax                                ; 0D4A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D4C _ 8B. 45, 08
        add     edx, eax                                ; 0D4F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0D51 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0D55 _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 0D57 _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 0D5B _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 0D5F _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0D65 _ 83. 45, F8, 01
?_034:  cmp     dword [ebp-8H], 15                      ; 0D69 _ 83. 7D, F8, 0F
        jle     ?_028                                   ; 0D6D _ 0F 8E, FFFFFF45
        nop                                             ; 0D73 _ 90
        leave                                           ; 0D74 _ C9
        ret                                             ; 0D75 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0D76 _ 55
        mov     ebp, esp                                ; 0D77 _ 89. E5
        push    ebx                                     ; 0D79 _ 53
        sub     esp, 16                                 ; 0D7A _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0D7D _ C7. 45, F4, 00000000
        jmp     ?_038                                   ; 0D84 _ EB, 4E

?_035:  mov     dword [ebp-8H], 0                       ; 0D86 _ C7. 45, F8, 00000000
        jmp     ?_037                                   ; 0D8D _ EB, 39

?_036:  mov     eax, dword [ebp-0CH]                    ; 0D8F _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0D92 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0D96 _ 8B. 55, F8
        add     eax, edx                                ; 0D99 _ 01. D0
        mov     edx, eax                                ; 0D9B _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0D9D _ 8B. 45, 20
        add     eax, edx                                ; 0DA0 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0DA2 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0DA5 _ 8B. 55, F4
        add     edx, ecx                                ; 0DA8 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0DAA _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0DAE _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0DB1 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0DB4 _ 01. D9
        add     edx, ecx                                ; 0DB6 _ 01. CA
        mov     ecx, edx                                ; 0DB8 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0DBA _ 8B. 55, 08
        add     edx, ecx                                ; 0DBD _ 01. CA
        movzx   eax, byte [eax]                         ; 0DBF _ 0F B6. 00
        mov     byte [edx], al                          ; 0DC2 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0DC4 _ 83. 45, F8, 01
?_037:  mov     eax, dword [ebp-8H]                     ; 0DC8 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0DCB _ 3B. 45, 10
        jl      ?_036                                   ; 0DCE _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0DD0 _ 83. 45, F4, 01
?_038:  mov     eax, dword [ebp-0CH]                    ; 0DD4 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0DD7 _ 3B. 45, 14
        jl      ?_035                                   ; 0DDA _ 7C, AA
        nop                                             ; 0DDC _ 90
        add     esp, 16                                 ; 0DDD _ 83. C4, 10
        pop     ebx                                     ; 0DE0 _ 5B
        pop     ebp                                     ; 0DE1 _ 5D
        ret                                             ; 0DE2 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0DE3 _ 55
        mov     ebp, esp                                ; 0DE4 _ 89. E5
        sub     esp, 40                                 ; 0DE6 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0DE9 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0DEE _ 89. 45, F4
        movzx   eax, word [?_158]                       ; 0DF1 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0DF8 _ 98
        mov     dword [ebp-10H], eax                    ; 0DF9 _ 89. 45, F0
        movzx   eax, word [?_159]                       ; 0DFC _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0E03 _ 98
        mov     dword [ebp-14H], eax                    ; 0E04 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0E07 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0E0F _ C7. 04 24, 00000020
        call    _io_out8                                ; 0E16 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0E1B _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0E1F _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0E26 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0E2B _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0E2E _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0E32 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0E36 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0E3D _ E8, 00000000(rel)
        nop                                             ; 0E42 _ 90
        leave                                           ; 0E43 _ C9
        ret                                             ; 0E44 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0E45 _ 55
        mov     ebp, esp                                ; 0E46 _ 89. E5
        sub     esp, 4                                  ; 0E48 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0E4B _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0E4E _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0E51 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0E55 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0E57 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0E5B _ 83. C0, 37
        jmp     ?_040                                   ; 0E5E _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0E60 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0E64 _ 83. C0, 30
?_040:  leave                                           ; 0E67 _ C9
        ret                                             ; 0E68 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0E69 _ 55
        mov     ebp, esp                                ; 0E6A _ 89. E5
        sub     esp, 24                                 ; 0E6C _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0E6F _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0E72 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0E75 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0E7C _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0E80 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0E83 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0E86 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0E8A _ 89. 04 24
        call    _charToHexVal                           ; 0E8D _ E8, FFFFFFB3
        mov     byte [?_147], al                        ; 0E92 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0E97 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0E9B _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0E9E _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0EA1 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0EA5 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0EA8 _ 89. 04 24
        call    _charToHexVal                           ; 0EAB _ E8, FFFFFF95
        mov     byte [?_146], al                        ; 0EB0 _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0EB5 _ B8, 00000004(d)
        leave                                           ; 0EBA _ C9
        ret                                             ; 0EBB _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0EBC _ 55
        mov     ebp, esp                                ; 0EBD _ 89. E5
        sub     esp, 16                                 ; 0EBF _ 83. EC, 10
        mov     byte [_str.2303], 48                    ; 0EC2 _ C6. 05, 00000240(d), 30
        mov     byte [?_160], 88                        ; 0EC9 _ C6. 05, 00000241(d), 58
        mov     byte [?_161], 0                         ; 0ED0 _ C6. 05, 0000024A(d), 00
        mov     dword [ebp-4H], 2                       ; 0ED7 _ C7. 45, FC, 00000002
        jmp     ?_042                                   ; 0EDE _ EB, 0F

?_041:  mov     eax, dword [ebp-4H]                     ; 0EE0 _ 8B. 45, FC
        add     eax, _str.2303                          ; 0EE3 _ 05, 00000240(d)
        mov     byte [eax], 48                          ; 0EE8 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0EEB _ 83. 45, FC, 01
?_042:  cmp     dword [ebp-4H], 9                       ; 0EEF _ 83. 7D, FC, 09
        jle     ?_041                                   ; 0EF3 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0EF5 _ C7. 45, F8, 00000009
        jmp     ?_046                                   ; 0EFC _ EB, 42

?_043:  mov     eax, dword [ebp+8H]                     ; 0EFE _ 8B. 45, 08
        and     eax, 0FH                                ; 0F01 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0F04 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0F07 _ 8B. 45, 08
        shr     eax, 4                                  ; 0F0A _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0F0D _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0F10 _ 83. 7D, F4, 09
        jle     ?_044                                   ; 0F14 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0F16 _ 8B. 45, F4
        add     eax, 55                                 ; 0F19 _ 83. C0, 37
        mov     edx, eax                                ; 0F1C _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F1E _ 8B. 45, F8
        add     eax, _str.2303                          ; 0F21 _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 0F26 _ 88. 10
        jmp     ?_045                                   ; 0F28 _ EB, 12

?_044:  mov     eax, dword [ebp-0CH]                    ; 0F2A _ 8B. 45, F4
        add     eax, 48                                 ; 0F2D _ 83. C0, 30
        mov     edx, eax                                ; 0F30 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0F32 _ 8B. 45, F8
        add     eax, _str.2303                          ; 0F35 _ 05, 00000240(d)
        mov     byte [eax], dl                          ; 0F3A _ 88. 10
?_045:  sub     dword [ebp-8H], 1                       ; 0F3C _ 83. 6D, F8, 01
?_046:  cmp     dword [ebp-8H], 1                       ; 0F40 _ 83. 7D, F8, 01
        jle     ?_047                                   ; 0F44 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0F46 _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 0F4A _ 75, B2
?_047:  mov     eax, _str.2303                          ; 0F4C _ B8, 00000240(d)
        leave                                           ; 0F51 _ C9
        ret                                             ; 0F52 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0F53 _ 55
        mov     ebp, esp                                ; 0F54 _ 89. E5
        sub     esp, 24                                 ; 0F56 _ 83. EC, 18
?_048:  mov     dword [esp], 100                        ; 0F59 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0F60 _ E8, 00000000(rel)
        and     eax, 02H                                ; 0F65 _ 83. E0, 02
        test    eax, eax                                ; 0F68 _ 85. C0
        jz      ?_049                                   ; 0F6A _ 74, 02
        jmp     ?_048                                   ; 0F6C _ EB, EB
; _wait_KBC_sendready End of function

?_049:  ; Local function
        nop                                             ; 0F6E _ 90
        nop                                             ; 0F6F _ 90
        leave                                           ; 0F70 _ C9
        ret                                             ; 0F71 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0F72 _ 55
        mov     ebp, esp                                ; 0F73 _ 89. E5
        sub     esp, 24                                 ; 0F75 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0F78 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0F7D _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0F85 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0F8C _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0F91 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0F96 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0F9E _ C7. 04 24, 00000060
        call    _io_out8                                ; 0FA5 _ E8, 00000000(rel)
        nop                                             ; 0FAA _ 90
        leave                                           ; 0FAB _ C9
        ret                                             ; 0FAC _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0FAD _ 55
        mov     ebp, esp                                ; 0FAE _ 89. E5
        sub     esp, 24                                 ; 0FB0 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0FB3 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0FB8 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0FC0 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0FC7 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0FCC _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0FD1 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0FD9 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0FE0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0FE5 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0FE8 _ C6. 40, 03, 00
        nop                                             ; 0FEC _ 90
        leave                                           ; 0FED _ C9
        ret                                             ; 0FEE _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0FEF _ 55
        mov     ebp, esp                                ; 0FF0 _ 89. E5
        sub     esp, 40                                 ; 0FF2 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0FF5 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0FFD _ C7. 04 24, 000000A0
        call    _io_out8                                ; 1004 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 1009 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 1011 _ C7. 04 24, 00000020
        call    _io_out8                                ; 1018 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 101D _ C7. 04 24, 00000060
        call    _io_in8                                 ; 1024 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 1029 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 102C _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 1030 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 1034 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 103B _ E8, 00000000(rel)
        nop                                             ; 1040 _ 90
        leave                                           ; 1041 _ C9
        ret                                             ; 1042 _ C3
; _intHandlerForMouse End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1043 _ 55
        mov     ebp, esp                                ; 1044 _ 89. E5
        sub     esp, 4                                  ; 1046 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 1049 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 104C _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 104F _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1052 _ 0F B6. 40, 03
        test    al, al                                  ; 1056 _ 84. C0
        jnz     ?_051                                   ; 1058 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 105A _ 80. 7D, FC, FA
        jnz     ?_050                                   ; 105E _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 1060 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1063 _ C6. 40, 03, 01
?_050:  mov     eax, 0                                  ; 1067 _ B8, 00000000
        jmp     ?_058                                   ; 106C _ E9, 0000010F

?_051:  mov     eax, dword [ebp+8H]                     ; 1071 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1074 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 1078 _ 3C, 01
        jnz     ?_053                                   ; 107A _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 107C _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1080 _ 25, 000000C8
        cmp     eax, 8                                  ; 1085 _ 83. F8, 08
        jnz     ?_052                                   ; 1088 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 108A _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 108D _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1091 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1093 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1096 _ C6. 40, 03, 02
?_052:  mov     eax, 0                                  ; 109A _ B8, 00000000
        jmp     ?_058                                   ; 109F _ E9, 000000DC

?_053:  mov     eax, dword [ebp+8H]                     ; 10A4 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10A7 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 10AB _ 3C, 02
        jnz     ?_054                                   ; 10AD _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 10AF _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 10B2 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 10B6 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 10B9 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 10BC _ C6. 40, 03, 03
        mov     eax, 0                                  ; 10C0 _ B8, 00000000
        jmp     ?_058                                   ; 10C5 _ E9, 000000B6

?_054:  mov     eax, dword [ebp+8H]                     ; 10CA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10CD _ 0F B6. 40, 03
        cmp     al, 3                                   ; 10D1 _ 3C, 03
        jne     ?_057                                   ; 10D3 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 10D9 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 10DC _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 10E0 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 10E3 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 10E6 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 10EA _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 10ED _ 0F B6. 00
        movzx   eax, al                                 ; 10F0 _ 0F B6. C0
        and     eax, 07H                                ; 10F3 _ 83. E0, 07
        mov     edx, eax                                ; 10F6 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 10F8 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 10FB _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 10FE _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1101 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1105 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1108 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 110B _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 110E _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1111 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1115 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 1118 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 111B _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 111E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1121 _ 0F B6. 00
        movzx   eax, al                                 ; 1124 _ 0F B6. C0
        and     eax, 10H                                ; 1127 _ 83. E0, 10
        test    eax, eax                                ; 112A _ 85. C0
        jz      ?_055                                   ; 112C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 112E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1131 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 1134 _ 0D, FFFFFF00
        mov     edx, eax                                ; 1139 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 113B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 113E _ 89. 50, 04
?_055:  mov     eax, dword [ebp+8H]                     ; 1141 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1144 _ 0F B6. 00
        movzx   eax, al                                 ; 1147 _ 0F B6. C0
        and     eax, 20H                                ; 114A _ 83. E0, 20
        test    eax, eax                                ; 114D _ 85. C0
        jz      ?_056                                   ; 114F _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1151 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1154 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 1157 _ 0D, FFFFFF00
        mov     edx, eax                                ; 115C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 115E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1161 _ 89. 50, 08
?_056:  mov     eax, dword [ebp+8H]                     ; 1164 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1167 _ 8B. 40, 08
        neg     eax                                     ; 116A _ F7. D8
        mov     edx, eax                                ; 116C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 116E _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1171 _ 89. 50, 08
        mov     eax, 1                                  ; 1174 _ B8, 00000001
        jmp     ?_058                                   ; 1179 _ EB, 05

?_057:  mov     eax, 4294967295                         ; 117B _ B8, FFFFFFFF
?_058:  leave                                           ; 1180 _ C9
        ret                                             ; 1181 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1182 _ 55
        mov     ebp, esp                                ; 1183 _ 89. E5
        sub     esp, 88                                 ; 1185 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 1188 _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 118F _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1196 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 119D _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 11A4 _ 8B. 15, 0000011C(d)
        mov     eax, dword [ebp+0CH]                    ; 11AA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 11AD _ 8B. 00
        mov     dword [esp+8H], edx                     ; 11AF _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 11B3 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 11B6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 11BA _ 89. 04 24
        call    _init_screen8                           ; 11BD _ E8, FFFFF2EF
        mov     eax, dword [ebp+20H]                    ; 11C2 _ 8B. 45, 20
        movsx   eax, al                                 ; 11C5 _ 0F BE. C0
        mov     dword [esp+14H], ?_150                  ; 11C8 _ C7. 44 24, 14, 0000000F(d)
        mov     dword [esp+10H], eax                    ; 11D0 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 11D4 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 11D7 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 11DB _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 11DE _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 11E2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 11E5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 11E9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 11EC _ 89. 04 24
        call    _showString                             ; 11EF _ E8, FFFFF76E
        mov     eax, dword [ebp+18H]                    ; 11F4 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 11F7 _ 89. 04 24
        call    _intToHexStr                            ; 11FA _ E8, FFFFFCBD
        mov     dword [ebp-1CH], eax                    ; 11FF _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1202 _ 8B. 45, 20
        movsx   eax, al                                 ; 1205 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1208 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 120B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 120F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1213 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1216 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 121A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 121D _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1221 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1224 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1228 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 122B _ 89. 04 24
        call    _showString                             ; 122E _ E8, FFFFF72F
        add     dword [ebp-10H], 16                     ; 1233 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1237 _ 8B. 45, 20
        movsx   eax, al                                 ; 123A _ 0F BE. C0
        mov     dword [esp+14H], ?_151                  ; 123D _ C7. 44 24, 14, 00000019(d)
        mov     dword [esp+10H], eax                    ; 1245 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1249 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 124C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1250 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1253 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1257 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 125A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 125E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1261 _ 89. 04 24
        call    _showString                             ; 1264 _ E8, FFFFF6F9
        mov     eax, dword [ebp+10H]                    ; 1269 _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 126C _ 8B. 00
        mov     dword [esp], eax                        ; 126E _ 89. 04 24
        call    _intToHexStr                            ; 1271 _ E8, FFFFFC46
        mov     dword [ebp-20H], eax                    ; 1276 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 1279 _ 8B. 45, 20
        movsx   eax, al                                 ; 127C _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 127F _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1282 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1286 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 128A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 128D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1291 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1294 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1298 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 129B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 129F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12A2 _ 89. 04 24
        call    _showString                             ; 12A5 _ E8, FFFFF6B8
        add     dword [ebp-10H], 16                     ; 12AA _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 12AE _ 8B. 45, 20
        movsx   eax, al                                 ; 12B1 _ 0F BE. C0
        mov     dword [esp+14H], ?_152                  ; 12B4 _ C7. 44 24, 14, 00000025(d)
        mov     dword [esp+10H], eax                    ; 12BC _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12C0 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12C3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12C7 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12CA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12CE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12D1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12D5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12D8 _ 89. 04 24
        call    _showString                             ; 12DB _ E8, FFFFF682
        mov     eax, dword [ebp+10H]                    ; 12E0 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 12E3 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 12E6 _ 89. 04 24
        call    _intToHexStr                            ; 12E9 _ E8, FFFFFBCE
        mov     dword [ebp-24H], eax                    ; 12EE _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 12F1 _ 8B. 45, 20
        movsx   eax, al                                 ; 12F4 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 12F7 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 12FA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 12FE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1302 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1305 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1309 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 130C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1310 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1313 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1317 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 131A _ 89. 04 24
        call    _showString                             ; 131D _ E8, FFFFF640
        add     dword [ebp-10H], 16                     ; 1322 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1326 _ 8B. 45, 20
        movsx   eax, al                                 ; 1329 _ 0F BE. C0
        mov     dword [esp+14H], ?_153                  ; 132C _ C7. 44 24, 14, 00000031(d)
        mov     dword [esp+10H], eax                    ; 1334 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1338 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 133B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 133F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1342 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1346 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1349 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 134D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1350 _ 89. 04 24
        call    _showString                             ; 1353 _ E8, FFFFF60A
        mov     eax, dword [ebp+10H]                    ; 1358 _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 135B _ 8B. 40, 08
        mov     dword [esp], eax                        ; 135E _ 89. 04 24
        call    _intToHexStr                            ; 1361 _ E8, FFFFFB56
        mov     dword [ebp-28H], eax                    ; 1366 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 1369 _ 8B. 45, 20
        movsx   eax, al                                 ; 136C _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 136F _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 1372 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1376 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 137A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 137D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1381 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1384 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1388 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 138B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 138F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1392 _ 89. 04 24
        call    _showString                             ; 1395 _ E8, FFFFF5C8
        add     dword [ebp-10H], 16                     ; 139A _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 139E _ 8B. 45, 20
        movsx   eax, al                                 ; 13A1 _ 0F BE. C0
        mov     dword [esp+14H], ?_154                  ; 13A4 _ C7. 44 24, 14, 0000003D(d)
        mov     dword [esp+10H], eax                    ; 13AC _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13B0 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13B3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13B7 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13BA _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13BE _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13C1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13C5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13C8 _ 89. 04 24
        call    _showString                             ; 13CB _ E8, FFFFF592
        mov     eax, dword [ebp+10H]                    ; 13D0 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 13D3 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 13D6 _ 89. 04 24
        call    _intToHexStr                            ; 13D9 _ E8, FFFFFADE
        mov     dword [ebp-2CH], eax                    ; 13DE _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 13E1 _ 8B. 45, 20
        movsx   eax, al                                 ; 13E4 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 13E7 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 13EA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13EE _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13F2 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13F5 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13F9 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13FC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1400 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1403 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1407 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 140A _ 89. 04 24
        call    _showString                             ; 140D _ E8, FFFFF550
        add     dword [ebp-10H], 16                     ; 1412 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1416 _ 8B. 45, 20
        movsx   eax, al                                 ; 1419 _ 0F BE. C0
        mov     dword [esp+14H], ?_155                  ; 141C _ C7. 44 24, 14, 0000004A(d)
        mov     dword [esp+10H], eax                    ; 1424 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1428 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 142B _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 142F _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1432 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1436 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1439 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 143D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1440 _ 89. 04 24
        call    _showString                             ; 1443 _ E8, FFFFF51A
        mov     eax, dword [ebp+10H]                    ; 1448 _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 144B _ 8B. 40, 10
        mov     dword [esp], eax                        ; 144E _ 89. 04 24
        call    _intToHexStr                            ; 1451 _ E8, FFFFFA66
        mov     dword [ebp-30H], eax                    ; 1456 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 1459 _ 8B. 45, 20
        movsx   eax, al                                 ; 145C _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 145F _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 1462 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1466 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 146A _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 146D _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1471 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1474 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1478 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 147B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 147F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1482 _ 89. 04 24
        call    _showString                             ; 1485 _ E8, FFFFF4D8
        nop                                             ; 148A _ 90
        leave                                           ; 148B _ C9
        ret                                             ; 148C _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 148D _ 55
        mov     ebp, esp                                ; 148E _ 89. E5
        sub     esp, 56                                 ; 1490 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1493 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1496 _ 89. 04 24
        call    _sheet_alloc                            ; 1499 _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 149E _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 14A1 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 14A6 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 14AE _ 89. 04 24
        call    _memman_alloc_4k                        ; 14B1 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 14B6 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 14B9 _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 14C1 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 14C9 _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 14D1 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 14D4 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 14D8 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 14DB _ 89. 04 24
        call    _sheet_setbuf                           ; 14DE _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 14E3 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 14E6 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 14EA _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 14ED _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14F1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14F4 _ 89. 04 24
        call    _make_window8                           ; 14F7 _ E8, 000000A5
        mov     dword [esp+14H], ?_156                  ; 14FC _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], 0                      ; 1504 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 150C _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 1514 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 151C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 151F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1523 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1526 _ 89. 04 24
        call    _showString                             ; 1529 _ E8, FFFFF434
        mov     dword [esp+14H], ?_157                  ; 152E _ C7. 44 24, 14, 0000005C(d)
        mov     dword [esp+10H], 0                      ; 1536 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 44                     ; 153E _ C7. 44 24, 0C, 0000002C
        mov     dword [esp+8H], 24                      ; 1546 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 154E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1551 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1555 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1558 _ 89. 04 24
        call    _showString                             ; 155B _ E8, FFFFF402
        mov     dword [esp+0CH], 72                     ; 1560 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 1568 _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 1570 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1573 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1577 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 157A _ 89. 04 24
        call    _sheet_slide                            ; 157D _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1582 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 158A _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 158D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1591 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1594 _ 89. 04 24
        call    _sheet_updown                           ; 1597 _ E8, 00000000(rel)
        mov     eax, dword [ebp-0CH]                    ; 159C _ 8B. 45, F4
        leave                                           ; 159F _ C9
        ret                                             ; 15A0 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 15A1 _ 55
        mov     ebp, esp                                ; 15A2 _ 89. E5
        push    ebx                                     ; 15A4 _ 53
        sub     esp, 68                                 ; 15A5 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 15A8 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 15AB _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 15AE _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 15B1 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 15B4 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 15B7 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 15BA _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 15BD _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 15C0 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 15C3 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 15C5 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 15CD _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 15D1 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 15D9 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 15E1 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 15E9 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 15EC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 15F0 _ 89. 04 24
        call    _boxfill8                               ; 15F3 _ E8, FFFFF4D7
        mov     eax, dword [ebp-18H]                    ; 15F8 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 15FB _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 15FE _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1601 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1603 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 160B _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 160F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1617 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 161F _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1627 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 162A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 162E _ 89. 04 24
        call    _boxfill8                               ; 1631 _ E8, FFFFF499
        mov     eax, dword [ebp-1CH]                    ; 1636 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1639 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 163C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 163F _ 8B. 00
        mov     dword [esp+18H], edx                    ; 1641 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 1645 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 164D _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1655 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 165D _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1665 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1668 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 166C _ 89. 04 24
        call    _boxfill8                               ; 166F _ E8, FFFFF45B
        mov     eax, dword [ebp-1CH]                    ; 1674 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1677 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 167A _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 167D _ 8B. 00
        mov     dword [esp+18H], edx                    ; 167F _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1683 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 168B _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1693 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 169B _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 16A3 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16A6 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16AA _ 89. 04 24
        call    _boxfill8                               ; 16AD _ E8, FFFFF41D
        mov     eax, dword [ebp-1CH]                    ; 16B2 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 16B5 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 16B8 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 16BB _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 16BE _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 16C1 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 16C4 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16C7 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 16C9 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 16CD _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 16D1 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 16D9 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 16DD _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 16E5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16E8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16EC _ 89. 04 24
        call    _boxfill8                               ; 16EF _ E8, FFFFF3DB
        mov     eax, dword [ebp-1CH]                    ; 16F4 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 16F7 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 16FA _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 16FD _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1700 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1703 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1706 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1709 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 170B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 170F _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1713 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 171B _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 171F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1727 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 172A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 172E _ 89. 04 24
        call    _boxfill8                               ; 1731 _ E8, FFFFF399
        mov     eax, dword [ebp-1CH]                    ; 1736 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 1739 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 173C _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 173F _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 1742 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1745 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 1747 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 174B _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 174F _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 1757 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 175F _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1767 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 176A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 176E _ 89. 04 24
        call    _boxfill8                               ; 1771 _ E8, FFFFF359
        mov     eax, dword [ebp-18H]                    ; 1776 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 1779 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 177C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 177F _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1781 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1789 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 178D _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1795 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 179D _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 17A5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17A8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17AC _ 89. 04 24
        call    _boxfill8                               ; 17AF _ E8, FFFFF31B
        mov     eax, dword [ebp-1CH]                    ; 17B4 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 17B7 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 17BA _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 17BD _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 17C0 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 17C3 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 17C6 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17C9 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 17CB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 17CF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 17D3 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 17D7 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 17DF _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 17E7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17EA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17EE _ 89. 04 24
        call    _boxfill8                               ; 17F1 _ E8, FFFFF2D9
        mov     eax, dword [ebp-1CH]                    ; 17F6 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 17F9 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 17FC _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 17FF _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1802 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1805 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1808 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 180B _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 180D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1811 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1815 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1819 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 1821 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 1829 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 182C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1830 _ 89. 04 24
        call    _boxfill8                               ; 1833 _ E8, FFFFF297
        mov     eax, dword [ebp+10H]                    ; 1838 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 183B _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 183F _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 1847 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 184F _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 1857 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 185A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 185E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1861 _ 89. 04 24
        call    _showString                             ; 1864 _ E8, FFFFF0F9
        mov     dword [ebp-10H], 0                      ; 1869 _ C7. 45, F0, 00000000
        jmp     ?_066                                   ; 1870 _ E9, 00000084

?_059:  mov     dword [ebp-0CH], 0                      ; 1875 _ C7. 45, F4, 00000000
        jmp     ?_065                                   ; 187C _ EB, 71

?_060:  mov     eax, dword [ebp-10H]                    ; 187E _ 8B. 45, F0
        shl     eax, 4                                  ; 1881 _ C1. E0, 04
        mov     edx, eax                                ; 1884 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1886 _ 8B. 45, F4
        add     eax, edx                                ; 1889 _ 01. D0
        add     eax, _closebtn.2367                     ; 188B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1890 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1893 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1896 _ 80. 7D, EF, 40
        jnz     ?_061                                   ; 189A _ 75, 06
        mov     byte [ebp-11H], 0                       ; 189C _ C6. 45, EF, 00
        jmp     ?_064                                   ; 18A0 _ EB, 1C

?_061:  cmp     byte [ebp-11H], 36                      ; 18A2 _ 80. 7D, EF, 24
        jnz     ?_062                                   ; 18A6 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 18A8 _ C6. 45, EF, 0F
        jmp     ?_064                                   ; 18AC _ EB, 10

?_062:  cmp     byte [ebp-11H], 81                      ; 18AE _ 80. 7D, EF, 51
        jnz     ?_063                                   ; 18B2 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 18B4 _ C6. 45, EF, 08
        jmp     ?_064                                   ; 18B8 _ EB, 04

?_063:  mov     byte [ebp-11H], 7                       ; 18BA _ C6. 45, EF, 07
?_064:  mov     eax, dword [ebp+0CH]                    ; 18BE _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 18C1 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 18C3 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 18C6 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 18C9 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 18CC _ 8B. 40, 04
        imul    eax, edx                                ; 18CF _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 18D2 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 18D5 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 18D8 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 18DB _ 8B. 55, F4
        add     edx, ebx                                ; 18DE _ 01. DA
        add     eax, edx                                ; 18E0 _ 01. D0
        lea     edx, [ecx+eax]                          ; 18E2 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 18E5 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 18E9 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 18EB _ 83. 45, F4, 01
?_065:  cmp     dword [ebp-0CH], 15                     ; 18EF _ 83. 7D, F4, 0F
        jle     ?_060                                   ; 18F3 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 18F5 _ 83. 45, F0, 01
?_066:  cmp     dword [ebp-10H], 13                     ; 18F9 _ 83. 7D, F0, 0D
        jle     ?_059                                   ; 18FD _ 0F 8E, FFFFFF72
        nop                                             ; 1903 _ 90
        add     esp, 68                                 ; 1904 _ 83. C4, 44
        pop     ebx                                     ; 1907 _ 5B
        pop     ebp                                     ; 1908 _ 5D
        ret                                             ; 1909 _ C3
; _make_window8 End of function

        nop                                             ; 190A _ 90
        nop                                             ; 190B _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 190C _ 55
        mov     ebp, esp                                ; 190D _ 89. E5
        sub     esp, 40                                 ; 190F _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 1912 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 191A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 191D _ 89. 04 24
        call    _memman_alloc_4k                        ; 1920 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1925 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 1928 _ 83. 7D, F0, 00
        jnz     ?_067                                   ; 192C _ 75, 0A
        mov     eax, 0                                  ; 192E _ B8, 00000000
        jmp     ?_071                                   ; 1933 _ E9, 0000009D

?_067:  mov     eax, dword [ebp+10H]                    ; 1938 _ 8B. 45, 10
        imul    eax, dword [ebp+14H]                    ; 193B _ 0F AF. 45, 14
        mov     dword [esp+4H], eax                     ; 193F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1943 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1946 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1949 _ E8, 00000000(rel)
        mov     edx, eax                                ; 194E _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1950 _ 8B. 45, F0
        mov     dword [eax+4H], edx                     ; 1953 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 1956 _ 8B. 45, F0
        mov     eax, dword [eax+4H]                     ; 1959 _ 8B. 40, 04
        test    eax, eax                                ; 195C _ 85. C0
        jnz     ?_068                                   ; 195E _ 75, 21
        mov     eax, dword [ebp-10H]                    ; 1960 _ 8B. 45, F0
        mov     dword [esp+8H], 9232                    ; 1963 _ C7. 44 24, 08, 00002410
        mov     dword [esp+4H], eax                     ; 196B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 196F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1972 _ 89. 04 24
        call    _memman_free_4k                         ; 1975 _ E8, 00000000(rel)
        mov     eax, 0                                  ; 197A _ B8, 00000000
        jmp     ?_071                                   ; 197F _ EB, 54

?_068:  mov     eax, dword [ebp-10H]                    ; 1981 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 1984 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1987 _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 1989 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 198C _ 8B. 55, 10
        mov     dword [eax+8H], edx                     ; 198F _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1992 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 1995 _ 8B. 55, 14
        mov     dword [eax+0CH], edx                    ; 1998 _ 89. 50, 0C
        mov     eax, dword [ebp-10H]                    ; 199B _ 8B. 45, F0
        mov     dword [eax+10H], -1                     ; 199E _ C7. 40, 10, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 19A5 _ C7. 45, F4, 00000000
        jmp     ?_070                                   ; 19AC _ EB, 1B

?_069:  mov     edx, dword [ebp-10H]                    ; 19AE _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 19B1 _ 8B. 45, F4
        add     eax, 33                                 ; 19B4 _ 83. C0, 21
        shl     eax, 5                                  ; 19B7 _ C1. E0, 05
        add     eax, edx                                ; 19BA _ 01. D0
        add     eax, 16                                 ; 19BC _ 83. C0, 10
        mov     dword [eax], 0                          ; 19BF _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 19C5 _ 83. 45, F4, 01
?_070:  cmp     dword [ebp-0CH], 255                    ; 19C9 _ 81. 7D, F4, 000000FF
        jle     ?_069                                   ; 19D0 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 19D2 _ 8B. 45, F0
?_071:  leave                                           ; 19D5 _ C9
        ret                                             ; 19D6 _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 19D7 _ 55
        mov     ebp, esp                                ; 19D8 _ 89. E5
        sub     esp, 16                                 ; 19DA _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 19DD _ C7. 45, FC, 00000000
        jmp     ?_074                                   ; 19E4 _ EB, 5B

?_072:  mov     edx, dword [ebp+8H]                     ; 19E6 _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 19E9 _ 8B. 45, FC
        add     eax, 33                                 ; 19EC _ 83. C0, 21
        shl     eax, 5                                  ; 19EF _ C1. E0, 05
        add     eax, edx                                ; 19F2 _ 01. D0
        add     eax, 16                                 ; 19F4 _ 83. C0, 10
        mov     eax, dword [eax]                        ; 19F7 _ 8B. 00
        test    eax, eax                                ; 19F9 _ 85. C0
        jnz     ?_073                                   ; 19FB _ 75, 40
        mov     eax, dword [ebp-4H]                     ; 19FD _ 8B. 45, FC
        shl     eax, 5                                  ; 1A00 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1A03 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1A09 _ 8B. 45, 08
        add     eax, edx                                ; 1A0C _ 01. D0
        add     eax, 4                                  ; 1A0E _ 83. C0, 04
        mov     dword [ebp-8H], eax                     ; 1A11 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1A14 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1A17 _ 8B. 55, FC
        add     edx, 4                                  ; 1A1A _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1A1D _ 8B. 4D, F8
        mov     dword [eax+edx*4+4H], ecx               ; 1A20 _ 89. 4C 90, 04
        mov     eax, dword [ebp-8H]                     ; 1A24 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1A27 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1A2E _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1A31 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1A38 _ 8B. 45, F8
        jmp     ?_075                                   ; 1A3B _ EB, 12

?_073:  add     dword [ebp-4H], 1                       ; 1A3D _ 83. 45, FC, 01
?_074:  cmp     dword [ebp-4H], 255                     ; 1A41 _ 81. 7D, FC, 000000FF
        jle     ?_072                                   ; 1A48 _ 7E, 9C
        mov     eax, 0                                  ; 1A4A _ B8, 00000000
?_075:  leave                                           ; 1A4F _ C9
        ret                                             ; 1A50 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1A51 _ 55
        mov     ebp, esp                                ; 1A52 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1A54 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1A57 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1A5A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1A5C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A5F _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1A62 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A65 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1A68 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1A6B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1A6E _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1A71 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1A74 _ 89. 50, 14
        nop                                             ; 1A77 _ 90
        pop     ebp                                     ; 1A78 _ 5D
        ret                                             ; 1A79 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1A7A _ 55
        mov     ebp, esp                                ; 1A7B _ 89. E5
        push    edi                                     ; 1A7D _ 57
        push    esi                                     ; 1A7E _ 56
        push    ebx                                     ; 1A7F _ 53
        sub     esp, 60                                 ; 1A80 _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1A83 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1A86 _ 8B. 40, 18
        mov     dword [ebp-20H], eax                    ; 1A89 _ 89. 45, E0
        mov     eax, dword [ebp+8H]                     ; 1A8C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1A8F _ 8B. 40, 10
        add     eax, 1                                  ; 1A92 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1A95 _ 39. 45, 10
        jle     ?_076                                   ; 1A98 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1A9A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1A9D _ 8B. 40, 10
        add     eax, 1                                  ; 1AA0 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1AA3 _ 89. 45, 10
?_076:  cmp     dword [ebp+10H], -1                     ; 1AA6 _ 83. 7D, 10, FF
        jge     ?_077                                   ; 1AAA _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1AAC _ C7. 45, 10, FFFFFFFF
?_077:  mov     eax, dword [ebp+0CH]                    ; 1AB3 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1AB6 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1AB9 _ 89. 50, 18
        mov     eax, dword [ebp-20H]                    ; 1ABC _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1ABF _ 3B. 45, 10
        jle     ?_084                                   ; 1AC2 _ 0F 8E, 00000212
        cmp     dword [ebp+10H], 0                      ; 1AC8 _ 83. 7D, 10, 00
        js      ?_080                                   ; 1ACC _ 0F 88, 000000FE
        mov     eax, dword [ebp-20H]                    ; 1AD2 _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1AD5 _ 89. 45, E4
        jmp     ?_079                                   ; 1AD8 _ EB, 34

?_078:  mov     eax, dword [ebp-1CH]                    ; 1ADA _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1ADD _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1AE0 _ 8B. 45, 08
        add     edx, 4                                  ; 1AE3 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1AE6 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1AEA _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1AED _ 8B. 55, E4
        add     edx, 4                                  ; 1AF0 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1AF3 _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1AF7 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1AFA _ 8B. 55, E4
        add     edx, 4                                  ; 1AFD _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1B00 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1B04 _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1B07 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1B0A _ 83. 6D, E4, 01
?_079:  mov     eax, dword [ebp-1CH]                    ; 1B0E _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1B11 _ 3B. 45, 10
        jg      ?_078                                   ; 1B14 _ 7F, C4
        mov     eax, dword [ebp+8H]                     ; 1B16 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1B19 _ 8B. 55, 10
        add     edx, 4                                  ; 1B1C _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1B1F _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1B22 _ 89. 4C 90, 04
        mov     eax, dword [ebp+10H]                    ; 1B26 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1B29 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1B2C _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B2F _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B32 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B35 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1B38 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1B3B _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1B3E _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B41 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B44 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1B47 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1B4A _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B4D _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B50 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1B53 _ 8B. 40, 0C
        mov     dword [esp+14H], esi                    ; 1B56 _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1B5A _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1B5E _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1B62 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1B66 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1B6A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1B6D _ 89. 04 24
        call    _sheet_refreshmap                       ; 1B70 _ E8, 0000063D
        mov     eax, dword [ebp+10H]                    ; 1B75 _ 8B. 45, 10
        lea     esi, [eax+1H]                           ; 1B78 _ 8D. 70, 01
        mov     eax, dword [ebp+0CH]                    ; 1B7B _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B7E _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B81 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1B84 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1B87 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1B8A _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1B8D _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1B90 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1B93 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1B96 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1B99 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1B9C _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1B9F _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1BA2 _ 8B. 40, 0C
        mov     edi, dword [ebp-20H]                    ; 1BA5 _ 8B. 7D, E0
        mov     dword [esp+18H], edi                    ; 1BA8 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1BAC _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1BB0 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1BB4 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1BB8 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1BBC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BC0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BC3 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1BC6 _ E8, 00000465
        jmp     ?_091                                   ; 1BCB _ E9, 0000027D

?_080:  mov     eax, dword [ebp+8H]                     ; 1BD0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1BD3 _ 8B. 40, 10
        cmp     dword [ebp-20H], eax                    ; 1BD6 _ 39. 45, E0
        jge     ?_083                                   ; 1BD9 _ 7D, 47
        mov     eax, dword [ebp-20H]                    ; 1BDB _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1BDE _ 89. 45, E4
        jmp     ?_082                                   ; 1BE1 _ EB, 34

?_081:  mov     eax, dword [ebp-1CH]                    ; 1BE3 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1BE6 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1BE9 _ 8B. 45, 08
        add     edx, 4                                  ; 1BEC _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1BEF _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1BF3 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1BF6 _ 8B. 55, E4
        add     edx, 4                                  ; 1BF9 _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1BFC _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1C00 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1C03 _ 8B. 55, E4
        add     edx, 4                                  ; 1C06 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1C09 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1C0D _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1C10 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1C13 _ 83. 45, E4, 01
?_082:  mov     eax, dword [ebp+8H]                     ; 1C17 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C1A _ 8B. 40, 10
        cmp     dword [ebp-1CH], eax                    ; 1C1D _ 39. 45, E4
        jl      ?_081                                   ; 1C20 _ 7C, C1
?_083:  mov     eax, dword [ebp+8H]                     ; 1C22 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1C25 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1C28 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1C2B _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1C2E _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C31 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C34 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C37 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C3A _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C3D _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C40 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C43 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C46 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C49 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C4C _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1C4F _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C52 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C55 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1C58 _ 8B. 40, 0C
        mov     dword [esp+14H], 0                      ; 1C5B _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1C63 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1C67 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1C6B _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1C6F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C73 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C76 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1C79 _ E8, 00000534
        mov     eax, dword [ebp-20H]                    ; 1C7E _ 8B. 45, E0
        lea     esi, [eax-1H]                           ; 1C81 _ 8D. 70, FF
        mov     eax, dword [ebp+0CH]                    ; 1C84 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1C87 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1C8A _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1C8D _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1C90 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1C93 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1C96 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C99 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1C9C _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1C9F _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CA2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CA5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CA8 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CAB _ 8B. 40, 0C
        mov     dword [esp+18H], esi                    ; 1CAE _ 89. 74 24, 18
        mov     dword [esp+14H], 0                      ; 1CB2 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], ebx                    ; 1CBA _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1CBE _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CC2 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CC6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CCA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CCD _ 89. 04 24
        call    _sheet_refreshsub                       ; 1CD0 _ E8, 0000035B
        jmp     ?_091                                   ; 1CD5 _ E9, 00000173

?_084:  mov     eax, dword [ebp-20H]                    ; 1CDA _ 8B. 45, E0
        cmp     eax, dword [ebp+10H]                    ; 1CDD _ 3B. 45, 10
        jge     ?_091                                   ; 1CE0 _ 0F 8D, 00000167
        cmp     dword [ebp-20H], 0                      ; 1CE6 _ 83. 7D, E0, 00
        js      ?_087                                   ; 1CEA _ 78, 56
        mov     eax, dword [ebp-20H]                    ; 1CEC _ 8B. 45, E0
        mov     dword [ebp-1CH], eax                    ; 1CEF _ 89. 45, E4
        jmp     ?_086                                   ; 1CF2 _ EB, 34

?_085:  mov     eax, dword [ebp-1CH]                    ; 1CF4 _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1CF7 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1CFA _ 8B. 45, 08
        add     edx, 4                                  ; 1CFD _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1D00 _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D04 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D07 _ 8B. 55, E4
        add     edx, 4                                  ; 1D0A _ 83. C2, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1D0D _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D11 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D14 _ 8B. 55, E4
        add     edx, 4                                  ; 1D17 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D1A _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1D1E _ 8B. 55, E4
        mov     dword [eax+18H], edx                    ; 1D21 _ 89. 50, 18
        add     dword [ebp-1CH], 1                      ; 1D24 _ 83. 45, E4, 01
?_086:  mov     eax, dword [ebp-1CH]                    ; 1D28 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1D2B _ 3B. 45, 10
        jl      ?_085                                   ; 1D2E _ 7C, C4
        mov     eax, dword [ebp+8H]                     ; 1D30 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D33 _ 8B. 55, 10
        add     edx, 4                                  ; 1D36 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1D39 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1D3C _ 89. 4C 90, 04
        jmp     ?_090                                   ; 1D40 _ EB, 6C

?_087:  mov     eax, dword [ebp+8H]                     ; 1D42 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1D45 _ 8B. 40, 10
        mov     dword [ebp-1CH], eax                    ; 1D48 _ 89. 45, E4
        jmp     ?_089                                   ; 1D4B _ EB, 3A

?_088:  mov     eax, dword [ebp-1CH]                    ; 1D4D _ 8B. 45, E4
        lea     ebx, [eax+1H]                           ; 1D50 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1D53 _ 8B. 45, 08
        mov     edx, dword [ebp-1CH]                    ; 1D56 _ 8B. 55, E4
        add     edx, 4                                  ; 1D59 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4+4H]               ; 1D5C _ 8B. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D60 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1D63 _ 8D. 53, 04
        mov     dword [eax+edx*4+4H], ecx               ; 1D66 _ 89. 4C 90, 04
        mov     eax, dword [ebp-1CH]                    ; 1D6A _ 8B. 45, E4
        lea     edx, [eax+1H]                           ; 1D6D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1D70 _ 8B. 45, 08
        add     edx, 4                                  ; 1D73 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 1D76 _ 8B. 44 90, 04
        mov     edx, dword [ebp-1CH]                    ; 1D7A _ 8B. 55, E4
        add     edx, 1                                  ; 1D7D _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1D80 _ 89. 50, 18
        sub     dword [ebp-1CH], 1                      ; 1D83 _ 83. 6D, E4, 01
?_089:  mov     eax, dword [ebp-1CH]                    ; 1D87 _ 8B. 45, E4
        cmp     eax, dword [ebp+10H]                    ; 1D8A _ 3B. 45, 10
        jge     ?_088                                   ; 1D8D _ 7D, BE
        mov     eax, dword [ebp+8H]                     ; 1D8F _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1D92 _ 8B. 55, 10
        add     edx, 4                                  ; 1D95 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1D98 _ 8B. 4D, 0C
        mov     dword [eax+edx*4+4H], ecx               ; 1D9B _ 89. 4C 90, 04
        mov     eax, dword [ebp+8H]                     ; 1D9F _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1DA2 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1DA5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1DA8 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1DAB _ 89. 50, 10
?_090:  mov     eax, dword [ebp+0CH]                    ; 1DAE _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DB1 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DB4 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1DB7 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1DBA _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1DBD _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1DC0 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1DC3 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1DC6 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1DC9 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1DCC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DCF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1DD2 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1DD5 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1DD8 _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1DDB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1DDF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1DE3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1DE7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1DEB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DEF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DF2 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1DF5 _ E8, 000003B8
        mov     eax, dword [ebp+0CH]                    ; 1DFA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1DFD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E00 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1E03 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1E06 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E09 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E0C _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1E0F _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1E12 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1E15 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E18 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E1B _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1E1E _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E21 _ 8B. 40, 0C
        mov     esi, dword [ebp+10H]                    ; 1E24 _ 8B. 75, 10
        mov     dword [esp+18H], esi                    ; 1E27 _ 89. 74 24, 18
        mov     esi, dword [ebp+10H]                    ; 1E2B _ 8B. 75, 10
        mov     dword [esp+14H], esi                    ; 1E2E _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1E32 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1E36 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1E3A _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1E3E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E42 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E45 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1E48 _ E8, 000001E3
?_091:  nop                                             ; 1E4D _ 90
        add     esp, 60                                 ; 1E4E _ 83. C4, 3C
        pop     ebx                                     ; 1E51 _ 5B
        pop     esi                                     ; 1E52 _ 5E
        pop     edi                                     ; 1E53 _ 5F
        pop     ebp                                     ; 1E54 _ 5D
        ret                                             ; 1E55 _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1E56 _ 55
        mov     ebp, esp                                ; 1E57 _ 89. E5
        push    edi                                     ; 1E59 _ 57
        push    esi                                     ; 1E5A _ 56
        push    ebx                                     ; 1E5B _ 53
        sub     esp, 60                                 ; 1E5C _ 83. EC, 3C
        mov     eax, dword [ebp+0CH]                    ; 1E5F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1E62 _ 8B. 40, 18
        test    eax, eax                                ; 1E65 _ 85. C0
        js      ?_092                                   ; 1E67 _ 78, 61
        mov     eax, dword [ebp+0CH]                    ; 1E69 _ 8B. 45, 0C
        mov     edi, dword [eax+18H]                    ; 1E6C _ 8B. 78, 18
        mov     eax, dword [ebp+0CH]                    ; 1E6F _ 8B. 45, 0C
        mov     esi, dword [eax+18H]                    ; 1E72 _ 8B. 70, 18
        mov     eax, dword [ebp+0CH]                    ; 1E75 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E78 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1E7B _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1E7E _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1E81 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1E84 _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1E87 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1E8A _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1E8D _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1E90 _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1E93 _ 8B. 45, 14
        add     edx, eax                                ; 1E96 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1E98 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1E9B _ 8B. 40, 0C
        mov     dword [ebp-1CH], eax                    ; 1E9E _ 89. 45, E4
        mov     eax, dword [ebp+10H]                    ; 1EA1 _ 8B. 45, 10
        add     eax, dword [ebp-1CH]                    ; 1EA4 _ 03. 45, E4
        mov     dword [esp+18H], edi                    ; 1EA7 _ 89. 7C 24, 18
        mov     dword [esp+14H], esi                    ; 1EAB _ 89. 74 24, 14
        mov     dword [esp+10H], ebx                    ; 1EAF _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1EB3 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1EB7 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1EBB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1EBF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1EC2 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1EC5 _ E8, 00000166
?_092:  mov     eax, 0                                  ; 1ECA _ B8, 00000000
        add     esp, 60                                 ; 1ECF _ 83. C4, 3C
        pop     ebx                                     ; 1ED2 _ 5B
        pop     esi                                     ; 1ED3 _ 5E
        pop     edi                                     ; 1ED4 _ 5F
        pop     ebp                                     ; 1ED5 _ 5D
        ret                                             ; 1ED6 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 1ED7 _ 55
        mov     ebp, esp                                ; 1ED8 _ 89. E5
        push    esi                                     ; 1EDA _ 56
        push    ebx                                     ; 1EDB _ 53
        sub     esp, 48                                 ; 1EDC _ 83. EC, 30
        mov     eax, dword [ebp+0CH]                    ; 1EDF _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1EE2 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1EE5 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1EE8 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1EEB _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1EEE _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1EF1 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1EF4 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1EF7 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1EFA _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1EFD _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1F00 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1F03 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F06 _ 8B. 40, 18
        test    eax, eax                                ; 1F09 _ 85. C0
        js      ?_093                                   ; 1F0B _ 0F 88, 00000117
        mov     eax, dword [ebp+0CH]                    ; 1F11 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F14 _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1F17 _ 8B. 45, F0
        add     edx, eax                                ; 1F1A _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F1C _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1F1F _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 1F22 _ 8B. 45, F4
        add     eax, ecx                                ; 1F25 _ 01. C8
        mov     dword [esp+14H], 0                      ; 1F27 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 1F2F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1F33 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1F37 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1F3A _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1F3E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1F41 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F45 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F48 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1F4B _ E8, 00000262
        mov     eax, dword [ebp+0CH]                    ; 1F50 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1F53 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1F56 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F59 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1F5C _ 8B. 45, 14
        add     edx, eax                                ; 1F5F _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1F61 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1F64 _ 8B. 58, 04
        mov     eax, dword [ebp+10H]                    ; 1F67 _ 8B. 45, 10
        add     eax, ebx                                ; 1F6A _ 01. D8
        mov     dword [esp+14H], ecx                    ; 1F6C _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1F70 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1F74 _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1F78 _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1F7B _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1F7F _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1F82 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1F86 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1F89 _ 89. 04 24
        call    _sheet_refreshmap                       ; 1F8C _ E8, 00000221
        mov     eax, dword [ebp+0CH]                    ; 1F91 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1F94 _ 8B. 40, 18
        lea     ecx, [eax-1H]                           ; 1F97 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 1F9A _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1F9D _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1FA0 _ 8B. 45, F0
        add     edx, eax                                ; 1FA3 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FA5 _ 8B. 45, 0C
        mov     ebx, dword [eax+4H]                     ; 1FA8 _ 8B. 58, 04
        mov     eax, dword [ebp-0CH]                    ; 1FAB _ 8B. 45, F4
        add     eax, ebx                                ; 1FAE _ 01. D8
        mov     dword [esp+18H], ecx                    ; 1FB0 _ 89. 4C 24, 18
        mov     dword [esp+14H], 0                      ; 1FB4 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], edx                    ; 1FBC _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1FC0 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1FC4 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1FC7 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1FCB _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1FCE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1FD2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1FD5 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1FD8 _ E8, 00000053
        mov     eax, dword [ebp+0CH]                    ; 1FDD _ 8B. 45, 0C
        mov     ebx, dword [eax+18H]                    ; 1FE0 _ 8B. 58, 18
        mov     eax, dword [ebp+0CH]                    ; 1FE3 _ 8B. 45, 0C
        mov     ecx, dword [eax+18H]                    ; 1FE6 _ 8B. 48, 18
        mov     eax, dword [ebp+0CH]                    ; 1FE9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1FEC _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1FEF _ 8B. 45, 14
        add     edx, eax                                ; 1FF2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1FF4 _ 8B. 45, 0C
        mov     esi, dword [eax+4H]                     ; 1FF7 _ 8B. 70, 04
        mov     eax, dword [ebp+10H]                    ; 1FFA _ 8B. 45, 10
        add     eax, esi                                ; 1FFD _ 01. F0
        mov     dword [esp+18H], ebx                    ; 1FFF _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 2003 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 2007 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 200B _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 200F _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 2012 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 2016 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 2019 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 201D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 2020 _ 89. 04 24
        call    _sheet_refreshsub                       ; 2023 _ E8, 00000008
?_093:  nop                                             ; 2028 _ 90
        add     esp, 48                                 ; 2029 _ 83. C4, 30
        pop     ebx                                     ; 202C _ 5B
        pop     esi                                     ; 202D _ 5E
        pop     ebp                                     ; 202E _ 5D
        ret                                             ; 202F _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 2030 _ 55
        mov     ebp, esp                                ; 2031 _ 89. E5
        sub     esp, 48                                 ; 2033 _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 2036 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2039 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 203B _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 203E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2041 _ 8B. 40, 04
        mov     dword [ebp-14H], eax                    ; 2044 _ 89. 45, EC
        cmp     dword [ebp+0CH], 0                      ; 2047 _ 83. 7D, 0C, 00
        jns     ?_094                                   ; 204B _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 204D _ C7. 45, 0C, 00000000
?_094:  cmp     dword [ebp+10H], 8                      ; 2054 _ 83. 7D, 10, 08
        jg      ?_095                                   ; 2058 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 205A _ C7. 45, 10, 00000000
?_095:  mov     eax, dword [ebp+8H]                     ; 2061 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2064 _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 2067 _ 39. 45, 14
        jle     ?_096                                   ; 206A _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 206C _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 206F _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 2072 _ 89. 45, 14
?_096:  mov     eax, dword [ebp+8H]                     ; 2075 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2078 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 207B _ 39. 45, 18
        jle     ?_097                                   ; 207E _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 2080 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2083 _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2086 _ 89. 45, 18
?_097:  mov     eax, dword [ebp+1CH]                    ; 2089 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 208C _ 89. 45, FC
        jmp     ?_104                                   ; 208F _ E9, 0000010F

?_098:  mov     eax, dword [ebp+8H]                     ; 2094 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2097 _ 8B. 55, FC
        add     edx, 4                                  ; 209A _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 209D _ 8B. 44 90, 04
        mov     dword [ebp-18H], eax                    ; 20A1 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 20A4 _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 20A7 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 20A9 _ 89. 45, E4
        mov     eax, dword [ebp+8H]                     ; 20AC _ 8B. 45, 08
        add     eax, 1044                               ; 20AF _ 05, 00000414
        mov     edx, dword [ebp-18H]                    ; 20B4 _ 8B. 55, E8
        sub     edx, eax                                ; 20B7 _ 29. C2
        mov     eax, edx                                ; 20B9 _ 89. D0
        sar     eax, 5                                  ; 20BB _ C1. F8, 05
        mov     byte [ebp-1DH], al                      ; 20BE _ 88. 45, E3
        mov     dword [ebp-0CH], 0                      ; 20C1 _ C7. 45, F4, 00000000
        jmp     ?_103                                   ; 20C8 _ E9, 000000C3

?_099:  mov     eax, dword [ebp-18H]                    ; 20CD _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 20D0 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 20D3 _ 8B. 45, F4
        add     eax, edx                                ; 20D6 _ 01. D0
        mov     dword [ebp-24H], eax                    ; 20D8 _ 89. 45, DC
        mov     dword [ebp-8H], 0                       ; 20DB _ C7. 45, F8, 00000000
        jmp     ?_102                                   ; 20E2 _ E9, 00000096

?_100:  mov     eax, dword [ebp-18H]                    ; 20E7 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 20EA _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 20ED _ 8B. 45, F8
        add     eax, edx                                ; 20F0 _ 01. D0
        mov     dword [ebp-28H], eax                    ; 20F2 _ 89. 45, D8
        mov     eax, dword [ebp+0CH]                    ; 20F5 _ 8B. 45, 0C
        cmp     eax, dword [ebp-28H]                    ; 20F8 _ 3B. 45, D8
        jg      ?_101                                   ; 20FB _ 7F, 7C
        mov     eax, dword [ebp-28H]                    ; 20FD _ 8B. 45, D8
        cmp     eax, dword [ebp+14H]                    ; 2100 _ 3B. 45, 14
        jge     ?_101                                   ; 2103 _ 7D, 74
        mov     eax, dword [ebp+10H]                    ; 2105 _ 8B. 45, 10
        cmp     eax, dword [ebp-24H]                    ; 2108 _ 3B. 45, DC
        jg      ?_101                                   ; 210B _ 7F, 6C
        mov     eax, dword [ebp-24H]                    ; 210D _ 8B. 45, DC
        cmp     eax, dword [ebp+18H]                    ; 2110 _ 3B. 45, 18
        jge     ?_101                                   ; 2113 _ 7D, 64
        mov     eax, dword [ebp-18H]                    ; 2115 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2118 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 211B _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 211F _ 8B. 55, F8
        add     eax, edx                                ; 2122 _ 01. D0
        mov     edx, eax                                ; 2124 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 2126 _ 8B. 45, E4
        add     eax, edx                                ; 2129 _ 01. D0
        movzx   eax, byte [eax]                         ; 212B _ 0F B6. 00
        mov     byte [ebp-29H], al                      ; 212E _ 88. 45, D7
        mov     eax, dword [ebp+8H]                     ; 2131 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2134 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2137 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 213B _ 8B. 55, D8
        add     eax, edx                                ; 213E _ 01. D0
        mov     edx, eax                                ; 2140 _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 2142 _ 8B. 45, EC
        add     eax, edx                                ; 2145 _ 01. D0
        movzx   eax, byte [eax]                         ; 2147 _ 0F B6. 00
        cmp     byte [ebp-1DH], al                      ; 214A _ 38. 45, E3
        jnz     ?_101                                   ; 214D _ 75, 2A
        movzx   eax, byte [ebp-29H]                     ; 214F _ 0F B6. 45, D7
        mov     edx, dword [ebp-18H]                    ; 2153 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 2156 _ 8B. 52, 14
        cmp     eax, edx                                ; 2159 _ 39. D0
        jz      ?_101                                   ; 215B _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 215D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2160 _ 8B. 40, 08
        imul    eax, dword [ebp-24H]                    ; 2163 _ 0F AF. 45, DC
        mov     edx, dword [ebp-28H]                    ; 2167 _ 8B. 55, D8
        add     eax, edx                                ; 216A _ 01. D0
        mov     edx, eax                                ; 216C _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 216E _ 8B. 45, F0
        add     edx, eax                                ; 2171 _ 01. C2
        movzx   eax, byte [ebp-29H]                     ; 2173 _ 0F B6. 45, D7
        mov     byte [edx], al                          ; 2177 _ 88. 02
?_101:  add     dword [ebp-8H], 1                       ; 2179 _ 83. 45, F8, 01
?_102:  mov     eax, dword [ebp-18H]                    ; 217D _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 2180 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 2183 _ 39. 45, F8
        jl      ?_100                                   ; 2186 _ 0F 8C, FFFFFF5B
        add     dword [ebp-0CH], 1                      ; 218C _ 83. 45, F4, 01
?_103:  mov     eax, dword [ebp-18H]                    ; 2190 _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 2193 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 2196 _ 39. 45, F4
        jl      ?_099                                   ; 2199 _ 0F 8C, FFFFFF2E
        add     dword [ebp-4H], 1                       ; 219F _ 83. 45, FC, 01
?_104:  mov     eax, dword [ebp-4H]                     ; 21A3 _ 8B. 45, FC
        cmp     eax, dword [ebp+20H]                    ; 21A6 _ 3B. 45, 20
        jle     ?_098                                   ; 21A9 _ 0F 8E, FFFFFEE5
        nop                                             ; 21AF _ 90
        leave                                           ; 21B0 _ C9
        ret                                             ; 21B1 _ C3
; _sheet_refreshsub End of function

_sheet_refreshmap:; Function begin
        push    ebp                                     ; 21B2 _ 55
        mov     ebp, esp                                ; 21B3 _ 89. E5
        sub     esp, 64                                 ; 21B5 _ 83. EC, 40
        mov     eax, dword [ebp+8H]                     ; 21B8 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 21BB _ 8B. 40, 04
        mov     dword [ebp-20H], eax                    ; 21BE _ 89. 45, E0
        cmp     dword [ebp+0CH], 0                      ; 21C1 _ 83. 7D, 0C, 00
        jns     ?_105                                   ; 21C5 _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 21C7 _ C7. 45, 0C, 00000000
?_105:  cmp     dword [ebp+10H], 0                      ; 21CE _ 83. 7D, 10, 00
        jns     ?_106                                   ; 21D2 _ 79, 07
        mov     dword [ebp+10H], 0                      ; 21D4 _ C7. 45, 10, 00000000
?_106:  mov     eax, dword [ebp+8H]                     ; 21DB _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21DE _ 8B. 40, 08
        cmp     dword [ebp+14H], eax                    ; 21E1 _ 39. 45, 14
        jle     ?_107                                   ; 21E4 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 21E6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 21E9 _ 8B. 40, 08
        mov     dword [ebp+14H], eax                    ; 21EC _ 89. 45, 14
?_107:  mov     eax, dword [ebp+8H]                     ; 21EF _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 21F2 _ 8B. 40, 0C
        cmp     dword [ebp+18H], eax                    ; 21F5 _ 39. 45, 18
        jle     ?_108                                   ; 21F8 _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 21FA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 21FD _ 8B. 40, 0C
        mov     dword [ebp+18H], eax                    ; 2200 _ 89. 45, 18
?_108:  mov     eax, dword [ebp+1CH]                    ; 2203 _ 8B. 45, 1C
        mov     dword [ebp-4H], eax                     ; 2206 _ 89. 45, FC
        jmp     ?_119                                   ; 2209 _ E9, 00000139

?_109:  mov     eax, dword [ebp+8H]                     ; 220E _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2211 _ 8B. 55, FC
        add     edx, 4                                  ; 2214 _ 83. C2, 04
        mov     eax, dword [eax+edx*4+4H]               ; 2217 _ 8B. 44 90, 04
        mov     dword [ebp-24H], eax                    ; 221B _ 89. 45, DC
        mov     eax, dword [ebp+8H]                     ; 221E _ 8B. 45, 08
        add     eax, 1044                               ; 2221 _ 05, 00000414
        mov     edx, dword [ebp-24H]                    ; 2226 _ 8B. 55, DC
        sub     edx, eax                                ; 2229 _ 29. C2
        mov     eax, edx                                ; 222B _ 89. D0
        sar     eax, 5                                  ; 222D _ C1. F8, 05
        mov     byte [ebp-25H], al                      ; 2230 _ 88. 45, DB
        mov     eax, dword [ebp-24H]                    ; 2233 _ 8B. 45, DC
        mov     eax, dword [eax]                        ; 2236 _ 8B. 00
        mov     dword [ebp-2CH], eax                    ; 2238 _ 89. 45, D4
        mov     eax, dword [ebp-24H]                    ; 223B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 223E _ 8B. 40, 0C
        mov     edx, dword [ebp+0CH]                    ; 2241 _ 8B. 55, 0C
        sub     edx, eax                                ; 2244 _ 29. C2
        mov     eax, edx                                ; 2246 _ 89. D0
        mov     dword [ebp-10H], eax                    ; 2248 _ 89. 45, F0
        mov     eax, dword [ebp-24H]                    ; 224B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 224E _ 8B. 40, 10
        mov     edx, dword [ebp+10H]                    ; 2251 _ 8B. 55, 10
        sub     edx, eax                                ; 2254 _ 29. C2
        mov     eax, edx                                ; 2256 _ 89. D0
        mov     dword [ebp-14H], eax                    ; 2258 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 225B _ 8B. 45, DC
        mov     eax, dword [eax+0CH]                    ; 225E _ 8B. 40, 0C
        mov     edx, dword [ebp+14H]                    ; 2261 _ 8B. 55, 14
        sub     edx, eax                                ; 2264 _ 29. C2
        mov     eax, edx                                ; 2266 _ 89. D0
        mov     dword [ebp-18H], eax                    ; 2268 _ 89. 45, E8
        mov     eax, dword [ebp-24H]                    ; 226B _ 8B. 45, DC
        mov     eax, dword [eax+10H]                    ; 226E _ 8B. 40, 10
        mov     edx, dword [ebp+18H]                    ; 2271 _ 8B. 55, 18
        sub     edx, eax                                ; 2274 _ 29. C2
        mov     eax, edx                                ; 2276 _ 89. D0
        mov     dword [ebp-1CH], eax                    ; 2278 _ 89. 45, E4
        cmp     dword [ebp-10H], 0                      ; 227B _ 83. 7D, F0, 00
        jns     ?_110                                   ; 227F _ 79, 07
        mov     dword [ebp-10H], 0                      ; 2281 _ C7. 45, F0, 00000000
?_110:  cmp     dword [ebp-14H], 0                      ; 2288 _ 83. 7D, EC, 00
        jns     ?_111                                   ; 228C _ 79, 07
        mov     dword [ebp-14H], 0                      ; 228E _ C7. 45, EC, 00000000
?_111:  mov     eax, dword [ebp-24H]                    ; 2295 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 2298 _ 8B. 40, 04
        cmp     dword [ebp-18H], eax                    ; 229B _ 39. 45, E8
        jle     ?_112                                   ; 229E _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 22A0 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 22A3 _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 22A6 _ 89. 45, E8
?_112:  mov     eax, dword [ebp-24H]                    ; 22A9 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 22AC _ 8B. 40, 08
        cmp     dword [ebp-1CH], eax                    ; 22AF _ 39. 45, E4
        jle     ?_113                                   ; 22B2 _ 7E, 09
        mov     eax, dword [ebp-24H]                    ; 22B4 _ 8B. 45, DC
        mov     eax, dword [eax+8H]                     ; 22B7 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 22BA _ 89. 45, E4
?_113:  mov     eax, dword [ebp-14H]                    ; 22BD _ 8B. 45, EC
        mov     dword [ebp-0CH], eax                    ; 22C0 _ 89. 45, F4
        jmp     ?_118                                   ; 22C3 _ EB, 76

?_114:  mov     eax, dword [ebp-24H]                    ; 22C5 _ 8B. 45, DC
        mov     edx, dword [eax+10H]                    ; 22C8 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 22CB _ 8B. 45, F4
        add     eax, edx                                ; 22CE _ 01. D0
        mov     dword [ebp-30H], eax                    ; 22D0 _ 89. 45, D0
        mov     eax, dword [ebp-10H]                    ; 22D3 _ 8B. 45, F0
        mov     dword [ebp-8H], eax                     ; 22D6 _ 89. 45, F8
        jmp     ?_117                                   ; 22D9 _ EB, 54

?_115:  mov     eax, dword [ebp-24H]                    ; 22DB _ 8B. 45, DC
        mov     edx, dword [eax+0CH]                    ; 22DE _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 22E1 _ 8B. 45, F8
        add     eax, edx                                ; 22E4 _ 01. D0
        mov     dword [ebp-34H], eax                    ; 22E6 _ 89. 45, CC
        mov     eax, dword [ebp-24H]                    ; 22E9 _ 8B. 45, DC
        mov     eax, dword [eax+4H]                     ; 22EC _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 22EF _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 22F3 _ 8B. 55, F8
        add     eax, edx                                ; 22F6 _ 01. D0
        mov     edx, eax                                ; 22F8 _ 89. C2
        mov     eax, dword [ebp-2CH]                    ; 22FA _ 8B. 45, D4
        add     eax, edx                                ; 22FD _ 01. D0
        movzx   eax, byte [eax]                         ; 22FF _ 0F B6. 00
        movzx   eax, al                                 ; 2302 _ 0F B6. C0
        mov     edx, dword [ebp-24H]                    ; 2305 _ 8B. 55, DC
        mov     edx, dword [edx+14H]                    ; 2308 _ 8B. 52, 14
        cmp     eax, edx                                ; 230B _ 39. D0
        jz      ?_116                                   ; 230D _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 230F _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2312 _ 8B. 40, 08
        imul    eax, dword [ebp-30H]                    ; 2315 _ 0F AF. 45, D0
        mov     edx, dword [ebp-34H]                    ; 2319 _ 8B. 55, CC
        add     eax, edx                                ; 231C _ 01. D0
        mov     edx, eax                                ; 231E _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 2320 _ 8B. 45, E0
        add     edx, eax                                ; 2323 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 2325 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 2329 _ 88. 02
?_116:  add     dword [ebp-8H], 1                       ; 232B _ 83. 45, F8, 01
?_117:  mov     eax, dword [ebp-8H]                     ; 232F _ 8B. 45, F8
        cmp     eax, dword [ebp-18H]                    ; 2332 _ 3B. 45, E8
        jl      ?_115                                   ; 2335 _ 7C, A4
        add     dword [ebp-0CH], 1                      ; 2337 _ 83. 45, F4, 01
?_118:  mov     eax, dword [ebp-0CH]                    ; 233B _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 233E _ 3B. 45, E4
        jl      ?_114                                   ; 2341 _ 7C, 82
        add     dword [ebp-4H], 1                       ; 2343 _ 83. 45, FC, 01
?_119:  mov     eax, dword [ebp+8H]                     ; 2347 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 234A _ 8B. 40, 10
        cmp     dword [ebp-4H], eax                     ; 234D _ 39. 45, FC
        jle     ?_109                                   ; 2350 _ 0F 8E, FFFFFEB8
        nop                                             ; 2356 _ 90
        leave                                           ; 2357 _ C9
        ret                                             ; 2358 _ C3
; _sheet_refreshmap End of function

        nop                                             ; 2359 _ 90
        nop                                             ; 235A _ 90
        nop                                             ; 235B _ 90

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 235C _ 55
        mov     ebp, esp                                ; 235D _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 235F _ 8B. 45, 08
        mov     dword [eax], 0                          ; 2362 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 2368 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 236B _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 2372 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2375 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 237C _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 237F _ C7. 40, 0C, 00000000
        nop                                             ; 2386 _ 90
        pop     ebp                                     ; 2387 _ 5D
        ret                                             ; 2388 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 2389 _ 55
        mov     ebp, esp                                ; 238A _ 89. E5
        sub     esp, 16                                 ; 238C _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 238F _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 2396 _ C7. 45, FC, 00000000
        jmp     ?_121                                   ; 239D _ EB, 14

?_120:  mov     eax, dword [ebp+8H]                     ; 239F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23A2 _ 8B. 55, FC
        add     edx, 2                                  ; 23A5 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 23A8 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 23AC _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 23AF _ 83. 45, FC, 01
?_121:  mov     eax, dword [ebp+8H]                     ; 23B3 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 23B6 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 23B8 _ 39. 45, FC
        jc      ?_120                                   ; 23BB _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 23BD _ 8B. 45, F8
        leave                                           ; 23C0 _ C9
        ret                                             ; 23C1 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 23C2 _ 55
        mov     ebp, esp                                ; 23C3 _ 89. E5
        sub     esp, 16                                 ; 23C5 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 23C8 _ C7. 45, FC, 00000000
        jmp     ?_125                                   ; 23CF _ E9, 00000083

?_122:  mov     eax, dword [ebp+8H]                     ; 23D4 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23D7 _ 8B. 55, FC
        add     edx, 2                                  ; 23DA _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 23DD _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 23E1 _ 39. 45, 0C
        ja      ?_124                                   ; 23E4 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 23E6 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23E9 _ 8B. 55, FC
        add     edx, 2                                  ; 23EC _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 23EF _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 23F2 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 23F5 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 23F8 _ 8B. 55, FC
        add     edx, 2                                  ; 23FB _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 23FE _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2401 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2404 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2407 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 240A _ 8B. 55, FC
        add     edx, 2                                  ; 240D _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2410 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2413 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2416 _ 8B. 55, FC
        add     edx, 2                                  ; 2419 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 241C _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2420 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2423 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 2426 _ 8B. 4D, FC
        add     ecx, 2                                  ; 2429 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 242C _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2430 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2433 _ 8B. 55, FC
        add     edx, 2                                  ; 2436 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2439 _ 8B. 44 D0, 04
        test    eax, eax                                ; 243D _ 85. C0
        jnz     ?_123                                   ; 243F _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2441 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2444 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2446 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2449 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 244C _ 89. 10
?_123:  mov     eax, dword [ebp-8H]                     ; 244E _ 8B. 45, F8
        jmp     ?_126                                   ; 2451 _ EB, 17

?_124:  add     dword [ebp-4H], 1                       ; 2453 _ 83. 45, FC, 01
?_125:  mov     eax, dword [ebp+8H]                     ; 2457 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 245A _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 245C _ 39. 45, FC
        jc      ?_122                                   ; 245F _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2465 _ B8, 00000000
?_126:  leave                                           ; 246A _ C9
        ret                                             ; 246B _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 246C _ 55
        mov     ebp, esp                                ; 246D _ 89. E5
        push    ebx                                     ; 246F _ 53
        sub     esp, 16                                 ; 2470 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2473 _ C7. 45, F8, 00000000
        jmp     ?_128                                   ; 247A _ EB, 15

?_127:  mov     eax, dword [ebp+8H]                     ; 247C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 247F _ 8B. 55, F8
        add     edx, 2                                  ; 2482 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2485 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 2488 _ 39. 45, 0C
        jc      ?_129                                   ; 248B _ 72, 10
        add     dword [ebp-8H], 1                       ; 248D _ 83. 45, F8, 01
?_128:  mov     eax, dword [ebp+8H]                     ; 2491 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2494 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2496 _ 39. 45, F8
        jl      ?_127                                   ; 2499 _ 7C, E1
        jmp     ?_130                                   ; 249B _ EB, 01

?_129:  nop                                             ; 249D _ 90
?_130:  cmp     dword [ebp-8H], 0                       ; 249E _ 83. 7D, F8, 00
        jle     ?_132                                   ; 24A2 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 24A8 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24AB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24AE _ 8B. 45, 08
        add     edx, 2                                  ; 24B1 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 24B4 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 24B7 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24BA _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24BD _ 8B. 45, 08
        add     edx, 2                                  ; 24C0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 24C3 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 24C7 _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 24C9 _ 39. 45, 0C
        jne     ?_132                                   ; 24CC _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 24D2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24D5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 24D8 _ 8B. 45, 08
        add     edx, 2                                  ; 24DB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 24DE _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 24E2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 24E5 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 24E8 _ 8B. 45, 10
        add     ecx, eax                                ; 24EB _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 24ED _ 8B. 45, 08
        add     edx, 2                                  ; 24F0 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 24F3 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 24F7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 24FA _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 24FC _ 39. 45, F8
        jge     ?_131                                   ; 24FF _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2501 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2504 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2507 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 250A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 250D _ 8B. 55, F8
        add     edx, 2                                  ; 2510 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2513 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2516 _ 39. C1
        jnz     ?_131                                   ; 2518 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 251A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 251D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2520 _ 8B. 45, 08
        add     edx, 2                                  ; 2523 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 2526 _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 252A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 252D _ 8B. 55, F8
        add     edx, 2                                  ; 2530 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2533 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 2537 _ 8B. 55, F8
        sub     edx, 1                                  ; 253A _ 83. EA, 01
        add     ecx, eax                                ; 253D _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 253F _ 8B. 45, 08
        add     edx, 2                                  ; 2542 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2545 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 2549 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 254C _ 8B. 00
        lea     edx, [eax-1H]                           ; 254E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2551 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2554 _ 89. 10
?_131:  mov     eax, 0                                  ; 2556 _ B8, 00000000
        jmp     ?_138                                   ; 255B _ E9, 0000011C

?_132:  mov     eax, dword [ebp+8H]                     ; 2560 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2563 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2565 _ 39. 45, F8
        jge     ?_133                                   ; 2568 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 256A _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 256D _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2570 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2573 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2576 _ 8B. 55, F8
        add     edx, 2                                  ; 2579 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 257C _ 8B. 04 D0
        cmp     ecx, eax                                ; 257F _ 39. C1
        jnz     ?_133                                   ; 2581 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2583 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2586 _ 8B. 55, F8
        add     edx, 2                                  ; 2589 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 258C _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 258F _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2592 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2595 _ 8B. 55, F8
        add     edx, 2                                  ; 2598 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 259B _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 259F _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 25A2 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 25A5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 25A8 _ 8B. 55, F8
        add     edx, 2                                  ; 25AB _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 25AE _ 89. 4C D0, 04
        mov     eax, 0                                  ; 25B2 _ B8, 00000000
        jmp     ?_138                                   ; 25B7 _ E9, 000000C0

?_133:  mov     eax, dword [ebp+8H]                     ; 25BC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25BF _ 8B. 00
        cmp     eax, 4095                               ; 25C1 _ 3D, 00000FFF
        jg      ?_137                                   ; 25C6 _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 25CC _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 25CF _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 25D1 _ 89. 45, F4
        jmp     ?_135                                   ; 25D4 _ EB, 28

?_134:  mov     eax, dword [ebp-0CH]                    ; 25D6 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 25D9 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 25DC _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 25DF _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 25E2 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 25E5 _ 8B. 45, 08
        add     edx, 2                                  ; 25E8 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 25EB _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 25EE _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 25F0 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 25F3 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 25F6 _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 25FA _ 83. 6D, F4, 01
?_135:  mov     eax, dword [ebp-0CH]                    ; 25FE _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2601 _ 3B. 45, F8
        jg      ?_134                                   ; 2604 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 2606 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2609 _ 8B. 00
        lea     edx, [eax+1H]                           ; 260B _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 260E _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2611 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2613 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 2616 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2619 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 261C _ 8B. 00
        cmp     edx, eax                                ; 261E _ 39. C2
        jge     ?_136                                   ; 2620 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2622 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2625 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 2627 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 262A _ 89. 50, 04
?_136:  mov     eax, dword [ebp+8H]                     ; 262D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2630 _ 8B. 55, F8
        add     edx, 2                                  ; 2633 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2636 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2639 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 263C _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 263F _ 8B. 55, F8
        add     edx, 2                                  ; 2642 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2645 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 2648 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 264C _ B8, 00000000
        jmp     ?_138                                   ; 2651 _ EB, 29

?_137:  mov     eax, dword [ebp+8H]                     ; 2653 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2656 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 2659 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 265C _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 265F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2662 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2665 _ 8B. 40, 08
        mov     edx, eax                                ; 2668 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 266A _ 8B. 45, 10
        add     eax, edx                                ; 266D _ 01. D0
        mov     edx, eax                                ; 266F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2671 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2674 _ 89. 50, 08
        mov     eax, 4294967295                         ; 2677 _ B8, FFFFFFFF
?_138:  add     esp, 16                                 ; 267C _ 83. C4, 10
        pop     ebx                                     ; 267F _ 5B
        pop     ebp                                     ; 2680 _ 5D
        ret                                             ; 2681 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2682 _ 55
        mov     ebp, esp                                ; 2683 _ 89. E5
        sub     esp, 24                                 ; 2685 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 2688 _ 8B. 45, 0C
        add     eax, 4095                               ; 268B _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2690 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2695 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 2698 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 269B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 269F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26A2 _ 89. 04 24
        call    _memman_alloc                           ; 26A5 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 26AA _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 26AD _ 8B. 45, FC
        leave                                           ; 26B0 _ C9
        ret                                             ; 26B1 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 26B2 _ 55
        mov     ebp, esp                                ; 26B3 _ 89. E5
        sub     esp, 28                                 ; 26B5 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 26B8 _ 8B. 45, 10
        add     eax, 4095                               ; 26BB _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 26C0 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 26C5 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 26C8 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 26CB _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 26CF _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 26D2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 26D6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 26D9 _ 89. 04 24
        call    _memman_free                            ; 26DC _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 26E1 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 26E4 _ 8B. 45, FC
        leave                                           ; 26E7 _ C9
        ret                                             ; 26E8 _ C3
; _memman_free_4k End of function

        nop                                             ; 26E9 _ 90
        nop                                             ; 26EA _ 90
        nop                                             ; 26EB _ 90

.text:  ; Local function

_fifo8_init:
        push    ebp                                     ; 26EC _ 55
        mov     ebp, esp                                ; 26ED _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 26EF _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 26F2 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 26F5 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 26F8 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 26FB _ 8B. 55, 10
        mov     dword [eax], edx                        ; 26FE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2700 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 2703 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 2706 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 2709 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 270C _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 2713 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 2716 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 271D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 2720 _ C7. 40, 08, 00000000
        nop                                             ; 2727 _ 90
        pop     ebp                                     ; 2728 _ 5D
        ret                                             ; 2729 _ C3

_fifo8_put:; Function begin
        push    ebp                                     ; 272A _ 55
        mov     ebp, esp                                ; 272B _ 89. E5
        sub     esp, 4                                  ; 272D _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 2730 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 2733 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 2736 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2739 _ 8B. 40, 10
        test    eax, eax                                ; 273C _ 85. C0
        jnz     ?_139                                   ; 273E _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 2740 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 2743 _ 8B. 40, 14
        or      eax, 01H                                ; 2746 _ 83. C8, 01
        mov     edx, eax                                ; 2749 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 274B _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 274E _ 89. 50, 14
        mov     eax, 4294967295                         ; 2751 _ B8, FFFFFFFF
        jmp     ?_141                                   ; 2756 _ EB, 50

?_139:  mov     eax, dword [ebp+8H]                     ; 2758 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 275B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 275D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 2760 _ 8B. 40, 04
        add     edx, eax                                ; 2763 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 2765 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 2769 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 276B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 276E _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 2771 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2774 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 2777 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 277A _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 277D _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 2780 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 2783 _ 8B. 40, 0C
        cmp     edx, eax                                ; 2786 _ 39. C2
        jnz     ?_140                                   ; 2788 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 278A _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 278D _ C7. 40, 04, 00000000
?_140:  mov     eax, dword [ebp+8H]                     ; 2794 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2797 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 279A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 279D _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 27A0 _ 89. 50, 10
        mov     eax, 0                                  ; 27A3 _ B8, 00000000
?_141:  leave                                           ; 27A8 _ C9
        ret                                             ; 27A9 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 27AA _ 55
        mov     ebp, esp                                ; 27AB _ 89. E5
        sub     esp, 16                                 ; 27AD _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 27B0 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 27B3 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 27B6 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 27B9 _ 8B. 40, 0C
        cmp     edx, eax                                ; 27BC _ 39. C2
        jnz     ?_142                                   ; 27BE _ 75, 07
        mov     eax, 4294967295                         ; 27C0 _ B8, FFFFFFFF
        jmp     ?_144                                   ; 27C5 _ EB, 51

?_142:  mov     eax, dword [ebp+8H]                     ; 27C7 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 27CA _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 27CC _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27CF _ 8B. 40, 08
        add     eax, edx                                ; 27D2 _ 01. D0
        movzx   eax, byte [eax]                         ; 27D4 _ 0F B6. 00
        movzx   eax, al                                 ; 27D7 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 27DA _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 27DD _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 27E0 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 27E3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 27E6 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 27E9 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 27EC _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 27EF _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 27F2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 27F5 _ 8B. 40, 0C
        cmp     edx, eax                                ; 27F8 _ 39. C2
        jnz     ?_143                                   ; 27FA _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 27FC _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 27FF _ C7. 40, 08, 00000000
?_143:  mov     eax, dword [ebp+8H]                     ; 2806 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2809 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 280C _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 280F _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 2812 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 2815 _ 8B. 45, FC
?_144:  leave                                           ; 2818 _ C9
        ret                                             ; 2819 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 281A _ 55
        mov     ebp, esp                                ; 281B _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 281D _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 2820 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2823 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 2826 _ 8B. 40, 10
        sub     edx, eax                                ; 2829 _ 29. C2
        mov     eax, edx                                ; 282B _ 89. D0
        pop     ebp                                     ; 282D _ 5D
        ret                                             ; 282E _ C3
; _fifo8_status End of function

        nop                                             ; 282F _ 90

.text:  ; Local function

_init_pit:
        push    ebp                                     ; 2830 _ 55
        mov     ebp, esp                                ; 2831 _ 89. E5
        sub     esp, 24                                 ; 2833 _ 83. EC, 18
        mov     dword [esp+4H], 52                      ; 2836 _ C7. 44 24, 04, 00000034
        mov     dword [esp], 67                         ; 283E _ C7. 04 24, 00000043
        call    _io_out8                                ; 2845 _ E8, 00000000(rel)
        mov     dword [esp+4H], 156                     ; 284A _ C7. 44 24, 04, 0000009C
        mov     dword [esp], 64                         ; 2852 _ C7. 04 24, 00000040
        call    _io_out8                                ; 2859 _ E8, 00000000(rel)
        mov     dword [esp+4H], 46                      ; 285E _ C7. 44 24, 04, 0000002E
        mov     dword [esp], 64                         ; 2866 _ C7. 04 24, 00000040
        call    _io_out8                                ; 286D _ E8, 00000000(rel)
        mov     dword [_timerctl], 0                         ; 2872 _ C7. 05, 00000000(d), 00000000
        mov     dword [_timerctl+4H], 0                      ; 287C _ C7. 05, 00000004(d), 00000000
        nop                                             ; 2886 _ 90
        leave                                           ; 2887 _ C9
        ret                                             ; 2888 _ C3

_intHandlerForTimer:; Function begin
        push    ebp                                     ; 2889 _ 55
        mov     ebp, esp                                ; 288A _ 89. E5
        sub     esp, 24                                 ; 288C _ 83. EC, 18
        mov     dword [esp+4H], 96                      ; 288F _ C7. 44 24, 04, 00000060
        mov     dword [esp], 32                         ; 2897 _ C7. 04 24, 00000020
        call    _io_out8                                ; 289E _ E8, 00000000(rel)
        mov     eax, dword [_timerctl]                       ; 28A3 _ A1, 00000000(d)
        add     eax, 1                                  ; 28A8 _ 83. C0, 01
        mov     dword [_timerctl], eax                       ; 28AB _ A3, 00000000(d)
        mov     eax, dword [_timerctl+4H]                    ; 28B0 _ A1, 00000004(d)
        test    eax, eax                                ; 28B5 _ 85. C0
        jz      ?_145                                   ; 28B7 _ 74, 33
        mov     eax, dword [_timerctl+4H]                    ; 28B9 _ A1, 00000004(d)
        sub     eax, 1                                  ; 28BE _ 83. E8, 01
        mov     dword [_timerctl+4H], eax                    ; 28C1 _ A3, 00000004(d)
        mov     eax, dword [_timerctl+4H]                    ; 28C6 _ A1, 00000004(d)
        test    eax, eax                                ; 28CB _ 85. C0
        jnz     ?_145                                   ; 28CD _ 75, 1D
        movzx   eax, byte [_timerctl+0CH]                    ; 28CF _ 0F B6. 05, 0000000C(d)
        movzx   eax, al                                 ; 28D6 _ 0F B6. C0
        mov     edx, dword [_timerctl+8H]                    ; 28D9 _ 8B. 15, 00000008(d)
        mov     dword [esp+4H], eax                     ; 28DF _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 28E3 _ 89. 14 24
        call    _fifo8_put                              ; 28E6 _ E8, 00000000(rel)
        nop                                             ; 28EB _ 90
?_145:  nop                                             ; 28EC _ 90
        leave                                           ; 28ED _ C9
        ret                                             ; 28EE _ C3
; _intHandlerForTimer End of function

_settimer:; Function begin
        push    ebp                                     ; 28EF _ 55
        mov     ebp, esp                                ; 28F0 _ 89. E5
        sub     esp, 56                                 ; 28F2 _ 83. EC, 38
        mov     eax, dword [ebp+10H]                    ; 28F5 _ 8B. 45, 10
        mov     byte [ebp-1CH], al                      ; 28F8 _ 88. 45, E4
        call    _io_load_eflags                         ; 28FB _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 2900 _ 89. 45, F4
        call    _io_cli                                 ; 2903 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 2908 _ 8B. 45, 08
        mov     dword [_timerctl+4H], eax                    ; 290B _ A3, 00000004(d)
        mov     eax, dword [ebp+0CH]                    ; 2910 _ 8B. 45, 0C
        mov     dword [_timerctl+8H], eax                    ; 2913 _ A3, 00000008(d)
        movzx   eax, byte [ebp-1CH]                     ; 2918 _ 0F B6. 45, E4
        mov     byte [_timerctl+0CH], al                     ; 291C _ A2, 0000000C(d)
        mov     eax, dword [ebp-0CH]                    ; 2921 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 2924 _ 89. 04 24
        call    _io_store_eflags                        ; 2927 _ E8, 00000000(rel)
        nop                                             ; 292C _ 90
        leave                                           ; 292D _ C9
        ret                                             ; 292E _ C3
; _settimer End of function

_getTimer:; Function begin
        mov     eax, _timerctl                               ; 292F _ B8, 00000000(d)
        ret                                             ; 2934 _ C3
; _getTimer End of function

        nop                                             ; 2935 _ 90
        nop                                             ; 2936 _ 90
        nop                                             ; 2937 _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_146:  db 00H                                          ; 0006 _ .

?_147:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2208:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2255:                                           ; byte
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

_closebtn.2367:                                         ; byte
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
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 000F _ page is:
        db 20H, 00H                                     ; 0017 _  .

?_151:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0019 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0021 _ L: .

?_152:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0025 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 002D _ H: .

?_153:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0031 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0039 _ w: .

?_154:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 003D _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0045 _ gh: .

?_155:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 004A _ type: .

?_156:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0051 _ Welcome 
        db 74H, 6FH, 00H                                ; 0059 _ to.

?_157:                                                  ; byte
        db 4DH, 79H, 4FH, 53H, 00H, 00H, 00H, 00H       ; 005C _ MyOS....


_bootInfo:                                              
        resd    1                                       ; 0000

?_158:  resw    1                                       ; 0004

?_159:  resw    1                                       ; 0006

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

_str.2303:                                              ; byte
        resb    1                                       ; 0240

?_160:  resb    9                                       ; 0241

?_161:  resb    22                                      ; 024A

_timerctl:           
        resb    16                                      ; 0260


