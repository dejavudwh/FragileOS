; Disassembly of file: ckernel.o
; Sun Aug  4 14:17:41 2019
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
        call    _initBootInfo                           ; 000E _ E8, 0000086D
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000000(d)
        mov     dword [ebp-10H], eax                    ; 0018 _ 89. 45, F0
        movzx   eax, word [?_142]                       ; 001B _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0022 _ 98
        mov     dword [_xsize], eax                     ; 0023 _ A3, 000000F8(d)
        movzx   eax, word [?_143]                       ; 0028 _ 0F B7. 05, 00000006(d)
        cwde                                            ; 002F _ 98
        mov     dword [_ysize], eax                     ; 0030 _ A3, 000000FC(d)
        mov     dword [ebp-14H], 0                      ; 0035 _ C7. 45, EC, 00000000
        mov     dword [ebp-18H], 0                      ; 003C _ C7. 45, E8, 00000000
        mov     dword [esp+8H], _keybuf                 ; 0043 _ C7. 44 24, 08, 00000040(d)
        mov     dword [esp+4H], 32                      ; 004B _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0053 _ C7. 04 24, 00000008(d)
        call    _fifo8_init                             ; 005A _ E8, 00000F23
        mov     dword [esp+8H], _mousebuf               ; 005F _ C7. 44 24, 08, 00000060(d)
        mov     dword [esp+4H], 128                     ; 0067 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 006F _ C7. 04 24, 00000020(d)
        call    _fifo8_init                             ; 0076 _ E8, 00000F07
        call    _init_palette                           ; 007B _ E8, 000008C3
        call    _init_keyboard                          ; 0080 _ E8, 00000E2C
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
        call    _init_screen8                           ; 01A2 _ E8, 000001E2
        mov     dword [esp+4H], 99                      ; 01A7 _ C7. 44 24, 04, 00000063
        mov     dword [esp], _buf_mouse                 ; 01AF _ C7. 04 24, 00000120(d)
        call    _init_mouse_cursor                      ; 01B6 _ E8, 00000A24
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
        mov     dword [esp+4H], ?_131                   ; 022E _ C7. 44 24, 04, 00000000(d)
        mov     eax, dword [ebp-24H]                    ; 0236 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0239 _ 89. 04 24
        call    _message_box                            ; 023C _ E8, 000012CE
        mov     dword [esp+8H], 0                       ; 0241 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-14H]                    ; 0249 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 024C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0250 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0253 _ 89. 04 24
        call    _sheet_updown                           ; 0256 _ E8, 00000000(rel)
        mov     dword [esp+8H], 1                       ; 025B _ C7. 44 24, 08, 00000001
        mov     eax, dword [ebp-18H]                    ; 0263 _ 8B. 45, E8
        mov     dword [esp+4H], eax                     ; 0266 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 026A _ 8B. 45, DC
        mov     dword [esp], eax                        ; 026D _ 89. 04 24
        call    _sheet_updown                           ; 0270 _ E8, 00000000(rel)
        call    _io_sti                                 ; 0275 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 027A _ C7. 04 24, 000000E0(d)
        call    _enable_mouse                           ; 0281 _ E8, 00000C66
        mov     dword [ebp-28H], 0                      ; 0286 _ C7. 45, D8, 00000000
        mov     dword [ebp-0CH], 0                      ; 028D _ C7. 45, F4, 00000000
?_001:  call    _io_cli                                 ; 0294 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 0299 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 02A0 _ E8, 00000E0B
        mov     ebx, eax                                ; 02A5 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 02A7 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 02AE _ E8, 00000DFD
        add     eax, ebx                                ; 02B3 _ 01. D8
        test    eax, eax                                ; 02B5 _ 85. C0
        jnz     ?_002                                   ; 02B7 _ 75, 07
        call    _io_stihlt                              ; 02B9 _ E8, 00000000(rel)
        jmp     ?_001                                   ; 02BE _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 02C0 _ C7. 04 24, 00000008(d)
        call    _fifo8_status                           ; 02C7 _ E8, 00000DE4
        test    eax, eax                                ; 02CC _ 85. C0
        je      ?_003                                   ; 02CE _ 0F 84, 00000083
        call    _io_sti                                 ; 02D4 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 02D9 _ C7. 04 24, 00000008(d)
        call    _fifo8_get                              ; 02E0 _ E8, 00000D5B
        mov     dword [ebp-28H], eax                    ; 02E5 _ 89. 45, D8
        cmp     dword [ebp-28H], 28                     ; 02E8 _ 83. 7D, D8, 1C
        jnz     ?_001                                   ; 02EC _ 75, A6
        mov     ebx, dword [_xsize]                     ; 02EE _ 8B. 1D, 000000F8(d)
        mov     ecx, dword [_buf_back]                  ; 02F4 _ 8B. 0D, 00000100(d)
        mov     edx, dword [ebp-0CH]                    ; 02FA _ 8B. 55, F4
        mov     eax, edx                                ; 02FD _ 89. D0
        shl     eax, 2                                  ; 02FF _ C1. E0, 02
        add     eax, edx                                ; 0302 _ 01. D0
        shl     eax, 2                                  ; 0304 _ C1. E0, 02
        mov     edx, eax                                ; 0307 _ 89. C2
        mov     eax, dword [ebp-20H]                    ; 0309 _ 8B. 45, E0
        add     eax, edx                                ; 030C _ 01. D0
        mov     dword [esp+18H], 7                      ; 030E _ C7. 44 24, 18, 00000007
        mov     dword [esp+14H], ebx                    ; 0316 _ 89. 5C 24, 14
        mov     edx, dword [ebp-0CH]                    ; 031A _ 8B. 55, F4
        mov     dword [esp+10H], edx                    ; 031D _ 89. 54 24, 10
        mov     dword [esp+0CH], ecx                    ; 0321 _ 89. 4C 24, 0C
        mov     dword [esp+8H], eax                     ; 0325 _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 0329 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 032C _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0330 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 0333 _ 89. 04 24
        call    _showMemoryInfo                         ; 0336 _ E8, 00000EC9
        add     dword [ebp-0CH], 1                      ; 033B _ 83. 45, F4, 01
        mov     eax, dword [ebp-0CH]                    ; 033F _ 8B. 45, F4
        cmp     eax, dword [ebp-1CH]                    ; 0342 _ 3B. 45, E4
        jle     ?_001                                   ; 0345 _ 0F 8E, FFFFFF49
        mov     dword [ebp-0CH], 0                      ; 034B _ C7. 45, F4, 00000000
        jmp     ?_001                                   ; 0352 _ E9, FFFFFF3D

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 0357 _ C7. 04 24, 00000020(d)
        call    _fifo8_status                           ; 035E _ E8, 00000D4D
        test    eax, eax                                ; 0363 _ 85. C0
        je      ?_001                                   ; 0365 _ 0F 84, FFFFFF29
        mov     eax, dword [ebp-18H]                    ; 036B _ 8B. 45, E8
        mov     dword [esp+8H], eax                     ; 036E _ 89. 44 24, 08
        mov     eax, dword [ebp-14H]                    ; 0372 _ 8B. 45, EC
        mov     dword [esp+4H], eax                     ; 0375 _ 89. 44 24, 04
        mov     eax, dword [ebp-24H]                    ; 0379 _ 8B. 45, DC
        mov     dword [esp], eax                        ; 037C _ 89. 04 24
        call    _show_mouse_info                        ; 037F _ E8, 0000047C
        jmp     ?_001                                   ; 0384 _ E9, FFFFFF0B

_init_screen8:; Function begin
        push    ebp                                     ; 0389 _ 55
        mov     ebp, esp                                ; 038A _ 89. E5
        push    ebx                                     ; 038C _ 53
        sub     esp, 36                                 ; 038D _ 83. EC, 24
        mov     eax, dword [ebp+10H]                    ; 0390 _ 8B. 45, 10
        lea     edx, [eax-11H]                          ; 0393 _ 8D. 50, EF
        mov     eax, dword [ebp+0CH]                    ; 0396 _ 8B. 45, 0C
        sub     eax, 1                                  ; 0399 _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 039C _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 03A0 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 03A4 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 03AC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 03B4 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp+0CH]                    ; 03BC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 03BF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 03C3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 03C6 _ 89. 04 24
        call    _boxfill8                               ; 03C9 _ E8, 00000640
        mov     eax, dword [ebp+10H]                    ; 03CE _ 8B. 45, 10
        lea     ecx, [eax-10H]                          ; 03D1 _ 8D. 48, F0
        mov     eax, dword [ebp+0CH]                    ; 03D4 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 03D7 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 03DA _ 8B. 45, 10
        sub     eax, 16                                 ; 03DD _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 03E0 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 03E4 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 03E8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 03EC _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 03F4 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 03FC _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 03FF _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0403 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0406 _ 89. 04 24
        call    _boxfill8                               ; 0409 _ E8, 00000600
        mov     eax, dword [ebp+10H]                    ; 040E _ 8B. 45, 10
        lea     ecx, [eax-0FH]                          ; 0411 _ 8D. 48, F1
        mov     eax, dword [ebp+0CH]                    ; 0414 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0417 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 041A _ 8B. 45, 10
        sub     eax, 15                                 ; 041D _ 83. E8, 0F
        mov     dword [esp+18H], ecx                    ; 0420 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0424 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0428 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 042C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0434 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 043C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 043F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0443 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0446 _ 89. 04 24
        call    _boxfill8                               ; 0449 _ E8, 000005C0
        mov     eax, dword [ebp+10H]                    ; 044E _ 8B. 45, 10
        lea     ecx, [eax-1H]                           ; 0451 _ 8D. 48, FF
        mov     eax, dword [ebp+0CH]                    ; 0454 _ 8B. 45, 0C
        lea     edx, [eax-1H]                           ; 0457 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 045A _ 8B. 45, 10
        sub     eax, 14                                 ; 045D _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 0460 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0464 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0468 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 046C _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0474 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp+0CH]                    ; 047C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 047F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0483 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0486 _ 89. 04 24
        call    _boxfill8                               ; 0489 _ E8, 00000580
        mov     eax, dword [ebp+10H]                    ; 048E _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0491 _ 8D. 50, F4
        mov     eax, dword [ebp+10H]                    ; 0494 _ 8B. 45, 10
        sub     eax, 12                                 ; 0497 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 049A _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 049E _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 04A6 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 04AA _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 04B2 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 04BA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 04BD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 04C1 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 04C4 _ 89. 04 24
        call    _boxfill8                               ; 04C7 _ E8, 00000542
        mov     eax, dword [ebp+10H]                    ; 04CC _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 04CF _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 04D2 _ 8B. 45, 10
        sub     eax, 12                                 ; 04D5 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 04D8 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 04DC _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 04E4 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 04E8 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 04F0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 04F8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 04FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 04FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0502 _ 89. 04 24
        call    _boxfill8                               ; 0505 _ E8, 00000504
        mov     eax, dword [ebp+10H]                    ; 050A _ 8B. 45, 10
        lea     edx, [eax-4H]                           ; 050D _ 8D. 50, FC
        mov     eax, dword [ebp+10H]                    ; 0510 _ 8B. 45, 10
        sub     eax, 4                                  ; 0513 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 0516 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 051A _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0522 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0526 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 052E _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0536 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0539 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 053D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0540 _ 89. 04 24
        call    _boxfill8                               ; 0543 _ E8, 000004C6
        mov     eax, dword [ebp+10H]                    ; 0548 _ 8B. 45, 10
        lea     edx, [eax-5H]                           ; 054B _ 8D. 50, FB
        mov     eax, dword [ebp+10H]                    ; 054E _ 8B. 45, 10
        sub     eax, 11                                 ; 0551 _ 83. E8, 0B
        mov     dword [esp+18H], edx                    ; 0554 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0558 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 0560 _ 89. 44 24, 10
        mov     dword [esp+0CH], 30                     ; 0564 _ C7. 44 24, 0C, 0000001E
        mov     dword [esp+8H], 15                      ; 056C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0574 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0577 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 057B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 057E _ 89. 04 24
        call    _boxfill8                               ; 0581 _ E8, 00000488
        mov     eax, dword [ebp+10H]                    ; 0586 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0589 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 058C _ 8B. 45, 10
        sub     eax, 3                                  ; 058F _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0592 _ 89. 54 24, 18
        mov     dword [esp+14H], 30                     ; 0596 _ C7. 44 24, 14, 0000001E
        mov     dword [esp+10H], eax                    ; 059E _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 05A2 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 05AA _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 05B2 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05B5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05B9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05BC _ 89. 04 24
        call    _boxfill8                               ; 05BF _ E8, 0000044A
        mov     eax, dword [ebp+10H]                    ; 05C4 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 05C7 _ 8D. 50, FD
        mov     eax, dword [ebp+10H]                    ; 05CA _ 8B. 45, 10
        sub     eax, 12                                 ; 05CD _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 05D0 _ 89. 54 24, 18
        mov     dword [esp+14H], 31                     ; 05D4 _ C7. 44 24, 14, 0000001F
        mov     dword [esp+10H], eax                    ; 05DC _ 89. 44 24, 10
        mov     dword [esp+0CH], 31                     ; 05E0 _ C7. 44 24, 0C, 0000001F
        mov     dword [esp+8H], 0                       ; 05E8 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 05F0 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 05F3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 05F7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 05FA _ 89. 04 24
        call    _boxfill8                               ; 05FD _ E8, 0000040C
        mov     eax, dword [ebp+10H]                    ; 0602 _ 8B. 45, 10
        lea     ebx, [eax-0CH]                          ; 0605 _ 8D. 58, F4
        mov     eax, dword [ebp+0CH]                    ; 0608 _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 060B _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 060E _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 0611 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 0614 _ 8B. 45, 0C
        sub     eax, 36                                 ; 0617 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 061A _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 061E _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0622 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0626 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 062A _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0632 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0635 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0639 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 063C _ 89. 04 24
        call    _boxfill8                               ; 063F _ E8, 000003CA
        mov     eax, dword [ebp+10H]                    ; 0644 _ 8B. 45, 10
        lea     ebx, [eax-4H]                           ; 0647 _ 8D. 58, FC
        mov     eax, dword [ebp+0CH]                    ; 064A _ 8B. 45, 0C
        lea     ecx, [eax-24H]                          ; 064D _ 8D. 48, DC
        mov     eax, dword [ebp+10H]                    ; 0650 _ 8B. 45, 10
        lea     edx, [eax-0BH]                          ; 0653 _ 8D. 50, F5
        mov     eax, dword [ebp+0CH]                    ; 0656 _ 8B. 45, 0C
        sub     eax, 36                                 ; 0659 _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 065C _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0660 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0664 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0668 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 066C _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp+0CH]                    ; 0674 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0677 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 067B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 067E _ 89. 04 24
        call    _boxfill8                               ; 0681 _ E8, 00000388
        mov     eax, dword [ebp+10H]                    ; 0686 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 0689 _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 068C _ 8B. 45, 0C
        lea     ecx, [eax-4H]                           ; 068F _ 8D. 48, FC
        mov     eax, dword [ebp+10H]                    ; 0692 _ 8B. 45, 10
        lea     edx, [eax-3H]                           ; 0695 _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 0698 _ 8B. 45, 0C
        sub     eax, 36                                 ; 069B _ 83. E8, 24
        mov     dword [esp+18H], ebx                    ; 069E _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 06A2 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06A6 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 06AA _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 06AE _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 06B6 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06B9 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06BD _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06C0 _ 89. 04 24
        call    _boxfill8                               ; 06C3 _ E8, 00000346
        mov     eax, dword [ebp+10H]                    ; 06C8 _ 8B. 45, 10
        lea     ebx, [eax-3H]                           ; 06CB _ 8D. 58, FD
        mov     eax, dword [ebp+0CH]                    ; 06CE _ 8B. 45, 0C
        lea     ecx, [eax-3H]                           ; 06D1 _ 8D. 48, FD
        mov     eax, dword [ebp+10H]                    ; 06D4 _ 8B. 45, 10
        lea     edx, [eax-0CH]                          ; 06D7 _ 8D. 50, F4
        mov     eax, dword [ebp+0CH]                    ; 06DA _ 8B. 45, 0C
        sub     eax, 3                                  ; 06DD _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 06E0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 06E4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 06E8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 06EC _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 06F0 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp+0CH]                    ; 06F8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06FB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06FF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0702 _ 89. 04 24
        call    _boxfill8                               ; 0705 _ E8, 00000304
        mov     eax, dword [ebp+0CH]                    ; 070A _ 8B. 45, 0C
        mov     dword [esp+14H], ?_132                  ; 070D _ C7. 44 24, 14, 00000008(d)
        mov     dword [esp+10H], 7                      ; 0715 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 071D _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 0725 _ C7. 44 24, 08, 0000007D
        mov     dword [esp+4H], eax                     ; 072D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0731 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0734 _ 89. 04 24
        call    _showString                             ; 0737 _ E8, 00000165
        nop                                             ; 073C _ 90
        add     esp, 36                                 ; 073D _ 83. C4, 24
        pop     ebx                                     ; 0740 _ 5B
        pop     ebp                                     ; 0741 _ 5D
        ret                                             ; 0742 _ C3
; _init_screen8 End of function

_computeMousePosition:; Function begin
        push    ebp                                     ; 0743 _ 55
        mov     ebp, esp                                ; 0744 _ 89. E5
        sub     esp, 40                                 ; 0746 _ 83. EC, 28
        mov     eax, dword [ebp+10H]                    ; 0749 _ 8B. 45, 10
        mov     edx, dword [eax+4H]                     ; 074C _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 074F _ A1, 000000F0(d)
        add     eax, edx                                ; 0754 _ 01. D0
        mov     dword [_mx], eax                        ; 0756 _ A3, 000000F0(d)
        mov     eax, dword [ebp+10H]                    ; 075B _ 8B. 45, 10
        mov     edx, dword [eax+8H]                     ; 075E _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0761 _ A1, 000000F4(d)
        add     eax, edx                                ; 0766 _ 01. D0
        mov     dword [_my], eax                        ; 0768 _ A3, 000000F4(d)
        mov     eax, dword [_mx]                        ; 076D _ A1, 000000F0(d)
        test    eax, eax                                ; 0772 _ 85. C0
        jns     ?_004                                   ; 0774 _ 79, 0A
        mov     dword [_mx], 0                          ; 0776 _ C7. 05, 000000F0(d), 00000000
?_004:  mov     eax, dword [_my]                        ; 0780 _ A1, 000000F4(d)
        test    eax, eax                                ; 0785 _ 85. C0
        jns     ?_005                                   ; 0787 _ 79, 0A
        mov     dword [_my], 0                          ; 0789 _ C7. 05, 000000F4(d), 00000000
?_005:  mov     edx, dword [_xsize]                     ; 0793 _ 8B. 15, 000000F8(d)
        mov     eax, dword [_mx]                        ; 0799 _ A1, 000000F0(d)
        cmp     edx, eax                                ; 079E _ 39. C2
        jg      ?_006                                   ; 07A0 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 07A2 _ A1, 000000F8(d)
        sub     eax, 1                                  ; 07A7 _ 83. E8, 01
        mov     dword [_mx], eax                        ; 07AA _ A3, 000000F0(d)
?_006:  mov     edx, dword [_ysize]                     ; 07AF _ 8B. 15, 000000FC(d)
        mov     eax, dword [_my]                        ; 07B5 _ A1, 000000F4(d)
        cmp     edx, eax                                ; 07BA _ 39. C2
        jg      ?_007                                   ; 07BC _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 07BE _ A1, 000000FC(d)
        sub     eax, 1                                  ; 07C3 _ 83. E8, 01
        mov     dword [_my], eax                        ; 07C6 _ A3, 000000F4(d)
?_007:  mov     dword [esp+14H], ?_133                  ; 07CB _ C7. 44 24, 14, 00000013(d)
        mov     dword [esp+10H], 7                      ; 07D3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 07DB _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 07E3 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp+0CH]                    ; 07EB _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07EE _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 07F2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 07F5 _ 89. 04 24
        call    _showString                             ; 07F8 _ E8, 000000A4
        nop                                             ; 07FD _ 90
        leave                                           ; 07FE _ C9
        ret                                             ; 07FF _ C3
; _computeMousePosition End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 0800 _ 55
        mov     ebp, esp                                ; 0801 _ 89. E5
        sub     esp, 40                                 ; 0803 _ 83. EC, 28
        mov     eax, dword [_buf_back]                  ; 0806 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 080B _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 080E _ C6. 45, F3, 00
        call    _io_sti                                 ; 0812 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 0817 _ C7. 04 24, 00000020(d)
        call    _fifo8_get                              ; 081E _ E8, 0000081D
        mov     byte [ebp-0DH], al                      ; 0823 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 0826 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 082A _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 082E _ C7. 04 24, 000000E0(d)
        call    _mouse_decode                           ; 0835 _ E8, 0000088B
        test    eax, eax                                ; 083A _ 85. C0
        jz      ?_008                                   ; 083C _ 74, 3F
        mov     dword [esp+8H], _mdec                   ; 083E _ C7. 44 24, 08, 000000E0(d)
        mov     eax, dword [ebp+0CH]                    ; 0846 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0849 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 084D _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0850 _ 89. 04 24
        call    _computeMousePosition                   ; 0853 _ E8, FFFFFEEB
        mov     edx, dword [_my]                        ; 0858 _ 8B. 15, 000000F4(d)
        mov     eax, dword [_mx]                        ; 085E _ A1, 000000F0(d)
        mov     dword [esp+0CH], edx                    ; 0863 _ 89. 54 24, 0C
        mov     dword [esp+8H], eax                     ; 0867 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 086B _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 086E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0872 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0875 _ 89. 04 24
        call    _sheet_slide                            ; 0878 _ E8, 00000000(rel)
?_008:  nop                                             ; 087D _ 90
        leave                                           ; 087E _ C9
        ret                                             ; 087F _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0880 _ 55
        mov     ebp, esp                                ; 0881 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0883 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0886 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 088C _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 088F _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0895 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0898 _ 66: C7. 40, 06, 00C8
        nop                                             ; 089E _ 90
        pop     ebp                                     ; 089F _ 5D
        ret                                             ; 08A0 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 08A1 _ 55
        mov     ebp, esp                                ; 08A2 _ 89. E5
        push    ebx                                     ; 08A4 _ 53
        sub     esp, 68                                 ; 08A5 _ 83. EC, 44
        mov     eax, dword [ebp+18H]                    ; 08A8 _ 8B. 45, 18
        mov     byte [ebp-1CH], al                      ; 08AB _ 88. 45, E4
        mov     eax, dword [ebp+10H]                    ; 08AE _ 8B. 45, 10
        mov     dword [ebp-0CH], eax                    ; 08B1 _ 89. 45, F4
        jmp     ?_010                                   ; 08B4 _ EB, 4B

?_009:  mov     eax, dword [ebp+1CH]                    ; 08B6 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 08B9 _ 0F B6. 00
        movzx   eax, al                                 ; 08BC _ 0F B6. C0
        shl     eax, 4                                  ; 08BF _ C1. E0, 04
        lea     ebx, [_systemFont+eax]                  ; 08C2 _ 8D. 98, 00000000(d)
        movsx   eax, byte [ebp-1CH]                     ; 08C8 _ 0F BE. 45, E4
        mov     edx, dword [ebp+0CH]                    ; 08CC _ 8B. 55, 0C
        mov     ecx, dword [edx+4H]                     ; 08CF _ 8B. 4A, 04
        mov     edx, dword [ebp+0CH]                    ; 08D2 _ 8B. 55, 0C
        mov     edx, dword [edx]                        ; 08D5 _ 8B. 12
        mov     dword [esp+14H], ebx                    ; 08D7 _ 89. 5C 24, 14
        mov     dword [esp+10H], eax                    ; 08DB _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 08DF _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 08E2 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 08E6 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 08E9 _ 89. 44 24, 08
        mov     dword [esp+4H], ecx                     ; 08ED _ 89. 4C 24, 04
        mov     dword [esp], edx                        ; 08F1 _ 89. 14 24
        call    _showFont8                              ; 08F4 _ E8, 00000165
        add     dword [ebp+10H], 8                      ; 08F9 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 08FD _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 0901 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0904 _ 0F B6. 00
        test    al, al                                  ; 0907 _ 84. C0
        jnz     ?_009                                   ; 0909 _ 75, AB
        mov     eax, dword [ebp+14H]                    ; 090B _ 8B. 45, 14
        add     eax, 16                                 ; 090E _ 83. C0, 10
        mov     dword [esp+14H], eax                    ; 0911 _ 89. 44 24, 14
        mov     eax, dword [ebp+10H]                    ; 0915 _ 8B. 45, 10
        mov     dword [esp+10H], eax                    ; 0918 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 091C _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 091F _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 0923 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 0926 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 092A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 092D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0931 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0934 _ 89. 04 24
        call    _sheet_refresh                          ; 0937 _ E8, 00000000(rel)
        nop                                             ; 093C _ 90
        add     esp, 68                                 ; 093D _ 83. C4, 44
        pop     ebx                                     ; 0940 _ 5B
        pop     ebp                                     ; 0941 _ 5D
        ret                                             ; 0942 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0943 _ 55
        mov     ebp, esp                                ; 0944 _ 89. E5
        sub     esp, 24                                 ; 0946 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2189         ; 0949 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 0951 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0959 _ C7. 04 24, 00000000
        call    _set_palette                            ; 0960 _ E8, 00000003
        nop                                             ; 0965 _ 90
        leave                                           ; 0966 _ C9
        ret                                             ; 0967 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 0968 _ 55
        mov     ebp, esp                                ; 0969 _ 89. E5
        sub     esp, 40                                 ; 096B _ 83. EC, 28
        call    _io_load_eflags                         ; 096E _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 0973 _ 89. 45, F0
        call    _io_cli                                 ; 0976 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 097B _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 097E _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0982 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 0989 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 098E _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0991 _ 89. 45, F4
        jmp     ?_012                                   ; 0994 _ EB, 62

?_011:  mov     eax, dword [ebp+10H]                    ; 0996 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0999 _ 0F B6. 00
        shr     al, 2                                   ; 099C _ C0. E8, 02
        movzx   eax, al                                 ; 099F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 09A2 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 09A6 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 09AD _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 09B2 _ 8B. 45, 10
        add     eax, 1                                  ; 09B5 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 09B8 _ 0F B6. 00
        shr     al, 2                                   ; 09BB _ C0. E8, 02
        movzx   eax, al                                 ; 09BE _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 09C1 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 09C5 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 09CC _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 09D1 _ 8B. 45, 10
        add     eax, 2                                  ; 09D4 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 09D7 _ 0F B6. 00
        shr     al, 2                                   ; 09DA _ C0. E8, 02
        movzx   eax, al                                 ; 09DD _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 09E0 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 09E4 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 09EB _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 09F0 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 09F4 _ 83. 45, F4, 01
?_012:  mov     eax, dword [ebp-0CH]                    ; 09F8 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 09FB _ 3B. 45, 0C
        jle     ?_011                                   ; 09FE _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0A00 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0A03 _ 89. 04 24
        call    _io_store_eflags                        ; 0A06 _ E8, 00000000(rel)
        nop                                             ; 0A0B _ 90
        leave                                           ; 0A0C _ C9
        ret                                             ; 0A0D _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0A0E _ 55
        mov     ebp, esp                                ; 0A0F _ 89. E5
        sub     esp, 20                                 ; 0A11 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0A14 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0A17 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0A1A _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0A1D _ 89. 45, F8
        jmp     ?_016                                   ; 0A20 _ EB, 31

?_013:  mov     eax, dword [ebp+14H]                    ; 0A22 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0A25 _ 89. 45, FC
        jmp     ?_015                                   ; 0A28 _ EB, 1D

?_014:  mov     eax, dword [ebp-8H]                     ; 0A2A _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0A2D _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0A31 _ 8B. 55, FC
        add     eax, edx                                ; 0A34 _ 01. D0
        mov     edx, eax                                ; 0A36 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A38 _ 8B. 45, 08
        add     edx, eax                                ; 0A3B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A3D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A41 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0A43 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 0A47 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0A4A _ 3B. 45, 1C
        jle     ?_014                                   ; 0A4D _ 7E, DB
        add     dword [ebp-8H], 1                       ; 0A4F _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 0A53 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0A56 _ 3B. 45, 20
        jle     ?_013                                   ; 0A59 _ 7E, C7
        nop                                             ; 0A5B _ 90
        leave                                           ; 0A5C _ C9
        ret                                             ; 0A5D _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 0A5E _ 55
        mov     ebp, esp                                ; 0A5F _ 89. E5
        sub     esp, 20                                 ; 0A61 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0A64 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0A67 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A6A _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 0A71 _ E9, 0000015C

?_017:  mov     edx, dword [ebp-4H]                     ; 0A76 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0A79 _ 8B. 45, 1C
        add     eax, edx                                ; 0A7C _ 01. D0
        movzx   eax, byte [eax]                         ; 0A7E _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0A81 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0A84 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 0A88 _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 0A8A _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A8D _ 8B. 45, FC
        add     eax, edx                                ; 0A90 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A92 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A96 _ 8B. 55, 10
        add     eax, edx                                ; 0A99 _ 01. D0
        mov     edx, eax                                ; 0A9B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A9D _ 8B. 45, 08
        add     edx, eax                                ; 0AA0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AA2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AA6 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 0AA8 _ 0F BE. 45, FB
        and     eax, 40H                                ; 0AAC _ 83. E0, 40
        test    eax, eax                                ; 0AAF _ 85. C0
        jz      ?_019                                   ; 0AB1 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0AB3 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AB6 _ 8B. 45, FC
        add     eax, edx                                ; 0AB9 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0ABB _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0ABF _ 8B. 55, 10
        add     eax, edx                                ; 0AC2 _ 01. D0
        lea     edx, [eax+1H]                           ; 0AC4 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0AC7 _ 8B. 45, 08
        add     edx, eax                                ; 0ACA _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0ACC _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AD0 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0AD2 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0AD6 _ 83. E0, 20
        test    eax, eax                                ; 0AD9 _ 85. C0
        jz      ?_020                                   ; 0ADB _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0ADD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0AE0 _ 8B. 45, FC
        add     eax, edx                                ; 0AE3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0AE5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0AE9 _ 8B. 55, 10
        add     eax, edx                                ; 0AEC _ 01. D0
        lea     edx, [eax+2H]                           ; 0AEE _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0AF1 _ 8B. 45, 08
        add     edx, eax                                ; 0AF4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AF6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AFA _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 0AFC _ 0F BE. 45, FB
        and     eax, 10H                                ; 0B00 _ 83. E0, 10
        test    eax, eax                                ; 0B03 _ 85. C0
        jz      ?_021                                   ; 0B05 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B07 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B0A _ 8B. 45, FC
        add     eax, edx                                ; 0B0D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B0F _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B13 _ 8B. 55, 10
        add     eax, edx                                ; 0B16 _ 01. D0
        lea     edx, [eax+3H]                           ; 0B18 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0B1B _ 8B. 45, 08
        add     edx, eax                                ; 0B1E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B20 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B24 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0B26 _ 0F BE. 45, FB
        and     eax, 08H                                ; 0B2A _ 83. E0, 08
        test    eax, eax                                ; 0B2D _ 85. C0
        jz      ?_022                                   ; 0B2F _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B31 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B34 _ 8B. 45, FC
        add     eax, edx                                ; 0B37 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B39 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B3D _ 8B. 55, 10
        add     eax, edx                                ; 0B40 _ 01. D0
        lea     edx, [eax+4H]                           ; 0B42 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0B45 _ 8B. 45, 08
        add     edx, eax                                ; 0B48 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B4A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B4E _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 0B50 _ 0F BE. 45, FB
        and     eax, 04H                                ; 0B54 _ 83. E0, 04
        test    eax, eax                                ; 0B57 _ 85. C0
        jz      ?_023                                   ; 0B59 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B5B _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B5E _ 8B. 45, FC
        add     eax, edx                                ; 0B61 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B63 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B67 _ 8B. 55, 10
        add     eax, edx                                ; 0B6A _ 01. D0
        lea     edx, [eax+5H]                           ; 0B6C _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0B6F _ 8B. 45, 08
        add     edx, eax                                ; 0B72 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B74 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0B78 _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 0B7A _ 0F BE. 45, FB
        and     eax, 02H                                ; 0B7E _ 83. E0, 02
        test    eax, eax                                ; 0B81 _ 85. C0
        jz      ?_024                                   ; 0B83 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0B85 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0B88 _ 8B. 45, FC
        add     eax, edx                                ; 0B8B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0B8D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0B91 _ 8B. 55, 10
        add     eax, edx                                ; 0B94 _ 01. D0
        lea     edx, [eax+6H]                           ; 0B96 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0B99 _ 8B. 45, 08
        add     edx, eax                                ; 0B9C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0B9E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BA2 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 0BA4 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0BA8 _ 83. E0, 01
        test    eax, eax                                ; 0BAB _ 85. C0
        jz      ?_025                                   ; 0BAD _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0BAF _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0BB2 _ 8B. 45, FC
        add     eax, edx                                ; 0BB5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0BB7 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0BBB _ 8B. 55, 10
        add     eax, edx                                ; 0BBE _ 01. D0
        lea     edx, [eax+7H]                           ; 0BC0 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0BC3 _ 8B. 45, 08
        add     edx, eax                                ; 0BC6 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0BC8 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0BCC _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0BCE _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0BD2 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0BD6 _ 0F 8E, FFFFFE9A
        nop                                             ; 0BDC _ 90
        leave                                           ; 0BDD _ C9
        ret                                             ; 0BDE _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0BDF _ 55
        mov     ebp, esp                                ; 0BE0 _ 89. E5
        sub     esp, 20                                 ; 0BE2 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0BE5 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0BE8 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0BEB _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0BF2 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0BF7 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0BFE _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0C03 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C06 _ C1. E0, 04
        mov     edx, eax                                ; 0C09 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C0B _ 8B. 45, FC
        add     eax, edx                                ; 0C0E _ 01. D0
        add     eax, _cursor.2236                       ; 0C10 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C15 _ 0F B6. 00
        cmp     al, 42                                  ; 0C18 _ 3C, 2A
        jnz     ?_029                                   ; 0C1A _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0C1C _ 8B. 45, F8
        shl     eax, 4                                  ; 0C1F _ C1. E0, 04
        mov     edx, eax                                ; 0C22 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C24 _ 8B. 45, FC
        add     eax, edx                                ; 0C27 _ 01. D0
        mov     edx, eax                                ; 0C29 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C2B _ 8B. 45, 08
        add     eax, edx                                ; 0C2E _ 01. D0
        mov     byte [eax], 0                           ; 0C30 _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0C33 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C36 _ C1. E0, 04
        mov     edx, eax                                ; 0C39 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C3B _ 8B. 45, FC
        add     eax, edx                                ; 0C3E _ 01. D0
        add     eax, _cursor.2236                       ; 0C40 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C45 _ 0F B6. 00
        cmp     al, 79                                  ; 0C48 _ 3C, 4F
        jnz     ?_030                                   ; 0C4A _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0C4C _ 8B. 45, F8
        shl     eax, 4                                  ; 0C4F _ C1. E0, 04
        mov     edx, eax                                ; 0C52 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C54 _ 8B. 45, FC
        add     eax, edx                                ; 0C57 _ 01. D0
        mov     edx, eax                                ; 0C59 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C5B _ 8B. 45, 08
        add     eax, edx                                ; 0C5E _ 01. D0
        mov     byte [eax], 7                           ; 0C60 _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0C63 _ 8B. 45, F8
        shl     eax, 4                                  ; 0C66 _ C1. E0, 04
        mov     edx, eax                                ; 0C69 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C6B _ 8B. 45, FC
        add     eax, edx                                ; 0C6E _ 01. D0
        add     eax, _cursor.2236                       ; 0C70 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0C75 _ 0F B6. 00
        cmp     al, 46                                  ; 0C78 _ 3C, 2E
        jnz     ?_031                                   ; 0C7A _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0C7C _ 8B. 45, F8
        shl     eax, 4                                  ; 0C7F _ C1. E0, 04
        mov     edx, eax                                ; 0C82 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0C84 _ 8B. 45, FC
        add     eax, edx                                ; 0C87 _ 01. D0
        mov     edx, eax                                ; 0C89 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0C8B _ 8B. 45, 08
        add     edx, eax                                ; 0C8E _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0C90 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0C94 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0C96 _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0C9A _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0C9E _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0CA4 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0CA8 _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0CAC _ 0F 8E, FFFFFF45
        nop                                             ; 0CB2 _ 90
        leave                                           ; 0CB3 _ C9
        ret                                             ; 0CB4 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0CB5 _ 55
        mov     ebp, esp                                ; 0CB6 _ 89. E5
        push    ebx                                     ; 0CB8 _ 53
        sub     esp, 16                                 ; 0CB9 _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0CBC _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0CC3 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0CC5 _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0CCC _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0CCE _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0CD1 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0CD5 _ 8B. 55, F8
        add     eax, edx                                ; 0CD8 _ 01. D0
        mov     edx, eax                                ; 0CDA _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0CDC _ 8B. 45, 20
        add     eax, edx                                ; 0CDF _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0CE1 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0CE4 _ 8B. 55, F4
        add     edx, ecx                                ; 0CE7 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0CE9 _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0CED _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0CF0 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0CF3 _ 01. D9
        add     edx, ecx                                ; 0CF5 _ 01. CA
        mov     ecx, edx                                ; 0CF7 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0CF9 _ 8B. 55, 08
        add     edx, ecx                                ; 0CFC _ 01. CA
        movzx   eax, byte [eax]                         ; 0CFE _ 0F B6. 00
        mov     byte [edx], al                          ; 0D01 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0D03 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0D07 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0D0A _ 3B. 45, 10
        jl      ?_035                                   ; 0D0D _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0D0F _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0D13 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0D16 _ 3B. 45, 14
        jl      ?_034                                   ; 0D19 _ 7C, AA
        nop                                             ; 0D1B _ 90
        add     esp, 16                                 ; 0D1C _ 83. C4, 10
        pop     ebx                                     ; 0D1F _ 5B
        pop     ebp                                     ; 0D20 _ 5D
        ret                                             ; 0D21 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0D22 _ 55
        mov     ebp, esp                                ; 0D23 _ 89. E5
        sub     esp, 40                                 ; 0D25 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0D28 _ A1, 00000000(d)
        mov     dword [ebp-0CH], eax                    ; 0D2D _ 89. 45, F4
        movzx   eax, word [?_142]                       ; 0D30 _ 0F B7. 05, 00000004(d)
        cwde                                            ; 0D37 _ 98
        mov     dword [ebp-10H], eax                    ; 0D38 _ 89. 45, F0
        movzx   eax, word [?_143]                       ; 0D3B _ 0F B7. 05, 00000006(d)
        cwde                                            ; 0D42 _ 98
        mov     dword [ebp-14H], eax                    ; 0D43 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0D46 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0D4E _ C7. 04 24, 00000020
        call    _io_out8                                ; 0D55 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0D5A _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0D5E _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0D65 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0D6A _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0D6D _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0D71 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0D75 _ C7. 04 24, 00000008(d)
        call    _fifo8_put                              ; 0D7C _ E8, 0000023F
        nop                                             ; 0D81 _ 90
        leave                                           ; 0D82 _ C9
        ret                                             ; 0D83 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0D84 _ 55
        mov     ebp, esp                                ; 0D85 _ 89. E5
        sub     esp, 4                                  ; 0D87 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0D8A _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0D8D _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0D90 _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0D94 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0D96 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0D9A _ 83. C0, 37
        jmp     ?_039                                   ; 0D9D _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0D9F _ 0F B6. 45, FC
        add     eax, 48                                 ; 0DA3 _ 83. C0, 30
?_039:  leave                                           ; 0DA6 _ C9
        ret                                             ; 0DA7 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0DA8 _ 55
        mov     ebp, esp                                ; 0DA9 _ 89. E5
        sub     esp, 24                                 ; 0DAB _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0DAE _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0DB1 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0DB4 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0DBB _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0DBF _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0DC2 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0DC5 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0DC9 _ 89. 04 24
        call    _charToHexVal                           ; 0DCC _ E8, FFFFFFB3
        mov     byte [?_130], al                        ; 0DD1 _ A2, 00000007(d)
        movzx   eax, byte [ebp-14H]                     ; 0DD6 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0DDA _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0DDD _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0DE0 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0DE4 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0DE7 _ 89. 04 24
        call    _charToHexVal                           ; 0DEA _ E8, FFFFFF95
        mov     byte [?_129], al                        ; 0DEF _ A2, 00000006(d)
        mov     eax, _keyval                            ; 0DF4 _ B8, 00000004(d)
        leave                                           ; 0DF9 _ C9
        ret                                             ; 0DFA _ C3
; _charToHexStr End of function

_intToHexStr:; Function begin
        push    ebp                                     ; 0DFB _ 55
        mov     ebp, esp                                ; 0DFC _ 89. E5
        sub     esp, 16                                 ; 0DFE _ 83. EC, 10
        mov     byte [_str.2284], 48                    ; 0E01 _ C6. 05, 00000220(d), 30
        mov     byte [?_144], 88                        ; 0E08 _ C6. 05, 00000221(d), 58
        mov     byte [?_145], 0                         ; 0E0F _ C6. 05, 0000022A(d), 00
        mov     dword [ebp-4H], 2                       ; 0E16 _ C7. 45, FC, 00000002
        jmp     ?_041                                   ; 0E1D _ EB, 0F

?_040:  mov     eax, dword [ebp-4H]                     ; 0E1F _ 8B. 45, FC
        add     eax, _str.2284                          ; 0E22 _ 05, 00000220(d)
        mov     byte [eax], 48                          ; 0E27 _ C6. 00, 30
        add     dword [ebp-4H], 1                       ; 0E2A _ 83. 45, FC, 01
?_041:  cmp     dword [ebp-4H], 9                       ; 0E2E _ 83. 7D, FC, 09
        jle     ?_040                                   ; 0E32 _ 7E, EB
        mov     dword [ebp-8H], 9                       ; 0E34 _ C7. 45, F8, 00000009
        jmp     ?_045                                   ; 0E3B _ EB, 42

?_042:  mov     eax, dword [ebp+8H]                     ; 0E3D _ 8B. 45, 08
        and     eax, 0FH                                ; 0E40 _ 83. E0, 0F
        mov     dword [ebp-0CH], eax                    ; 0E43 _ 89. 45, F4
        mov     eax, dword [ebp+8H]                     ; 0E46 _ 8B. 45, 08
        shr     eax, 4                                  ; 0E49 _ C1. E8, 04
        mov     dword [ebp+8H], eax                     ; 0E4C _ 89. 45, 08
        cmp     dword [ebp-0CH], 9                      ; 0E4F _ 83. 7D, F4, 09
        jle     ?_043                                   ; 0E53 _ 7E, 14
        mov     eax, dword [ebp-0CH]                    ; 0E55 _ 8B. 45, F4
        add     eax, 55                                 ; 0E58 _ 83. C0, 37
        mov     edx, eax                                ; 0E5B _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E5D _ 8B. 45, F8
        add     eax, _str.2284                          ; 0E60 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0E65 _ 88. 10
        jmp     ?_044                                   ; 0E67 _ EB, 12

?_043:  mov     eax, dword [ebp-0CH]                    ; 0E69 _ 8B. 45, F4
        add     eax, 48                                 ; 0E6C _ 83. C0, 30
        mov     edx, eax                                ; 0E6F _ 89. C2
        mov     eax, dword [ebp-8H]                     ; 0E71 _ 8B. 45, F8
        add     eax, _str.2284                          ; 0E74 _ 05, 00000220(d)
        mov     byte [eax], dl                          ; 0E79 _ 88. 10
?_044:  sub     dword [ebp-8H], 1                       ; 0E7B _ 83. 6D, F8, 01
?_045:  cmp     dword [ebp-8H], 1                       ; 0E7F _ 83. 7D, F8, 01
        jle     ?_046                                   ; 0E83 _ 7E, 06
        cmp     dword [ebp+8H], 0                       ; 0E85 _ 83. 7D, 08, 00
        jnz     ?_042                                   ; 0E89 _ 75, B2
?_046:  mov     eax, _str.2284                          ; 0E8B _ B8, 00000220(d)
        leave                                           ; 0E90 _ C9
        ret                                             ; 0E91 _ C3
; _intToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0E92 _ 55
        mov     ebp, esp                                ; 0E93 _ 89. E5
        sub     esp, 24                                 ; 0E95 _ 83. EC, 18
?_047:  mov     dword [esp], 100                        ; 0E98 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0E9F _ E8, 00000000(rel)
        and     eax, 02H                                ; 0EA4 _ 83. E0, 02
        test    eax, eax                                ; 0EA7 _ 85. C0
        jz      ?_048                                   ; 0EA9 _ 74, 02
        jmp     ?_047                                   ; 0EAB _ EB, EB
; _wait_KBC_sendready End of function

?_048:  ; Local function
        nop                                             ; 0EAD _ 90
        nop                                             ; 0EAE _ 90
        leave                                           ; 0EAF _ C9
        ret                                             ; 0EB0 _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0EB1 _ 55
        mov     ebp, esp                                ; 0EB2 _ 89. E5
        sub     esp, 24                                 ; 0EB4 _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0EB7 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0EBC _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0EC4 _ C7. 04 24, 00000064
        call    _io_out8                                ; 0ECB _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0ED0 _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0ED5 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0EDD _ C7. 04 24, 00000060
        call    _io_out8                                ; 0EE4 _ E8, 00000000(rel)
        nop                                             ; 0EE9 _ 90
        leave                                           ; 0EEA _ C9
        ret                                             ; 0EEB _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0EEC _ 55
        mov     ebp, esp                                ; 0EED _ 89. E5
        sub     esp, 24                                 ; 0EEF _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0EF2 _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0EF7 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0EFF _ C7. 04 24, 00000064
        call    _io_out8                                ; 0F06 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0F0B _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0F10 _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0F18 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0F1F _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0F24 _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0F27 _ C6. 40, 03, 00
        nop                                             ; 0F2B _ 90
        leave                                           ; 0F2C _ C9
        ret                                             ; 0F2D _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0F2E _ 55
        mov     ebp, esp                                ; 0F2F _ 89. E5
        sub     esp, 40                                 ; 0F31 _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0F34 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0F3C _ C7. 04 24, 000000A0
        call    _io_out8                                ; 0F43 _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 0F48 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0F50 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0F57 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 0F5C _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0F63 _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 0F68 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0F6B _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0F6F _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 0F73 _ C7. 04 24, 00000020(d)
        call    _fifo8_put                              ; 0F7A _ E8, 00000041
        nop                                             ; 0F7F _ 90
        leave                                           ; 0F80 _ C9
        ret                                             ; 0F81 _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 0F82 _ 55
        mov     ebp, esp                                ; 0F83 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0F85 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F88 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0F8B _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F8E _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0F91 _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0F94 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0F96 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0F99 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0F9C _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0F9F _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0FA2 _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0FA9 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0FAC _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0FB3 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0FB6 _ C7. 40, 08, 00000000
        nop                                             ; 0FBD _ 90
        pop     ebp                                     ; 0FBE _ 5D
        ret                                             ; 0FBF _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 0FC0 _ 55
        mov     ebp, esp                                ; 0FC1 _ 89. E5
        sub     esp, 4                                  ; 0FC3 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0FC6 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0FC9 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0FCC _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0FCF _ 8B. 40, 10
        test    eax, eax                                ; 0FD2 _ 85. C0
        jnz     ?_049                                   ; 0FD4 _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0FD6 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0FD9 _ 8B. 40, 14
        or      eax, 01H                                ; 0FDC _ 83. C8, 01
        mov     edx, eax                                ; 0FDF _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FE1 _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0FE4 _ 89. 50, 14
        mov     eax, 4294967295                         ; 0FE7 _ B8, FFFFFFFF
        jmp     ?_051                                   ; 0FEC _ EB, 50

?_049:  mov     eax, dword [ebp+8H]                     ; 0FEE _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0FF1 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0FF3 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0FF6 _ 8B. 40, 04
        add     edx, eax                                ; 0FF9 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0FFB _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0FFF _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1001 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1004 _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 1007 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 100A _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 100D _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1010 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 1013 _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1016 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1019 _ 8B. 40, 0C
        cmp     edx, eax                                ; 101C _ 39. C2
        jnz     ?_050                                   ; 101E _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1020 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1023 _ C7. 40, 04, 00000000
?_050:  mov     eax, dword [ebp+8H]                     ; 102A _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 102D _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 1030 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1033 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 1036 _ 89. 50, 10
        mov     eax, 0                                  ; 1039 _ B8, 00000000
?_051:  leave                                           ; 103E _ C9
        ret                                             ; 103F _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 1040 _ 55
        mov     ebp, esp                                ; 1041 _ 89. E5
        sub     esp, 16                                 ; 1043 _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 1046 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 1049 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 104C _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 104F _ 8B. 40, 0C
        cmp     edx, eax                                ; 1052 _ 39. C2
        jnz     ?_052                                   ; 1054 _ 75, 07
        mov     eax, 4294967295                         ; 1056 _ B8, FFFFFFFF
        jmp     ?_054                                   ; 105B _ EB, 51

?_052:  mov     eax, dword [ebp+8H]                     ; 105D _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 1060 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 1062 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1065 _ 8B. 40, 08
        add     eax, edx                                ; 1068 _ 01. D0
        movzx   eax, byte [eax]                         ; 106A _ 0F B6. 00
        movzx   eax, al                                 ; 106D _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 1070 _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 1073 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1076 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 1079 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 107C _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 107F _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1082 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 1085 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1088 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 108B _ 8B. 40, 0C
        cmp     edx, eax                                ; 108E _ 39. C2
        jnz     ?_053                                   ; 1090 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 1092 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1095 _ C7. 40, 08, 00000000
?_053:  mov     eax, dword [ebp+8H]                     ; 109C _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 109F _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 10A2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 10A5 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 10A8 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 10AB _ 8B. 45, FC
?_054:  leave                                           ; 10AE _ C9
        ret                                             ; 10AF _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 10B0 _ 55
        mov     ebp, esp                                ; 10B1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 10B3 _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 10B6 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 10B9 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 10BC _ 8B. 40, 10
        sub     edx, eax                                ; 10BF _ 29. C2
        mov     eax, edx                                ; 10C1 _ 89. D0
        pop     ebp                                     ; 10C3 _ 5D
        ret                                             ; 10C4 _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 10C5 _ 55
        mov     ebp, esp                                ; 10C6 _ 89. E5
        sub     esp, 4                                  ; 10C8 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 10CB _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 10CE _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 10D1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10D4 _ 0F B6. 40, 03
        test    al, al                                  ; 10D8 _ 84. C0
        jnz     ?_056                                   ; 10DA _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 10DC _ 80. 7D, FC, FA
        jnz     ?_055                                   ; 10E0 _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 10E2 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 10E5 _ C6. 40, 03, 01
?_055:  mov     eax, 0                                  ; 10E9 _ B8, 00000000
        jmp     ?_063                                   ; 10EE _ E9, 0000010F

?_056:  mov     eax, dword [ebp+8H]                     ; 10F3 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 10F6 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 10FA _ 3C, 01
        jnz     ?_058                                   ; 10FC _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 10FE _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 1102 _ 25, 000000C8
        cmp     eax, 8                                  ; 1107 _ 83. F8, 08
        jnz     ?_057                                   ; 110A _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 110C _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 110F _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 1113 _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 1115 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 1118 _ C6. 40, 03, 02
?_057:  mov     eax, 0                                  ; 111C _ B8, 00000000
        jmp     ?_063                                   ; 1121 _ E9, 000000DC

?_058:  mov     eax, dword [ebp+8H]                     ; 1126 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 1129 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 112D _ 3C, 02
        jnz     ?_059                                   ; 112F _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 1131 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 1134 _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 1138 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 113B _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 113E _ C6. 40, 03, 03
        mov     eax, 0                                  ; 1142 _ B8, 00000000
        jmp     ?_063                                   ; 1147 _ E9, 000000B6

?_059:  mov     eax, dword [ebp+8H]                     ; 114C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 114F _ 0F B6. 40, 03
        cmp     al, 3                                   ; 1153 _ 3C, 03
        jne     ?_062                                   ; 1155 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 115B _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 115E _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 1162 _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 1165 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 1168 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 116C _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 116F _ 0F B6. 00
        movzx   eax, al                                 ; 1172 _ 0F B6. C0
        and     eax, 07H                                ; 1175 _ 83. E0, 07
        mov     edx, eax                                ; 1178 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 117A _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 117D _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 1180 _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 1183 _ 0F B6. 40, 01
        movzx   eax, al                                 ; 1187 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 118A _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 118D _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 1190 _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 1193 _ 0F B6. 40, 02
        movzx   eax, al                                 ; 1197 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 119A _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 119D _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 11A0 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 11A3 _ 0F B6. 00
        movzx   eax, al                                 ; 11A6 _ 0F B6. C0
        and     eax, 10H                                ; 11A9 _ 83. E0, 10
        test    eax, eax                                ; 11AC _ 85. C0
        jz      ?_060                                   ; 11AE _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 11B0 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 11B3 _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 11B6 _ 0D, FFFFFF00
        mov     edx, eax                                ; 11BB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11BD _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 11C0 _ 89. 50, 04
?_060:  mov     eax, dword [ebp+8H]                     ; 11C3 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 11C6 _ 0F B6. 00
        movzx   eax, al                                 ; 11C9 _ 0F B6. C0
        and     eax, 20H                                ; 11CC _ 83. E0, 20
        test    eax, eax                                ; 11CF _ 85. C0
        jz      ?_061                                   ; 11D1 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 11D3 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11D6 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 11D9 _ 0D, FFFFFF00
        mov     edx, eax                                ; 11DE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11E0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11E3 _ 89. 50, 08
?_061:  mov     eax, dword [ebp+8H]                     ; 11E6 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 11E9 _ 8B. 40, 08
        neg     eax                                     ; 11EC _ F7. D8
        mov     edx, eax                                ; 11EE _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 11F0 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 11F3 _ 89. 50, 08
        mov     eax, 1                                  ; 11F6 _ B8, 00000001
        jmp     ?_063                                   ; 11FB _ EB, 05

?_062:  mov     eax, 4294967295                         ; 11FD _ B8, FFFFFFFF
?_063:  leave                                           ; 1202 _ C9
        ret                                             ; 1203 _ C3
; _mouse_decode End of function

_showMemoryInfo:; Function begin
        push    ebp                                     ; 1204 _ 55
        mov     ebp, esp                                ; 1205 _ 89. E5
        sub     esp, 88                                 ; 1207 _ 83. EC, 58
        mov     dword [ebp-0CH], 0                      ; 120A _ C7. 45, F4, 00000000
        mov     dword [ebp-10H], 0                      ; 1211 _ C7. 45, F0, 00000000
        mov     dword [ebp-14H], 104                    ; 1218 _ C7. 45, EC, 00000068
        mov     dword [ebp-18H], 80                     ; 121F _ C7. 45, E8, 00000050
        mov     edx, dword [_ysize]                     ; 1226 _ 8B. 15, 000000FC(d)
        mov     eax, dword [ebp+0CH]                    ; 122C _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 122F _ 8B. 00
        mov     dword [esp+8H], edx                     ; 1231 _ 89. 54 24, 08
        mov     edx, dword [ebp+1CH]                    ; 1235 _ 8B. 55, 1C
        mov     dword [esp+4H], edx                     ; 1238 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 123C _ 89. 04 24
        call    _init_screen8                           ; 123F _ E8, FFFFF145
        mov     eax, dword [ebp+20H]                    ; 1244 _ 8B. 45, 20
        movsx   eax, al                                 ; 1247 _ 0F BE. C0
        mov     dword [esp+14H], ?_134                  ; 124A _ C7. 44 24, 14, 0000002A(d)
        mov     dword [esp+10H], eax                    ; 1252 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1256 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1259 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 125D _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 1260 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1264 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1267 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 126B _ 8B. 45, 08
        mov     dword [esp], eax                        ; 126E _ 89. 04 24
        call    _showString                             ; 1271 _ E8, FFFFF62B
        mov     eax, dword [ebp+18H]                    ; 1276 _ 8B. 45, 18
        mov     dword [esp], eax                        ; 1279 _ 89. 04 24
        call    _intToHexStr                            ; 127C _ E8, FFFFFB7A
        mov     dword [ebp-1CH], eax                    ; 1281 _ 89. 45, E4
        mov     eax, dword [ebp+20H]                    ; 1284 _ 8B. 45, 20
        movsx   eax, al                                 ; 1287 _ 0F BE. C0
        mov     edx, dword [ebp-1CH]                    ; 128A _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 128D _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1291 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1295 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1298 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 129C _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 129F _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12A3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12A6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12AA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12AD _ 89. 04 24
        call    _showString                             ; 12B0 _ E8, FFFFF5EC
        add     dword [ebp-10H], 16                     ; 12B5 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 12B9 _ 8B. 45, 20
        movsx   eax, al                                 ; 12BC _ 0F BE. C0
        mov     dword [esp+14H], ?_135                  ; 12BF _ C7. 44 24, 14, 00000034(d)
        mov     dword [esp+10H], eax                    ; 12C7 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 12CB _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 12CE _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 12D2 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 12D5 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 12D9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 12DC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 12E0 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 12E3 _ 89. 04 24
        call    _showString                             ; 12E6 _ E8, FFFFF5B6
        mov     eax, dword [ebp+10H]                    ; 12EB _ 8B. 45, 10
        mov     eax, dword [eax]                        ; 12EE _ 8B. 00
        mov     dword [esp], eax                        ; 12F0 _ 89. 04 24
        call    _intToHexStr                            ; 12F3 _ E8, FFFFFB03
        mov     dword [ebp-20H], eax                    ; 12F8 _ 89. 45, E0
        mov     eax, dword [ebp+20H]                    ; 12FB _ 8B. 45, 20
        movsx   eax, al                                 ; 12FE _ 0F BE. C0
        mov     edx, dword [ebp-20H]                    ; 1301 _ 8B. 55, E0
        mov     dword [esp+14H], edx                    ; 1304 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1308 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 130C _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 130F _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1313 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1316 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 131A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 131D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1321 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1324 _ 89. 04 24
        call    _showString                             ; 1327 _ E8, FFFFF575
        add     dword [ebp-10H], 16                     ; 132C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1330 _ 8B. 45, 20
        movsx   eax, al                                 ; 1333 _ 0F BE. C0
        mov     dword [esp+14H], ?_136                  ; 1336 _ C7. 44 24, 14, 00000040(d)
        mov     dword [esp+10H], eax                    ; 133E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1342 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1345 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1349 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 134C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1350 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1353 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1357 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 135A _ 89. 04 24
        call    _showString                             ; 135D _ E8, FFFFF53F
        mov     eax, dword [ebp+10H]                    ; 1362 _ 8B. 45, 10
        mov     eax, dword [eax+4H]                     ; 1365 _ 8B. 40, 04
        mov     dword [esp], eax                        ; 1368 _ 89. 04 24
        call    _intToHexStr                            ; 136B _ E8, FFFFFA8B
        mov     dword [ebp-24H], eax                    ; 1370 _ 89. 45, DC
        mov     eax, dword [ebp+20H]                    ; 1373 _ 8B. 45, 20
        movsx   eax, al                                 ; 1376 _ 0F BE. C0
        mov     edx, dword [ebp-24H]                    ; 1379 _ 8B. 55, DC
        mov     dword [esp+14H], edx                    ; 137C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1380 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1384 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1387 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 138B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 138E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1392 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1395 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1399 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 139C _ 89. 04 24
        call    _showString                             ; 139F _ E8, FFFFF4FD
        add     dword [ebp-10H], 16                     ; 13A4 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 13A8 _ 8B. 45, 20
        movsx   eax, al                                 ; 13AB _ 0F BE. C0
        mov     dword [esp+14H], ?_137                  ; 13AE _ C7. 44 24, 14, 0000004C(d)
        mov     dword [esp+10H], eax                    ; 13B6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13BA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13BD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 13C1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 13C4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 13C8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 13CB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 13CF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 13D2 _ 89. 04 24
        call    _showString                             ; 13D5 _ E8, FFFFF4C7
        mov     eax, dword [ebp+10H]                    ; 13DA _ 8B. 45, 10
        mov     eax, dword [eax+8H]                     ; 13DD _ 8B. 40, 08
        mov     dword [esp], eax                        ; 13E0 _ 89. 04 24
        call    _intToHexStr                            ; 13E3 _ E8, FFFFFA13
        mov     dword [ebp-28H], eax                    ; 13E8 _ 89. 45, D8
        mov     eax, dword [ebp+20H]                    ; 13EB _ 8B. 45, 20
        movsx   eax, al                                 ; 13EE _ 0F BE. C0
        mov     edx, dword [ebp-28H]                    ; 13F1 _ 8B. 55, D8
        mov     dword [esp+14H], edx                    ; 13F4 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 13F8 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 13FC _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 13FF _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 1403 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 1406 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 140A _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 140D _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1411 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1414 _ 89. 04 24
        call    _showString                             ; 1417 _ E8, FFFFF485
        add     dword [ebp-10H], 16                     ; 141C _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1420 _ 8B. 45, 20
        movsx   eax, al                                 ; 1423 _ 0F BE. C0
        mov     dword [esp+14H], ?_138                  ; 1426 _ C7. 44 24, 14, 00000058(d)
        mov     dword [esp+10H], eax                    ; 142E _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1432 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1435 _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 1439 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 143C _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1440 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1443 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1447 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 144A _ 89. 04 24
        call    _showString                             ; 144D _ E8, FFFFF44F
        mov     eax, dword [ebp+10H]                    ; 1452 _ 8B. 45, 10
        mov     eax, dword [eax+0CH]                    ; 1455 _ 8B. 40, 0C
        mov     dword [esp], eax                        ; 1458 _ 89. 04 24
        call    _intToHexStr                            ; 145B _ E8, FFFFF99B
        mov     dword [ebp-2CH], eax                    ; 1460 _ 89. 45, D4
        mov     eax, dword [ebp+20H]                    ; 1463 _ 8B. 45, 20
        movsx   eax, al                                 ; 1466 _ 0F BE. C0
        mov     edx, dword [ebp-2CH]                    ; 1469 _ 8B. 55, D4
        mov     dword [esp+14H], edx                    ; 146C _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 1470 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 1474 _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 1477 _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 147B _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 147E _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 1482 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 1485 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1489 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 148C _ 89. 04 24
        call    _showString                             ; 148F _ E8, FFFFF40D
        add     dword [ebp-10H], 16                     ; 1494 _ 83. 45, F0, 10
        mov     eax, dword [ebp+20H]                    ; 1498 _ 8B. 45, 20
        movsx   eax, al                                 ; 149B _ 0F BE. C0
        mov     dword [esp+14H], ?_139                  ; 149E _ C7. 44 24, 14, 00000065(d)
        mov     dword [esp+10H], eax                    ; 14A6 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14AA _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14AD _ 89. 44 24, 0C
        mov     eax, dword [ebp-0CH]                    ; 14B1 _ 8B. 45, F4
        mov     dword [esp+8H], eax                     ; 14B4 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14B8 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14BB _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 14BF _ 8B. 45, 08
        mov     dword [esp], eax                        ; 14C2 _ 89. 04 24
        call    _showString                             ; 14C5 _ E8, FFFFF3D7
        mov     eax, dword [ebp+10H]                    ; 14CA _ 8B. 45, 10
        mov     eax, dword [eax+10H]                    ; 14CD _ 8B. 40, 10
        mov     dword [esp], eax                        ; 14D0 _ 89. 04 24
        call    _intToHexStr                            ; 14D3 _ E8, FFFFF923
        mov     dword [ebp-30H], eax                    ; 14D8 _ 89. 45, D0
        mov     eax, dword [ebp+20H]                    ; 14DB _ 8B. 45, 20
        movsx   eax, al                                 ; 14DE _ 0F BE. C0
        mov     edx, dword [ebp-30H]                    ; 14E1 _ 8B. 55, D0
        mov     dword [esp+14H], edx                    ; 14E4 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 14E8 _ 89. 44 24, 10
        mov     eax, dword [ebp-10H]                    ; 14EC _ 8B. 45, F0
        mov     dword [esp+0CH], eax                    ; 14EF _ 89. 44 24, 0C
        mov     eax, dword [ebp-14H]                    ; 14F3 _ 8B. 45, EC
        mov     dword [esp+8H], eax                     ; 14F6 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 14FA _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 14FD _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1501 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1504 _ 89. 04 24
        call    _showString                             ; 1507 _ E8, FFFFF395
        nop                                             ; 150C _ 90
        leave                                           ; 150D _ C9
        ret                                             ; 150E _ C3
; _showMemoryInfo End of function

_message_box:; Function begin
        push    ebp                                     ; 150F _ 55
        mov     ebp, esp                                ; 1510 _ 89. E5
        sub     esp, 56                                 ; 1512 _ 83. EC, 38
        mov     eax, dword [ebp+8H]                     ; 1515 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1518 _ 89. 04 24
        call    _sheet_alloc                            ; 151B _ E8, 00000000(rel)
        mov     dword [ebp-0CH], eax                    ; 1520 _ 89. 45, F4
        mov     eax, dword [_memman]                    ; 1523 _ A1, 00000000(d)
        mov     dword [esp+4H], 10880                   ; 1528 _ C7. 44 24, 04, 00002A80
        mov     dword [esp], eax                        ; 1530 _ 89. 04 24
        call    _memman_alloc_4k                        ; 1533 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 1538 _ 89. 45, F0
        mov     dword [esp+10H], -1                     ; 153B _ C7. 44 24, 10, FFFFFFFF
        mov     dword [esp+0CH], 68                     ; 1543 _ C7. 44 24, 0C, 00000044
        mov     dword [esp+8H], 160                     ; 154B _ C7. 44 24, 08, 000000A0
        mov     eax, dword [ebp-10H]                    ; 1553 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 1556 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 155A _ 8B. 45, F4
        mov     dword [esp], eax                        ; 155D _ 89. 04 24
        call    _sheet_setbuf                           ; 1560 _ E8, 00000000(rel)
        mov     eax, dword [ebp+0CH]                    ; 1565 _ 8B. 45, 0C
        mov     dword [esp+8H], eax                     ; 1568 _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 156C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 156F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1573 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1576 _ 89. 04 24
        call    _make_window8                           ; 1579 _ E8, 000000A3
        mov     dword [esp+14H], ?_140                  ; 157E _ C7. 44 24, 14, 0000006C(d)
        mov     dword [esp+10H], 0                      ; 1586 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 28                     ; 158E _ C7. 44 24, 0C, 0000001C
        mov     dword [esp+8H], 24                      ; 1596 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 159E _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15A1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15A5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15A8 _ 89. 04 24
        call    _showString                             ; 15AB _ E8, FFFFF2F1
        mov     dword [esp+14H], ?_141                  ; 15B0 _ C7. 44 24, 14, 00000077(d)
        mov     dword [esp+10H], 0                      ; 15B8 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 44                     ; 15C0 _ C7. 44 24, 0C, 0000002C
        mov     dword [esp+8H], 24                      ; 15C8 _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp-0CH]                    ; 15D0 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15D3 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15D7 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15DA _ 89. 04 24
        call    _showString                             ; 15DD _ E8, FFFFF2BF
        mov     dword [esp+0CH], 72                     ; 15E2 _ C7. 44 24, 0C, 00000048
        mov     dword [esp+8H], 80                      ; 15EA _ C7. 44 24, 08, 00000050
        mov     eax, dword [ebp-0CH]                    ; 15F2 _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 15F5 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 15F9 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 15FC _ 89. 04 24
        call    _sheet_slide                            ; 15FF _ E8, 00000000(rel)
        mov     dword [esp+8H], 2                       ; 1604 _ C7. 44 24, 08, 00000002
        mov     eax, dword [ebp-0CH]                    ; 160C _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 160F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1613 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1616 _ 89. 04 24
        call    _sheet_updown                           ; 1619 _ E8, 00000000(rel)
        nop                                             ; 161E _ 90
        leave                                           ; 161F _ C9
        ret                                             ; 1620 _ C3
; _message_box End of function

_make_window8:; Function begin
        push    ebp                                     ; 1621 _ 55
        mov     ebp, esp                                ; 1622 _ 89. E5
        push    ebx                                     ; 1624 _ 53
        sub     esp, 68                                 ; 1625 _ 83. EC, 44
        mov     eax, dword [ebp+0CH]                    ; 1628 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 162B _ 8B. 40, 04
        mov     dword [ebp-18H], eax                    ; 162E _ 89. 45, E8
        mov     eax, dword [ebp+0CH]                    ; 1631 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1634 _ 8B. 40, 08
        mov     dword [ebp-1CH], eax                    ; 1637 _ 89. 45, E4
        mov     eax, dword [ebp-18H]                    ; 163A _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 163D _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1640 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1643 _ 8B. 00
        mov     dword [esp+18H], 0                      ; 1645 _ C7. 44 24, 18, 00000000
        mov     dword [esp+14H], edx                    ; 164D _ 89. 54 24, 14
        mov     dword [esp+10H], 0                      ; 1651 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 1659 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 1661 _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 1669 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 166C _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 1670 _ 89. 04 24
        call    _boxfill8                               ; 1673 _ E8, FFFFF396
        mov     eax, dword [ebp-18H]                    ; 1678 _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 167B _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 167E _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1681 _ 8B. 00
        mov     dword [esp+18H], 1                      ; 1683 _ C7. 44 24, 18, 00000001
        mov     dword [esp+14H], edx                    ; 168B _ 89. 54 24, 14
        mov     dword [esp+10H], 1                      ; 168F _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1697 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 169F _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 16A7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16AA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16AE _ 89. 04 24
        call    _boxfill8                               ; 16B1 _ E8, FFFFF358
        mov     eax, dword [ebp-1CH]                    ; 16B6 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 16B9 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16BC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16BF _ 8B. 00
        mov     dword [esp+18H], edx                    ; 16C1 _ 89. 54 24, 18
        mov     dword [esp+14H], 0                      ; 16C5 _ C7. 44 24, 14, 00000000
        mov     dword [esp+10H], 0                      ; 16CD _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 16D5 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 16DD _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 16E5 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 16E8 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 16EC _ 89. 04 24
        call    _boxfill8                               ; 16EF _ E8, FFFFF31A
        mov     eax, dword [ebp-1CH]                    ; 16F4 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 16F7 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 16FA _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 16FD _ 8B. 00
        mov     dword [esp+18H], edx                    ; 16FF _ 89. 54 24, 18
        mov     dword [esp+14H], 1                      ; 1703 _ C7. 44 24, 14, 00000001
        mov     dword [esp+10H], 1                      ; 170B _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], 1                      ; 1713 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 7                       ; 171B _ C7. 44 24, 08, 00000007
        mov     edx, dword [ebp-18H]                    ; 1723 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1726 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 172A _ 89. 04 24
        call    _boxfill8                               ; 172D _ E8, FFFFF2DC
        mov     eax, dword [ebp-1CH]                    ; 1732 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1735 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 1738 _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 173B _ 8D. 48, FE
        mov     eax, dword [ebp-18H]                    ; 173E _ 8B. 45, E8
        lea     edx, [eax-2H]                           ; 1741 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1744 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1747 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 1749 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 174D _ 89. 4C 24, 14
        mov     dword [esp+10H], 1                      ; 1751 _ C7. 44 24, 10, 00000001
        mov     dword [esp+0CH], edx                    ; 1759 _ 89. 54 24, 0C
        mov     dword [esp+8H], 15                      ; 175D _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1765 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1768 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 176C _ 89. 04 24
        call    _boxfill8                               ; 176F _ E8, FFFFF29A
        mov     eax, dword [ebp-1CH]                    ; 1774 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1777 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 177A _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 177D _ 8D. 48, FF
        mov     eax, dword [ebp-18H]                    ; 1780 _ 8B. 45, E8
        lea     edx, [eax-1H]                           ; 1783 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1786 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1789 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 178B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 178F _ 89. 4C 24, 14
        mov     dword [esp+10H], 0                      ; 1793 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], edx                    ; 179B _ 89. 54 24, 0C
        mov     dword [esp+8H], 0                       ; 179F _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 17A7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17AA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17AE _ 89. 04 24
        call    _boxfill8                               ; 17B1 _ E8, FFFFF258
        mov     eax, dword [ebp-1CH]                    ; 17B6 _ 8B. 45, E4
        lea     ecx, [eax-3H]                           ; 17B9 _ 8D. 48, FD
        mov     eax, dword [ebp-18H]                    ; 17BC _ 8B. 45, E8
        lea     edx, [eax-3H]                           ; 17BF _ 8D. 50, FD
        mov     eax, dword [ebp+0CH]                    ; 17C2 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17C5 _ 8B. 00
        mov     dword [esp+18H], ecx                    ; 17C7 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 17CB _ 89. 54 24, 14
        mov     dword [esp+10H], 2                      ; 17CF _ C7. 44 24, 10, 00000002
        mov     dword [esp+0CH], 2                      ; 17D7 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 8                       ; 17DF _ C7. 44 24, 08, 00000008
        mov     edx, dword [ebp-18H]                    ; 17E7 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 17EA _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 17EE _ 89. 04 24
        call    _boxfill8                               ; 17F1 _ E8, FFFFF218
        mov     eax, dword [ebp-18H]                    ; 17F6 _ 8B. 45, E8
        lea     edx, [eax-4H]                           ; 17F9 _ 8D. 50, FC
        mov     eax, dword [ebp+0CH]                    ; 17FC _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 17FF _ 8B. 00
        mov     dword [esp+18H], 20                     ; 1801 _ C7. 44 24, 18, 00000014
        mov     dword [esp+14H], edx                    ; 1809 _ 89. 54 24, 14
        mov     dword [esp+10H], 3                      ; 180D _ C7. 44 24, 10, 00000003
        mov     dword [esp+0CH], 3                      ; 1815 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 12                      ; 181D _ C7. 44 24, 08, 0000000C
        mov     edx, dword [ebp-18H]                    ; 1825 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 1828 _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 182C _ 89. 04 24
        call    _boxfill8                               ; 182F _ E8, FFFFF1DA
        mov     eax, dword [ebp-1CH]                    ; 1834 _ 8B. 45, E4
        lea     ebx, [eax-2H]                           ; 1837 _ 8D. 58, FE
        mov     eax, dword [ebp-18H]                    ; 183A _ 8B. 45, E8
        lea     ecx, [eax-2H]                           ; 183D _ 8D. 48, FE
        mov     eax, dword [ebp-1CH]                    ; 1840 _ 8B. 45, E4
        lea     edx, [eax-2H]                           ; 1843 _ 8D. 50, FE
        mov     eax, dword [ebp+0CH]                    ; 1846 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 1849 _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 184B _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 184F _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1853 _ 89. 54 24, 10
        mov     dword [esp+0CH], 1                      ; 1857 _ C7. 44 24, 0C, 00000001
        mov     dword [esp+8H], 15                      ; 185F _ C7. 44 24, 08, 0000000F
        mov     edx, dword [ebp-18H]                    ; 1867 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 186A _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 186E _ 89. 04 24
        call    _boxfill8                               ; 1871 _ E8, FFFFF198
        mov     eax, dword [ebp-1CH]                    ; 1876 _ 8B. 45, E4
        lea     ebx, [eax-1H]                           ; 1879 _ 8D. 58, FF
        mov     eax, dword [ebp-18H]                    ; 187C _ 8B. 45, E8
        lea     ecx, [eax-1H]                           ; 187F _ 8D. 48, FF
        mov     eax, dword [ebp-1CH]                    ; 1882 _ 8B. 45, E4
        lea     edx, [eax-1H]                           ; 1885 _ 8D. 50, FF
        mov     eax, dword [ebp+0CH]                    ; 1888 _ 8B. 45, 0C
        mov     eax, dword [eax]                        ; 188B _ 8B. 00
        mov     dword [esp+18H], ebx                    ; 188D _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 1891 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 1895 _ 89. 54 24, 10
        mov     dword [esp+0CH], 0                      ; 1899 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 0                       ; 18A1 _ C7. 44 24, 08, 00000000
        mov     edx, dword [ebp-18H]                    ; 18A9 _ 8B. 55, E8
        mov     dword [esp+4H], edx                     ; 18AC _ 89. 54 24, 04
        mov     dword [esp], eax                        ; 18B0 _ 89. 04 24
        call    _boxfill8                               ; 18B3 _ E8, FFFFF156
        mov     eax, dword [ebp+10H]                    ; 18B8 _ 8B. 45, 10
        mov     dword [esp+14H], eax                    ; 18BB _ 89. 44 24, 14
        mov     dword [esp+10H], 7                      ; 18BF _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 4                      ; 18C7 _ C7. 44 24, 0C, 00000004
        mov     dword [esp+8H], 24                      ; 18CF _ C7. 44 24, 08, 00000018
        mov     eax, dword [ebp+0CH]                    ; 18D7 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 18DA _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 18DE _ 8B. 45, 08
        mov     dword [esp], eax                        ; 18E1 _ 89. 04 24
        call    _showString                             ; 18E4 _ E8, FFFFEFB8
        mov     dword [ebp-10H], 0                      ; 18E9 _ C7. 45, F0, 00000000
        jmp     ?_071                                   ; 18F0 _ E9, 00000084

?_064:  mov     dword [ebp-0CH], 0                      ; 18F5 _ C7. 45, F4, 00000000
        jmp     ?_070                                   ; 18FC _ EB, 71

?_065:  mov     eax, dword [ebp-10H]                    ; 18FE _ 8B. 45, F0
        shl     eax, 4                                  ; 1901 _ C1. E0, 04
        mov     edx, eax                                ; 1904 _ 89. C2
        mov     eax, dword [ebp-0CH]                    ; 1906 _ 8B. 45, F4
        add     eax, edx                                ; 1909 _ 01. D0
        add     eax, _closebtn.2364                     ; 190B _ 05, 00000160(d)
        movzx   eax, byte [eax]                         ; 1910 _ 0F B6. 00
        mov     byte [ebp-11H], al                      ; 1913 _ 88. 45, EF
        cmp     byte [ebp-11H], 64                      ; 1916 _ 80. 7D, EF, 40
        jnz     ?_066                                   ; 191A _ 75, 06
        mov     byte [ebp-11H], 0                       ; 191C _ C6. 45, EF, 00
        jmp     ?_069                                   ; 1920 _ EB, 1C

?_066:  cmp     byte [ebp-11H], 36                      ; 1922 _ 80. 7D, EF, 24
        jnz     ?_067                                   ; 1926 _ 75, 06
        mov     byte [ebp-11H], 15                      ; 1928 _ C6. 45, EF, 0F
        jmp     ?_069                                   ; 192C _ EB, 10

?_067:  cmp     byte [ebp-11H], 81                      ; 192E _ 80. 7D, EF, 51
        jnz     ?_068                                   ; 1932 _ 75, 06
        mov     byte [ebp-11H], 8                       ; 1934 _ C6. 45, EF, 08
        jmp     ?_069                                   ; 1938 _ EB, 04

?_068:  mov     byte [ebp-11H], 7                       ; 193A _ C6. 45, EF, 07
?_069:  mov     eax, dword [ebp+0CH]                    ; 193E _ 8B. 45, 0C
        mov     ecx, dword [eax]                        ; 1941 _ 8B. 08
        mov     eax, dword [ebp-10H]                    ; 1943 _ 8B. 45, F0
        lea     edx, [eax+5H]                           ; 1946 _ 8D. 50, 05
        mov     eax, dword [ebp+0CH]                    ; 1949 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 194C _ 8B. 40, 04
        imul    eax, edx                                ; 194F _ 0F AF. C2
        mov     edx, dword [ebp+0CH]                    ; 1952 _ 8B. 55, 0C
        mov     edx, dword [edx+4H]                     ; 1955 _ 8B. 52, 04
        lea     ebx, [edx-15H]                          ; 1958 _ 8D. 5A, EB
        mov     edx, dword [ebp-0CH]                    ; 195B _ 8B. 55, F4
        add     edx, ebx                                ; 195E _ 01. DA
        add     eax, edx                                ; 1960 _ 01. D0
        lea     edx, [ecx+eax]                          ; 1962 _ 8D. 14 01
        movzx   eax, byte [ebp-11H]                     ; 1965 _ 0F B6. 45, EF
        mov     byte [edx], al                          ; 1969 _ 88. 02
        add     dword [ebp-0CH], 1                      ; 196B _ 83. 45, F4, 01
?_070:  cmp     dword [ebp-0CH], 15                     ; 196F _ 83. 7D, F4, 0F
        jle     ?_065                                   ; 1973 _ 7E, 89
        add     dword [ebp-10H], 1                      ; 1975 _ 83. 45, F0, 01
?_071:  cmp     dword [ebp-10H], 13                     ; 1979 _ 83. 7D, F0, 0D
        jle     ?_064                                   ; 197D _ 0F 8E, FFFFFF72
        nop                                             ; 1983 _ 90
        add     esp, 68                                 ; 1984 _ 83. C4, 44
        pop     ebx                                     ; 1987 _ 5B
        pop     ebp                                     ; 1988 _ 5D
        ret                                             ; 1989 _ C3
; _make_window8 End of function

        nop                                             ; 198A _ 90
        nop                                             ; 198B _ 90

.text:  ; Local function

_shtctl_init:
        push    ebp                                     ; 198C _ 55
        mov     ebp, esp                                ; 198D _ 89. E5
        sub     esp, 40                                 ; 198F _ 83. EC, 28
        mov     dword [esp+4H], 9232                    ; 1992 _ C7. 44 24, 04, 00002410
        mov     eax, dword [ebp+8H]                     ; 199A _ 8B. 45, 08
        mov     dword [esp], eax                        ; 199D _ 89. 04 24
        call    _memman_alloc_4k                        ; 19A0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 19A5 _ 89. 45, F0
        cmp     dword [ebp-10H], 0                      ; 19A8 _ 83. 7D, F0, 00
        jnz     ?_072                                   ; 19AC _ 75, 07
        mov     eax, 0                                  ; 19AE _ B8, 00000000
        jmp     ?_075                                   ; 19B3 _ EB, 54

?_072:  mov     eax, dword [ebp-10H]                    ; 19B5 _ 8B. 45, F0
        mov     edx, dword [ebp+0CH]                    ; 19B8 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 19BB _ 89. 10
        mov     eax, dword [ebp-10H]                    ; 19BD _ 8B. 45, F0
        mov     edx, dword [ebp+10H]                    ; 19C0 _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 19C3 _ 89. 50, 04
        mov     eax, dword [ebp-10H]                    ; 19C6 _ 8B. 45, F0
        mov     edx, dword [ebp+14H]                    ; 19C9 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 19CC _ 89. 50, 08
        mov     eax, dword [ebp-10H]                    ; 19CF _ 8B. 45, F0
        mov     dword [eax+0CH], -1                     ; 19D2 _ C7. 40, 0C, FFFFFFFF
        mov     dword [ebp-0CH], 0                      ; 19D9 _ C7. 45, F4, 00000000
        jmp     ?_074                                   ; 19E0 _ EB, 1B

?_073:  mov     edx, dword [ebp-10H]                    ; 19E2 _ 8B. 55, F0
        mov     eax, dword [ebp-0CH]                    ; 19E5 _ 8B. 45, F4
        add     eax, 33                                 ; 19E8 _ 83. C0, 21
        shl     eax, 5                                  ; 19EB _ C1. E0, 05
        add     eax, edx                                ; 19EE _ 01. D0
        add     eax, 12                                 ; 19F0 _ 83. C0, 0C
        mov     dword [eax], 0                          ; 19F3 _ C7. 00, 00000000
        add     dword [ebp-0CH], 1                      ; 19F9 _ 83. 45, F4, 01
?_074:  cmp     dword [ebp-0CH], 255                    ; 19FD _ 81. 7D, F4, 000000FF
        jle     ?_073                                   ; 1A04 _ 7E, DC
        mov     eax, dword [ebp-10H]                    ; 1A06 _ 8B. 45, F0
?_075:  leave                                           ; 1A09 _ C9
        ret                                             ; 1A0A _ C3

_sheet_alloc:; Function begin
        push    ebp                                     ; 1A0B _ 55
        mov     ebp, esp                                ; 1A0C _ 89. E5
        sub     esp, 16                                 ; 1A0E _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1A11 _ C7. 45, FC, 00000000
        jmp     ?_078                                   ; 1A18 _ EB, 57

?_076:  mov     edx, dword [ebp+8H]                     ; 1A1A _ 8B. 55, 08
        mov     eax, dword [ebp-4H]                     ; 1A1D _ 8B. 45, FC
        add     eax, 33                                 ; 1A20 _ 83. C0, 21
        shl     eax, 5                                  ; 1A23 _ C1. E0, 05
        add     eax, edx                                ; 1A26 _ 01. D0
        add     eax, 12                                 ; 1A28 _ 83. C0, 0C
        mov     eax, dword [eax]                        ; 1A2B _ 8B. 00
        test    eax, eax                                ; 1A2D _ 85. C0
        jnz     ?_077                                   ; 1A2F _ 75, 3C
        mov     eax, dword [ebp-4H]                     ; 1A31 _ 8B. 45, FC
        shl     eax, 5                                  ; 1A34 _ C1. E0, 05
        lea     edx, [eax+410H]                         ; 1A37 _ 8D. 90, 00000410
        mov     eax, dword [ebp+8H]                     ; 1A3D _ 8B. 45, 08
        add     eax, edx                                ; 1A40 _ 01. D0
        mov     dword [ebp-8H], eax                     ; 1A42 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1A45 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1A48 _ 8B. 55, FC
        add     edx, 4                                  ; 1A4B _ 83. C2, 04
        mov     ecx, dword [ebp-8H]                     ; 1A4E _ 8B. 4D, F8
        mov     dword [eax+edx*4], ecx                  ; 1A51 _ 89. 0C 90
        mov     eax, dword [ebp-8H]                     ; 1A54 _ 8B. 45, F8
        mov     dword [eax+1CH], 1                      ; 1A57 _ C7. 40, 1C, 00000001
        mov     eax, dword [ebp-8H]                     ; 1A5E _ 8B. 45, F8
        mov     dword [eax+18H], -1                     ; 1A61 _ C7. 40, 18, FFFFFFFF
        mov     eax, dword [ebp-8H]                     ; 1A68 _ 8B. 45, F8
        jmp     ?_079                                   ; 1A6B _ EB, 12

?_077:  add     dword [ebp-4H], 1                       ; 1A6D _ 83. 45, FC, 01
?_078:  cmp     dword [ebp-4H], 255                     ; 1A71 _ 81. 7D, FC, 000000FF
        jle     ?_076                                   ; 1A78 _ 7E, A0
        mov     eax, 0                                  ; 1A7A _ B8, 00000000
?_079:  leave                                           ; 1A7F _ C9
        ret                                             ; 1A80 _ C3
; _sheet_alloc End of function

_sheet_setbuf:; Function begin
        push    ebp                                     ; 1A81 _ 55
        mov     ebp, esp                                ; 1A82 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1A84 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 1A87 _ 8B. 55, 0C
        mov     dword [eax], edx                        ; 1A8A _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 1A8C _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1A8F _ 8B. 55, 10
        mov     dword [eax+4H], edx                     ; 1A92 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 1A95 _ 8B. 45, 08
        mov     edx, dword [ebp+14H]                    ; 1A98 _ 8B. 55, 14
        mov     dword [eax+8H], edx                     ; 1A9B _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 1A9E _ 8B. 45, 08
        mov     edx, dword [ebp+18H]                    ; 1AA1 _ 8B. 55, 18
        mov     dword [eax+14H], edx                    ; 1AA4 _ 89. 50, 14
        nop                                             ; 1AA7 _ 90
        pop     ebp                                     ; 1AA8 _ 5D
        ret                                             ; 1AA9 _ C3
; _sheet_setbuf End of function

_sheet_updown:; Function begin
        push    ebp                                     ; 1AAA _ 55
        mov     ebp, esp                                ; 1AAB _ 89. E5
        push    ebx                                     ; 1AAD _ 53
        sub     esp, 52                                 ; 1AAE _ 83. EC, 34
        mov     eax, dword [ebp+0CH]                    ; 1AB1 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1AB4 _ 8B. 40, 18
        mov     dword [ebp-10H], eax                    ; 1AB7 _ 89. 45, F0
        mov     eax, dword [ebp+8H]                     ; 1ABA _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1ABD _ 8B. 40, 0C
        add     eax, 1                                  ; 1AC0 _ 83. C0, 01
        cmp     dword [ebp+10H], eax                    ; 1AC3 _ 39. 45, 10
        jle     ?_080                                   ; 1AC6 _ 7E, 0C
        mov     eax, dword [ebp+8H]                     ; 1AC8 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1ACB _ 8B. 40, 0C
        add     eax, 1                                  ; 1ACE _ 83. C0, 01
        mov     dword [ebp+10H], eax                    ; 1AD1 _ 89. 45, 10
?_080:  cmp     dword [ebp+10H], -1                     ; 1AD4 _ 83. 7D, 10, FF
        jge     ?_081                                   ; 1AD8 _ 7D, 07
        mov     dword [ebp+10H], -1                     ; 1ADA _ C7. 45, 10, FFFFFFFF
?_081:  mov     eax, dword [ebp+0CH]                    ; 1AE1 _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1AE4 _ 8B. 55, 10
        mov     dword [eax+18H], edx                    ; 1AE7 _ 89. 50, 18
        mov     eax, dword [ebp-10H]                    ; 1AEA _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1AED _ 3B. 45, 10
        jle     ?_089                                   ; 1AF0 _ 0F 8E, 00000100
        cmp     dword [ebp+10H], 0                      ; 1AF6 _ 83. 7D, 10, 00
        js      ?_084                                   ; 1AFA _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1AFC _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1AFF _ 89. 45, F4
        jmp     ?_083                                   ; 1B02 _ EB, 31

?_082:  mov     eax, dword [ebp-0CH]                    ; 1B04 _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 1B07 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1B0A _ 8B. 45, 08
        add     edx, 4                                  ; 1B0D _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1B10 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B13 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B16 _ 8B. 55, F4
        add     edx, 4                                  ; 1B19 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1B1C _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B1F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B22 _ 8B. 55, F4
        add     edx, 4                                  ; 1B25 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1B28 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1B2B _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1B2E _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 1B31 _ 83. 6D, F4, 01
?_083:  mov     eax, dword [ebp-0CH]                    ; 1B35 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1B38 _ 3B. 45, 10
        jg      ?_082                                   ; 1B3B _ 7F, C7
        mov     eax, dword [ebp+8H]                     ; 1B3D _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1B40 _ 8B. 55, 10
        add     edx, 4                                  ; 1B43 _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1B46 _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1B49 _ 89. 0C 90
        jmp     ?_088                                   ; 1B4C _ EB, 5E

?_084:  mov     eax, dword [ebp+8H]                     ; 1B4E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B51 _ 8B. 40, 0C
        cmp     dword [ebp-10H], eax                    ; 1B54 _ 39. 45, F0
        jge     ?_087                                   ; 1B57 _ 7D, 44
        mov     eax, dword [ebp-10H]                    ; 1B59 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1B5C _ 89. 45, F4
        jmp     ?_086                                   ; 1B5F _ EB, 31

?_085:  mov     eax, dword [ebp-0CH]                    ; 1B61 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1B64 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1B67 _ 8B. 45, 08
        add     edx, 4                                  ; 1B6A _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1B6D _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B70 _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B73 _ 8B. 55, F4
        add     edx, 4                                  ; 1B76 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1B79 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1B7C _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1B7F _ 8B. 55, F4
        add     edx, 4                                  ; 1B82 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1B85 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1B88 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1B8B _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1B8E _ 83. 45, F4, 01
?_086:  mov     eax, dword [ebp+8H]                     ; 1B92 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1B95 _ 8B. 40, 0C
        cmp     dword [ebp-0CH], eax                    ; 1B98 _ 39. 45, F4
        jl      ?_085                                   ; 1B9B _ 7C, C4
?_087:  mov     eax, dword [ebp+8H]                     ; 1B9D _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1BA0 _ 8B. 40, 0C
        lea     edx, [eax-1H]                           ; 1BA3 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 1BA6 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1BA9 _ 89. 50, 0C
?_088:  mov     eax, dword [ebp+0CH]                    ; 1BAC _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BAF _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BB2 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1BB5 _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1BB8 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1BBB _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1BBE _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1BC1 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1BC4 _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1BC7 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1BCA _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1BCD _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1BD0 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1BD3 _ 8B. 40, 0C
        mov     dword [esp+10H], ebx                    ; 1BD6 _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1BDA _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1BDE _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1BE2 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1BE6 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1BE9 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1BEC _ E8, 00000229
        jmp     ?_096                                   ; 1BF1 _ E9, 00000111

?_089:  mov     eax, dword [ebp-10H]                    ; 1BF6 _ 8B. 45, F0
        cmp     eax, dword [ebp+10H]                    ; 1BF9 _ 3B. 45, 10
        jge     ?_096                                   ; 1BFC _ 0F 8D, 00000105
        cmp     dword [ebp-10H], 0                      ; 1C02 _ 83. 7D, F0, 00
        js      ?_092                                   ; 1C06 _ 78, 52
        mov     eax, dword [ebp-10H]                    ; 1C08 _ 8B. 45, F0
        mov     dword [ebp-0CH], eax                    ; 1C0B _ 89. 45, F4
        jmp     ?_091                                   ; 1C0E _ EB, 31

?_090:  mov     eax, dword [ebp-0CH]                    ; 1C10 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1C13 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C16 _ 8B. 45, 08
        add     edx, 4                                  ; 1C19 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1C1C _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1C1F _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1C22 _ 8B. 55, F4
        add     edx, 4                                  ; 1C25 _ 83. C2, 04
        mov     dword [eax+edx*4], ecx                  ; 1C28 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1C2B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1C2E _ 8B. 55, F4
        add     edx, 4                                  ; 1C31 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C34 _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1C37 _ 8B. 55, F4
        mov     dword [eax+18H], edx                    ; 1C3A _ 89. 50, 18
        add     dword [ebp-0CH], 1                      ; 1C3D _ 83. 45, F4, 01
?_091:  mov     eax, dword [ebp-0CH]                    ; 1C41 _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1C44 _ 3B. 45, 10
        jl      ?_090                                   ; 1C47 _ 7C, C7
        mov     eax, dword [ebp+8H]                     ; 1C49 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1C4C _ 8B. 55, 10
        add     edx, 4                                  ; 1C4F _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1C52 _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1C55 _ 89. 0C 90
        jmp     ?_095                                   ; 1C58 _ EB, 68

?_092:  mov     eax, dword [ebp+8H]                     ; 1C5A _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1C5D _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1C60 _ 89. 45, F4
        jmp     ?_094                                   ; 1C63 _ EB, 37

?_093:  mov     eax, dword [ebp-0CH]                    ; 1C65 _ 8B. 45, F4
        lea     ebx, [eax+1H]                           ; 1C68 _ 8D. 58, 01
        mov     eax, dword [ebp+8H]                     ; 1C6B _ 8B. 45, 08
        mov     edx, dword [ebp-0CH]                    ; 1C6E _ 8B. 55, F4
        add     edx, 4                                  ; 1C71 _ 83. C2, 04
        mov     ecx, dword [eax+edx*4]                  ; 1C74 _ 8B. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1C77 _ 8B. 45, 08
        lea     edx, [ebx+4H]                           ; 1C7A _ 8D. 53, 04
        mov     dword [eax+edx*4], ecx                  ; 1C7D _ 89. 0C 90
        mov     eax, dword [ebp-0CH]                    ; 1C80 _ 8B. 45, F4
        lea     edx, [eax+1H]                           ; 1C83 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1C86 _ 8B. 45, 08
        add     edx, 4                                  ; 1C89 _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1C8C _ 8B. 04 90
        mov     edx, dword [ebp-0CH]                    ; 1C8F _ 8B. 55, F4
        add     edx, 1                                  ; 1C92 _ 83. C2, 01
        mov     dword [eax+18H], edx                    ; 1C95 _ 89. 50, 18
        sub     dword [ebp-0CH], 1                      ; 1C98 _ 83. 6D, F4, 01
?_094:  mov     eax, dword [ebp-0CH]                    ; 1C9C _ 8B. 45, F4
        cmp     eax, dword [ebp+10H]                    ; 1C9F _ 3B. 45, 10
        jge     ?_093                                   ; 1CA2 _ 7D, C1
        mov     eax, dword [ebp+8H]                     ; 1CA4 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 1CA7 _ 8B. 55, 10
        add     edx, 4                                  ; 1CAA _ 83. C2, 04
        mov     ecx, dword [ebp+0CH]                    ; 1CAD _ 8B. 4D, 0C
        mov     dword [eax+edx*4], ecx                  ; 1CB0 _ 89. 0C 90
        mov     eax, dword [ebp+8H]                     ; 1CB3 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1CB6 _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 1CB9 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 1CBC _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 1CBF _ 89. 50, 0C
?_095:  mov     eax, dword [ebp+0CH]                    ; 1CC2 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CC5 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CC8 _ 8B. 45, 0C
        mov     eax, dword [eax+8H]                     ; 1CCB _ 8B. 40, 08
        lea     ebx, [edx+eax]                          ; 1CCE _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1CD1 _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1CD4 _ 8B. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1CD7 _ 8B. 45, 0C
        mov     eax, dword [eax+4H]                     ; 1CDA _ 8B. 40, 04
        lea     ecx, [edx+eax]                          ; 1CDD _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1CE0 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1CE3 _ 8B. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1CE6 _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1CE9 _ 8B. 40, 0C
        mov     dword [esp+10H], ebx                    ; 1CEC _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1CF0 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1CF4 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1CF8 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1CFC _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1CFF _ 89. 04 24
        call    _sheet_refreshsub                       ; 1D02 _ E8, 00000113
?_096:  nop                                             ; 1D07 _ 90
        add     esp, 52                                 ; 1D08 _ 83. C4, 34
        pop     ebx                                     ; 1D0B _ 5B
        pop     ebp                                     ; 1D0C _ 5D
        ret                                             ; 1D0D _ C3
; _sheet_updown End of function

_sheet_refresh:; Function begin
        push    ebp                                     ; 1D0E _ 55
        mov     ebp, esp                                ; 1D0F _ 89. E5
        push    esi                                     ; 1D11 _ 56
        push    ebx                                     ; 1D12 _ 53
        sub     esp, 32                                 ; 1D13 _ 83. EC, 20
        mov     eax, dword [ebp+0CH]                    ; 1D16 _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1D19 _ 8B. 40, 18
        test    eax, eax                                ; 1D1C _ 85. C0
        js      ?_097                                   ; 1D1E _ 78, 49
        mov     eax, dword [ebp+0CH]                    ; 1D20 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D23 _ 8B. 50, 10
        mov     eax, dword [ebp+1CH]                    ; 1D26 _ 8B. 45, 1C
        lea     ebx, [edx+eax]                          ; 1D29 _ 8D. 1C 02
        mov     eax, dword [ebp+0CH]                    ; 1D2C _ 8B. 45, 0C
        mov     edx, dword [eax+0CH]                    ; 1D2F _ 8B. 50, 0C
        mov     eax, dword [ebp+18H]                    ; 1D32 _ 8B. 45, 18
        lea     ecx, [edx+eax]                          ; 1D35 _ 8D. 0C 02
        mov     eax, dword [ebp+0CH]                    ; 1D38 _ 8B. 45, 0C
        mov     edx, dword [eax+10H]                    ; 1D3B _ 8B. 50, 10
        mov     eax, dword [ebp+14H]                    ; 1D3E _ 8B. 45, 14
        add     edx, eax                                ; 1D41 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1D43 _ 8B. 45, 0C
        mov     esi, dword [eax+0CH]                    ; 1D46 _ 8B. 70, 0C
        mov     eax, dword [ebp+10H]                    ; 1D49 _ 8B. 45, 10
        add     eax, esi                                ; 1D4C _ 01. F0
        mov     dword [esp+10H], ebx                    ; 1D4E _ 89. 5C 24, 10
        mov     dword [esp+0CH], ecx                    ; 1D52 _ 89. 4C 24, 0C
        mov     dword [esp+8H], edx                     ; 1D56 _ 89. 54 24, 08
        mov     dword [esp+4H], eax                     ; 1D5A _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1D5E _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1D61 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1D64 _ E8, 000000B1
?_097:  mov     eax, 0                                  ; 1D69 _ B8, 00000000
        add     esp, 32                                 ; 1D6E _ 83. C4, 20
        pop     ebx                                     ; 1D71 _ 5B
        pop     esi                                     ; 1D72 _ 5E
        pop     ebp                                     ; 1D73 _ 5D
        ret                                             ; 1D74 _ C3
; _sheet_refresh End of function

_sheet_slide:; Function begin
        push    ebp                                     ; 1D75 _ 55
        mov     ebp, esp                                ; 1D76 _ 89. E5
        sub     esp, 56                                 ; 1D78 _ 83. EC, 38
        mov     eax, dword [ebp+0CH]                    ; 1D7B _ 8B. 45, 0C
        mov     eax, dword [eax+0CH]                    ; 1D7E _ 8B. 40, 0C
        mov     dword [ebp-0CH], eax                    ; 1D81 _ 89. 45, F4
        mov     eax, dword [ebp+0CH]                    ; 1D84 _ 8B. 45, 0C
        mov     eax, dword [eax+10H]                    ; 1D87 _ 8B. 40, 10
        mov     dword [ebp-10H], eax                    ; 1D8A _ 89. 45, F0
        mov     eax, dword [ebp+0CH]                    ; 1D8D _ 8B. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 1D90 _ 8B. 55, 10
        mov     dword [eax+0CH], edx                    ; 1D93 _ 89. 50, 0C
        mov     eax, dword [ebp+0CH]                    ; 1D96 _ 8B. 45, 0C
        mov     edx, dword [ebp+14H]                    ; 1D99 _ 8B. 55, 14
        mov     dword [eax+10H], edx                    ; 1D9C _ 89. 50, 10
        mov     eax, dword [ebp+0CH]                    ; 1D9F _ 8B. 45, 0C
        mov     eax, dword [eax+18H]                    ; 1DA2 _ 8B. 40, 18
        test    eax, eax                                ; 1DA5 _ 85. C0
        js      ?_098                                   ; 1DA7 _ 78, 6E
        mov     eax, dword [ebp+0CH]                    ; 1DA9 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1DAC _ 8B. 50, 08
        mov     eax, dword [ebp-10H]                    ; 1DAF _ 8B. 45, F0
        add     edx, eax                                ; 1DB2 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1DB4 _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1DB7 _ 8B. 48, 04
        mov     eax, dword [ebp-0CH]                    ; 1DBA _ 8B. 45, F4
        add     eax, ecx                                ; 1DBD _ 01. C8
        mov     dword [esp+10H], edx                    ; 1DBF _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DC3 _ 89. 44 24, 0C
        mov     eax, dword [ebp-10H]                    ; 1DC7 _ 8B. 45, F0
        mov     dword [esp+8H], eax                     ; 1DCA _ 89. 44 24, 08
        mov     eax, dword [ebp-0CH]                    ; 1DCE _ 8B. 45, F4
        mov     dword [esp+4H], eax                     ; 1DD1 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1DD5 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1DD8 _ 89. 04 24
        call    _sheet_refreshsub                       ; 1DDB _ E8, 0000003A
        mov     eax, dword [ebp+0CH]                    ; 1DE0 _ 8B. 45, 0C
        mov     edx, dword [eax+8H]                     ; 1DE3 _ 8B. 50, 08
        mov     eax, dword [ebp+14H]                    ; 1DE6 _ 8B. 45, 14
        add     edx, eax                                ; 1DE9 _ 01. C2
        mov     eax, dword [ebp+0CH]                    ; 1DEB _ 8B. 45, 0C
        mov     ecx, dword [eax+4H]                     ; 1DEE _ 8B. 48, 04
        mov     eax, dword [ebp+10H]                    ; 1DF1 _ 8B. 45, 10
        add     eax, ecx                                ; 1DF4 _ 01. C8
        mov     dword [esp+10H], edx                    ; 1DF6 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 1DFA _ 89. 44 24, 0C
        mov     eax, dword [ebp+14H]                    ; 1DFE _ 8B. 45, 14
        mov     dword [esp+8H], eax                     ; 1E01 _ 89. 44 24, 08
        mov     eax, dword [ebp+10H]                    ; 1E05 _ 8B. 45, 10
        mov     dword [esp+4H], eax                     ; 1E08 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 1E0C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 1E0F _ 89. 04 24
        call    _sheet_refreshsub                       ; 1E12 _ E8, 00000003
?_098:  nop                                             ; 1E17 _ 90
        leave                                           ; 1E18 _ C9
        ret                                             ; 1E19 _ C3
; _sheet_slide End of function

_sheet_refreshsub:; Function begin
        push    ebp                                     ; 1E1A _ 55
        mov     ebp, esp                                ; 1E1B _ 89. E5
        sub     esp, 48                                 ; 1E1D _ 83. EC, 30
        mov     eax, dword [ebp+8H]                     ; 1E20 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1E23 _ 8B. 00
        mov     dword [ebp-10H], eax                    ; 1E25 _ 89. 45, F0
        cmp     dword [ebp+0CH], 0                      ; 1E28 _ 83. 7D, 0C, 00
        jns     ?_099                                   ; 1E2C _ 79, 07
        mov     dword [ebp+0CH], 0                      ; 1E2E _ C7. 45, 0C, 00000000
?_099:  cmp     dword [ebp+10H], 8                      ; 1E35 _ 83. 7D, 10, 08
        jg      ?_100                                   ; 1E39 _ 7F, 07
        mov     dword [ebp+10H], 0                      ; 1E3B _ C7. 45, 10, 00000000
?_100:  mov     eax, dword [ebp+8H]                     ; 1E42 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1E45 _ 8B. 40, 04
        cmp     dword [ebp+14H], eax                    ; 1E48 _ 39. 45, 14
        jle     ?_101                                   ; 1E4B _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 1E4D _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1E50 _ 8B. 40, 04
        mov     dword [ebp+14H], eax                    ; 1E53 _ 89. 45, 14
?_101:  mov     eax, dword [ebp+8H]                     ; 1E56 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1E59 _ 8B. 40, 08
        cmp     dword [ebp+18H], eax                    ; 1E5C _ 39. 45, 18
        jle     ?_102                                   ; 1E5F _ 7E, 09
        mov     eax, dword [ebp+8H]                     ; 1E61 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 1E64 _ 8B. 40, 08
        mov     dword [ebp+18H], eax                    ; 1E67 _ 89. 45, 18
?_102:  mov     dword [ebp-4H], 0                       ; 1E6A _ C7. 45, FC, 00000000
        jmp     ?_109                                   ; 1E71 _ E9, 000000D8

?_103:  mov     eax, dword [ebp+8H]                     ; 1E76 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1E79 _ 8B. 55, FC
        add     edx, 4                                  ; 1E7C _ 83. C2, 04
        mov     eax, dword [eax+edx*4]                  ; 1E7F _ 8B. 04 90
        mov     dword [ebp-14H], eax                    ; 1E82 _ 89. 45, EC
        mov     eax, dword [ebp-14H]                    ; 1E85 _ 8B. 45, EC
        mov     eax, dword [eax]                        ; 1E88 _ 8B. 00
        mov     dword [ebp-18H], eax                    ; 1E8A _ 89. 45, E8
        mov     dword [ebp-0CH], 0                      ; 1E8D _ C7. 45, F4, 00000000
        jmp     ?_108                                   ; 1E94 _ E9, 000000A2

?_104:  mov     eax, dword [ebp-14H]                    ; 1E99 _ 8B. 45, EC
        mov     edx, dword [eax+10H]                    ; 1E9C _ 8B. 50, 10
        mov     eax, dword [ebp-0CH]                    ; 1E9F _ 8B. 45, F4
        add     eax, edx                                ; 1EA2 _ 01. D0
        mov     dword [ebp-1CH], eax                    ; 1EA4 _ 89. 45, E4
        mov     dword [ebp-8H], 0                       ; 1EA7 _ C7. 45, F8, 00000000
        jmp     ?_107                                   ; 1EAE _ EB, 78

?_105:  mov     eax, dword [ebp-14H]                    ; 1EB0 _ 8B. 45, EC
        mov     edx, dword [eax+0CH]                    ; 1EB3 _ 8B. 50, 0C
        mov     eax, dword [ebp-8H]                     ; 1EB6 _ 8B. 45, F8
        add     eax, edx                                ; 1EB9 _ 01. D0
        mov     dword [ebp-20H], eax                    ; 1EBB _ 89. 45, E0
        mov     eax, dword [ebp+0CH]                    ; 1EBE _ 8B. 45, 0C
        cmp     eax, dword [ebp-20H]                    ; 1EC1 _ 3B. 45, E0
        jg      ?_106                                   ; 1EC4 _ 7F, 5E
        mov     eax, dword [ebp-20H]                    ; 1EC6 _ 8B. 45, E0
        cmp     eax, dword [ebp+14H]                    ; 1EC9 _ 3B. 45, 14
        jge     ?_106                                   ; 1ECC _ 7D, 56
        mov     eax, dword [ebp+10H]                    ; 1ECE _ 8B. 45, 10
        cmp     eax, dword [ebp-1CH]                    ; 1ED1 _ 3B. 45, E4
        jg      ?_106                                   ; 1ED4 _ 7F, 4E
        mov     eax, dword [ebp-1CH]                    ; 1ED6 _ 8B. 45, E4
        cmp     eax, dword [ebp+18H]                    ; 1ED9 _ 3B. 45, 18
        jge     ?_106                                   ; 1EDC _ 7D, 46
        mov     eax, dword [ebp-14H]                    ; 1EDE _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1EE1 _ 8B. 40, 04
        imul    eax, dword [ebp-0CH]                    ; 1EE4 _ 0F AF. 45, F4
        mov     edx, dword [ebp-8H]                     ; 1EE8 _ 8B. 55, F8
        add     eax, edx                                ; 1EEB _ 01. D0
        mov     edx, eax                                ; 1EED _ 89. C2
        mov     eax, dword [ebp-18H]                    ; 1EEF _ 8B. 45, E8
        add     eax, edx                                ; 1EF2 _ 01. D0
        movzx   eax, byte [eax]                         ; 1EF4 _ 0F B6. 00
        mov     byte [ebp-21H], al                      ; 1EF7 _ 88. 45, DF
        movzx   eax, byte [ebp-21H]                     ; 1EFA _ 0F B6. 45, DF
        mov     edx, dword [ebp-14H]                    ; 1EFE _ 8B. 55, EC
        mov     edx, dword [edx+14H]                    ; 1F01 _ 8B. 52, 14
        cmp     eax, edx                                ; 1F04 _ 39. D0
        jz      ?_106                                   ; 1F06 _ 74, 1C
        mov     eax, dword [ebp+8H]                     ; 1F08 _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 1F0B _ 8B. 40, 04
        imul    eax, dword [ebp-1CH]                    ; 1F0E _ 0F AF. 45, E4
        mov     edx, dword [ebp-20H]                    ; 1F12 _ 8B. 55, E0
        add     eax, edx                                ; 1F15 _ 01. D0
        mov     edx, eax                                ; 1F17 _ 89. C2
        mov     eax, dword [ebp-10H]                    ; 1F19 _ 8B. 45, F0
        add     edx, eax                                ; 1F1C _ 01. C2
        movzx   eax, byte [ebp-21H]                     ; 1F1E _ 0F B6. 45, DF
        mov     byte [edx], al                          ; 1F22 _ 88. 02
?_106:  add     dword [ebp-8H], 1                       ; 1F24 _ 83. 45, F8, 01
?_107:  mov     eax, dword [ebp-14H]                    ; 1F28 _ 8B. 45, EC
        mov     eax, dword [eax+4H]                     ; 1F2B _ 8B. 40, 04
        cmp     dword [ebp-8H], eax                     ; 1F2E _ 39. 45, F8
        jl      ?_105                                   ; 1F31 _ 0F 8C, FFFFFF79
        add     dword [ebp-0CH], 1                      ; 1F37 _ 83. 45, F4, 01
?_108:  mov     eax, dword [ebp-14H]                    ; 1F3B _ 8B. 45, EC
        mov     eax, dword [eax+8H]                     ; 1F3E _ 8B. 40, 08
        cmp     dword [ebp-0CH], eax                    ; 1F41 _ 39. 45, F4
        jl      ?_104                                   ; 1F44 _ 0F 8C, FFFFFF4F
        add     dword [ebp-4H], 1                       ; 1F4A _ 83. 45, FC, 01
?_109:  mov     eax, dword [ebp+8H]                     ; 1F4E _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 1F51 _ 8B. 40, 0C
        cmp     dword [ebp-4H], eax                     ; 1F54 _ 39. 45, FC
        jle     ?_103                                   ; 1F57 _ 0F 8E, FFFFFF19
        nop                                             ; 1F5D _ 90
        leave                                           ; 1F5E _ C9
        ret                                             ; 1F5F _ C3
; _sheet_refreshsub End of function

.text:  ; Local function

_memman_init:
        push    ebp                                     ; 1F60 _ 55
        mov     ebp, esp                                ; 1F61 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 1F63 _ 8B. 45, 08
        mov     dword [eax], 0                          ; 1F66 _ C7. 00, 00000000
        mov     eax, dword [ebp+8H]                     ; 1F6C _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 1F6F _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 1F76 _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 1F79 _ C7. 40, 08, 00000000
        mov     eax, dword [ebp+8H]                     ; 1F80 _ 8B. 45, 08
        mov     dword [eax+0CH], 0                      ; 1F83 _ C7. 40, 0C, 00000000
        nop                                             ; 1F8A _ 90
        pop     ebp                                     ; 1F8B _ 5D
        ret                                             ; 1F8C _ C3

_memman_total:; Function begin
        push    ebp                                     ; 1F8D _ 55
        mov     ebp, esp                                ; 1F8E _ 89. E5
        sub     esp, 16                                 ; 1F90 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 1F93 _ C7. 45, F8, 00000000
        mov     dword [ebp-4H], 0                       ; 1F9A _ C7. 45, FC, 00000000
        jmp     ?_111                                   ; 1FA1 _ EB, 14

?_110:  mov     eax, dword [ebp+8H]                     ; 1FA3 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FA6 _ 8B. 55, FC
        add     edx, 2                                  ; 1FA9 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1FAC _ 8B. 44 D0, 04
        add     dword [ebp-8H], eax                     ; 1FB0 _ 01. 45, F8
        add     dword [ebp-4H], 1                       ; 1FB3 _ 83. 45, FC, 01
?_111:  mov     eax, dword [ebp+8H]                     ; 1FB7 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 1FBA _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 1FBC _ 39. 45, FC
        jc      ?_110                                   ; 1FBF _ 72, E2
        mov     eax, dword [ebp-8H]                     ; 1FC1 _ 8B. 45, F8
        leave                                           ; 1FC4 _ C9
        ret                                             ; 1FC5 _ C3
; _memman_total End of function

_memman_alloc:; Function begin
        push    ebp                                     ; 1FC6 _ 55
        mov     ebp, esp                                ; 1FC7 _ 89. E5
        sub     esp, 16                                 ; 1FC9 _ 83. EC, 10
        mov     dword [ebp-4H], 0                       ; 1FCC _ C7. 45, FC, 00000000
        jmp     ?_115                                   ; 1FD3 _ E9, 00000083

?_112:  mov     eax, dword [ebp+8H]                     ; 1FD8 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FDB _ 8B. 55, FC
        add     edx, 2                                  ; 1FDE _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 1FE1 _ 8B. 44 D0, 04
        cmp     dword [ebp+0CH], eax                    ; 1FE5 _ 39. 45, 0C
        ja      ?_114                                   ; 1FE8 _ 77, 6D
        mov     eax, dword [ebp+8H]                     ; 1FEA _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FED _ 8B. 55, FC
        add     edx, 2                                  ; 1FF0 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 1FF3 _ 8B. 04 D0
        mov     dword [ebp-8H], eax                     ; 1FF6 _ 89. 45, F8
        mov     eax, dword [ebp+8H]                     ; 1FF9 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 1FFC _ 8B. 55, FC
        add     edx, 2                                  ; 1FFF _ 83. C2, 02
        mov     edx, dword [eax+edx*8]                  ; 2002 _ 8B. 14 D0
        mov     eax, dword [ebp+0CH]                    ; 2005 _ 8B. 45, 0C
        lea     ecx, [edx+eax]                          ; 2008 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 200B _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 200E _ 8B. 55, FC
        add     edx, 2                                  ; 2011 _ 83. C2, 02
        mov     dword [eax+edx*8], ecx                  ; 2014 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2017 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 201A _ 8B. 55, FC
        add     edx, 2                                  ; 201D _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2020 _ 8B. 44 D0, 04
        sub     eax, dword [ebp+0CH]                    ; 2024 _ 2B. 45, 0C
        mov     edx, dword [ebp+8H]                     ; 2027 _ 8B. 55, 08
        mov     ecx, dword [ebp-4H]                     ; 202A _ 8B. 4D, FC
        add     ecx, 2                                  ; 202D _ 83. C1, 02
        mov     dword [edx+ecx*8+4H], eax               ; 2030 _ 89. 44 CA, 04
        mov     eax, dword [ebp+8H]                     ; 2034 _ 8B. 45, 08
        mov     edx, dword [ebp-4H]                     ; 2037 _ 8B. 55, FC
        add     edx, 2                                  ; 203A _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 203D _ 8B. 44 D0, 04
        test    eax, eax                                ; 2041 _ 85. C0
        jnz     ?_113                                   ; 2043 _ 75, 0D
        mov     eax, dword [ebp+8H]                     ; 2045 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2048 _ 8B. 00
        lea     edx, [eax-1H]                           ; 204A _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 204D _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2050 _ 89. 10
?_113:  mov     eax, dword [ebp-8H]                     ; 2052 _ 8B. 45, F8
        jmp     ?_116                                   ; 2055 _ EB, 17

?_114:  add     dword [ebp-4H], 1                       ; 2057 _ 83. 45, FC, 01
?_115:  mov     eax, dword [ebp+8H]                     ; 205B _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 205E _ 8B. 00
        cmp     dword [ebp-4H], eax                     ; 2060 _ 39. 45, FC
        jc      ?_112                                   ; 2063 _ 0F 82, FFFFFF6F
        mov     eax, 0                                  ; 2069 _ B8, 00000000
?_116:  leave                                           ; 206E _ C9
        ret                                             ; 206F _ C3
; _memman_alloc End of function

_memman_free:; Function begin
        push    ebp                                     ; 2070 _ 55
        mov     ebp, esp                                ; 2071 _ 89. E5
        push    ebx                                     ; 2073 _ 53
        sub     esp, 16                                 ; 2074 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 2077 _ C7. 45, F8, 00000000
        jmp     ?_118                                   ; 207E _ EB, 15

?_117:  mov     eax, dword [ebp+8H]                     ; 2080 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2083 _ 8B. 55, F8
        add     edx, 2                                  ; 2086 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2089 _ 8B. 04 D0
        cmp     dword [ebp+0CH], eax                    ; 208C _ 39. 45, 0C
        jc      ?_119                                   ; 208F _ 72, 10
        add     dword [ebp-8H], 1                       ; 2091 _ 83. 45, F8, 01
?_118:  mov     eax, dword [ebp+8H]                     ; 2095 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2098 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 209A _ 39. 45, F8
        jl      ?_117                                   ; 209D _ 7C, E1
        jmp     ?_120                                   ; 209F _ EB, 01

?_119:  nop                                             ; 20A1 _ 90
?_120:  cmp     dword [ebp-8H], 0                       ; 20A2 _ 83. 7D, F8, 00
        jle     ?_122                                   ; 20A6 _ 0F 8E, 000000B8
        mov     eax, dword [ebp-8H]                     ; 20AC _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20AF _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20B2 _ 8B. 45, 08
        add     edx, 2                                  ; 20B5 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8]                  ; 20B8 _ 8B. 0C D0
        mov     eax, dword [ebp-8H]                     ; 20BB _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20BE _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20C1 _ 8B. 45, 08
        add     edx, 2                                  ; 20C4 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 20C7 _ 8B. 44 D0, 04
        add     eax, ecx                                ; 20CB _ 01. C8
        cmp     dword [ebp+0CH], eax                    ; 20CD _ 39. 45, 0C
        jne     ?_122                                   ; 20D0 _ 0F 85, 0000008E
        mov     eax, dword [ebp-8H]                     ; 20D6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20D9 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 20DC _ 8B. 45, 08
        add     edx, 2                                  ; 20DF _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 20E2 _ 8B. 4C D0, 04
        mov     eax, dword [ebp-8H]                     ; 20E6 _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 20E9 _ 8D. 50, FF
        mov     eax, dword [ebp+10H]                    ; 20EC _ 8B. 45, 10
        add     ecx, eax                                ; 20EF _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 20F1 _ 8B. 45, 08
        add     edx, 2                                  ; 20F4 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 20F7 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 20FB _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 20FE _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2100 _ 39. 45, F8
        jge     ?_121                                   ; 2103 _ 7D, 55
        mov     edx, dword [ebp+0CH]                    ; 2105 _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2108 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 210B _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 210E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2111 _ 8B. 55, F8
        add     edx, 2                                  ; 2114 _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2117 _ 8B. 04 D0
        cmp     ecx, eax                                ; 211A _ 39. C1
        jnz     ?_121                                   ; 211C _ 75, 3C
        mov     eax, dword [ebp-8H]                     ; 211E _ 8B. 45, F8
        lea     edx, [eax-1H]                           ; 2121 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2124 _ 8B. 45, 08
        add     edx, 2                                  ; 2127 _ 83. C2, 02
        mov     ecx, dword [eax+edx*8+4H]               ; 212A _ 8B. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 212E _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2131 _ 8B. 55, F8
        add     edx, 2                                  ; 2134 _ 83. C2, 02
        mov     eax, dword [eax+edx*8+4H]               ; 2137 _ 8B. 44 D0, 04
        mov     edx, dword [ebp-8H]                     ; 213B _ 8B. 55, F8
        sub     edx, 1                                  ; 213E _ 83. EA, 01
        add     ecx, eax                                ; 2141 _ 01. C1
        mov     eax, dword [ebp+8H]                     ; 2143 _ 8B. 45, 08
        add     edx, 2                                  ; 2146 _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 2149 _ 89. 4C D0, 04
        mov     eax, dword [ebp+8H]                     ; 214D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2150 _ 8B. 00
        lea     edx, [eax-1H]                           ; 2152 _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 2155 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2158 _ 89. 10
?_121:  mov     eax, 0                                  ; 215A _ B8, 00000000
        jmp     ?_128                                   ; 215F _ E9, 0000011C

?_122:  mov     eax, dword [ebp+8H]                     ; 2164 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2167 _ 8B. 00
        cmp     dword [ebp-8H], eax                     ; 2169 _ 39. 45, F8
        jge     ?_123                                   ; 216C _ 7D, 52
        mov     edx, dword [ebp+0CH]                    ; 216E _ 8B. 55, 0C
        mov     eax, dword [ebp+10H]                    ; 2171 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 2174 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 2177 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 217A _ 8B. 55, F8
        add     edx, 2                                  ; 217D _ 83. C2, 02
        mov     eax, dword [eax+edx*8]                  ; 2180 _ 8B. 04 D0
        cmp     ecx, eax                                ; 2183 _ 39. C1
        jnz     ?_123                                   ; 2185 _ 75, 39
        mov     eax, dword [ebp+8H]                     ; 2187 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 218A _ 8B. 55, F8
        add     edx, 2                                  ; 218D _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 2190 _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 2193 _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2196 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2199 _ 8B. 55, F8
        add     edx, 2                                  ; 219C _ 83. C2, 02
        mov     edx, dword [eax+edx*8+4H]               ; 219F _ 8B. 54 D0, 04
        mov     eax, dword [ebp+10H]                    ; 21A3 _ 8B. 45, 10
        lea     ecx, [edx+eax]                          ; 21A6 _ 8D. 0C 02
        mov     eax, dword [ebp+8H]                     ; 21A9 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 21AC _ 8B. 55, F8
        add     edx, 2                                  ; 21AF _ 83. C2, 02
        mov     dword [eax+edx*8+4H], ecx               ; 21B2 _ 89. 4C D0, 04
        mov     eax, 0                                  ; 21B6 _ B8, 00000000
        jmp     ?_128                                   ; 21BB _ E9, 000000C0

?_123:  mov     eax, dword [ebp+8H]                     ; 21C0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21C3 _ 8B. 00
        cmp     eax, 4095                               ; 21C5 _ 3D, 00000FFF
        jg      ?_127                                   ; 21CA _ 0F 8F, 00000087
        mov     eax, dword [ebp+8H]                     ; 21D0 _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 21D3 _ 8B. 00
        mov     dword [ebp-0CH], eax                    ; 21D5 _ 89. 45, F4
        jmp     ?_125                                   ; 21D8 _ EB, 28

?_124:  mov     eax, dword [ebp-0CH]                    ; 21DA _ 8B. 45, F4
        lea     edx, [eax-1H]                           ; 21DD _ 8D. 50, FF
        mov     ecx, dword [ebp+8H]                     ; 21E0 _ 8B. 4D, 08
        mov     eax, dword [ebp-0CH]                    ; 21E3 _ 8B. 45, F4
        lea     ebx, [eax+2H]                           ; 21E6 _ 8D. 58, 02
        mov     eax, dword [ebp+8H]                     ; 21E9 _ 8B. 45, 08
        add     edx, 2                                  ; 21EC _ 83. C2, 02
        lea     edx, [eax+edx*8]                        ; 21EF _ 8D. 14 D0
        mov     eax, dword [edx]                        ; 21F2 _ 8B. 02
        mov     edx, dword [edx+4H]                     ; 21F4 _ 8B. 52, 04
        mov     dword [ecx+ebx*8], eax                  ; 21F7 _ 89. 04 D9
        mov     dword [ecx+ebx*8+4H], edx               ; 21FA _ 89. 54 D9, 04
        sub     dword [ebp-0CH], 1                      ; 21FE _ 83. 6D, F4, 01
?_125:  mov     eax, dword [ebp-0CH]                    ; 2202 _ 8B. 45, F4
        cmp     eax, dword [ebp-8H]                     ; 2205 _ 3B. 45, F8
        jg      ?_124                                   ; 2208 _ 7F, D0
        mov     eax, dword [ebp+8H]                     ; 220A _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 220D _ 8B. 00
        lea     edx, [eax+1H]                           ; 220F _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2212 _ 8B. 45, 08
        mov     dword [eax], edx                        ; 2215 _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 2217 _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 221A _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 221D _ 8B. 45, 08
        mov     eax, dword [eax]                        ; 2220 _ 8B. 00
        cmp     edx, eax                                ; 2222 _ 39. C2
        jge     ?_126                                   ; 2224 _ 7D, 0B
        mov     eax, dword [ebp+8H]                     ; 2226 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 2229 _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 222B _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 222E _ 89. 50, 04
?_126:  mov     eax, dword [ebp+8H]                     ; 2231 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2234 _ 8B. 55, F8
        add     edx, 2                                  ; 2237 _ 83. C2, 02
        mov     ecx, dword [ebp+0CH]                    ; 223A _ 8B. 4D, 0C
        mov     dword [eax+edx*8], ecx                  ; 223D _ 89. 0C D0
        mov     eax, dword [ebp+8H]                     ; 2240 _ 8B. 45, 08
        mov     edx, dword [ebp-8H]                     ; 2243 _ 8B. 55, F8
        add     edx, 2                                  ; 2246 _ 83. C2, 02
        mov     ecx, dword [ebp+10H]                    ; 2249 _ 8B. 4D, 10
        mov     dword [eax+edx*8+4H], ecx               ; 224C _ 89. 4C D0, 04
        mov     eax, 0                                  ; 2250 _ B8, 00000000
        jmp     ?_128                                   ; 2255 _ EB, 29

?_127:  mov     eax, dword [ebp+8H]                     ; 2257 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 225A _ 8B. 40, 0C
        lea     edx, [eax+1H]                           ; 225D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 2260 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 2263 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 2266 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 2269 _ 8B. 40, 08
        mov     edx, eax                                ; 226C _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 226E _ 8B. 45, 10
        add     eax, edx                                ; 2271 _ 01. D0
        mov     edx, eax                                ; 2273 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 2275 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 2278 _ 89. 50, 08
        mov     eax, 4294967295                         ; 227B _ B8, FFFFFFFF
?_128:  add     esp, 16                                 ; 2280 _ 83. C4, 10
        pop     ebx                                     ; 2283 _ 5B
        pop     ebp                                     ; 2284 _ 5D
        ret                                             ; 2285 _ C3
; _memman_free End of function

_memman_alloc_4k:; Function begin
        push    ebp                                     ; 2286 _ 55
        mov     ebp, esp                                ; 2287 _ 89. E5
        sub     esp, 24                                 ; 2289 _ 83. EC, 18
        mov     eax, dword [ebp+0CH]                    ; 228C _ 8B. 45, 0C
        add     eax, 4095                               ; 228F _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 2294 _ 25, FFFFF000
        mov     dword [ebp+0CH], eax                    ; 2299 _ 89. 45, 0C
        mov     eax, dword [ebp+0CH]                    ; 229C _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 229F _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22A3 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22A6 _ 89. 04 24
        call    _memman_alloc                           ; 22A9 _ E8, FFFFFD18
        mov     dword [ebp-4H], eax                     ; 22AE _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 22B1 _ 8B. 45, FC
        leave                                           ; 22B4 _ C9
        ret                                             ; 22B5 _ C3
; _memman_alloc_4k End of function

_memman_free_4k:; Function begin
        push    ebp                                     ; 22B6 _ 55
        mov     ebp, esp                                ; 22B7 _ 89. E5
        sub     esp, 28                                 ; 22B9 _ 83. EC, 1C
        mov     eax, dword [ebp+10H]                    ; 22BC _ 8B. 45, 10
        add     eax, 4095                               ; 22BF _ 05, 00000FFF
        and     eax, 0FFFFF000H                         ; 22C4 _ 25, FFFFF000
        mov     dword [ebp+10H], eax                    ; 22C9 _ 89. 45, 10
        mov     eax, dword [ebp+10H]                    ; 22CC _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 22CF _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 22D3 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 22D6 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 22DA _ 8B. 45, 08
        mov     dword [esp], eax                        ; 22DD _ 89. 04 24
        call    _memman_free                            ; 22E0 _ E8, FFFFFD8B
        mov     dword [ebp-4H], eax                     ; 22E5 _ 89. 45, FC
        mov     eax, dword [ebp-4H]                     ; 22E8 _ 8B. 45, FC
        leave                                           ; 22EB _ C9
        ret                                             ; 22EC _ C3
; _memman_free_4k End of function

        nop                                             ; 22ED _ 90
        nop                                             ; 22EE _ 90
        nop                                             ; 22EF _ 90



_memman:                                                ; dword
        dd 00100000H                                    ; 0000 _ 1048576 

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0004 _ 0X

?_129:  db 00H                                          ; 0006 _ .

?_130:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0007 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 000F _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0017 _ ........
        db 00H                                          ; 001F _ .

_table_rgb.2189:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2236:                                           ; byte
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

_closebtn.2364:                                         ; byte
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



?_131:                                                  ; byte
        db 77H, 69H, 6EH, 64H, 6FH, 77H, 6EH, 00H       ; 0000 _ windown.

?_132:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0008 _ Fragile 
        db 4FH, 53H, 00H                                ; 0010 _ OS.

?_133:                                                  ; byte
        db 69H, 6DH, 70H, 72H, 6FH, 76H, 65H, 20H       ; 0013 _ improve 
        db 73H, 74H, 72H, 69H, 6EH, 67H, 20H, 73H       ; 001B _ string s
        db 68H, 6FH, 77H, 69H, 6EH, 67H, 00H            ; 0023 _ howing.

?_134:                                                  ; byte
        db 70H, 61H, 67H, 65H, 20H, 69H, 73H, 3AH       ; 002A _ page is:
        db 20H, 00H                                     ; 0032 _  .

?_135:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0034 _ BaseAddr
        db 4CH, 3AH, 20H, 00H                           ; 003C _ L: .

?_136:                                                  ; byte
        db 42H, 61H, 73H, 65H, 41H, 64H, 64H, 72H       ; 0040 _ BaseAddr
        db 48H, 3AH, 20H, 00H                           ; 0048 _ H: .

?_137:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 4CH, 6FH       ; 004C _ lengthLo
        db 77H, 3AH, 20H, 00H                           ; 0054 _ w: .

?_138:                                                  ; byte
        db 6CH, 65H, 6EH, 67H, 74H, 68H, 48H, 69H       ; 0058 _ lengthHi
        db 67H, 68H, 3AH, 20H, 00H                      ; 0060 _ gh: .

?_139:                                                  ; byte
        db 74H, 79H, 70H, 65H, 3AH, 20H, 00H            ; 0065 _ type: .

?_140:                                                  ; byte
        db 57H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 006C _ Welcome 
        db 74H, 6FH, 00H                                ; 0074 _ to.

?_141:                                                  ; byte
        db 4DH, 79H, 4FH, 53H, 00H                      ; 0077 _ MyOS.



        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..

.rdata$zzz:                                             ; byte
        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0040 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0048 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0050 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0058 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0060 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0068 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0070 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0078 _  8.1.0..

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

?_142:  resw    1                                       ; 0004

?_143:  resw    1                                       ; 0006

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

_str.2284:                                              ; byte
        resb    1                                       ; 0220

?_144:  resb    9                                       ; 0221

?_145:  resb    22                                      ; 022A


