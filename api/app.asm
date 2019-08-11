; Disassembly of file: app.o
; Sun Aug 11 23:59:40 2019
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386







__main:
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        sub     esp, 24                                 ; 0003 _ 83. EC, 18
        mov     dword [esp], 72                         ; 0006 _ C7. 04 24, 00000048
        call    _api_putchar                            ; 000D _ E8, 00000000(rel)
        mov     dword [esp], 44                         ; 0012 _ C7. 04 24, 0000002C
        call    _api_putchar                            ; 0019 _ E8, 00000000(rel)
        mov     dword [esp], 87                         ; 001E _ C7. 04 24, 00000057
        call    _api_putchar                            ; 0025 _ E8, 00000000(rel)
        nop                                             ; 002A _ 90
        leave                                           ; 002B _ C9
        ret                                             ; 002C _ C3

        nop                                             ; 002D _ 90
        nop                                             ; 002E _ 90
        nop                                             ; 002F _ 90







        db 47H, 43H, 43H, 3AH, 20H, 28H, 78H, 38H       ; 0000 _ GCC: (x8
        db 36H, 5FH, 36H, 34H, 2DH, 70H, 6FH, 73H       ; 0008 _ 6_64-pos
        db 69H, 78H, 2DH, 73H, 65H, 68H, 2DH, 72H       ; 0010 _ ix-seh-r
        db 65H, 76H, 30H, 2CH, 20H, 42H, 75H, 69H       ; 0018 _ ev0, Bui
        db 6CH, 74H, 20H, 62H, 79H, 20H, 4DH, 69H       ; 0020 _ lt by Mi
        db 6EH, 47H, 57H, 2DH, 57H, 36H, 34H, 20H       ; 0028 _ nGW-W64 
        db 70H, 72H, 6FH, 6AH, 65H, 63H, 74H, 29H       ; 0030 _ project)
        db 20H, 38H, 2EH, 31H, 2EH, 30H, 00H, 00H       ; 0038 _  8.1.0..


