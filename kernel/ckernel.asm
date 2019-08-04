; Disassembly of file: ckernel.o
; Sun Aug  4 13:35:37 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386






.text:  ; Local function

_launch:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000000(d)
        call    _initBootInfo                           ; 000E _ E8, 00000882
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 0018 _ 89. 45, F0
        movzx   eax, word [?_127]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 000000F8(d)
        movzx   eax, word [?_128]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 000000FC(d)
        mov     dword [ebp-14H], 0                      ; 0035 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 003C _ C7. 45, E8, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0043 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 004B _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0053 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 005A _ E8, 00000EF7
        mov     dword [esp+8H], _mousebuf               ; 005F _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 0067 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 006F _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 0076 _ E8, 00000EDB
        call    _init_palette                           ; 007B _ E8, 00000897
        call    _init_keyboard                          ; 0080 _ E8, 00000E00
        call    _get_memory_block_count                 ; 0085 _ E8, 00000000(rel)
        mov     dword [ebp-1CH], eax                    ; 008A _ 89. 45, E4
        call    _get_addr_buffer                        ; 008D _ E8, 00000000(rel)
        mov     dword [ebp-20H], eax                    ; 0092 _ 89. 45, E0
        mov     eax, dword [_memman]                    ; 0095 _ A1, 00000000(d)
        mov     dword [esp], eax                        ; 009A _ 89. 04 24
        call    _memman_init                            ; 009D _ E8, 00000000(rel)
        mov     eax, dword [_memman]                    ; 00A2 _ A1, 00000000(d)
        mov     dword [esp+8H], 1072594944              ; 00A7 _ C7. 44 24, 08, 3FEE8000
        mov     dword [esp+4H], 16809984                ; 00AF _ C7. 44 24, 04, 01008000
        mov     dword [esp], eax                        ; 00B7 _ 89. 04 24
        call    _memman_free                            ; 00BA _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 00BF _ 8B. 0D, 000000FC(d)
        mov     edx, dword [_xsize]                     ; 00C5 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_memman]                    ; 00CB _ A1, 00000000(d)
        mov     dword [esp+0CH], ecx                    ; 00D0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 00D4 _ 89. 54 24, 08
        mov     edx, dword [ebp-10H]                    ; 00D8 _ 8B. 55, F0
        mov     dword [esp+4H], edx                     ; 00DB _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 00DF _ 89. 04 24
        call    _shtctl_init                            ; 00E2 _ E8, 00000000(rel)
        mov     dword [ebp-24H], eax                    ; 00E7 _ 89. 45, DC
        mov     eax, dword [ebp-24H]                    ; 00EA _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00ED _ 89. 04 24
        call    _sheet_alloc                            ; 00F0 _ E8, 00000000(rel)
        mov     dword [ebp-14H], eax                    ; 00F5 _ 89. 45, EC
        mov     eax, dword [ebp-24H]                    ; 00F8 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 00FB _ 89. 04 24
        call    _sheet_alloc                            ; 00FE _ E8, 00000000(rel)
        mov     dword [ebp-18H], eax                    ; 0103 _ 89. 45, E8
        mov     edx, dword [_xsize]                     ; 0106 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_ysize]                     ; 010C _ A1, 000000FC(d)
        imul    eax, edx                                ; 0111 _ 0F AF. C2
        mov     edx, dword [_memman]                    ; 0114 _ 8B. 15, 00000000(d)
        mov     dword [esp+4H], eax                     ; 011A _ 89. 44 24, 04
        mov     dword [esp], edx                        ; 011E _ 89. 14 24
        call    _memman_alloc_4k                        ; 0121 _ E8, 00000000(rel)
        mov     dword [_buf_back], eax                  ; 0126 _ A3, 00000100(d)
        mov     ecx, dword [_ysize]                     ; 012B _ 8B. 0D, 000000FC(d)
        mov     edx, dword [_xsize]                     ; 0131 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_buf_back]                  ; 0137 _ A1, 00000100(d)
        mov     dword [esp+10H], 99                     ; 013C _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], ecx                    ; 0144 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 0148 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 014C _ 89. 44 24, 04
        mov     eax, dword [ebp-14H]                    ; 0150 _ 8B. 45, EC
        mov     dword [esp], eax                        ; 0153 _ 89. 04 24
        call    _sheet_setbuf                           ; 0156 _ E8, 00000000(rel)
        mov     dword [esp+10H], 99                     ; 015B _ C7. 44 24, 10, 00000063
        mov     dword [esp+0CH], 16                     ; 0163 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 016B _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], _buf_mouse              ; 0173 _ C7. 44 24, 04, 00000120(d)
        mov     eax, dword [ebp-18H]                    ; 017B _ 8B. 45, E8
        mov     dword [esp], eax                        ; 017E _ 89. 04 24
        call    _sheet_setbuf                           ; 0181 _ E8, 00000000(rel)
        mov     ecx, dword [_ysize]                     ; 0186 _ 8B. 0D, 000000FC(d)
        mov     edx, dword [_xsize]                     ; 018C _ 8B. 15, 000000F8(d)
        mov     eax, dword [_buf_back]                  ; 0192 _ A1, 00000100(d)
        mov     dword [esp+8H], ecx                     ; 0197 _ 89. 4C 24, 08
        mov     dword [esp+4H], edx                     ; 019B _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 019F _ 89. 04 24
        call    _init_screen8                           ; 01A2 _ E8, 000001BD
        mov     dword [esp+4H], 99                      ; 01A7 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 01AF _ C7. 04 24, 00000120(d)
        call    _init_mouse_cursor                      ; 01B6 _ E8, 000009F8
        mov     dword [esp+0CH], 0                      ; 01BB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 01C3 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 01CB _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 01CE _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 01D2 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 01D5 _ 89. 04 24
        call    _sheet_slide                            ; 01D8 _ E8, 00000000(rel)
        mov     eax, dword [_xsize]                     ; 01DD _ A1, 000000F8(d)
        sub     eax, 16                                 ; 01E2 _ 83. E8, 10
        mov     edx, eax                                ; 01E5 _ 89. C2
        shr     edx, 31                                 ; 01E7 _ C1. EA, 1F
        add     eax, edx                                ; 01EA _ 01. D0
        sar     eax, 1                                  ; 01EC _ D1. F8
        mov     dword [_mx], eax                        ; 01EE _ A3, 000000F0(d)
        mov     eax, dword [_ysize]                     ; 01F3 _ A1, 000000FC(d)
        sub     eax, 44                                 ; 01F8 _ 83. E8, 2C
        mov     edx, eax                                ; 01FB _ 89. C2
        shr     edx, 31                                 ; 01FD _ C1. EA, 1F
        add     eax, edx                                ; 0200 _ 01. D0
        sar     eax, 1                                  ; 0202 _ D1. F8
        mov     dword [_my], eax                        ; 0204 _ A3, 000000F4(d)
        mov     edx, dword [_my]                        ; 0209 _ 8B. 15, 000000F4(d)
        mov     eax, dword [_mx]                        ; 020F _ A1, 000000F0(d)
        mov     dword [esp+0CH], edx                    ; 0214 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0218 _ 89. 44 24, 08
        mov     eax, dword [ebp-18H]                    ; 021C _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 021F _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0223 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0226 _ 89. 04 24
        call    _sheet_slide                            ; 0229 _ E8, 00000000(rel)
        mov     dword [esp+8H], 0                       ; 022E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 0236 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0239 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 023D _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0240 _ 89. 04 24
        call    _sheet_updown                           ; 0243 _ E8, 00000000(rel)
        mov     dword [esp+8H], 1                       ; 0248 _ C7. 44 24, 08, 00000001
        mov     eax, dword [ebp-18H]                    ; 0250 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0253 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0257 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 025A _ 89. 04 24
        call    _sheet_updown                           ; 025D _ E8, 00000000(rel)
        call    _io_sti                                 ; 0262 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 0267 _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 026E _ E8, 00000C4D
        mov     dword [ebp-28H], 0                      ; 0273 _ C7. 45, D8, 00000000
        mov     dword [ebp-0CH], 0                      ; 027A _ C7. 45, F4, 00000000
?_001:  call    _io_cli                                 ; 0281 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0286 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 028D _ E8, 00000DF2
        mov     ebx, eax                                ; 0292 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 0294 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 029B _ E8, 00000DE4
        add     eax, ebx                                ; 02A0 _ 01. D8
        test    eax, eax                                ; 02A2 _ 85. C0
        jnz     ?_002                                   ; 02A4 _ 75, 07
        call    _io_stihlt                              ; 02A6 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 02AB _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 02AD _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 02B4 _ E8, 00000DCB
        test    eax, eax                                ; 02B9 _ 85. C0
        jz      ?_004                                   ; 02BB _ 74, 7C
        call    _io_sti                                 ; 02BD _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 02C2 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 02C9 _ E8, 00000D46
        mov     dword [ebp-28H], eax                    ; 02CE _ 89. 45, D8
        cmp     dword [ebp-28H], 28                     ; 02D1 _ 83. 7D, D8, 1C
        jnz     ?_001                                   ; 02D5 _ 75, AA
        mov     ebx, dword [_xsize]                     ; 02D7 _ 8B. 1D, 000000F8(d)
        mov     ecx, dword [_buf_back]                  ; 02DD _ 8B. 0D, 00000100(d)
        mov     edx, dword [ebp-0CH]                    ; 02E3 _ 8B. 55, F4
        mov     eax, edx                                ; 02E6 _ 89. D0
        shl     eax, 2                                  ; 02E8 _ C1. E0, 02
        add     eax, edx                                ; 02EB _ 01. D0
        shl     eax, 2                                  ; 02ED _ C1. E0, 02
        mov     edx, eax                                ; 02F0 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 02F2 _ 8B. 45, E0
        add     eax, edx                                ; 02F5 _ 01. D0
        mov     dword [esp+10H], 7                      ; 02F7 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], ebx                    ; 02FF _ 89. 5C 24, 0C
        mov     edx, dword [ebp-0CH]                    ; 0303 _ 8B. 55, F4
        mov     dword [esp+8H], edx                     ; 0306 _ 89. 54 24, 08
        mov     dword [esp+4H], ecx                     ; 030A _ 89. 4C 24, 04
        mov     dword [esp], eax                        ; 030E _ 89. 04 24
        call    _showMemoryInfo                         ; 0311 _ E8, 00000EC2
        add     dword [ebp-0CH], 1                      ; 0316 _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 031A _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 031D _ 3B. 45, E4
        jle     ?_003                                   ; 0320 _ 7E, 07
        mov     dword [ebp-0CH], 0                      ; 0322 _ C7. 45, F4, 00000000
?_003:  mov     eax, dword [ebp-24H]                    ; 0329 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 032C _ 89. 04 24
        call    _sheet_refresh                          ; 032F _ E8, 00000000(rel)
        jmp     ?_001                                   ; 0334 _ E9, FFFFFF48

?_004:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0339 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 0340 _ E8, 00000D3F
        test    eax, eax                                ; 0345 _ 85. C0
        je      ?_001                                   ; 0347 _ 0F 84, FFFFFF34
        mov     eax, dword [ebp-18H]                    ; 034D _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0350 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0354 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0357 _ 89. 04 24
        call    _show_mouse_info                        ; 035A _ E8, 000004C4
        jmp     ?_001                                   ; 035F _ E9, FFFFFF1D

_init_screen8:; Function begin
        push    ebp                                     ; 0364 _ 55
        mov     ebp, esp                                ; 0365 _ 89. E5
        push    ebx                                     ; 0367 _ 53
        sub     esp, 36                                 ; 0368 _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 036B _ 8B. 45, 10
        lea     edx, [eax-11H]                          ; 036E _ 8D. 50, EF
        mov     eax, dword [ebp+0CH]                    ; 0371 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0374 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0377 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 037B _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 037F _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0387 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 038F _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 0397 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 039A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 039E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 03A1 _ 89. 04 24
        call    _boxfill8                               ; 03A4 _ E8, 00000639
        mov     eax, dword [ebp+10H]                    ; 03A9 _ 8B. 45, 10
        lea     ecx, [eax-10H]                          ; 03AC _ 8D. 48, F0
        mov     eax, dword [ebp+0CH]                    ; 03AF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 03B2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 03B5 _ 8B. 45, 10
        sub     eax, 16                                 ; 03B8 _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 03BB _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 03BF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 03C3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 03C7 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 03CF _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 03D7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 03DA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 03DE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 03E1 _ 89. 04 24
        call    _boxfill8                               ; 03E4 _ E8, 000005F9
        mov     eax, dword [ebp+10H]                    ; 03E9 _ 8B. 45, 10
        lea     ecx, [eax-0FH]                          ; 03EC _ 8D. 48, F1
        mov     eax, dword [ebp+0CH]                    ; 03EF _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 03F2 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 03F5 _ 8B. 45, 10
        sub     eax, 15                                 ; 03F8 _ 83. E8, 0F
        mov     dword [esp+18H], ecx                    ; 03FB _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 03FF _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0403 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0407 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 040F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0417 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 041A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 041E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0421 _ 89. 04 24
        call    _boxfill8                               ; 0424 _ E8, 000005B9
        mov     eax, dword [ebp+10H]                    ; 0429 _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 042C _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 042F _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0432 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 0435 _ 8B. 45, 10
        sub     eax, 14                                 ; 0438 _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 043B _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 043F _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0443 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0447 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 044F _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 0457 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 045A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 045E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0461 _ 89. 04 24
        call    _boxfill8                               ; 0464 _ E8, 00000579
        mov     eax, dword [ebp+10H]                    ; 0469 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 046C _ 8D. 50, F4
        mov     eax, dword [ebp+10H]                    ; 046F _ 8B. 45, 10
        sub     eax, 12                                 ; 0472 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 0475 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0479 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0481 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0485 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 048D _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0495 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0498 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 049C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 049F _ 89. 04 24
        call    _boxfill8                               ; 04A2 _ E8, 0000053B
        mov     eax, dword [ebp+10H]                    ; 04A7 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 04AA _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 04AD _ 8B. 45, 10
        sub     eax, 12                                 ; 04B0 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 04B3 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 04B7 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 04BF _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 04C3 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 04CB _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 04D3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 04D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 04DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 04DD _ 89. 04 24
        call    _boxfill8                               ; 04E0 _ E8, 000004FD
        mov     eax, dword [ebp+10H]                    ; 04E5 _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 04E8 _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 04EB _ 8B. 45, 10
        sub     eax, 4                                  ; 04EE _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 04F1 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 04F5 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 04FD _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0501 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0509 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0511 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0514 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0518 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 051B _ 89. 04 24
        call    _boxfill8                               ; 051E _ E8, 000004BF
        mov     eax, dword [ebp+10H]                    ; 0523 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 0526 _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 0529 _ 8B. 45, 10
        sub     eax, 11                                 ; 052C _ 83. E8, 0B
        mov     dword [esp+18H], edx                    ; 052F _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0533 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 053B _ 89. 44 24, 10
        mov     dword [esp+0CH], 30                     ; 053F _ C7. 44 24, 0C, 0000001E
        mov     dword [esp+8H], 15                      ; 0547 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 054F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0552 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0556 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0559 _ 89. 04 24
        call    _boxfill8                               ; 055C _ E8, 00000481
        mov     eax, dword [ebp+10H]                    ; 0561 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0564 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 0567 _ 8B. 45, 10
        sub     eax, 3                                  ; 056A _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 056D _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0571 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0579 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 057D _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0585 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 058D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0590 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0594 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0597 _ 89. 04 24
        call    _boxfill8                               ; 059A _ E8, 00000443
        mov     eax, dword [ebp+10H]                    ; 059F _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05A2 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05A5 _ 8B. 45, 10
        sub     eax, 12                                 ; 05A8 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 05AB _ 89. 54 24, 18
        mov     dword [esp+14H], 31                     ; 05AF _ C7. 44 24, 14, 0000001F
        mov     dword [esp+10H], eax                    ; 05B7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 31                     ; 05BB _ C7. 44 24, 0C, 0000001F
        mov     dword [esp+8H], 0                       ; 05C3 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 05CB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05CE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05D2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05D5 _ 89. 04 24
        call    _boxfill8                               ; 05D8 _ E8, 00000405
        mov     eax, dword [ebp+10H]                    ; 05DD _ 8B. 45, 10
        lea     ebx, [eax-0CH]                          ; 05E0 _ 8D. 58, F4
        mov     eax, dword [ebp+0CH]                    ; 05E3 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 05E6 _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 05E9 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 05EC _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 05EF _ 8B. 45, 0C
        sub     eax, 36                                 ; 05F2 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 05F5 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 05F9 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 05FD _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0601 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0605 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 060D _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0610 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0614 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0617 _ 89. 04 24
        call    _boxfill8                               ; 061A _ E8, 000003C3
        mov     eax, dword [ebp+10H]                    ; 061F _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0622 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 0625 _ 8B. 45, 0C
        lea     ecx, [eax-24H]                          ; 0628 _ 8D. 48, DC
        mov     eax, dword [ebp+10H]                    ; 062B _ 8B. 45, 10
        lea     edx, [eax-0BH]                          ; 062E _ 8D. 50, F5
        mov     eax, dword [ebp+0CH]                    ; 0631 _ 8B. 45, 0C
        sub     eax, 36                                 ; 0634 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 0637 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 063B _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 063F _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0643 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0647 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 064F _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0652 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0656 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0659 _ 89. 04 24
        call    _boxfill8                               ; 065C _ E8, 00000381
        mov     eax, dword [ebp+10H]                    ; 0661 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0664 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 0667 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 066A _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 066D _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0670 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0673 _ 8B. 45, 0C
        sub     eax, 36                                 ; 0676 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 0679 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 067D _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0681 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0685 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0689 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 0691 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0694 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0698 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 069B _ 89. 04 24
        call    _boxfill8                               ; 069E _ E8, 0000033F
        mov     eax, dword [ebp+10H]                    ; 06A3 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06A6 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06A9 _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06AC _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06AF _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 06B2 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 06B5 _ 8B. 45, 0C
        sub     eax, 3                                  ; 06B8 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 06BB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 06BF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06C3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 06C7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 06CB _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 06D3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06DD _ 89. 04 24
        call    _boxfill8                               ; 06E0 _ E8, 000002FD
        mov     dword [esp+14H], ?_119                  ; 06E5 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 06ED _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 06F5 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 06FD _ C7. 44 24, 08, 0000007D
        mov     eax, dword [ebp+0CH]                    ; 0705 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0708 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 070C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 070F _ 89. 04 24
        call    _showString                             ; 0712 _ E8, 0000019F
        nop                                             ; 0717 _ 90
        add     esp, 36                                 ; 0718 _ 83. C4, 24
        pop     ebx                                     ; 071B _ 5B
        pop     ebp                                     ; 071C _ 5D
        ret                                             ; 071D _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 071E _ 55
        mov     ebp, esp                                ; 071F _ 89. E5
        sub     esp, 40                                 ; 0721 _ 83. EC, 28
        mov     eax, dword [ebp+8H]                     ; 0724 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0727 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 072A _ A1, 000000F0(d)
        add     eax, edx                                ; 072F _ 01. D0
        mov     dword [_mx], eax                        ; 0731 _ A3, 000000F0(d)
        mov     eax, dword [ebp+8H]                     ; 0736 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0739 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 073C _ A1, 000000F4(d)
        add     eax, edx                                ; 0741 _ 01. D0
        mov     dword [_my], eax                        ; 0743 _ A3, 000000F4(d)
        mov     eax, dword [_mx]                        ; 0748 _ A1, 000000F0(d)
        test    eax, eax                                ; 074D _ 85. C0
        jns     ?_005                                   ; 074F _ 79, 0A
        mov     dword [_mx], 0                          ; 0751 _ C7. 05, 000000F0(d), 00000000
?_005:  mov     eax, dword [_my]                        ; 075B _ A1, 000000F4(d)
        test    eax, eax                                ; 0760 _ 85. C0
        jns     ?_006                                   ; 0762 _ 79, 0A
        mov     dword [_my], 0                          ; 0764 _ C7. 05, 000000F4(d), 00000000
?_006:  mov     eax, dword [_xsize]                     ; 076E _ A1, 000000F8(d)
        lea     edx, [eax-0FH]                          ; 0773 _ 8D. 50, F1
        mov     eax, dword [_mx]                        ; 0776 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 077B _ 39. C2
        jg      ?_007                                   ; 077D _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 077F _ A1, 000000F8(d)
        sub     eax, 16                                 ; 0784 _ 83. E8, 10
        mov     dword [_mx], eax                        ; 0787 _ A3, 000000F0(d)
?_007:  mov     eax, dword [_ysize]                     ; 078C _ A1, 000000FC(d)
        lea     edx, [eax-0FH]                          ; 0791 _ 8D. 50, F1
        mov     eax, dword [_my]                        ; 0794 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 0799 _ 39. C2
        jg      ?_008                                   ; 079B _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 079D _ A1, 000000FC(d)
        sub     eax, 16                                 ; 07A2 _ 83. E8, 10
        mov     dword [_my], eax                        ; 07A5 _ A3, 000000F4(d)
?_008:  mov     edx, dword [_xsize]                     ; 07AA _ 8B. 15, 000000F8(d)
        mov     eax, dword [_buf_back]                  ; 07B0 _ A1, 00000100(d)
        mov     dword [esp+18H], 15                     ; 07B5 _ C7. 44 24, 18, 0000000F
        mov     dword [esp+14H], 79                     ; 07BD _ C7. 44 24, 14, 0000004F
        mov     dword [esp+10H], 0                      ; 07C5 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 07CD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 07D5 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], edx                     ; 07DD _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 07E1 _ 89. 04 24
        call    _boxfill8                               ; 07E4 _ E8, 000001F9
        mov     edx, dword [_xsize]                     ; 07E9 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_buf_back]                  ; 07EF _ A1, 00000100(d)
        mov     dword [esp+14H], ?_120                  ; 07F4 _ C7. 44 24, 14, 0000000B(d)
        mov     dword [esp+10H], 7                      ; 07FC _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 0804 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 080C _ C7. 44 24, 08, 00000000
        mov     dword [esp+4H], edx                     ; 0814 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 0818 _ 89. 04 24
        call    _showString                             ; 081B _ E8, 00000096
        nop                                             ; 0820 _ 90
        leave                                           ; 0821 _ C9
        ret                                             ; 0822 _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0823 _ 55
        mov     ebp, esp                                ; 0824 _ 89. E5
        sub     esp, 40                                 ; 0826 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0829 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 082E _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 0831 _ C6. 45, F3, 00
        call    _io_sti                                 ; 0835 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 083A _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 0841 _ E8, 000007CE
        mov     byte [ebp-0DH], al                      ; 0846 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0849 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 084D _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 0851 _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0858 _ E8, 0000083C
        test    eax, eax                                ; 085D _ 85. C0
        jz      ?_009                                   ; 085F _ 74, 31
        mov     dword [esp], _mdec                      ; 0861 _ C7. 04 24, 000000E0(d)
        call    _computeMousePosition                   ; 0868 _ E8, FFFFFEB1
        mov     edx, dword [_my]                        ; 086D _ 8B. 15, 000000F4(d)
        mov     eax, dword [_mx]                        ; 0873 _ A1, 000000F0(d)
        mov     dword [esp+0CH], edx                    ; 0878 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 087C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0880 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0883 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0887 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 088A _ 89. 04 24
        call    _sheet_slide                            ; 088D _ E8, 00000000(rel)
?_009:  nop                                             ; 0892 _ 90
        leave                                           ; 0893 _ C9
        ret                                             ; 0894 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0895 _ 55
        mov     ebp, esp                                ; 0896 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0898 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 089B _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 08A1 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 08A4 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 08AA _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 08AD _ 66: C7. 40, 06, 00C8
        nop                                             ; 08B3 _ 90
        pop     ebp                                     ; 08B4 _ 5D
        ret                                             ; 08B5 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 08B6 _ 55
        mov     ebp, esp                                ; 08B7 _ 89. E5
        sub     esp, 56                                 ; 08B9 _ 83. EC, 38
        mov     eax, dword [ebp+18H]                    ; 08BC _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 08BF _ 88. 45, F4
        jmp     ?_011                                   ; 08C2 _ EB, 46

?_010:  mov     eax, dword [ebp+1CH]                    ; 08C4 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 08C7 _ 0F B6. 00
        movzx   eax, al                                 ; 08CA _ 0F B6. C0
        shl     eax, 4                                  ; 08CD _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 08D0 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 08D6 _ 0F BE. 45, F4
        mov     dword [esp+14H], edx                    ; 08DA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 08DE _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 08E2 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 08E5 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 08E9 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 08EC _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 08F0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 08F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 08F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 08FA _ 89. 04 24
        call    _showFont8                              ; 08FD _ E8, 00000130
        add     dword [ebp+10H], 8                      ; 0902 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0906 _ 83. 45, 1C, 01
?_011:  mov     eax, dword [ebp+1CH]                    ; 090A _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 090D _ 0F B6. 00
        test    al, al                                  ; 0910 _ 84. C0
        jnz     ?_010                                   ; 0912 _ 75, B0
        nop                                             ; 0914 _ 90
        leave                                           ; 0915 _ C9
        ret                                             ; 0916 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0917 _ 55
        mov     ebp, esp                                ; 0918 _ 89. E5
        sub     esp, 24                                 ; 091A _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2171         ; 091D _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0925 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 092D _ C7. 04 24, 00000000
        call    _set_palette                            ; 0934 _ E8, 00000003
        nop                                             ; 0939 _ 90
        leave                                           ; 093A _ C9
        ret                                             ; 093B _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 093C _ 55
        mov     ebp, esp                                ; 093D _ 89. E5
        sub     esp, 40                                 ; 093F _ 83. EC, 28
        call    _io_load_eflags                         ; 0942 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0947 _ 89. 45, F0
        call    _io_cli                                 ; 094A _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 094F _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 0952 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0956 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 095D _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0962 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0965 _ 89. 45, F4
        jmp     ?_013                                   ; 0968 _ EB, 62

?_012:  mov     eax, dword [ebp+10H]                    ; 096A _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 096D _ 0F B6. 00
        shr     al, 2                                   ; 0970 _ C0. E8, 02
        movzx   eax, al                                 ; 0973 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0976 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 097A _ C7. 04 24, 000003C9
        call    _io_out8                                ; 0981 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0986 _ 8B. 45, 10
        add     eax, 1                                  ; 0989 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 098C _ 0F B6. 00
        shr     al, 2                                   ; 098F _ C0. E8, 02
        movzx   eax, al                                 ; 0992 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0995 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0999 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 09A0 _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 09A5 _ 8B. 45, 10
        add     eax, 2                                  ; 09A8 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 09AB _ 0F B6. 00
        shr     al, 2                                   ; 09AE _ C0. E8, 02
        movzx   eax, al                                 ; 09B1 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 09B4 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 09B8 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 09BF _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 09C4 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 09C8 _ 83. 45, F4, 01
?_013:  mov     eax, dword [ebp-0CH]                    ; 09CC _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 09CF _ 3B. 45, 0C
        jle     ?_012                                   ; 09D2 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 09D4 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 09D7 _ 89. 04 24
        call    _io_store_eflags                        ; 09DA _ E8, 00000000(rel)
        nop                                             ; 09DF _ 90
        leave                                           ; 09E0 _ C9
        ret                                             ; 09E1 _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 09E2 _ 55
        mov     ebp, esp                                ; 09E3 _ 89. E5
        sub     esp, 20                                 ; 09E5 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 09E8 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 09EB _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 09EE _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 09F1 _ 89. 45, F8
        jmp     ?_017                                   ; 09F4 _ EB, 31

?_014:  mov     eax, dword [ebp+14H]                    ; 09F6 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 09F9 _ 89. 45, FC
        jmp     ?_016                                   ; 09FC _ EB, 1D

?_015:  mov     eax, dword [ebp-8H]                     ; 09FE _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0A01 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0A05 _ 8B. 55, FC
        add     eax, edx                                ; 0A08 _ 01. D0
        mov     edx, eax                                ; 0A0A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A0C _ 8B. 45, 08
        add     edx, eax                                ; 0A0F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A11 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A15 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0A17 _ 83. 45, FC, 01
?_016:  mov     eax, dword [ebp-4H]                     ; 0A1B _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0A1E _ 3B. 45, 1C
        jle     ?_015                                   ; 0A21 _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0A23 _ 83. 45, F8, 01
?_017:  mov     eax, dword [ebp-8H]                     ; 0A27 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0A2A _ 3B. 45, 20
        jle     ?_014                                   ; 0A2D _ 7E, C7
        nop                                             ; 0A2F _ 90
        leave                                           ; 0A30 _ C9
        ret                                             ; 0A31 _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0A32 _ 55
        mov     ebp, esp                                ; 0A33 _ 89. E5
        sub     esp, 20                                 ; 0A35 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0A38 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0A3B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A3E _ C7. 45, FC, 00000000
        jmp     ?_027                                   ; 0A45 _ E9, 0000015C

?_018:  mov     edx, dword [ebp-4H]                     ; 0A4A _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0A4D _ 8B. 45, 1C
        add     eax, edx                                ; 0A50 _ 01. D0
        movzx   eax, byte [eax]                         ; 0A52 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0A55 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0A58 _ 80. 7D, FB, 00
        jns     ?_019                                   ; 0A5C _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0A5E _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A61 _ 8B. 45, FC
        add     eax, edx                                ; 0A64 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A66 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A6A _ 8B. 55, 10
        add     eax, edx                                ; 0A6D _ 01. D0
        mov     edx, eax                                ; 0A6F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A71 _ 8B. 45, 08
        add     edx, eax                                ; 0A74 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A76 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A7A _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0A7C _ 0F BE. 45, FB
        and     eax, 40H                                ; 0A80 _ 83. E0, 40
        test    eax, eax                                ; 0A83 _ 85. C0
        jz      ?_020                                   ; 0A85 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A87 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A8A _ 8B. 45, FC
        add     eax, edx                                ; 0A8D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A8F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A93 _ 8B. 55, 10
        add     eax, edx                                ; 0A96 _ 01. D0
        lea     edx, [eax+1H]                           ; 0A98 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0A9B _ 8B. 45, 08
        add     edx, eax                                ; 0A9E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AA0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AA4 _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0AA6 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0AAA _ 83. E0, 20
        test    eax, eax                                ; 0AAD _ 85. C0
        jz      ?_021                                   ; 0AAF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AB1 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AB4 _ 8B. 45, FC
        add     eax, edx                                ; 0AB7 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AB9 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0ABD _ 8B. 55, 10
        add     eax, edx                                ; 0AC0 _ 01. D0
        lea     edx, [eax+2H]                           ; 0AC2 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0AC5 _ 8B. 45, 08
        add     edx, eax                                ; 0AC8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0ACA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0ACE _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0AD0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0AD4 _ 83. E0, 10
        test    eax, eax                                ; 0AD7 _ 85. C0
        jz      ?_022                                   ; 0AD9 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0ADB _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0ADE _ 8B. 45, FC
        add     eax, edx                                ; 0AE1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AE3 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AE7 _ 8B. 55, 10
        add     eax, edx                                ; 0AEA _ 01. D0
        lea     edx, [eax+3H]                           ; 0AEC _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0AEF _ 8B. 45, 08
        add     edx, eax                                ; 0AF2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AF4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AF8 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0AFA _ 0F BE. 45, FB
        and     eax, 08H                                ; 0AFE _ 83. E0, 08
        test    eax, eax                                ; 0B01 _ 85. C0
        jz      ?_023                                   ; 0B03 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B05 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B08 _ 8B. 45, FC
        add     eax, edx                                ; 0B0B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B0D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B11 _ 8B. 55, 10
        add     eax, edx                                ; 0B14 _ 01. D0
        lea     edx, [eax+4H]                           ; 0B16 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B19 _ 8B. 45, 08
        add     edx, eax                                ; 0B1C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B1E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B22 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0B24 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0B28 _ 83. E0, 04
        test    eax, eax                                ; 0B2B _ 85. C0
        jz      ?_024                                   ; 0B2D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B2F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B32 _ 8B. 45, FC
        add     eax, edx                                ; 0B35 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B37 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B3B _ 8B. 55, 10
        add     eax, edx                                ; 0B3E _ 01. D0
        lea     edx, [eax+5H]                           ; 0B40 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0B43 _ 8B. 45, 08
        add     edx, eax                                ; 0B46 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B48 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B4C _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0B4E _ 0F BE. 45, FB
        and     eax, 02H                                ; 0B52 _ 83. E0, 02
        test    eax, eax                                ; 0B55 _ 85. C0
        jz      ?_025                                   ; 0B57 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B59 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B5C _ 8B. 45, FC
        add     eax, edx                                ; 0B5F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B61 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B65 _ 8B. 55, 10
        add     eax, edx                                ; 0B68 _ 01. D0
        lea     edx, [eax+6H]                           ; 0B6A _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0B6D _ 8B. 45, 08
        add     edx, eax                                ; 0B70 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B72 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B76 _ 88. 02
?_025:  movsx   eax, byte [ebp-5H]                      ; 0B78 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0B7C _ 83. E0, 01
        test    eax, eax                                ; 0B7F _ 85. C0
        jz      ?_026                                   ; 0B81 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B83 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B86 _ 8B. 45, FC
        add     eax, edx                                ; 0B89 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B8B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B8F _ 8B. 55, 10
        add     eax, edx                                ; 0B92 _ 01. D0
        lea     edx, [eax+7H]                           ; 0B94 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0B97 _ 8B. 45, 08
        add     edx, eax                                ; 0B9A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B9C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BA0 _ 88. 02
?_026:  add     dword [ebp-4H], 1                       ; 0BA2 _ 83. 45, FC, 01
?_027:  cmp     dword [ebp-4H], 15                      ; 0BA6 _ 83. 7D, FC, 0F
        jle     ?_018                                   ; 0BAA _ 0F 8E, FFFFFE9A
        nop                                             ; 0BB0 _ 90
        leave                                           ; 0BB1 _ C9
        ret                                             ; 0BB2 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0BB3 _ 55
        mov     ebp, esp                                ; 0BB4 _ 89. E5
        sub     esp, 20                                 ; 0BB6 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0BB9 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0BBC _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0BBF _ C7. 45, F8, 00000000
        jmp     ?_034                                   ; 0BC6 _ E9, 000000B1

?_028:  mov     dword [ebp-4H], 0                       ; 0BCB _ C7. 45, FC, 00000000
        jmp     ?_033                                   ; 0BD2 _ E9, 00000097

?_029:  mov     eax, dword [ebp-8H]                     ; 0BD7 _ 8B. 45, F8
        shl     eax, 4                                  ; 0BDA _ C1. E0, 04
        mov     edx, eax                                ; 0BDD _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0BDF _ 8B. 45, FC
        add     eax, edx                                ; 0BE2 _ 01. D0
        add     eax, _cursor.2218                       ; 0BE4 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0BE9 _ 0F B6. 00
        cmp     al, 42                                  ; 0BEC _ 3C, 2A
        jnz     ?_030                                   ; 0BEE _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0BF0 _ 8B. 45, F8
        shl     eax, 4                                  ; 0BF3 _ C1. E0, 04
        mov     edx, eax                                ; 0BF6 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0BF8 _ 8B. 45, FC
        add     eax, edx                                ; 0BFB _ 01. D0
        mov     edx, eax                                ; 0BFD _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0BFF _ 8B. 45, 08
        add     eax, edx                                ; 0C02 _ 01. D0
        mov     byte [eax], 0                           ; 0C04 _ C6. 00, 00
?_030:  mov     eax, dword [ebp-8H]                     ; 0C07 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C0A _ C1. E0, 04
        mov     edx, eax                                ; 0C0D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C0F _ 8B. 45, FC
        add     eax, edx                                ; 0C12 _ 01. D0
        add     eax, _cursor.2218                       ; 0C14 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C19 _ 0F B6. 00
        cmp     al, 79                                  ; 0C1C _ 3C, 4F
        jnz     ?_031                                   ; 0C1E _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0C20 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C23 _ C1. E0, 04
        mov     edx, eax                                ; 0C26 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C28 _ 8B. 45, FC
        add     eax, edx                                ; 0C2B _ 01. D0
        mov     edx, eax                                ; 0C2D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C2F _ 8B. 45, 08
        add     eax, edx                                ; 0C32 _ 01. D0
        mov     byte [eax], 7                           ; 0C34 _ C6. 00, 07
?_031:  mov     eax, dword [ebp-8H]                     ; 0C37 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C3A _ C1. E0, 04
        mov     edx, eax                                ; 0C3D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C3F _ 8B. 45, FC
        add     eax, edx                                ; 0C42 _ 01. D0
        add     eax, _cursor.2218                       ; 0C44 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C49 _ 0F B6. 00
        cmp     al, 46                                  ; 0C4C _ 3C, 2E
        jnz     ?_032                                   ; 0C4E _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0C50 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C53 _ C1. E0, 04
        mov     edx, eax                                ; 0C56 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C58 _ 8B. 45, FC
        add     eax, edx                                ; 0C5B _ 01. D0
        mov     edx, eax                                ; 0C5D _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C5F _ 8B. 45, 08
        add     edx, eax                                ; 0C62 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C64 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C68 _ 88. 02
?_032:  add     dword [ebp-4H], 1                       ; 0C6A _ 83. 45, FC, 01
?_033:  cmp     dword [ebp-4H], 15                      ; 0C6E _ 83. 7D, FC, 0F
        jle     ?_029                                   ; 0C72 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0C78 _ 83. 45, F8, 01
?_034:  cmp     dword [ebp-8H], 15                      ; 0C7C _ 83. 7D, F8, 0F
        jle     ?_028                                   ; 0C80 _ 0F 8E, FFFFFF45
        nop                                             ; 0C86 _ 90
        leave                                           ; 0C87 _ C9
        ret                                             ; 0C88 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0C89 _ 55
        mov     ebp, esp                                ; 0C8A _ 89. E5
        push    ebx                                     ; 0C8C _ 53
        sub     esp, 16                                 ; 0C8D _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0C90 _ C7. 45, F4, 00000000
        jmp     ?_038                                   ; 0C97 _ EB, 4E

?_035:  mov     dword [ebp-8H], 0                       ; 0C99 _ C7. 45, F8, 00000000
        jmp     ?_037                                   ; 0CA0 _ EB, 39

?_036:  mov     eax, dword [ebp-0CH]                    ; 0CA2 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0CA5 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0CA9 _ 8B. 55, F8
        add     eax, edx                                ; 0CAC _ 01. D0
        mov     edx, eax                                ; 0CAE _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0CB0 _ 8B. 45, 20
        add     eax, edx                                ; 0CB3 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0CB5 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0CB8 _ 8B. 55, F4
        add     edx, ecx                                ; 0CBB _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0CBD _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0CC1 _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0CC4 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0CC7 _ 01. D9
        add     edx, ecx                                ; 0CC9 _ 01. CA
        mov     ecx, edx                                ; 0CCB _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0CCD _ 8B. 55, 08
        add     edx, ecx                                ; 0CD0 _ 01. CA
        movzx   eax, byte [eax]                         ; 0CD2 _ 0F B6. 00
        mov     byte [edx], al                          ; 0CD5 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0CD7 _ 83. 45, F8, 01
?_037:  mov     eax, dword [ebp-8H]                     ; 0CDB _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0CDE _ 3B. 45, 10
        jl      ?_036                                   ; 0CE1 _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0CE3 _ 83. 45, F4, 01
?_038:  mov     eax, dword [ebp-0CH]                    ; 0CE7 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0CEA _ 3B. 45, 14
        jl      ?_035                                   ; 0CED _ 7C, AA
        nop                                             ; 0CEF _ 90
        add     esp, 16                                 ; 0CF0 _ 83. C4, 10
        pop     ebx                                     ; 0CF3 _ 5B
        pop     ebp                                     ; 0CF4 _ 5D
        ret                                             ; 0CF5 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0CF6 _ 55
        mov     ebp, esp                                ; 0CF7 _ 89. E5
        sub     esp, 40                                 ; 0CF9 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0CFC _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0D01 _ 89. 45, F4
        movzx   eax, word [?_127]                       ; 0D04 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D0B _ 98
        mov     dword [ebp-10H], eax                    ; 0D0C _ 89. 45, F0
        movzx   eax, word [?_128]                       ; 0D0F _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0D16 _ 98
        mov     dword [ebp-14H], eax                    ; 0D17 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0D1A _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0D22 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0D29 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0D2E _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0D32 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0D39 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0D3E _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0D41 _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0D45 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0D49 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0D50 _ E8, 0000023F
        nop                                             ; 0D55 _ 90
        leave                                           ; 0D56 _ C9
        ret                                             ; 0D57 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0D58 _ 55
        mov     ebp, esp                                ; 0D59 _ 89. E5
        sub     esp, 4                                  ; 0D5B _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0D5E _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0D61 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0D64 _ 80. 7D, FC, 09
        jle     ?_039                                   ; 0D68 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0D6A _ 0F B6. 45, FC
        add     eax, 55                                 ; 0D6E _ 83. C0, 37
        jmp     ?_040                                   ; 0D71 _ EB, 07

?_039:  movzx   eax, byte [ebp-4H]                      ; 0D73 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0D77 _ 83. C0, 30
?_040:  leave                                           ; 0D7A _ C9
        ret                                             ; 0D7B _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0D7C _ 55
        mov     ebp, esp                                ; 0D7D _ 89. E5
        sub     esp, 24                                 ; 0D7F _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0D82 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0D85 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0D88 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0D8F _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0D93 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0D96 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0D99 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0D9D _ 89. 04 24
        call    _charToHexVal                           ; 0DA0 _ E8, FFFFFFB3
        mov     byte [?_118], al                        ; 0DA5 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0DAA _ 0F B6. 45, EC
        shr     al, 4                                   ; 0DAE _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0DB1 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0DB4 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0DB8 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0DBB _ 89. 04 24
        call    _charToHexVal                           ; 0DBE _ E8, FFFFFF95
        mov     byte [?_117], al                        ; 0DC3 _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0DC8 _ B8, 00000004(d)
        leave                                           ; 0DCD _ C9
        ret                                             ; 0DCE _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0DCF _ 55
        mov     ebp, esp                                ; 0DD0 _ 89. E5
        sub     esp, 16                                 ; 0DD2 _ 83. EC, 10
        mov     byte [_str.2266], 48                    ; 0DD5 _ C6. 05, 00000220(d), 30
        mov     byte [?_129], 88                        ; 0DDC _ C6. 05, 00000221(d), 58
        mov     byte [?_130], 0                         ; 0DE3 _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-4H], 2                       ; 0DEA _ C7. 45, FC, 00000002
        jmp     ?_042                                   ; 0DF1 _ EB, 0F

?_041:  mov     eax, dword [ebp-4H]                     ; 0DF3 _ 8B. 45, FC
        add     eax, _str.2266                          ; 0DF6 _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0DFB _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0DFE _ 83. 45, FC, 01
?_042:  cmp     dword [ebp-4H], 9                       ; 0E02 _ 83. 7D, FC, 09
        jle     ?_041                                   ; 0E06 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0E08 _ C7. 45, F8, 00000009
        jmp     ?_046                                   ; 0E0F _ EB, 42

?_043:  mov     eax, dword [ebp+8H]                     ; 0E11 _ 8B. 45, 08
        and     eax, 0FH                                ; 0E14 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0E17 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0E1A _ 8B. 45, 08
        shr     eax, 4                                  ; 0E1D _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0E20 _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0E23 _ 83. 7D, F4, 09
        jle     ?_044                                   ; 0E27 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0E29 _ 8B. 45, F4
        add     eax, 55                                 ; 0E2C _ 83. C0, 37
        mov     edx, eax                                ; 0E2F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E31 _ 8B. 45, F8
        add     eax, _str.2266                          ; 0E34 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0E39 _ 88. 10
        jmp     ?_045                                   ; 0E3B _ EB, 12

?_044:  mov     eax, dword [ebp-0CH]                    ; 0E3D _ 8B. 45, F4
        add     eax, 48                                 ; 0E40 _ 83. C0, 30
        mov     edx, eax                                ; 0E43 _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E45 _ 8B. 45, F8
        add     eax, _str.2266                          ; 0E48 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0E4D _ 88. 10
?_045:  sub     dword [ebp-8H], 1                       ; 0E4F _ 83. 6D, F8, 01
?_046:  cmp     dword [ebp-8H], 1                       ; 0E53 _ 83. 7D, F8, 01
        jle     ?_047                                   ; 0E57 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0E59 _ 83. 7D, 08, 00
        jnz     ?_043                                   ; 0E5D _ 75, B2
?_047:  mov     eax, _str.2266                          ; 0E5F _ B8, 00000220(d)
        leave                                           ; 0E64 _ C9
        ret                                             ; 0E65 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0E66 _ 55
        mov     ebp, esp                                ; 0E67 _ 89. E5
        sub     esp, 24                                 ; 0E69 _ 83. EC, 18
?_048:  mov     dword [esp], 100                        ; 0E6C _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0E73 _ E8, 00000000(rel)
        and     eax, 02H                                ; 0E78 _ 83. E0, 02
        test    eax, eax                                ; 0E7B _ 85. C0
        jz      ?_049                                   ; 0E7D _ 74, 02
        jmp     ?_048                                   ; 0E7F _ EB, EB
; _wait_KBC_sendready End of function

?_049:  ; Local function
        nop                                             ; 0E81 _ 90
        nop                                             ; 0E82 _ 90
        leave                                           ; 0E83 _ C9
        ret                                             ; 0E84 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0E85 _ 55
        mov     ebp, esp                                ; 0E86 _ 89. E5
        sub     esp, 24                                 ; 0E88 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0E8B _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0E90 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0E98 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0E9F _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0EA4 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0EA9 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0EB1 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0EB8 _ E8, 00000000(rel)
        nop                                             ; 0EBD _ 90
        leave                                           ; 0EBE _ C9
        ret                                             ; 0EBF _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0EC0 _ 55
        mov     ebp, esp                                ; 0EC1 _ 89. E5
        sub     esp, 24                                 ; 0EC3 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0EC6 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0ECB _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0ED3 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0EDA _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0EDF _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0EE4 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0EEC _ C7. 04 24, 00000060
        call    _io_out8                                ; 0EF3 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0EF8 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0EFB _ C6. 40, 03, 00
        nop                                             ; 0EFF _ 90
        leave                                           ; 0F00 _ C9
        ret                                             ; 0F01 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0F02 _ 55
        mov     ebp, esp                                ; 0F03 _ 89. E5
        sub     esp, 40                                 ; 0F05 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0F08 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0F10 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 0F17 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 0F1C _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0F24 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0F2B _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 0F30 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0F37 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 0F3C _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F3F _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0F43 _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 0F47 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 0F4E _ E8, 00000041
        nop                                             ; 0F53 _ 90
        leave                                           ; 0F54 _ C9
        ret                                             ; 0F55 _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 0F56 _ 55
        mov     ebp, esp                                ; 0F57 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F59 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F5C _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0F5F _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F62 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0F65 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0F68 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0F6A _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F6D _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0F70 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0F73 _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0F76 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F7D _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0F80 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0F87 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0F8A _ C7. 40, 08, 00000000
        nop                                             ; 0F91 _ 90
        pop     ebp                                     ; 0F92 _ 5D
        ret                                             ; 0F93 _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 0F94 _ 55
        mov     ebp, esp                                ; 0F95 _ 89. E5
        sub     esp, 4                                  ; 0F97 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0F9A _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0F9D _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FA0 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0FA3 _ 8B. 40, 10
        test    eax, eax                                ; 0FA6 _ 85. C0
        jnz     ?_050                                   ; 0FA8 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0FAA _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0FAD _ 8B. 40, 14
        or      eax, 01H                                ; 0FB0 _ 83. C8, 01
        mov     edx, eax                                ; 0FB3 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FB5 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0FB8 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0FBB _ B8, FFFFFFFF
        jmp     ?_052                                   ; 0FC0 _ EB, 50

?_050:  mov     eax, dword [ebp+8H]                     ; 0FC2 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0FC5 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0FC7 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FCA _ 8B. 40, 04
        add     edx, eax                                ; 0FCD _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0FCF _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0FD3 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0FD5 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FD8 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0FDB _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0FDE _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0FE1 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FE4 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0FE7 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0FEA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0FED _ 8B. 40, 0C
        cmp     edx, eax                                ; 0FF0 _ 39. C2
        jnz     ?_051                                   ; 0FF2 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0FF4 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0FF7 _ C7. 40, 04, 00000000
?_051:  mov     eax, dword [ebp+8H]                     ; 0FFE _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1001 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1004 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1007 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 100A _ 89. 50, 10
        mov     eax, 0                                  ; 100D _ B8, 00000000
?_052:  leave                                           ; 1012 _ C9
        ret                                             ; 1013 _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 1014 _ 55
        mov     ebp, esp                                ; 1015 _ 89. E5
        sub     esp, 16                                 ; 1017 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 101A _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 101D _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 1020 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1023 _ 8B. 40, 0C
        cmp     edx, eax                                ; 1026 _ 39. C2
        jnz     ?_053                                   ; 1028 _ 75, 07
        mov     eax, 4294967295                         ; 102A _ B8, FFFFFFFF
        jmp     ?_055                                   ; 102F _ EB, 51

?_053:  mov     eax, dword [ebp+8H]                     ; 1031 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1034 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1036 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1039 _ 8B. 40, 08
        add     eax, edx                                ; 103C _ 01. D0
        movzx   eax, byte [eax]                         ; 103E _ 0F B6. 00
        movzx   eax, al                                 ; 1041 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 1044 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1047 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 104A _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 104D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1050 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1053 _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1056 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1059 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 105C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 105F _ 8B. 40, 0C
        cmp     edx, eax                                ; 1062 _ 39. C2
        jnz     ?_054                                   ; 1064 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1066 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1069 _ C7. 40, 08, 00000000
?_054:  mov     eax, dword [ebp+8H]                     ; 1070 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1073 _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 1076 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1079 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 107C _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 107F _ 8B. 45, FC
?_055:  leave                                           ; 1082 _ C9
        ret                                             ; 1083 _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 1084 _ 55
        mov     ebp, esp                                ; 1085 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1087 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 108A _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 108D _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 1090 _ 8B. 40, 10
        sub     edx, eax                                ; 1093 _ 29. C2
        mov     eax, edx                                ; 1095 _ 89. D0
        pop     ebp                                     ; 1097 _ 5D
        ret                                             ; 1098 _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 1099 _ 55
        mov     ebp, esp                                ; 109A _ 89. E5
        sub     esp, 4                                  ; 109C _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 109F _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 10A2 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 10A5 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10A8 _ 0F B6. 40, 03
        test    al, al                                  ; 10AC _ 84. C0
        jnz     ?_057                                   ; 10AE _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 10B0 _ 80. 7D, FC, FA
        jnz     ?_056                                   ; 10B4 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 10B6 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 10B9 _ C6. 40, 03, 01
?_056:  mov     eax, 0                                  ; 10BD _ B8, 00000000
        jmp     ?_064                                   ; 10C2 _ E9, 0000010F

?_057:  mov     eax, dword [ebp+8H]                     ; 10C7 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10CA _ 0F B6. 40, 03
        cmp     al, 1                                   ; 10CE _ 3C, 01
        jnz     ?_059                                   ; 10D0 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 10D2 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 10D6 _ 25, 000000C8
        cmp     eax, 8                                  ; 10DB _ 83. F8, 08
        jnz     ?_058                                   ; 10DE _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 10E0 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 10E3 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 10E7 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 10E9 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 10EC _ C6. 40, 03, 02
?_058:  mov     eax, 0                                  ; 10F0 _ B8, 00000000
        jmp     ?_064                                   ; 10F5 _ E9, 000000DC

?_059:  mov     eax, dword [ebp+8H]                     ; 10FA _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10FD _ 0F B6. 40, 03
        cmp     al, 2                                   ; 1101 _ 3C, 02
        jnz     ?_060                                   ; 1103 _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1105 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1108 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 110C _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 110F _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 1112 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1116 _ B8, 00000000
        jmp     ?_064                                   ; 111B _ E9, 000000B6

?_060:  mov     eax, dword [ebp+8H]                     ; 1120 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1123 _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1127 _ 3C, 03
        jne     ?_063                                   ; 1129 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 112F _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1132 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1136 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1139 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 113C _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 1140 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1143 _ 0F B6. 00
        movzx   eax, al                                 ; 1146 _ 0F B6. C0
        and     eax, 07H                                ; 1149 _ 83. E0, 07
        mov     edx, eax                                ; 114C _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 114E _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1151 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1154 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1157 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 115B _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 115E _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 1161 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1164 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1167 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 116B _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 116E _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 1171 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 1174 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 1177 _ 0F B6. 00
        movzx   eax, al                                 ; 117A _ 0F B6. C0
        and     eax, 10H                                ; 117D _ 83. E0, 10
        test    eax, eax                                ; 1180 _ 85. C0
        jz      ?_061                                   ; 1182 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 1184 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1187 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 118A _ 0D, FFFFFF00
        mov     edx, eax                                ; 118F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1191 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1194 _ 89. 50, 04
?_061:  mov     eax, dword [ebp+8H]                     ; 1197 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 119A _ 0F B6. 00
        movzx   eax, al                                 ; 119D _ 0F B6. C0
        and     eax, 20H                                ; 11A0 _ 83. E0, 20
        test    eax, eax                                ; 11A3 _ 85. C0
        jz      ?_062                                   ; 11A5 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 11A7 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11AA _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 11AD _ 0D, FFFFFF00
        mov     edx, eax                                ; 11B2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11B4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11B7 _ 89. 50, 08
?_062:  mov     eax, dword [ebp+8H]                     ; 11BA _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11BD _ 8B. 40, 08
        neg     eax                                     ; 11C0 _ F7. D8
        mov     edx, eax                                ; 11C2 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11C4 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11C7 _ 89. 50, 08
        mov     eax, 1                                  ; 11CA _ B8, 00000001
        jmp     ?_064                                   ; 11CF _ EB, 05

?_063:  mov     eax, 4294967295                         ; 11D1 _ B8, FFFFFFFF
?_064:  leave                                           ; 11D6 _ C9
        ret                                             ; 11D7 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 11D8 _ 55
        mov     ebp, esp                                ; 11D9 _ 89. E5
        sub     esp, 88                                 ; 11DB _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 11DE _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 11E5 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 11EC _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 11F3 _ C7. 45, E8, 00000050
        mov     dword [esp+18H], 100                    ; 11FA _ C7. 44 24, 18, 00000064
        mov     eax, dword [ebp+14H]                    ; 1202 _ 8B. 45, 14
        mov     dword [esp+14H], eax                    ; 1205 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 1209 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1211 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 1219 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+14H]                    ; 1221 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1224 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1228 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 122B _ 89. 04 24
        call    _boxfill8                               ; 122E _ E8, FFFFF7AF
        mov     eax, dword [ebp+18H]                    ; 1233 _ 8B. 45, 18
        movsx   eax, al                                 ; 1236 _ 0F BE. C0
        mov     dword [esp+14H], ?_121                  ; 1239 _ C7. 44 24, 14, 00000016(d)
        mov     dword [esp+10H], eax                    ; 1241 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1245 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1248 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 124C _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 124F _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1253 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1256 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 125A _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 125D _ 89. 04 24
        call    _showString                             ; 1260 _ E8, FFFFF651
        mov     eax, dword [ebp+10H]                    ; 1265 _ 8B. 45, 10
        mov     dword [esp], eax                        ; 1268 _ 89. 04 24
        call    _intToHexStr                            ; 126B _ E8, FFFFFB5F
        mov     dword [ebp-1CH], eax                    ; 1270 _ 89. 45, E4
        mov     eax, dword [ebp+18H]                    ; 1273 _ 8B. 45, 18
        movsx   eax, al                                 ; 1276 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 1279 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 127C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1280 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1284 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1287 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 128B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 128E _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1292 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1295 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1299 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 129C _ 89. 04 24
        call    _showString                             ; 129F _ E8, FFFFF612
        add     dword [ebp-10H], 16                     ; 12A4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 12A8 _ 8B. 45, 18
        movsx   eax, al                                 ; 12AB _ 0F BE. C0
        mov     dword [esp+14H], ?_122                  ; 12AE _ C7. 44 24, 14, 00000020(d)
        mov     dword [esp+10H], eax                    ; 12B6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12BA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12BD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12C1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12C4 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 12C8 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 12CB _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 12CF _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 12D2 _ 89. 04 24
        call    _showString                             ; 12D5 _ E8, FFFFF5DC
        mov     eax, dword [ebp+8H]                     ; 12DA _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 12DD _ 8B. 00
        mov     dword [esp], eax                        ; 12DF _ 89. 04 24
        call    _intToHexStr                            ; 12E2 _ E8, FFFFFAE8
        mov     dword [ebp-20H], eax                    ; 12E7 _ 89. 45, E0
        mov     eax, dword [ebp+18H]                    ; 12EA _ 8B. 45, 18
        movsx   eax, al                                 ; 12ED _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 12F0 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 12F3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 12F7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12FB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12FE _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1302 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1305 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1309 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 130C _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1310 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1313 _ 89. 04 24
        call    _showString                             ; 1316 _ E8, FFFFF59B
        add     dword [ebp-10H], 16                     ; 131B _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 131F _ 8B. 45, 18
        movsx   eax, al                                 ; 1322 _ 0F BE. C0
        mov     dword [esp+14H], ?_123                  ; 1325 _ C7. 44 24, 14, 0000002C(d)
        mov     dword [esp+10H], eax                    ; 132D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1331 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1334 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1338 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 133B _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 133F _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1342 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1346 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1349 _ 89. 04 24
        call    _showString                             ; 134C _ E8, FFFFF565
        mov     eax, dword [ebp+8H]                     ; 1351 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1354 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1357 _ 89. 04 24
        call    _intToHexStr                            ; 135A _ E8, FFFFFA70
        mov     dword [ebp-24H], eax                    ; 135F _ 89. 45, DC
        mov     eax, dword [ebp+18H]                    ; 1362 _ 8B. 45, 18
        movsx   eax, al                                 ; 1365 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1368 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 136B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 136F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1373 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1376 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 137A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 137D _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1381 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1384 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1388 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 138B _ 89. 04 24
        call    _showString                             ; 138E _ E8, FFFFF523
        add     dword [ebp-10H], 16                     ; 1393 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 1397 _ 8B. 45, 18
        movsx   eax, al                                 ; 139A _ 0F BE. C0
        mov     dword [esp+14H], ?_124                  ; 139D _ C7. 44 24, 14, 00000038(d)
        mov     dword [esp+10H], eax                    ; 13A5 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13A9 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13AC _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13B0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13B3 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 13B7 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 13BA _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 13BE _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 13C1 _ 89. 04 24
        call    _showString                             ; 13C4 _ E8, FFFFF4ED
        mov     eax, dword [ebp+8H]                     ; 13C9 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 13CC _ 8B. 40, 08
        mov     dword [esp], eax                        ; 13CF _ 89. 04 24
        call    _intToHexStr                            ; 13D2 _ E8, FFFFF9F8
        mov     dword [ebp-28H], eax                    ; 13D7 _ 89. 45, D8
        mov     eax, dword [ebp+18H]                    ; 13DA _ 8B. 45, 18
        movsx   eax, al                                 ; 13DD _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 13E0 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 13E3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13E7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13EB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13EE _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 13F2 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 13F5 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 13F9 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 13FC _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1400 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1403 _ 89. 04 24
        call    _showString                             ; 1406 _ E8, FFFFF4AB
        add     dword [ebp-10H], 16                     ; 140B _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 140F _ 8B. 45, 18
        movsx   eax, al                                 ; 1412 _ 0F BE. C0
        mov     dword [esp+14H], ?_125                  ; 1415 _ C7. 44 24, 14, 00000044(d)
        mov     dword [esp+10H], eax                    ; 141D _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1421 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1424 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1428 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 142B _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 142F _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1432 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1436 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 1439 _ 89. 04 24
        call    _showString                             ; 143C _ E8, FFFFF475
        mov     eax, dword [ebp+8H]                     ; 1441 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1444 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1447 _ 89. 04 24
        call    _intToHexStr                            ; 144A _ E8, FFFFF980
        mov     dword [ebp-2CH], eax                    ; 144F _ 89. 45, D4
        mov     eax, dword [ebp+18H]                    ; 1452 _ 8B. 45, 18
        movsx   eax, al                                 ; 1455 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1458 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 145B _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 145F _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1463 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1466 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 146A _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 146D _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 1471 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 1474 _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 1478 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 147B _ 89. 04 24
        call    _showString                             ; 147E _ E8, FFFFF433
        add     dword [ebp-10H], 16                     ; 1483 _ 83. 45, F0, 10
        mov     eax, dword [ebp+18H]                    ; 1487 _ 8B. 45, 18
        movsx   eax, al                                 ; 148A _ 0F BE. C0
        mov     dword [esp+14H], ?_126                  ; 148D _ C7. 44 24, 14, 00000051(d)
        mov     dword [esp+10H], eax                    ; 1495 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1499 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 149C _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 14A0 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 14A3 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 14A7 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 14AA _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 14AE _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 14B1 _ 89. 04 24
        call    _showString                             ; 14B4 _ E8, FFFFF3FD
        mov     eax, dword [ebp+8H]                     ; 14B9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 14BC _ 8B. 40, 10
        mov     dword [esp], eax                        ; 14BF _ 89. 04 24
        call    _intToHexStr                            ; 14C2 _ E8, FFFFF908
        mov     dword [ebp-30H], eax                    ; 14C7 _ 89. 45, D0
        mov     eax, dword [ebp+18H]                    ; 14CA _ 8B. 45, 18
        movsx   eax, al                                 ; 14CD _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 14D0 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 14D3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 14D7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14DB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14DE _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14E2 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14E5 _ 89. 44 24, 08
        mov     eax, dword [ebp+14H]                    ; 14E9 _ 8B. 45, 14
        mov     dword [esp+4H], eax                     ; 14EC _ 89. 44 24, 04
        mov     eax, dword [ebp+0CH]                    ; 14F0 _ 8B. 45, 0C
        mov     dword [esp], eax                        ; 14F3 _ 89. 04 24
        call    _showString                             ; 14F6 _ E8, FFFFF3BB
        nop                                             ; 14FB _ 90
        leave                                           ; 14FC _ C9
        ret                                             ; 14FD _ C3
; _showMemoryInfo End of function

        nop                                             ; 14FE _ 90
        nop                                             ; 14FF _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 1500 _ 55
        mov     ebp, esp                                ; 1501 _ 89. E5
        sub     esp, 40                                 ; 1503 _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 1506 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 150E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1511 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1514 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1519 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 151C _ 83. 7D, F0, 00
        jnz     ?_065                                   ; 1520 _ 75, 07
        mov     eax, 0                                  ; 1522 _ B8, 00000000
        jmp     ?_068                                   ; 1527 _ EB, 54

?_065:  mov     eax, dword [ebp-10H]                    ; 1529 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 152C _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 152F _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 1531 _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 1534 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1537 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 153A _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 153D _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1540 _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1543 _ 8B. 45, F0
        mov     dword [eax+0CH], -1                     ; 1546 _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 154D _ C7. 45, F4, 00000000
        jmp     ?_067                                   ; 1554 _ EB, 1B

?_066:  mov     edx, dword [ebp-10H]                    ; 1556 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 1559 _ 8B. 45, F4
        add     eax, 33                                 ; 155C _ 83. C0, 21
        shl     eax, 5                                  ; 155F _ C1. E0, 05
        add     eax, edx                                ; 1562 _ 01. D0
        add     eax, 12                                 ; 1564 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 1567 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 156D _ 83. 45, F4, 01
?_067:  cmp     dword [ebp-0CH], 255                    ; 1571 _ 81. 7D, F4, 000000FF
        jle     ?_066                                   ; 1578 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 157A _ 8B. 45, F0
?_068:  leave                                           ; 157D _ C9
        ret                                             ; 157E _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 157F _ 55
        mov     ebp, esp                                ; 1580 _ 89. E5
        sub     esp, 16                                 ; 1582 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1585 _ C7. 45, FC, 00000000
        jmp     ?_071                                   ; 158C _ EB, 57

?_069:  mov     edx, dword [ebp+8H]                     ; 158E _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1591 _ 8B. 45, FC
        add     eax, 33                                 ; 1594 _ 83. C0, 21
        shl     eax, 5                                  ; 1597 _ C1. E0, 05
        add     eax, edx                                ; 159A _ 01. D0
        add     eax, 12                                 ; 159C _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 159F _ 8B. 00
        test    eax, eax                                ; 15A1 _ 85. C0
        jnz     ?_070                                   ; 15A3 _ 75, 3C
        mov     eax, dword [ebp-4H]                     ; 15A5 _ 8B. 45, FC
        shl     eax, 5                                  ; 15A8 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 15AB _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 15B1 _ 8B. 45, 08
        add     eax, edx                                ; 15B4 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 15B6 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 15B9 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 15BC _ 8B. 55, FC
        add     edx, 4                                  ; 15BF _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 15C2 _ 8B. 4D, F8
        mov     dword [eax+edx*4], ecx                  ; 15C5 _ 89. 0C 90
        mov     eax, dword [ebp-8H]                     ; 15C8 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 15CB _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 15D2 _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 15D5 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 15DC _ 8B. 45, F8
        jmp     ?_072                                   ; 15DF _ EB, 12

?_070:  add     dword [ebp-4H], 1                       ; 15E1 _ 83. 45, FC, 01
?_071:  cmp     dword [ebp-4H], 255                     ; 15E5 _ 81. 7D, FC, 000000FF
        jle     ?_069                                   ; 15EC _ 7E, A0
        mov     eax, 0                                  ; 15EE _ B8, 00000000
?_072:  leave                                           ; 15F3 _ C9
        ret                                             ; 15F4 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 15F5 _ 55
        mov     ebp, esp                                ; 15F6 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 15F8 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 15FB _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 15FE _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1600 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1603 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1606 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1609 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 160C _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 160F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1612 _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1615 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1618 _ 89. 50, 14
        nop                                             ; 161B _ 90
        pop     ebp                                     ; 161C _ 5D
        ret                                             ; 161D _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 161E _ 55
        mov     ebp, esp                                ; 161F _ 89. E5
        push    ebx                                     ; 1621 _ 53
        sub     esp, 36                                 ; 1622 _ 83. EC, 24
        mov     eax, dword [ebp+0CH]                    ; 1625 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1628 _ 8B. 40, 18
        mov     dword [ebp-10H], eax                    ; 162B _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 162E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1631 _ 8B. 40, 0C
        add     eax, 1                                  ; 1634 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1637 _ 39. 45, 10
        jle     ?_073                                   ; 163A _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 163C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 163F _ 8B. 40, 0C
        add     eax, 1                                  ; 1642 _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1645 _ 89. 45, 10
?_073:  cmp     dword [ebp+10H], -1                     ; 1648 _ 83. 7D, 10, FF
        jge     ?_074                                   ; 164C _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 164E _ C7. 45, 10, FFFFFFFF
?_074:  mov     eax, dword [ebp+0CH]                    ; 1655 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1658 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 165B _ 89. 50, 18
        mov     eax, dword [ebp-10H]                    ; 165E _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1661 _ 3B. 45, 10
        jle     ?_082                                   ; 1664 _ 0F 8E, 000000C6
        cmp     dword [ebp+10H], 0                      ; 166A _ 83. 7D, 10, 00
        js      ?_077                                   ; 166E _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1670 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1673 _ 89. 45, F4
        jmp     ?_076                                   ; 1676 _ EB, 31

?_075:  mov     eax, dword [ebp-0CH]                    ; 1678 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 167B _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 167E _ 8B. 45, 08
        add     edx, 4                                  ; 1681 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1684 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1687 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 168A _ 8B. 55, F4
        add     edx, 4                                  ; 168D _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1690 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1693 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1696 _ 8B. 55, F4
        add     edx, 4                                  ; 1699 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 169C _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 169F _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 16A2 _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 16A5 _ 83. 6D, F4, 01
?_076:  mov     eax, dword [ebp-0CH]                    ; 16A9 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 16AC _ 3B. 45, 10
        jg      ?_075                                   ; 16AF _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 16B1 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 16B4 _ 8B. 55, 10
        add     edx, 4                                  ; 16B7 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 16BA _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 16BD _ 89. 0C 90
        jmp     ?_081                                   ; 16C0 _ EB, 5E

?_077:  mov     eax, dword [ebp+8H]                     ; 16C2 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 16C5 _ 8B. 40, 0C
        cmp     dword [ebp-10H], eax                    ; 16C8 _ 39. 45, F0
        jge     ?_080                                   ; 16CB _ 7D, 44
        mov     eax, dword [ebp-10H]                    ; 16CD _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 16D0 _ 89. 45, F4
        jmp     ?_079                                   ; 16D3 _ EB, 31

?_078:  mov     eax, dword [ebp-0CH]                    ; 16D5 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 16D8 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 16DB _ 8B. 45, 08
        add     edx, 4                                  ; 16DE _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 16E1 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 16E4 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 16E7 _ 8B. 55, F4
        add     edx, 4                                  ; 16EA _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 16ED _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 16F0 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 16F3 _ 8B. 55, F4
        add     edx, 4                                  ; 16F6 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 16F9 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 16FC _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 16FF _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1702 _ 83. 45, F4, 01
?_079:  mov     eax, dword [ebp+8H]                     ; 1706 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1709 _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 170C _ 39. 45, F4
        jl      ?_078                                   ; 170F _ 7C, C4
?_080:  mov     eax, dword [ebp+8H]                     ; 1711 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1714 _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 1717 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 171A _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 171D _ 89. 50, 0C
?_081:  mov     eax, dword [ebp+8H]                     ; 1720 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1723 _ 89. 04 24
        call    _sheet_refresh                          ; 1726 _ E8, 000000E3
        jmp     ?_089                                   ; 172B _ E9, 000000D7

?_082:  mov     eax, dword [ebp-10H]                    ; 1730 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1733 _ 3B. 45, 10
        jge     ?_089                                   ; 1736 _ 0F 8D, 000000CB
        cmp     dword [ebp-10H], 0                      ; 173C _ 83. 7D, F0, 00
        js      ?_085                                   ; 1740 _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1742 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1745 _ 89. 45, F4
        jmp     ?_084                                   ; 1748 _ EB, 31

?_083:  mov     eax, dword [ebp-0CH]                    ; 174A _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 174D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1750 _ 8B. 45, 08
        add     edx, 4                                  ; 1753 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1756 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1759 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 175C _ 8B. 55, F4
        add     edx, 4                                  ; 175F _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1762 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1765 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1768 _ 8B. 55, F4
        add     edx, 4                                  ; 176B _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 176E _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1771 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1774 _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1777 _ 83. 45, F4, 01
?_084:  mov     eax, dword [ebp-0CH]                    ; 177B _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 177E _ 3B. 45, 10
        jl      ?_083                                   ; 1781 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1783 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1786 _ 8B. 55, 10
        add     edx, 4                                  ; 1789 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 178C _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 178F _ 89. 0C 90
        jmp     ?_088                                   ; 1792 _ EB, 68

?_085:  mov     eax, dword [ebp+8H]                     ; 1794 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1797 _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 179A _ 89. 45, F4
        jmp     ?_087                                   ; 179D _ EB, 37

?_086:  mov     eax, dword [ebp-0CH]                    ; 179F _ 8B. 45, F4
        lea     ebx, [eax+1H]                           ; 17A2 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 17A5 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 17A8 _ 8B. 55, F4
        add     edx, 4                                  ; 17AB _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 17AE _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 17B1 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 17B4 _ 8D. 53, 04
        mov     dword [eax+edx*4], ecx                  ; 17B7 _ 89. 0C 90
        mov     eax, dword [ebp-0CH]                    ; 17BA _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 17BD _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17C0 _ 8B. 45, 08
        add     edx, 4                                  ; 17C3 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 17C6 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 17C9 _ 8B. 55, F4
        add     edx, 1                                  ; 17CC _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 17CF _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 17D2 _ 83. 6D, F4, 01
?_087:  mov     eax, dword [ebp-0CH]                    ; 17D6 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 17D9 _ 3B. 45, 10
        jge     ?_086                                   ; 17DC _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 17DE _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 17E1 _ 8B. 55, 10
        add     edx, 4                                  ; 17E4 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 17E7 _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 17EA _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 17ED _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 17F0 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 17F3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 17F6 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 17F9 _ 89. 50, 0C
?_088:  mov     eax, dword [ebp+8H]                     ; 17FC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 17FF _ 89. 04 24
        call    _sheet_refresh                          ; 1802 _ E8, 00000007
?_089:  nop                                             ; 1807 _ 90
        add     esp, 36                                 ; 1808 _ 83. C4, 24
        pop     ebx                                     ; 180B _ 5B
        pop     ebp                                     ; 180C _ 5D
        ret                                             ; 180D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 180E _ 55
        mov     ebp, esp                                ; 180F _ 89. E5
        sub     esp, 48                                 ; 1811 _ 83. EC, 30
        mov     dword [ebp-10H], 0                      ; 1814 _ C7. 45, F0, 00000000
        mov     eax, dword [ebp+8H]                     ; 181B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 181E _ 8B. 00
        mov     dword [ebp-14H], eax                    ; 1820 _ 89. 45, EC
        mov     dword [ebp-4H], 0                       ; 1823 _ C7. 45, FC, 00000000
        jmp     ?_096                                   ; 182A _ E9, 000000B1

?_090:  mov     eax, dword [ebp+8H]                     ; 182F _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1832 _ 8B. 55, FC
        add     edx, 4                                  ; 1835 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1838 _ 8B. 04 90
        mov     dword [ebp-18H], eax                    ; 183B _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 183E _ 8B. 45, E8
        mov     eax, dword [eax]                        ; 1841 _ 8B. 00
        mov     dword [ebp-1CH], eax                    ; 1843 _ 89. 45, E4
        mov     dword [ebp-0CH], 0                      ; 1846 _ C7. 45, F4, 00000000
        jmp     ?_095                                   ; 184D _ EB, 7E

?_091:  mov     eax, dword [ebp-18H]                    ; 184F _ 8B. 45, E8
        mov     edx, dword [eax+10H]                    ; 1852 _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 1855 _ 8B. 45, F4
        add     eax, edx                                ; 1858 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 185A _ 89. 45, E0
        mov     dword [ebp-8H], 0                       ; 185D _ C7. 45, F8, 00000000
        jmp     ?_094                                   ; 1864 _ EB, 58

?_092:  mov     eax, dword [ebp-18H]                    ; 1866 _ 8B. 45, E8
        mov     edx, dword [eax+0CH]                    ; 1869 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 186C _ 8B. 45, F8
        add     eax, edx                                ; 186F _ 01. D0
        mov     dword [ebp-24H], eax                    ; 1871 _ 89. 45, DC
        mov     eax, dword [ebp-18H]                    ; 1874 _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 1877 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 187A _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 187E _ 8B. 55, F8
        add     eax, edx                                ; 1881 _ 01. D0
        mov     edx, eax                                ; 1883 _ 89. C2
        mov     eax, dword [ebp-1CH]                    ; 1885 _ 8B. 45, E4
        add     eax, edx                                ; 1888 _ 01. D0
        movzx   eax, byte [eax]                         ; 188A _ 0F B6. 00
        mov     byte [ebp-25H], al                      ; 188D _ 88. 45, DB
        movzx   eax, byte [ebp-25H]                     ; 1890 _ 0F B6. 45, DB
        mov     edx, dword [ebp-18H]                    ; 1894 _ 8B. 55, E8
        mov     edx, dword [edx+14H]                    ; 1897 _ 8B. 52, 14
        cmp     eax, edx                                ; 189A _ 39. D0
        jz      ?_093                                   ; 189C _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 189E _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 18A1 _ 8B. 40, 04
        imul    eax, dword [ebp-20H]                    ; 18A4 _ 0F AF. 45, E0
        mov     edx, dword [ebp-24H]                    ; 18A8 _ 8B. 55, DC
        add     eax, edx                                ; 18AB _ 01. D0
        mov     edx, eax                                ; 18AD _ 89. C2
        mov     eax, dword [ebp-14H]                    ; 18AF _ 8B. 45, EC
        add     edx, eax                                ; 18B2 _ 01. C2
        movzx   eax, byte [ebp-25H]                     ; 18B4 _ 0F B6. 45, DB
        mov     byte [edx], al                          ; 18B8 _ 88. 02
?_093:  add     dword [ebp-8H], 1                       ; 18BA _ 83. 45, F8, 01
?_094:  mov     eax, dword [ebp-18H]                    ; 18BE _ 8B. 45, E8
        mov     eax, dword [eax+4H]                     ; 18C1 _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 18C4 _ 39. 45, F8
        jl      ?_092                                   ; 18C7 _ 7C, 9D
        add     dword [ebp-0CH], 1                      ; 18C9 _ 83. 45, F4, 01
?_095:  mov     eax, dword [ebp-18H]                    ; 18CD _ 8B. 45, E8
        mov     eax, dword [eax+8H]                     ; 18D0 _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 18D3 _ 39. 45, F4
        jl      ?_091                                   ; 18D6 _ 0F 8C, FFFFFF73
        add     dword [ebp-4H], 1                       ; 18DC _ 83. 45, FC, 01
?_096:  mov     eax, dword [ebp+8H]                     ; 18E0 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 18E3 _ 8B. 40, 0C
        cmp     dword [ebp-4H], eax                     ; 18E6 _ 39. 45, FC
        jle     ?_090                                   ; 18E9 _ 0F 8E, FFFFFF40
        mov     eax, dword [ebp-10H]                    ; 18EF _ 8B. 45, F0
        leave                                           ; 18F2 _ C9
        ret                                             ; 18F3 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 18F4 _ 55
        mov     ebp, esp                                ; 18F5 _ 89. E5
        sub     esp, 4                                  ; 18F7 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 18FA _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 18FD _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1900 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1903 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1906 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1909 _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 190C _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 190F _ 8B. 40, 18
        test    eax, eax                                ; 1912 _ 85. C0
        js      ?_097                                   ; 1914 _ 78, 0B
        mov     eax, dword [ebp+8H]                     ; 1916 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1919 _ 89. 04 24
        call    _sheet_refresh                          ; 191C _ E8, FFFFFEED
?_097:  nop                                             ; 1921 _ 90
        leave                                           ; 1922 _ C9
        ret                                             ; 1923 _ C3
; _sheet_slide End of function

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 1924 _ 55
        mov     ebp, esp                                ; 1925 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1927 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 192A _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1930 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1933 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 193A _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 193D _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1944 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1947 _ C7. 40, 0C, 00000000
        nop                                             ; 194E _ 90
        pop     ebp                                     ; 194F _ 5D
        ret                                             ; 1950 _ C3

_memman_total:; Function begin
        push    ebp                                     ; 1951 _ 55
        mov     ebp, esp                                ; 1952 _ 89. E5
        sub     esp, 16                                 ; 1954 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1957 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 195E _ C7. 45, FC, 00000000
        jmp     ?_099                                   ; 1965 _ EB, 14

?_098:  mov     eax, dword [ebp+8H]                     ; 1967 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 196A _ 8B. 55, FC
        add     edx, 2                                  ; 196D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1970 _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1974 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1977 _ 83. 45, FC, 01
?_099:  mov     eax, dword [ebp+8H]                     ; 197B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 197E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1980 _ 39. 45, FC
        jc      ?_098                                   ; 1983 _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 1985 _ 8B. 45, F8
        leave                                           ; 1988 _ C9
        ret                                             ; 1989 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 198A _ 55
        mov     ebp, esp                                ; 198B _ 89. E5
        sub     esp, 16                                 ; 198D _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1990 _ C7. 45, FC, 00000000
        jmp     ?_103                                   ; 1997 _ E9, 00000083

?_100:  mov     eax, dword [ebp+8H]                     ; 199C _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 199F _ 8B. 55, FC
        add     edx, 2                                  ; 19A2 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 19A5 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 19A9 _ 39. 45, 0C
        ja      ?_102                                   ; 19AC _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 19AE _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 19B1 _ 8B. 55, FC
        add     edx, 2                                  ; 19B4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 19B7 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 19BA _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 19BD _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 19C0 _ 8B. 55, FC
        add     edx, 2                                  ; 19C3 _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 19C6 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 19C9 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 19CC _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 19CF _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 19D2 _ 8B. 55, FC
        add     edx, 2                                  ; 19D5 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 19D8 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 19DB _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 19DE _ 8B. 55, FC
        add     edx, 2                                  ; 19E1 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 19E4 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 19E8 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 19EB _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 19EE _ 8B. 4D, FC
        add     ecx, 2                                  ; 19F1 _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 19F4 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 19F8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 19FB _ 8B. 55, FC
        add     edx, 2                                  ; 19FE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1A01 _ 8B. 44 D0, 04
        test    eax, eax                                ; 1A05 _ 85. C0
        jnz     ?_101                                   ; 1A07 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 1A09 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A0C _ 8B. 00
        lea     edx, [eax-1H]                           ; 1A0E _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A11 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1A14 _ 89. 10
?_101:  mov     eax, dword [ebp-8H]                     ; 1A16 _ 8B. 45, F8
        jmp     ?_104                                   ; 1A19 _ EB, 17

?_102:  add     dword [ebp-4H], 1                       ; 1A1B _ 83. 45, FC, 01
?_103:  mov     eax, dword [ebp+8H]                     ; 1A1F _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A22 _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1A24 _ 39. 45, FC
        jc      ?_100                                   ; 1A27 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 1A2D _ B8, 00000000
?_104:  leave                                           ; 1A32 _ C9
        ret                                             ; 1A33 _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 1A34 _ 55
        mov     ebp, esp                                ; 1A35 _ 89. E5
        push    ebx                                     ; 1A37 _ 53
        sub     esp, 16                                 ; 1A38 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1A3B _ C7. 45, F8, 00000000
        jmp     ?_106                                   ; 1A42 _ EB, 15

?_105:  mov     eax, dword [ebp+8H]                     ; 1A44 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1A47 _ 8B. 55, F8
        add     edx, 2                                  ; 1A4A _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1A4D _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 1A50 _ 39. 45, 0C
        jc      ?_107                                   ; 1A53 _ 72, 10
        add     dword [ebp-8H], 1                       ; 1A55 _ 83. 45, F8, 01
?_106:  mov     eax, dword [ebp+8H]                     ; 1A59 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1A5C _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1A5E _ 39. 45, F8
        jl      ?_105                                   ; 1A61 _ 7C, E1
        jmp     ?_108                                   ; 1A63 _ EB, 01

?_107:  nop                                             ; 1A65 _ 90
?_108:  cmp     dword [ebp-8H], 0                       ; 1A66 _ 83. 7D, F8, 00
        jle     ?_110                                   ; 1A6A _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 1A70 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1A73 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A76 _ 8B. 45, 08
        add     edx, 2                                  ; 1A79 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 1A7C _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 1A7F _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1A82 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1A85 _ 8B. 45, 08
        add     edx, 2                                  ; 1A88 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1A8B _ 8B. 44 D0, 04
        add     eax, ecx                                ; 1A8F _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 1A91 _ 39. 45, 0C
        jne     ?_110                                   ; 1A94 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 1A9A _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1A9D _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1AA0 _ 8B. 45, 08
        add     edx, 2                                  ; 1AA3 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 1AA6 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 1AAA _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1AAD _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 1AB0 _ 8B. 45, 10
        add     ecx, eax                                ; 1AB3 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 1AB5 _ 8B. 45, 08
        add     edx, 2                                  ; 1AB8 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1ABB _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1ABF _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1AC2 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1AC4 _ 39. 45, F8
        jge     ?_109                                   ; 1AC7 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 1AC9 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1ACC _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1ACF _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1AD2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1AD5 _ 8B. 55, F8
        add     edx, 2                                  ; 1AD8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1ADB _ 8B. 04 D0
        cmp     ecx, eax                                ; 1ADE _ 39. C1
        jnz     ?_109                                   ; 1AE0 _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 1AE2 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 1AE5 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1AE8 _ 8B. 45, 08
        add     edx, 2                                  ; 1AEB _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 1AEE _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1AF2 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1AF5 _ 8B. 55, F8
        add     edx, 2                                  ; 1AF8 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1AFB _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 1AFF _ 8B. 55, F8
        sub     edx, 1                                  ; 1B02 _ 83. EA, 01
        add     ecx, eax                                ; 1B05 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 1B07 _ 8B. 45, 08
        add     edx, 2                                  ; 1B0A _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1B0D _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 1B11 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B14 _ 8B. 00
        lea     edx, [eax-1H]                           ; 1B16 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1B19 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1B1C _ 89. 10
?_109:  mov     eax, 0                                  ; 1B1E _ B8, 00000000
        jmp     ?_116                                   ; 1B23 _ E9, 0000011C

?_110:  mov     eax, dword [ebp+8H]                     ; 1B28 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B2B _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 1B2D _ 39. 45, F8
        jge     ?_111                                   ; 1B30 _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 1B32 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 1B35 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1B38 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1B3B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1B3E _ 8B. 55, F8
        add     edx, 2                                  ; 1B41 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1B44 _ 8B. 04 D0
        cmp     ecx, eax                                ; 1B47 _ 39. C1
        jnz     ?_111                                   ; 1B49 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 1B4B _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1B4E _ 8B. 55, F8
        add     edx, 2                                  ; 1B51 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 1B54 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 1B57 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1B5A _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1B5D _ 8B. 55, F8
        add     edx, 2                                  ; 1B60 _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 1B63 _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 1B67 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 1B6A _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 1B6D _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1B70 _ 8B. 55, F8
        add     edx, 2                                  ; 1B73 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 1B76 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1B7A _ B8, 00000000
        jmp     ?_116                                   ; 1B7F _ E9, 000000C0

?_111:  mov     eax, dword [ebp+8H]                     ; 1B84 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B87 _ 8B. 00
        cmp     eax, 4095                               ; 1B89 _ 3D, 00000FFF
        jg      ?_115                                   ; 1B8E _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 1B94 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1B97 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 1B99 _ 89. 45, F4
        jmp     ?_113                                   ; 1B9C _ EB, 28

?_112:  mov     eax, dword [ebp-0CH]                    ; 1B9E _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1BA1 _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 1BA4 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 1BA7 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 1BAA _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 1BAD _ 8B. 45, 08
        add     edx, 2                                  ; 1BB0 _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 1BB3 _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 1BB6 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 1BB8 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 1BBB _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 1BBE _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 1BC2 _ 83. 6D, F4, 01
?_113:  mov     eax, dword [ebp-0CH]                    ; 1BC6 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 1BC9 _ 3B. 45, F8
        jg      ?_112                                   ; 1BCC _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 1BCE _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1BD1 _ 8B. 00
        lea     edx, [eax+1H]                           ; 1BD3 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1BD6 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 1BD9 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1BDB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1BDE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1BE1 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1BE4 _ 8B. 00
        cmp     edx, eax                                ; 1BE6 _ 39. C2
        jge     ?_114                                   ; 1BE8 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 1BEA _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1BED _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1BEF _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 1BF2 _ 89. 50, 04
?_114:  mov     eax, dword [ebp+8H]                     ; 1BF5 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1BF8 _ 8B. 55, F8
        add     edx, 2                                  ; 1BFB _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 1BFE _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 1C01 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 1C04 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 1C07 _ 8B. 55, F8
        add     edx, 2                                  ; 1C0A _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 1C0D _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 1C10 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 1C14 _ B8, 00000000
        jmp     ?_116                                   ; 1C19 _ EB, 29

?_115:  mov     eax, dword [ebp+8H]                     ; 1C1B _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C1E _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1C21 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C24 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1C27 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1C2A _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1C2D _ 8B. 40, 08
        mov     edx, eax                                ; 1C30 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 1C32 _ 8B. 45, 10
        add     eax, edx                                ; 1C35 _ 01. D0
        mov     edx, eax                                ; 1C37 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 1C39 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 1C3C _ 89. 50, 08
        mov     eax, 4294967295                         ; 1C3F _ B8, FFFFFFFF
?_116:  add     esp, 16                                 ; 1C44 _ 83. C4, 10
        pop     ebx                                     ; 1C47 _ 5B
        pop     ebp                                     ; 1C48 _ 5D
        ret                                             ; 1C49 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 1C4A _ 55
        mov     ebp, esp                                ; 1C4B _ 89. E5
        sub     esp, 24                                 ; 1C4D _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 1C50 _ 8B. 45, 0C
        add     eax, 4095                               ; 1C53 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1C58 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 1C5D _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 1C60 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C63 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C67 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1C6A _ 89. 04 24
        call    _memman_alloc                           ; 1C6D _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 1C72 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1C75 _ 8B. 45, FC
        leave                                           ; 1C78 _ C9
        ret                                             ; 1C79 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 1C7A _ 55
        mov     ebp, esp                                ; 1C7B _ 89. E5
        sub     esp, 28                                 ; 1C7D _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 1C80 _ 8B. 45, 10
        add     eax, 4095                               ; 1C83 _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 1C88 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 1C8D _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 1C90 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 1C93 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1C97 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1C9A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1C9E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CA1 _ 89. 04 24
        call    _memman_free                            ; 1CA4 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 1CA9 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 1CAC _ 8B. 45, FC
        leave                                           ; 1CAF _ C9
        ret                                             ; 1CB0 _ C3
; _memman_free_4k End of function

        nop                                             ; 1CB1 _ 90
        nop                                             ; 1CB2 _ 90
        nop                                             ; 1CB3 _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_117:  db 00H                                          ; 0006 _ .

?_118:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2171:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2218:                                           ; byte
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



?_119:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H                                ; 0008 _ OS.

?_120:                                                  ; byte
        db 6DH, 6FH, 75H, 73H, 65H, 20H, 6DH, 6FH       ; 000B _ mouse mo
        db 76H, 65H, 00H                                ; 0013 _ ve.

?_121:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 0016 _ page is:
        db 20H, 00H                                     ; 001E _  .

?_122:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0020 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 0028 _ L: .

?_123:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 002C _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0034 _ H: .

?_124:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 0038 _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0040 _ w: .

?_125:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0044 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 004C _ gh: .

?_126:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0051 _ type: .



        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..


.rdata$zzz:                                             ; byte
        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0080 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0088 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0090 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0098 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 00A0 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 00A8 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 00B0 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 00B8 _  8.1.0..



_bootInfo:                                              ; dword
        resd    1                                       ; 0000

?_127:  resw    1                                       ; 0004

?_128:  resw    1                                       ; 0006

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

_mx:    resd    1                                       ; 00F0

_my:    resd    1                                       ; 00F4

_xsize: resd    1                                       ; 00F8

_ysize: resd    1                                       ; 00FC

_buf_back:                                              ; dword
        resd    8                                       ; 0100

_buf_mouse:                                             ; byte
        resb    256                                     ; 0120

_str.2266:                                              ; byte
        resb    1                                       ; 0220

?_129:  resb    9                                       ; 0221

?_130:  resb    22                                      ; 022A


