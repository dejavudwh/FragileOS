; Disassembly of file: desktop.o
; Fri Aug  2 20:51:18 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


global _drawDesktop: function
global _computeMousePosition: function
global _eraseMouse: function
global _drawMouse: function
global _show_mouse_info: function
global _initBootInfo: function
global _showString: function
global _init_palette: function
global _set_palette: function
global _boxfill8: function
global _showFont8: function
global _init_mouse_cursor: function
global _putblock: function
global _intHandlerFromC: function
global _charToHexVal: function
global _charToHexStr: function
global _wait_KBC_sendready: function
global _init_keyboard: function
global _enable_mouse: function
global _intHandlerForMouse: function
global _fifo8_init: function
global _fifo8_put: function
global _fifo8_get: function
global _fifo8_status: function
global _mouse_decode: function

extern _io_in8                                          ; near
extern _io_store_eflags                                 ; near
extern _io_out8                                         ; near
extern _io_load_eflags                                  ; near
extern _io_stihlt                                       ; near
extern _io_cli                                          ; near
extern _io_sti                                          ; near
extern _systemFont                                      ; byte


SECTION .text   align=4 execute                         ; section number 1, code

.text:  ; Local function

_drawDesktop:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        mov     dword [esp], _bootInfo                  ; 0007 _ C7. 04 24, 00000100(d)
        call    _initBootInfo                           ; 000E _ E8, 00000700
        mov     eax, dword [_bootInfo]                  ; 0013 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0018 _ 89. 45, F4
        movzx   eax, word [?_059]                       ; 001B _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0022 _ 98
        mov     dword [ebp-10H], eax                    ; 0023 _ 89. 45, F0
        movzx   eax, word [?_060]                       ; 0026 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 002D _ 98
        mov     dword [ebp-14H], eax                    ; 002E _ 89. 45, EC
        mov     dword [esp+8H], _keybuf                 ; 0031 _ C7. 44 24, 08, 00000140(d)
        mov     dword [esp+4H], 32                      ; 0039 _ C7. 44 24, 04, 00000020
        mov     dword [esp], _keyinfo                   ; 0041 _ C7. 04 24, 00000108(d)
        call    _fifo8_init                             ; 0048 _ E8, 00000CF0
        mov     dword [esp+8H], _mousebuf               ; 004D _ C7. 44 24, 08, 00000160(d)
        mov     dword [esp+4H], 128                     ; 0055 _ C7. 44 24, 04, 00000080
        mov     dword [esp], _mouseinfo                 ; 005D _ C7. 04 24, 00000120(d)
        call    _fifo8_init                             ; 0064 _ E8, 00000CD4
        call    _init_palette                           ; 0069 _ E8, 00000727
        call    _init_keyboard                          ; 006E _ E8, 00000BF9
        mov     eax, dword [ebp-14H]                    ; 0073 _ 8B. 45, EC
        lea     edx, [eax-11H]                          ; 0076 _ 8D. 50, EF
        mov     eax, dword [ebp-10H]                    ; 0079 _ 8B. 45, F0
        sub     eax, 1                                  ; 007C _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 007F _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0083 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0087 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 008F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0097 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-10H]                    ; 009F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00A2 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00A6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00A9 _ 89. 04 24
        call    _boxfill8                               ; 00AC _ E8, 000007AF
        mov     eax, dword [ebp-14H]                    ; 00B1 _ 8B. 45, EC
        lea     ecx, [eax-10H]                          ; 00B4 _ 8D. 48, F0
        mov     eax, dword [ebp-10H]                    ; 00B7 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00BA _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00BD _ 8B. 45, EC
        sub     eax, 16                                 ; 00C0 _ 83. E8, 10
        mov     dword [esp+18H], ecx                    ; 00C3 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00C7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00CB _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00CF _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 00D7 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 00DF _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00E2 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00E6 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00E9 _ 89. 04 24
        call    _boxfill8                               ; 00EC _ E8, 0000076F
        mov     eax, dword [ebp-14H]                    ; 00F1 _ 8B. 45, EC
        lea     ecx, [eax-0FH]                          ; 00F4 _ 8D. 48, F1
        mov     eax, dword [ebp-10H]                    ; 00F7 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00FA _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00FD _ 8B. 45, EC
        sub     eax, 15                                 ; 0100 _ 83. E8, 0F
        mov     dword [esp+18H], ecx                    ; 0103 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0107 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 010B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 010F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 0117 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 011F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0122 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0126 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0129 _ 89. 04 24
        call    _boxfill8                               ; 012C _ E8, 0000072F
        mov     eax, dword [ebp-14H]                    ; 0131 _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 0134 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 0137 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 013A _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 013D _ 8B. 45, EC
        sub     eax, 14                                 ; 0140 _ 83. E8, 0E
        mov     dword [esp+18H], ecx                    ; 0143 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0147 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 014B _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 014F _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0157 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 015F _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0162 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0166 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0169 _ 89. 04 24
        call    _boxfill8                               ; 016C _ E8, 000006EF
        mov     eax, dword [ebp-14H]                    ; 0171 _ 8B. 45, EC
        lea     edx, [eax-0CH]                          ; 0174 _ 8D. 50, F4
        mov     eax, dword [ebp-14H]                    ; 0177 _ 8B. 45, EC
        sub     eax, 12                                 ; 017A _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 017D _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0181 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0189 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 018D _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0195 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 019D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01A0 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01A4 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01A7 _ 89. 04 24
        call    _boxfill8                               ; 01AA _ E8, 000006B1
        mov     eax, dword [ebp-14H]                    ; 01AF _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01B2 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01B5 _ 8B. 45, EC
        sub     eax, 12                                 ; 01B8 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 01BB _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 01BF _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 01C7 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 01CB _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 01D3 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 01DB _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01DE _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01E2 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01E5 _ 89. 04 24
        call    _boxfill8                               ; 01E8 _ E8, 00000673
        mov     eax, dword [ebp-14H]                    ; 01ED _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01F0 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01F3 _ 8B. 45, EC
        sub     eax, 4                                  ; 01F6 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01F9 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01FD _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0205 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0209 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 0211 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0219 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 021C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0220 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0223 _ 89. 04 24
        call    _boxfill8                               ; 0226 _ E8, 00000635
        mov     eax, dword [ebp-14H]                    ; 022B _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 022E _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 0231 _ 8B. 45, EC
        sub     eax, 11                                 ; 0234 _ 83. E8, 0B
        mov     dword [esp+18H], edx                    ; 0237 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 023B _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0243 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 0247 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 024F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0257 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 025A _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 025E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0261 _ 89. 04 24
        call    _boxfill8                               ; 0264 _ E8, 000005F7
        mov     eax, dword [ebp-14H]                    ; 0269 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 026C _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 026F _ 8B. 45, EC
        sub     eax, 3                                  ; 0272 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0275 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0279 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0281 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0285 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 028D _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0295 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0298 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 029C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 029F _ 89. 04 24
        call    _boxfill8                               ; 02A2 _ E8, 000005B9
        mov     eax, dword [ebp-14H]                    ; 02A7 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 02AA _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 02AD _ 8B. 45, EC
        sub     eax, 12                                 ; 02B0 _ 83. E8, 0C
        mov     dword [esp+18H], edx                    ; 02B3 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 02B7 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 02BF _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 02C3 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 02CB _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 02D3 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 02D6 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 02DA _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02DD _ 89. 04 24
        call    _boxfill8                               ; 02E0 _ E8, 0000057B
        mov     eax, dword [ebp-14H]                    ; 02E5 _ 8B. 45, EC
        lea     ebx, [eax-0CH]                          ; 02E8 _ 8D. 58, F4
        mov     eax, dword [ebp-10H]                    ; 02EB _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 02EE _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02F1 _ 8B. 45, EC
        lea     edx, [eax-0CH]                          ; 02F4 _ 8D. 50, F4
        mov     eax, dword [ebp-10H]                    ; 02F7 _ 8B. 45, F0
        sub     eax, 47                                 ; 02FA _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02FD _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0301 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0305 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0309 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 030D _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0315 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0318 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 031C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 031F _ 89. 04 24
        call    _boxfill8                               ; 0322 _ E8, 00000539
        mov     eax, dword [ebp-14H]                    ; 0327 _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 032A _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 032D _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 0330 _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 0333 _ 8B. 45, EC
        lea     edx, [eax-0BH]                          ; 0336 _ 8D. 50, F5
        mov     eax, dword [ebp-10H]                    ; 0339 _ 8B. 45, F0
        sub     eax, 47                                 ; 033C _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 033F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0343 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0347 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 034B _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 034F _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0357 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 035A _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 035E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0361 _ 89. 04 24
        call    _boxfill8                               ; 0364 _ E8, 000004F7
        mov     eax, dword [ebp-14H]                    ; 0369 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 036C _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 036F _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0372 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 0375 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0378 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 037B _ 8B. 45, F0
        sub     eax, 47                                 ; 037E _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0381 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0385 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0389 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 038D _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0391 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0399 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 039C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03A0 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03A3 _ 89. 04 24
        call    _boxfill8                               ; 03A6 _ E8, 000004B5
        mov     eax, dword [ebp-14H]                    ; 03AB _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 03AE _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 03B1 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 03B4 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 03B7 _ 8B. 45, EC
        lea     edx, [eax-0CH]                          ; 03BA _ 8D. 50, F4
        mov     eax, dword [ebp-10H]                    ; 03BD _ 8B. 45, F0
        sub     eax, 3                                  ; 03C0 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 03C3 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 03C7 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 03CB _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 03CF _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 03D3 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 03DB _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03DE _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03E2 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03E5 _ 89. 04 24
        call    _boxfill8                               ; 03E8 _ E8, 00000473
        mov     dword [esp+14H], ?_061                  ; 03ED _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 03F5 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 60                     ; 03FD _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 125                     ; 0405 _ C7. 44 24, 08, 0000007D
        mov     eax, dword [ebp-10H]                    ; 040D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0410 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0414 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0417 _ 89. 04 24
        call    _showString                             ; 041A _ E8, 00000315
        mov     eax, dword [ebp-10H]                    ; 041F _ 8B. 45, F0
        sub     eax, 16                                 ; 0422 _ 83. E8, 10
        mov     edx, eax                                ; 0425 _ 89. C2
        shr     edx, 31                                 ; 0427 _ C1. EA, 1F
        add     eax, edx                                ; 042A _ 01. D0
        sar     eax, 1                                  ; 042C _ D1. F8
        mov     dword [_mx], eax                        ; 042E _ A3, 000001F0(d)
        mov     eax, dword [ebp-14H]                    ; 0433 _ 8B. 45, EC
        sub     eax, 44                                 ; 0436 _ 83. E8, 2C
        mov     edx, eax                                ; 0439 _ 89. C2
        shr     edx, 31                                 ; 043B _ C1. EA, 1F
        add     eax, edx                                ; 043E _ 01. D0
        sar     eax, 1                                  ; 0440 _ D1. F8
        mov     dword [_my], eax                        ; 0442 _ A3, 000001F4(d)
        mov     dword [esp+4H], 14                      ; 0447 _ C7. 44 24, 04, 0000000E
        mov     dword [esp], _mcursor                   ; 044F _ C7. 04 24, 00000000(d)
        call    _init_mouse_cursor                      ; 0456 _ E8, 000005D6
        mov     edx, dword [_my]                        ; 045B _ 8B. 15, 000001F4(d)
        mov     eax, dword [_mx]                        ; 0461 _ A1, 000001F0(d)
        mov     dword [esp+1CH], 16                     ; 0466 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 046E _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], edx                    ; 0476 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 047A _ 89. 44 24, 10
        mov     dword [esp+0CH], 16                     ; 047E _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0486 _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-10H]                    ; 048E _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0491 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0495 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0498 _ 89. 04 24
        call    _putblock                               ; 049B _ E8, 00000667
        call    _io_sti                                 ; 04A0 _ E8, 00000000(rel)
        mov     dword [esp], _mdec                      ; 04A5 _ C7. 04 24, 000001E0(d)
        call    _enable_mouse                           ; 04AC _ E8, 000007F6
        mov     dword [ebp-18H], 0                      ; 04B1 _ C7. 45, E8, 00000000
?_001:  call    _io_cli                                 ; 04B8 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04BD _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 04C4 _ E8, 000009A2
        mov     ebx, eax                                ; 04C9 _ 89. C3
        mov     dword [esp], _mouseinfo                 ; 04CB _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 04D2 _ E8, 00000994
        add     eax, ebx                                ; 04D7 _ 01. D8
        test    eax, eax                                ; 04D9 _ 85. C0
        jnz     ?_002                                   ; 04DB _ 75, 07
        call    _io_stihlt                              ; 04DD _ E8, 00000000(rel)
        jmp     ?_001                                   ; 04E2 _ EB, D4

?_002:  ; Local function
        mov     dword [esp], _keyinfo                   ; 04E4 _ C7. 04 24, 00000108(d)
        call    _fifo8_status                           ; 04EB _ E8, 0000097B
        test    eax, eax                                ; 04F0 _ 85. C0
        jz      ?_003                                   ; 04F2 _ 74, 69
        call    _io_sti                                 ; 04F4 _ E8, 00000000(rel)
        mov     dword [esp], _keyinfo                   ; 04F9 _ C7. 04 24, 00000108(d)
        call    _fifo8_get                              ; 0500 _ E8, 000008F6
        mov     dword [ebp-18H], eax                    ; 0505 _ 89. 45, E8
        mov     eax, dword [ebp-18H]                    ; 0508 _ 8B. 45, E8
        movzx   eax, al                                 ; 050B _ 0F B6. C0
        mov     dword [esp], eax                        ; 050E _ 89. 04 24
        call    _charToHexStr                           ; 0511 _ E8, 000006E4
        mov     dword [ebp-1CH], eax                    ; 0516 _ 89. 45, E4
        mov     eax, dword [_showPos.2031]              ; 0519 _ A1, 00000200(d)
        mov     edx, dword [ebp-1CH]                    ; 051E _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 0521 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0525 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 052D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], eax                     ; 0535 _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 0539 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 053C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0540 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0543 _ 89. 04 24
        call    _showString                             ; 0546 _ E8, 000001E9
        mov     eax, dword [_showPos.2031]              ; 054B _ A1, 00000200(d)
        add     eax, 32                                 ; 0550 _ 83. C0, 20
        mov     dword [_showPos.2031], eax              ; 0553 _ A3, 00000200(d)
        jmp     ?_001                                   ; 0558 _ E9, FFFFFF5B

?_003:  ; Local function
        mov     dword [esp], _mouseinfo                 ; 055D _ C7. 04 24, 00000120(d)
        call    _fifo8_status                           ; 0564 _ E8, 00000902
        test    eax, eax                                ; 0569 _ 85. C0
        je      ?_001                                   ; 056B _ 0F 84, FFFFFF47
        call    _show_mouse_info                        ; 0571 _ E8, 0000013A
        jmp     ?_001                                   ; 0576 _ E9, FFFFFF3D

_computeMousePosition:; Function begin
        push    ebp                                     ; 057B _ 55
        mov     ebp, esp                                ; 057C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 057E _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0581 _ 8B. 50, 04
        mov     eax, dword [_mx]                        ; 0584 _ A1, 000001F0(d)
        add     eax, edx                                ; 0589 _ 01. D0
        mov     dword [_mx], eax                        ; 058B _ A3, 000001F0(d)
        mov     eax, dword [ebp+8H]                     ; 0590 _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0593 _ 8B. 50, 08
        mov     eax, dword [_my]                        ; 0596 _ A1, 000001F4(d)
        add     eax, edx                                ; 059B _ 01. D0
        mov     dword [_my], eax                        ; 059D _ A3, 000001F4(d)
        mov     eax, dword [_mx]                        ; 05A2 _ A1, 000001F0(d)
        test    eax, eax                                ; 05A7 _ 85. C0
        jns     ?_004                                   ; 05A9 _ 79, 0A
        mov     dword [_mx], 0                          ; 05AB _ C7. 05, 000001F0(d), 00000000
?_004:  mov     eax, dword [_my]                        ; 05B5 _ A1, 000001F4(d)
        test    eax, eax                                ; 05BA _ 85. C0
        jns     ?_005                                   ; 05BC _ 79, 0A
        mov     dword [_my], 0                          ; 05BE _ C7. 05, 000001F4(d), 00000000
?_005:  mov     eax, dword [_xsize]                     ; 05C8 _ A1, 000001F8(d)
        lea     edx, [eax-0FH]                          ; 05CD _ 8D. 50, F1
        mov     eax, dword [_mx]                        ; 05D0 _ A1, 000001F0(d)
        cmp     edx, eax                                ; 05D5 _ 39. C2
        jg      ?_006                                   ; 05D7 _ 7F, 0D
        mov     eax, dword [_xsize]                     ; 05D9 _ A1, 000001F8(d)
        sub     eax, 16                                 ; 05DE _ 83. E8, 10
        mov     dword [_mx], eax                        ; 05E1 _ A3, 000001F0(d)
?_006:  mov     eax, dword [_ysize]                     ; 05E6 _ A1, 000001FC(d)
        lea     edx, [eax-0FH]                          ; 05EB _ 8D. 50, F1
        mov     eax, dword [_my]                        ; 05EE _ A1, 000001F4(d)
        cmp     edx, eax                                ; 05F3 _ 39. C2
        jg      ?_007                                   ; 05F5 _ 7F, 0D
        mov     eax, dword [_ysize]                     ; 05F7 _ A1, 000001FC(d)
        sub     eax, 16                                 ; 05FC _ 83. E8, 10
        mov     dword [_my], eax                        ; 05FF _ A3, 000001F4(d)
?_007:  nop                                             ; 0604 _ 90
        pop     ebp                                     ; 0605 _ 5D
        ret                                             ; 0606 _ C3
; _computeMousePosition End of function

_eraseMouse:; Function begin
        push    ebp                                     ; 0607 _ 55
        mov     ebp, esp                                ; 0608 _ 89. E5
        push    esi                                     ; 060A _ 56
        push    ebx                                     ; 060B _ 53
        sub     esp, 32                                 ; 060C _ 83. EC, 20
        mov     eax, dword [_my]                        ; 060F _ A1, 000001F4(d)
        lea     esi, [eax+0FH]                          ; 0614 _ 8D. 70, 0F
        mov     eax, dword [_mx]                        ; 0617 _ A1, 000001F0(d)
        lea     ebx, [eax+0FH]                          ; 061C _ 8D. 58, 0F
        mov     ecx, dword [_my]                        ; 061F _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 0625 _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 062B _ A1, 000001F8(d)
        mov     dword [esp+18H], esi                    ; 0630 _ 89. 74 24, 18
        mov     dword [esp+14H], ebx                    ; 0634 _ 89. 5C 24, 14
        mov     dword [esp+10H], ecx                    ; 0638 _ 89. 4C 24, 10
        mov     dword [esp+0CH], edx                    ; 063C _ 89. 54 24, 0C
        mov     dword [esp+8H], 14                      ; 0640 _ C7. 44 24, 08, 0000000E
        mov     dword [esp+4H], eax                     ; 0648 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 064C _ 8B. 45, 08
        mov     dword [esp], eax                        ; 064F _ 89. 04 24
        call    _boxfill8                               ; 0652 _ E8, 00000209
        nop                                             ; 0657 _ 90
        add     esp, 32                                 ; 0658 _ 83. C4, 20
        pop     ebx                                     ; 065B _ 5B
        pop     esi                                     ; 065C _ 5E
        pop     ebp                                     ; 065D _ 5D
        ret                                             ; 065E _ C3
; _eraseMouse End of function

_drawMouse:; Function begin
        push    ebp                                     ; 065F _ 55
        mov     ebp, esp                                ; 0660 _ 89. E5
        sub     esp, 40                                 ; 0662 _ 83. EC, 28
        mov     ecx, dword [_my]                        ; 0665 _ 8B. 0D, 000001F4(d)
        mov     edx, dword [_mx]                        ; 066B _ 8B. 15, 000001F0(d)
        mov     eax, dword [_xsize]                     ; 0671 _ A1, 000001F8(d)
        mov     dword [esp+1CH], 16                     ; 0676 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], _mcursor               ; 067E _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], ecx                    ; 0686 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 068A _ 89. 54 24, 10
        mov     dword [esp+0CH], 16                     ; 068E _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 0696 _ C7. 44 24, 08, 00000010
        mov     dword [esp+4H], eax                     ; 069E _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06A2 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06A5 _ 89. 04 24
        call    _putblock                               ; 06A8 _ E8, 0000045A
        nop                                             ; 06AD _ 90
        leave                                           ; 06AE _ C9
        ret                                             ; 06AF _ C3
; _drawMouse End of function

_show_mouse_info:; Function begin
        push    ebp                                     ; 06B0 _ 55
        mov     ebp, esp                                ; 06B1 _ 89. E5
        sub     esp, 40                                 ; 06B3 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 06B6 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 06BB _ 89. 45, F4
        mov     byte [ebp-0DH], 0                       ; 06BE _ C6. 45, F3, 00
        call    _io_sti                                 ; 06C2 _ E8, 00000000(rel)
        mov     dword [esp], _mouseinfo                 ; 06C7 _ C7. 04 24, 00000120(d)
        call    _fifo8_get                              ; 06CE _ E8, 00000728
        mov     byte [ebp-0DH], al                      ; 06D3 _ 88. 45, F3
        movzx   eax, byte [ebp-0DH]                     ; 06D6 _ 0F B6. 45, F3
        mov     dword [esp+4H], eax                     ; 06DA _ 89. 44 24, 04
        mov     dword [esp], _mdec                      ; 06DE _ C7. 04 24, 000001E0(d)
        call    _mouse_decode                           ; 06E5 _ E8, 00000796
        test    eax, eax                                ; 06EA _ 85. C0
        jz      ?_008                                   ; 06EC _ 74, 22
        mov     eax, dword [ebp-0CH]                    ; 06EE _ 8B. 45, F4
        mov     dword [esp], eax                        ; 06F1 _ 89. 04 24
        call    _eraseMouse                             ; 06F4 _ E8, FFFFFF0E
        mov     dword [esp], _mdec                      ; 06F9 _ C7. 04 24, 000001E0(d)
        call    _computeMousePosition                   ; 0700 _ E8, FFFFFE76
        mov     eax, dword [ebp-0CH]                    ; 0705 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0708 _ 89. 04 24
        call    _drawMouse                              ; 070B _ E8, FFFFFF4F
?_008:  nop                                             ; 0710 _ 90
        leave                                           ; 0711 _ C9
        ret                                             ; 0712 _ C3
; _show_mouse_info End of function

_initBootInfo:; Function begin
        push    ebp                                     ; 0713 _ 55
        mov     ebp, esp                                ; 0714 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0716 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0719 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 071F _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 0722 _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0728 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 072B _ 66: C7. 40, 06, 00C8
        nop                                             ; 0731 _ 90
        pop     ebp                                     ; 0732 _ 5D
        ret                                             ; 0733 _ C3
; _initBootInfo End of function

_showString:; Function begin
        push    ebp                                     ; 0734 _ 55
        mov     ebp, esp                                ; 0735 _ 89. E5
        sub     esp, 56                                 ; 0737 _ 83. EC, 38
        mov     eax, dword [ebp+18H]                    ; 073A _ 8B. 45, 18
        mov     byte [ebp-0CH], al                      ; 073D _ 88. 45, F4
        jmp     ?_010                                   ; 0740 _ EB, 46

?_009:  mov     eax, dword [ebp+1CH]                    ; 0742 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0745 _ 0F B6. 00
        movzx   eax, al                                 ; 0748 _ 0F B6. C0
        shl     eax, 4                                  ; 074B _ C1. E0, 04
        lea     edx, [_systemFont+eax]                  ; 074E _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-0CH]                     ; 0754 _ 0F BE. 45, F4
        mov     dword [esp+14H], edx                    ; 0758 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 075C _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 0760 _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 0763 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0767 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 076A _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 076E _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 0771 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0775 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0778 _ 89. 04 24
        call    _showFont8                              ; 077B _ E8, 00000130
        add     dword [ebp+10H], 8                      ; 0780 _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 0784 _ 83. 45, 1C, 01
?_010:  mov     eax, dword [ebp+1CH]                    ; 0788 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 078B _ 0F B6. 00
        test    al, al                                  ; 078E _ 84. C0
        jnz     ?_009                                   ; 0790 _ 75, B0
        nop                                             ; 0792 _ 90
        leave                                           ; 0793 _ C9
        ret                                             ; 0794 _ C3
; _showString End of function

_init_palette:; Function begin
        push    ebp                                     ; 0795 _ 55
        mov     ebp, esp                                ; 0796 _ 89. E5
        sub     esp, 24                                 ; 0798 _ 83. EC, 18
        mov     dword [esp+8H], _table_rgb.2064         ; 079B _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 07A3 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 07AB _ C7. 04 24, 00000000
        call    _set_palette                            ; 07B2 _ E8, 00000003
        nop                                             ; 07B7 _ 90
        leave                                           ; 07B8 _ C9
        ret                                             ; 07B9 _ C3
; _init_palette End of function

_set_palette:; Function begin
        push    ebp                                     ; 07BA _ 55
        mov     ebp, esp                                ; 07BB _ 89. E5
        sub     esp, 40                                 ; 07BD _ 83. EC, 28
        call    _io_load_eflags                         ; 07C0 _ E8, 00000000(rel)
        mov     dword [ebp-10H], eax                    ; 07C5 _ 89. 45, F0
        call    _io_cli                                 ; 07C8 _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 07CD _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 07D0 _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 07D4 _ C7. 04 24, 000003C8
        call    _io_out8                                ; 07DB _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 07E0 _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 07E3 _ 89. 45, F4
        jmp     ?_012                                   ; 07E6 _ EB, 62

?_011:  mov     eax, dword [ebp+10H]                    ; 07E8 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 07EB _ 0F B6. 00
        shr     al, 2                                   ; 07EE _ C0. E8, 02
        movzx   eax, al                                 ; 07F1 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 07F4 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 07F8 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 07FF _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0804 _ 8B. 45, 10
        add     eax, 1                                  ; 0807 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 080A _ 0F B6. 00
        shr     al, 2                                   ; 080D _ C0. E8, 02
        movzx   eax, al                                 ; 0810 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0813 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0817 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 081E _ E8, 00000000(rel)
        mov     eax, dword [ebp+10H]                    ; 0823 _ 8B. 45, 10
        add     eax, 2                                  ; 0826 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0829 _ 0F B6. 00
        shr     al, 2                                   ; 082C _ C0. E8, 02
        movzx   eax, al                                 ; 082F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0832 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0836 _ C7. 04 24, 000003C9
        call    _io_out8                                ; 083D _ E8, 00000000(rel)
        add     dword [ebp+10H], 3                      ; 0842 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0846 _ 83. 45, F4, 01
?_012:  mov     eax, dword [ebp-0CH]                    ; 084A _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 084D _ 3B. 45, 0C
        jle     ?_011                                   ; 0850 _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0852 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0855 _ 89. 04 24
        call    _io_store_eflags                        ; 0858 _ E8, 00000000(rel)
        nop                                             ; 085D _ 90
        leave                                           ; 085E _ C9
        ret                                             ; 085F _ C3
; _set_palette End of function

_boxfill8:; Function begin
        push    ebp                                     ; 0860 _ 55
        mov     ebp, esp                                ; 0861 _ 89. E5
        sub     esp, 20                                 ; 0863 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0866 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0869 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 086C _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 086F _ 89. 45, F8
        jmp     ?_016                                   ; 0872 _ EB, 31

?_013:  mov     eax, dword [ebp+14H]                    ; 0874 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0877 _ 89. 45, FC
        jmp     ?_015                                   ; 087A _ EB, 1D

?_014:  mov     eax, dword [ebp-8H]                     ; 087C _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 087F _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0883 _ 8B. 55, FC
        add     eax, edx                                ; 0886 _ 01. D0
        mov     edx, eax                                ; 0888 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 088A _ 8B. 45, 08
        add     edx, eax                                ; 088D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 088F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0893 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0895 _ 83. 45, FC, 01
?_015:  mov     eax, dword [ebp-4H]                     ; 0899 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 089C _ 3B. 45, 1C
        jle     ?_014                                   ; 089F _ 7E, DB
        add     dword [ebp-8H], 1                       ; 08A1 _ 83. 45, F8, 01
?_016:  mov     eax, dword [ebp-8H]                     ; 08A5 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 08A8 _ 3B. 45, 20
        jle     ?_013                                   ; 08AB _ 7E, C7
        nop                                             ; 08AD _ 90
        leave                                           ; 08AE _ C9
        ret                                             ; 08AF _ C3
; _boxfill8 End of function

_showFont8:; Function begin
        push    ebp                                     ; 08B0 _ 55
        mov     ebp, esp                                ; 08B1 _ 89. E5
        sub     esp, 20                                 ; 08B3 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 08B6 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 08B9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 08BC _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 08C3 _ E9, 0000015C

?_017:  mov     edx, dword [ebp-4H]                     ; 08C8 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 08CB _ 8B. 45, 1C
        add     eax, edx                                ; 08CE _ 01. D0
        movzx   eax, byte [eax]                         ; 08D0 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 08D3 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 08D6 _ 80. 7D, FB, 00
        jns     ?_018                                   ; 08DA _ 79, 1E
        mov     edx, dword [ebp+14H]                    ; 08DC _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 08DF _ 8B. 45, FC
        add     eax, edx                                ; 08E2 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 08E4 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 08E8 _ 8B. 55, 10
        add     eax, edx                                ; 08EB _ 01. D0
        mov     edx, eax                                ; 08ED _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08EF _ 8B. 45, 08
        add     edx, eax                                ; 08F2 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08F4 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08F8 _ 88. 02
?_018:  movsx   eax, byte [ebp-5H]                      ; 08FA _ 0F BE. 45, FB
        and     eax, 40H                                ; 08FE _ 83. E0, 40
        test    eax, eax                                ; 0901 _ 85. C0
        jz      ?_019                                   ; 0903 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0905 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0908 _ 8B. 45, FC
        add     eax, edx                                ; 090B _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 090D _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0911 _ 8B. 55, 10
        add     eax, edx                                ; 0914 _ 01. D0
        lea     edx, [eax+1H]                           ; 0916 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0919 _ 8B. 45, 08
        add     edx, eax                                ; 091C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 091E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0922 _ 88. 02
?_019:  movsx   eax, byte [ebp-5H]                      ; 0924 _ 0F BE. 45, FB
        and     eax, 20H                                ; 0928 _ 83. E0, 20
        test    eax, eax                                ; 092B _ 85. C0
        jz      ?_020                                   ; 092D _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 092F _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0932 _ 8B. 45, FC
        add     eax, edx                                ; 0935 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0937 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 093B _ 8B. 55, 10
        add     eax, edx                                ; 093E _ 01. D0
        lea     edx, [eax+2H]                           ; 0940 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0943 _ 8B. 45, 08
        add     edx, eax                                ; 0946 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0948 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 094C _ 88. 02
?_020:  movsx   eax, byte [ebp-5H]                      ; 094E _ 0F BE. 45, FB
        and     eax, 10H                                ; 0952 _ 83. E0, 10
        test    eax, eax                                ; 0955 _ 85. C0
        jz      ?_021                                   ; 0957 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0959 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 095C _ 8B. 45, FC
        add     eax, edx                                ; 095F _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0961 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0965 _ 8B. 55, 10
        add     eax, edx                                ; 0968 _ 01. D0
        lea     edx, [eax+3H]                           ; 096A _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 096D _ 8B. 45, 08
        add     edx, eax                                ; 0970 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0972 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0976 _ 88. 02
?_021:  movsx   eax, byte [ebp-5H]                      ; 0978 _ 0F BE. 45, FB
        and     eax, 08H                                ; 097C _ 83. E0, 08
        test    eax, eax                                ; 097F _ 85. C0
        jz      ?_022                                   ; 0981 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0983 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0986 _ 8B. 45, FC
        add     eax, edx                                ; 0989 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 098B _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 098F _ 8B. 55, 10
        add     eax, edx                                ; 0992 _ 01. D0
        lea     edx, [eax+4H]                           ; 0994 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0997 _ 8B. 45, 08
        add     edx, eax                                ; 099A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 099C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09A0 _ 88. 02
?_022:  movsx   eax, byte [ebp-5H]                      ; 09A2 _ 0F BE. 45, FB
        and     eax, 04H                                ; 09A6 _ 83. E0, 04
        test    eax, eax                                ; 09A9 _ 85. C0
        jz      ?_023                                   ; 09AB _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 09AD _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09B0 _ 8B. 45, FC
        add     eax, edx                                ; 09B3 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09B5 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 09B9 _ 8B. 55, 10
        add     eax, edx                                ; 09BC _ 01. D0
        lea     edx, [eax+5H]                           ; 09BE _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 09C1 _ 8B. 45, 08
        add     edx, eax                                ; 09C4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09C6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09CA _ 88. 02
?_023:  movsx   eax, byte [ebp-5H]                      ; 09CC _ 0F BE. 45, FB
        and     eax, 02H                                ; 09D0 _ 83. E0, 02
        test    eax, eax                                ; 09D3 _ 85. C0
        jz      ?_024                                   ; 09D5 _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 09D7 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 09DA _ 8B. 45, FC
        add     eax, edx                                ; 09DD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 09DF _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 09E3 _ 8B. 55, 10
        add     eax, edx                                ; 09E6 _ 01. D0
        lea     edx, [eax+6H]                           ; 09E8 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 09EB _ 8B. 45, 08
        add     edx, eax                                ; 09EE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 09F0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 09F4 _ 88. 02
?_024:  movsx   eax, byte [ebp-5H]                      ; 09F6 _ 0F BE. 45, FB
        and     eax, 01H                                ; 09FA _ 83. E0, 01
        test    eax, eax                                ; 09FD _ 85. C0
        jz      ?_025                                   ; 09FF _ 74, 1F
        mov     edx, dword [ebp+14H]                    ; 0A01 _ 8B. 55, 14
        mov     eax, dword [ebp-4H]                     ; 0A04 _ 8B. 45, FC
        add     eax, edx                                ; 0A07 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0A09 _ 0F AF. 45, 0C
        mov     edx, dword [ebp+10H]                    ; 0A0D _ 8B. 55, 10
        add     eax, edx                                ; 0A10 _ 01. D0
        lea     edx, [eax+7H]                           ; 0A12 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0A15 _ 8B. 45, 08
        add     edx, eax                                ; 0A18 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0A1A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0A1E _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 0A20 _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 0A24 _ 83. 7D, FC, 0F
        jle     ?_017                                   ; 0A28 _ 0F 8E, FFFFFE9A
        nop                                             ; 0A2E _ 90
        leave                                           ; 0A2F _ C9
        ret                                             ; 0A30 _ C3
; _showFont8 End of function

_init_mouse_cursor:; Function begin
        push    ebp                                     ; 0A31 _ 55
        mov     ebp, esp                                ; 0A32 _ 89. E5
        sub     esp, 20                                 ; 0A34 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0A37 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0A3A _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 0A3D _ C7. 45, F8, 00000000
        jmp     ?_033                                   ; 0A44 _ E9, 000000B1

?_027:  mov     dword [ebp-4H], 0                       ; 0A49 _ C7. 45, FC, 00000000
        jmp     ?_032                                   ; 0A50 _ E9, 00000097

?_028:  mov     eax, dword [ebp-8H]                     ; 0A55 _ 8B. 45, F8
        shl     eax, 4                                  ; 0A58 _ C1. E0, 04
        mov     edx, eax                                ; 0A5B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0A5D _ 8B. 45, FC
        add     eax, edx                                ; 0A60 _ 01. D0
        add     eax, _cursor.2111                       ; 0A62 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A67 _ 0F B6. 00
        cmp     al, 42                                  ; 0A6A _ 3C, 2A
        jnz     ?_029                                   ; 0A6C _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0A6E _ 8B. 45, F8
        shl     eax, 4                                  ; 0A71 _ C1. E0, 04
        mov     edx, eax                                ; 0A74 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0A76 _ 8B. 45, FC
        add     eax, edx                                ; 0A79 _ 01. D0
        mov     edx, eax                                ; 0A7B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0A7D _ 8B. 45, 08
        add     eax, edx                                ; 0A80 _ 01. D0
        mov     byte [eax], 0                           ; 0A82 _ C6. 00, 00
?_029:  mov     eax, dword [ebp-8H]                     ; 0A85 _ 8B. 45, F8
        shl     eax, 4                                  ; 0A88 _ C1. E0, 04
        mov     edx, eax                                ; 0A8B _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0A8D _ 8B. 45, FC
        add     eax, edx                                ; 0A90 _ 01. D0
        add     eax, _cursor.2111                       ; 0A92 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0A97 _ 0F B6. 00
        cmp     al, 79                                  ; 0A9A _ 3C, 4F
        jnz     ?_030                                   ; 0A9C _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 0A9E _ 8B. 45, F8
        shl     eax, 4                                  ; 0AA1 _ C1. E0, 04
        mov     edx, eax                                ; 0AA4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0AA6 _ 8B. 45, FC
        add     eax, edx                                ; 0AA9 _ 01. D0
        mov     edx, eax                                ; 0AAB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0AAD _ 8B. 45, 08
        add     eax, edx                                ; 0AB0 _ 01. D0
        mov     byte [eax], 7                           ; 0AB2 _ C6. 00, 07
?_030:  mov     eax, dword [ebp-8H]                     ; 0AB5 _ 8B. 45, F8
        shl     eax, 4                                  ; 0AB8 _ C1. E0, 04
        mov     edx, eax                                ; 0ABB _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0ABD _ 8B. 45, FC
        add     eax, edx                                ; 0AC0 _ 01. D0
        add     eax, _cursor.2111                       ; 0AC2 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0AC7 _ 0F B6. 00
        cmp     al, 46                                  ; 0ACA _ 3C, 2E
        jnz     ?_031                                   ; 0ACC _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 0ACE _ 8B. 45, F8
        shl     eax, 4                                  ; 0AD1 _ C1. E0, 04
        mov     edx, eax                                ; 0AD4 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0AD6 _ 8B. 45, FC
        add     eax, edx                                ; 0AD9 _ 01. D0
        mov     edx, eax                                ; 0ADB _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0ADD _ 8B. 45, 08
        add     edx, eax                                ; 0AE0 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0AE2 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0AE6 _ 88. 02
?_031:  add     dword [ebp-4H], 1                       ; 0AE8 _ 83. 45, FC, 01
?_032:  cmp     dword [ebp-4H], 15                      ; 0AEC _ 83. 7D, FC, 0F
        jle     ?_028                                   ; 0AF0 _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0AF6 _ 83. 45, F8, 01
?_033:  cmp     dword [ebp-8H], 15                      ; 0AFA _ 83. 7D, F8, 0F
        jle     ?_027                                   ; 0AFE _ 0F 8E, FFFFFF45
        nop                                             ; 0B04 _ 90
        leave                                           ; 0B05 _ C9
        ret                                             ; 0B06 _ C3
; _init_mouse_cursor End of function

_putblock:; Function begin
        push    ebp                                     ; 0B07 _ 55
        mov     ebp, esp                                ; 0B08 _ 89. E5
        push    ebx                                     ; 0B0A _ 53
        sub     esp, 16                                 ; 0B0B _ 83. EC, 10
        mov     dword [ebp-0CH], 0                      ; 0B0E _ C7. 45, F4, 00000000
        jmp     ?_037                                   ; 0B15 _ EB, 4E

?_034:  mov     dword [ebp-8H], 0                       ; 0B17 _ C7. 45, F8, 00000000
        jmp     ?_036                                   ; 0B1E _ EB, 39

?_035:  mov     eax, dword [ebp-0CH]                    ; 0B20 _ 8B. 45, F4
        imul    eax, dword [ebp+24H]                    ; 0B23 _ 0F AF. 45, 24
        mov     edx, dword [ebp-8H]                     ; 0B27 _ 8B. 55, F8
        add     eax, edx                                ; 0B2A _ 01. D0
        mov     edx, eax                                ; 0B2C _ 89. C2
        mov     eax, dword [ebp+20H]                    ; 0B2E _ 8B. 45, 20
        add     eax, edx                                ; 0B31 _ 01. D0
        mov     ecx, dword [ebp+1CH]                    ; 0B33 _ 8B. 4D, 1C
        mov     edx, dword [ebp-0CH]                    ; 0B36 _ 8B. 55, F4
        add     edx, ecx                                ; 0B39 _ 01. CA
        imul    edx, dword [ebp+0CH]                    ; 0B3B _ 0F AF. 55, 0C
        mov     ebx, dword [ebp+18H]                    ; 0B3F _ 8B. 5D, 18
        mov     ecx, dword [ebp-8H]                     ; 0B42 _ 8B. 4D, F8
        add     ecx, ebx                                ; 0B45 _ 01. D9
        add     edx, ecx                                ; 0B47 _ 01. CA
        mov     ecx, edx                                ; 0B49 _ 89. D1
        mov     edx, dword [ebp+8H]                     ; 0B4B _ 8B. 55, 08
        add     edx, ecx                                ; 0B4E _ 01. CA
        movzx   eax, byte [eax]                         ; 0B50 _ 0F B6. 00
        mov     byte [edx], al                          ; 0B53 _ 88. 02
        add     dword [ebp-8H], 1                       ; 0B55 _ 83. 45, F8, 01
?_036:  mov     eax, dword [ebp-8H]                     ; 0B59 _ 8B. 45, F8
        cmp     eax, dword [ebp+10H]                    ; 0B5C _ 3B. 45, 10
        jl      ?_035                                   ; 0B5F _ 7C, BF
        add     dword [ebp-0CH], 1                      ; 0B61 _ 83. 45, F4, 01
?_037:  mov     eax, dword [ebp-0CH]                    ; 0B65 _ 8B. 45, F4
        cmp     eax, dword [ebp+14H]                    ; 0B68 _ 3B. 45, 14
        jl      ?_034                                   ; 0B6B _ 7C, AA
        nop                                             ; 0B6D _ 90
        add     esp, 16                                 ; 0B6E _ 83. C4, 10
        pop     ebx                                     ; 0B71 _ 5B
        pop     ebp                                     ; 0B72 _ 5D
        ret                                             ; 0B73 _ C3
; _putblock End of function

_intHandlerFromC:; Function begin
        push    ebp                                     ; 0B74 _ 55
        mov     ebp, esp                                ; 0B75 _ 89. E5
        sub     esp, 40                                 ; 0B77 _ 83. EC, 28
        mov     eax, dword [_bootInfo]                  ; 0B7A _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0B7F _ 89. 45, F4
        movzx   eax, word [?_059]                       ; 0B82 _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0B89 _ 98
        mov     dword [ebp-10H], eax                    ; 0B8A _ 89. 45, F0
        movzx   eax, word [?_060]                       ; 0B8D _ 0F B7. 05, 00000106(d)
        cwde                                            ; 0B94 _ 98
        mov     dword [ebp-14H], eax                    ; 0B95 _ 89. 45, EC
        mov     dword [esp+4H], 32                      ; 0B98 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0BA0 _ C7. 04 24, 00000020
        call    _io_out8                                ; 0BA7 _ E8, 00000000(rel)
        mov     byte [ebp-15H], 0                       ; 0BAC _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0BB0 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0BB7 _ E8, 00000000(rel)
        mov     byte [ebp-15H], al                      ; 0BBC _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 0BBF _ 0F B6. 45, EB
        mov     dword [esp+4H], eax                     ; 0BC3 _ 89. 44 24, 04
        mov     dword [esp], _keyinfo                   ; 0BC7 _ C7. 04 24, 00000108(d)
        call    _fifo8_put                              ; 0BCE _ E8, 000001A8
        nop                                             ; 0BD3 _ 90
        leave                                           ; 0BD4 _ C9
        ret                                             ; 0BD5 _ C3
; _intHandlerFromC End of function

_charToHexVal:; Function begin
        push    ebp                                     ; 0BD6 _ 55
        mov     ebp, esp                                ; 0BD7 _ 89. E5
        sub     esp, 4                                  ; 0BD9 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 0BDC _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0BDF _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0BE2 _ 80. 7D, FC, 09
        jle     ?_038                                   ; 0BE6 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0BE8 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0BEC _ 83. C0, 37
        jmp     ?_039                                   ; 0BEF _ EB, 07

?_038:  movzx   eax, byte [ebp-4H]                      ; 0BF1 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0BF5 _ 83. C0, 30
?_039:  leave                                           ; 0BF8 _ C9
        ret                                             ; 0BF9 _ C3
; _charToHexVal End of function

_charToHexStr:; Function begin
        push    ebp                                     ; 0BFA _ 55
        mov     ebp, esp                                ; 0BFB _ 89. E5
        sub     esp, 24                                 ; 0BFD _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0C00 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0C03 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0C06 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0C0D _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0C11 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0C14 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0C17 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0C1B _ 89. 04 24
        call    _charToHexVal                           ; 0C1E _ E8, FFFFFFB3
        mov     byte [?_058], al                        ; 0C23 _ A2, 00000013(d)
        movzx   eax, byte [ebp-14H]                     ; 0C28 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0C2C _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0C2F _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0C32 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0C36 _ 0F BE. C0
        mov     dword [esp], eax                        ; 0C39 _ 89. 04 24
        call    _charToHexVal                           ; 0C3C _ E8, FFFFFF95
        mov     byte [?_057], al                        ; 0C41 _ A2, 00000012(d)
        mov     eax, _keyval                            ; 0C46 _ B8, 00000010(d)
        leave                                           ; 0C4B _ C9
        ret                                             ; 0C4C _ C3
; _charToHexStr End of function

_wait_KBC_sendready:; Function begin
        push    ebp                                     ; 0C4D _ 55
        mov     ebp, esp                                ; 0C4E _ 89. E5
        sub     esp, 24                                 ; 0C50 _ 83. EC, 18
?_040:  mov     dword [esp], 100                        ; 0C53 _ C7. 04 24, 00000064
        call    _io_in8                                 ; 0C5A _ E8, 00000000(rel)
        and     eax, 02H                                ; 0C5F _ 83. E0, 02
        test    eax, eax                                ; 0C62 _ 85. C0
        jz      ?_041                                   ; 0C64 _ 74, 02
        jmp     ?_040                                   ; 0C66 _ EB, EB
; _wait_KBC_sendready End of function

?_041:  ; Local function
        nop                                             ; 0C68 _ 90
        nop                                             ; 0C69 _ 90
        leave                                           ; 0C6A _ C9
        ret                                             ; 0C6B _ C3

_init_keyboard:; Function begin
        push    ebp                                     ; 0C6C _ 55
        mov     ebp, esp                                ; 0C6D _ 89. E5
        sub     esp, 24                                 ; 0C6F _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0C72 _ E8, FFFFFFD6
        mov     dword [esp+4H], 96                      ; 0C77 _ C7. 44 24, 04, 00000060
        mov     dword [esp], 100                        ; 0C7F _ C7. 04 24, 00000064
        call    _io_out8                                ; 0C86 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0C8B _ E8, FFFFFFBD
        mov     dword [esp+4H], 71                      ; 0C90 _ C7. 44 24, 04, 00000047
        mov     dword [esp], 96                         ; 0C98 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0C9F _ E8, 00000000(rel)
        nop                                             ; 0CA4 _ 90
        leave                                           ; 0CA5 _ C9
        ret                                             ; 0CA6 _ C3
; _init_keyboard End of function

_enable_mouse:; Function begin
        push    ebp                                     ; 0CA7 _ 55
        mov     ebp, esp                                ; 0CA8 _ 89. E5
        sub     esp, 24                                 ; 0CAA _ 83. EC, 18
        call    _wait_KBC_sendready                     ; 0CAD _ E8, FFFFFF9B
        mov     dword [esp+4H], 212                     ; 0CB2 _ C7. 44 24, 04, 000000D4
        mov     dword [esp], 100                        ; 0CBA _ C7. 04 24, 00000064
        call    _io_out8                                ; 0CC1 _ E8, 00000000(rel)
        call    _wait_KBC_sendready                     ; 0CC6 _ E8, FFFFFF82
        mov     dword [esp+4H], 244                     ; 0CCB _ C7. 44 24, 04, 000000F4
        mov     dword [esp], 96                         ; 0CD3 _ C7. 04 24, 00000060
        call    _io_out8                                ; 0CDA _ E8, 00000000(rel)
        mov     eax, dword [ebp+8H]                     ; 0CDF _ 8B. 45, 08
        mov     byte [eax+3H], 0                        ; 0CE2 _ C6. 40, 03, 00
        nop                                             ; 0CE6 _ 90
        leave                                           ; 0CE7 _ C9
        ret                                             ; 0CE8 _ C3
; _enable_mouse End of function

_intHandlerForMouse:; Function begin
        push    ebp                                     ; 0CE9 _ 55
        mov     ebp, esp                                ; 0CEA _ 89. E5
        sub     esp, 40                                 ; 0CEC _ 83. EC, 28
        mov     dword [esp+4H], 32                      ; 0CEF _ C7. 44 24, 04, 00000020
        mov     dword [esp], 160                        ; 0CF7 _ C7. 04 24, 000000A0
        call    _io_out8                                ; 0CFE _ E8, 00000000(rel)
        mov     dword [esp+4H], 32                      ; 0D03 _ C7. 44 24, 04, 00000020
        mov     dword [esp], 32                         ; 0D0B _ C7. 04 24, 00000020
        call    _io_out8                                ; 0D12 _ E8, 00000000(rel)
        mov     dword [esp], 96                         ; 0D17 _ C7. 04 24, 00000060
        call    _io_in8                                 ; 0D1E _ E8, 00000000(rel)
        mov     byte [ebp-9H], al                       ; 0D23 _ 88. 45, F7
        movzx   eax, byte [ebp-9H]                      ; 0D26 _ 0F B6. 45, F7
        mov     dword [esp+4H], eax                     ; 0D2A _ 89. 44 24, 04
        mov     dword [esp], _mouseinfo                 ; 0D2E _ C7. 04 24, 00000120(d)
        call    _fifo8_put                              ; 0D35 _ E8, 00000041
        nop                                             ; 0D3A _ 90
        leave                                           ; 0D3B _ C9
        ret                                             ; 0D3C _ C3
; _intHandlerForMouse End of function

_fifo8_init:; Function begin
        push    ebp                                     ; 0D3D _ 55
        mov     ebp, esp                                ; 0D3E _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0D40 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D43 _ 8B. 55, 0C
        mov     dword [eax+0CH], edx                    ; 0D46 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0D49 _ 8B. 45, 08
        mov     edx, dword [ebp+10H]                    ; 0D4C _ 8B. 55, 10
        mov     dword [eax], edx                        ; 0D4F _ 89. 10
        mov     eax, dword [ebp+8H]                     ; 0D51 _ 8B. 45, 08
        mov     edx, dword [ebp+0CH]                    ; 0D54 _ 8B. 55, 0C
        mov     dword [eax+10H], edx                    ; 0D57 _ 89. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0D5A _ 8B. 45, 08
        mov     dword [eax+14H], 0                      ; 0D5D _ C7. 40, 14, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D64 _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0D67 _ C7. 40, 04, 00000000
        mov     eax, dword [ebp+8H]                     ; 0D6E _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0D71 _ C7. 40, 08, 00000000
        nop                                             ; 0D78 _ 90
        pop     ebp                                     ; 0D79 _ 5D
        ret                                             ; 0D7A _ C3
; _fifo8_init End of function

_fifo8_put:; Function begin
        push    ebp                                     ; 0D7B _ 55
        mov     ebp, esp                                ; 0D7C _ 89. E5
        sub     esp, 4                                  ; 0D7E _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0D81 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0D84 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0D87 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0D8A _ 8B. 40, 10
        test    eax, eax                                ; 0D8D _ 85. C0
        jnz     ?_042                                   ; 0D8F _ 75, 18
        mov     eax, dword [ebp+8H]                     ; 0D91 _ 8B. 45, 08
        mov     eax, dword [eax+14H]                    ; 0D94 _ 8B. 40, 14
        or      eax, 01H                                ; 0D97 _ 83. C8, 01
        mov     edx, eax                                ; 0D9A _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0D9C _ 8B. 45, 08
        mov     dword [eax+14H], edx                    ; 0D9F _ 89. 50, 14
        mov     eax, 4294967295                         ; 0DA2 _ B8, FFFFFFFF
        jmp     ?_044                                   ; 0DA7 _ EB, 50

?_042:  mov     eax, dword [ebp+8H]                     ; 0DA9 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0DAC _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0DAE _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DB1 _ 8B. 40, 04
        add     edx, eax                                ; 0DB4 _ 01. C2
        movzx   eax, byte [ebp-4H]                      ; 0DB6 _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0DBA _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0DBC _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0DBF _ 8B. 40, 04
        lea     edx, [eax+1H]                           ; 0DC2 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0DC5 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0DC8 _ 89. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DCB _ 8B. 45, 08
        mov     edx, dword [eax+4H]                     ; 0DCE _ 8B. 50, 04
        mov     eax, dword [ebp+8H]                     ; 0DD1 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0DD4 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0DD7 _ 39. C2
        jnz     ?_043                                   ; 0DD9 _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0DDB _ 8B. 45, 08
        mov     dword [eax+4H], 0                       ; 0DDE _ C7. 40, 04, 00000000
?_043:  mov     eax, dword [ebp+8H]                     ; 0DE5 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0DE8 _ 8B. 40, 10
        lea     edx, [eax-1H]                           ; 0DEB _ 8D. 50, FF
        mov     eax, dword [ebp+8H]                     ; 0DEE _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0DF1 _ 89. 50, 10
        mov     eax, 0                                  ; 0DF4 _ B8, 00000000
?_044:  leave                                           ; 0DF9 _ C9
        ret                                             ; 0DFA _ C3
; _fifo8_put End of function

_fifo8_get:; Function begin
        push    ebp                                     ; 0DFB _ 55
        mov     ebp, esp                                ; 0DFC _ 89. E5
        sub     esp, 16                                 ; 0DFE _ 83. EC, 10
        mov     eax, dword [ebp+8H]                     ; 0E01 _ 8B. 45, 08
        mov     edx, dword [eax+10H]                    ; 0E04 _ 8B. 50, 10
        mov     eax, dword [ebp+8H]                     ; 0E07 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E0A _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E0D _ 39. C2
        jnz     ?_045                                   ; 0E0F _ 75, 07
        mov     eax, 4294967295                         ; 0E11 _ B8, FFFFFFFF
        jmp     ?_047                                   ; 0E16 _ EB, 51

?_045:  mov     eax, dword [ebp+8H]                     ; 0E18 _ 8B. 45, 08
        mov     edx, dword [eax]                        ; 0E1B _ 8B. 10
        mov     eax, dword [ebp+8H]                     ; 0E1D _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E20 _ 8B. 40, 08
        add     eax, edx                                ; 0E23 _ 01. D0
        movzx   eax, byte [eax]                         ; 0E25 _ 0F B6. 00
        movzx   eax, al                                 ; 0E28 _ 0F B6. C0
        mov     dword [ebp-4H], eax                     ; 0E2B _ 89. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E2E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0E31 _ 8B. 40, 08
        lea     edx, [eax+1H]                           ; 0E34 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E37 _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0E3A _ 89. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E3D _ 8B. 45, 08
        mov     edx, dword [eax+8H]                     ; 0E40 _ 8B. 50, 08
        mov     eax, dword [ebp+8H]                     ; 0E43 _ 8B. 45, 08
        mov     eax, dword [eax+0CH]                    ; 0E46 _ 8B. 40, 0C
        cmp     edx, eax                                ; 0E49 _ 39. C2
        jnz     ?_046                                   ; 0E4B _ 75, 0A
        mov     eax, dword [ebp+8H]                     ; 0E4D _ 8B. 45, 08
        mov     dword [eax+8H], 0                       ; 0E50 _ C7. 40, 08, 00000000
?_046:  mov     eax, dword [ebp+8H]                     ; 0E57 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E5A _ 8B. 40, 10
        lea     edx, [eax+1H]                           ; 0E5D _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0E60 _ 8B. 45, 08
        mov     dword [eax+10H], edx                    ; 0E63 _ 89. 50, 10
        mov     eax, dword [ebp-4H]                     ; 0E66 _ 8B. 45, FC
?_047:  leave                                           ; 0E69 _ C9
        ret                                             ; 0E6A _ C3
; _fifo8_get End of function

_fifo8_status:; Function begin
        push    ebp                                     ; 0E6B _ 55
        mov     ebp, esp                                ; 0E6C _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0E6E _ 8B. 45, 08
        mov     edx, dword [eax+0CH]                    ; 0E71 _ 8B. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0E74 _ 8B. 45, 08
        mov     eax, dword [eax+10H]                    ; 0E77 _ 8B. 40, 10
        sub     edx, eax                                ; 0E7A _ 29. C2
        mov     eax, edx                                ; 0E7C _ 89. D0
        pop     ebp                                     ; 0E7E _ 5D
        ret                                             ; 0E7F _ C3
; _fifo8_status End of function

_mouse_decode:; Function begin
        push    ebp                                     ; 0E80 _ 55
        mov     ebp, esp                                ; 0E81 _ 89. E5
        sub     esp, 4                                  ; 0E83 _ 83. EC, 04
        mov     eax, dword [ebp+0CH]                    ; 0E86 _ 8B. 45, 0C
        mov     byte [ebp-4H], al                       ; 0E89 _ 88. 45, FC
        mov     eax, dword [ebp+8H]                     ; 0E8C _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0E8F _ 0F B6. 40, 03
        test    al, al                                  ; 0E93 _ 84. C0
        jnz     ?_049                                   ; 0E95 _ 75, 17
        cmp     byte [ebp-4H], -6                       ; 0E97 _ 80. 7D, FC, FA
        jnz     ?_048                                   ; 0E9B _ 75, 07
        mov     eax, dword [ebp+8H]                     ; 0E9D _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0EA0 _ C6. 40, 03, 01
?_048:  mov     eax, 0                                  ; 0EA4 _ B8, 00000000
        jmp     ?_056                                   ; 0EA9 _ E9, 0000010F

?_049:  mov     eax, dword [ebp+8H]                     ; 0EAE _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0EB1 _ 0F B6. 40, 03
        cmp     al, 1                                   ; 0EB5 _ 3C, 01
        jnz     ?_051                                   ; 0EB7 _ 75, 28
        movzx   eax, byte [ebp-4H]                      ; 0EB9 _ 0F B6. 45, FC
        and     eax, 0C8H                               ; 0EBD _ 25, 000000C8
        cmp     eax, 8                                  ; 0EC2 _ 83. F8, 08
        jnz     ?_050                                   ; 0EC5 _ 75, 10
        mov     edx, dword [ebp+8H]                     ; 0EC7 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 0ECA _ 0F B6. 45, FC
        mov     byte [edx], al                          ; 0ECE _ 88. 02
        mov     eax, dword [ebp+8H]                     ; 0ED0 _ 8B. 45, 08
        mov     byte [eax+3H], 2                        ; 0ED3 _ C6. 40, 03, 02
?_050:  mov     eax, 0                                  ; 0ED7 _ B8, 00000000
        jmp     ?_056                                   ; 0EDC _ E9, 000000DC

?_051:  mov     eax, dword [ebp+8H]                     ; 0EE1 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0EE4 _ 0F B6. 40, 03
        cmp     al, 2                                   ; 0EE8 _ 3C, 02
        jnz     ?_052                                   ; 0EEA _ 75, 1B
        mov     edx, dword [ebp+8H]                     ; 0EEC _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 0EEF _ 0F B6. 45, FC
        mov     byte [edx+1H], al                       ; 0EF3 _ 88. 42, 01
        mov     eax, dword [ebp+8H]                     ; 0EF6 _ 8B. 45, 08
        mov     byte [eax+3H], 3                        ; 0EF9 _ C6. 40, 03, 03
        mov     eax, 0                                  ; 0EFD _ B8, 00000000
        jmp     ?_056                                   ; 0F02 _ E9, 000000B6

?_052:  mov     eax, dword [ebp+8H]                     ; 0F07 _ 8B. 45, 08
        movzx   eax, byte [eax+3H]                      ; 0F0A _ 0F B6. 40, 03
        cmp     al, 3                                   ; 0F0E _ 3C, 03
        jne     ?_055                                   ; 0F10 _ 0F 85, 000000A2
        mov     edx, dword [ebp+8H]                     ; 0F16 _ 8B. 55, 08
        movzx   eax, byte [ebp-4H]                      ; 0F19 _ 0F B6. 45, FC
        mov     byte [edx+2H], al                       ; 0F1D _ 88. 42, 02
        mov     eax, dword [ebp+8H]                     ; 0F20 _ 8B. 45, 08
        mov     byte [eax+3H], 1                        ; 0F23 _ C6. 40, 03, 01
        mov     eax, dword [ebp+8H]                     ; 0F27 _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F2A _ 0F B6. 00
        movzx   eax, al                                 ; 0F2D _ 0F B6. C0
        and     eax, 07H                                ; 0F30 _ 83. E0, 07
        mov     edx, eax                                ; 0F33 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F35 _ 8B. 45, 08
        mov     dword [eax+0CH], edx                    ; 0F38 _ 89. 50, 0C
        mov     eax, dword [ebp+8H]                     ; 0F3B _ 8B. 45, 08
        movzx   eax, byte [eax+1H]                      ; 0F3E _ 0F B6. 40, 01
        movzx   eax, al                                 ; 0F42 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 0F45 _ 8B. 55, 08
        mov     dword [edx+4H], eax                     ; 0F48 _ 89. 42, 04
        mov     eax, dword [ebp+8H]                     ; 0F4B _ 8B. 45, 08
        movzx   eax, byte [eax+2H]                      ; 0F4E _ 0F B6. 40, 02
        movzx   eax, al                                 ; 0F52 _ 0F B6. C0
        mov     edx, dword [ebp+8H]                     ; 0F55 _ 8B. 55, 08
        mov     dword [edx+8H], eax                     ; 0F58 _ 89. 42, 08
        mov     eax, dword [ebp+8H]                     ; 0F5B _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F5E _ 0F B6. 00
        movzx   eax, al                                 ; 0F61 _ 0F B6. C0
        and     eax, 10H                                ; 0F64 _ 83. E0, 10
        test    eax, eax                                ; 0F67 _ 85. C0
        jz      ?_053                                   ; 0F69 _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0F6B _ 8B. 45, 08
        mov     eax, dword [eax+4H]                     ; 0F6E _ 8B. 40, 04
        or      eax, 0FFFFFF00H                         ; 0F71 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0F76 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F78 _ 8B. 45, 08
        mov     dword [eax+4H], edx                     ; 0F7B _ 89. 50, 04
?_053:  mov     eax, dword [ebp+8H]                     ; 0F7E _ 8B. 45, 08
        movzx   eax, byte [eax]                         ; 0F81 _ 0F B6. 00
        movzx   eax, al                                 ; 0F84 _ 0F B6. C0
        and     eax, 20H                                ; 0F87 _ 83. E0, 20
        test    eax, eax                                ; 0F8A _ 85. C0
        jz      ?_054                                   ; 0F8C _ 74, 13
        mov     eax, dword [ebp+8H]                     ; 0F8E _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0F91 _ 8B. 40, 08
        or      eax, 0FFFFFF00H                         ; 0F94 _ 0D, FFFFFF00
        mov     edx, eax                                ; 0F99 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0F9B _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0F9E _ 89. 50, 08
?_054:  mov     eax, dword [ebp+8H]                     ; 0FA1 _ 8B. 45, 08
        mov     eax, dword [eax+8H]                     ; 0FA4 _ 8B. 40, 08
        neg     eax                                     ; 0FA7 _ F7. D8
        mov     edx, eax                                ; 0FA9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0FAB _ 8B. 45, 08
        mov     dword [eax+8H], edx                     ; 0FAE _ 89. 50, 08
        mov     eax, 1                                  ; 0FB1 _ B8, 00000001
        jmp     ?_056                                   ; 0FB6 _ EB, 05

?_055:  mov     eax, 4294967295                         ; 0FB8 _ B8, FFFFFFFF
?_056:  leave                                           ; 0FBD _ C9
        ret                                             ; 0FBE _ C3
; _mouse_decode End of function

        nop                                             ; 0FBF _ 90


SECTION .data   align=32 noexecute                      ; section number 2, data

_fontA:                                                 ; byte
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

_keyval:                                                ; byte
        db 30H, 58H                                     ; 0010 _ 0X

?_057:  db 00H                                          ; 0012 _ .

?_058:  db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ ........
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

_table_rgb.2064:                                        ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

_cursor.2111:                                           ; byte
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


SECTION .bss    align=32 noexecute                      ; section number 3, bss

_mcursor:                                               ; byte
        resb    256                                     ; 0000

_bootInfo:                                              ; dword
        resd    1                                       ; 0100

?_059:  resw    1                                       ; 0104

?_060:  resw    1                                       ; 0106

_keyinfo:                                               ; byte
        resb    24                                      ; 0108

_mouseinfo:                                             ; byte
        resb    32                                      ; 0120

_keybuf:                                                ; byte
        resb    32                                      ; 0140

_mousebuf:                                              ; byte
        resb    128                                     ; 0160

_mdec:                                                  ; byte
        resb    16                                      ; 01E0

_mx:    resd    1                                       ; 01F0

_my:    resd    1                                       ; 01F4

_xsize: resd    1                                       ; 01F8

_ysize: resd    1                                       ; 01FC

_showPos.2031:                                          ; dword
        resd    8                                       ; 0200


SECTION .rdata  align=4 noexecute                       ; section number 4, const

?_061:                                                  ; byte
        db 46H, 72H, 61H, 67H, 69H, 6CH, 65H, 20H       ; 0000 _ Fragile 
        db 4FH, 53H, 00H, 00H                           ; 0008 _ OS..


SECTION .rdata$zzz align=4 noexecute                    ; section number 5, const

        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..


