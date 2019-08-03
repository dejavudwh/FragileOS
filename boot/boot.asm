org  0x7c00;

LOAD_ADDR  EQU  0X9000

jmp  entry

entry:
    mov  ax, 0
    mov  ss, ax
    mov  ds, ax
    mov  es, ax
    mov  si, ax

    
    mov          BX, LOAD_ADDR       ; ES:BX 数据存储缓冲区
readFloppy:
    cmp          byte [load_count], 0
    je           beginLoad

    mov          CH, 1        ;CH 用来存储柱面号
    mov          DH, 0        ;DH 用来存储磁头号
    mov          CL, 1        ;CL 用来存储扇区号

    mov          AH, 0x02      ;  AH = 02 表示要做的是读盘操作
    mov          AL,  18        ; AL 表示要练习读取几个扇区
    mov          DL, 0         ;驱动器编号，一般我们只有一个软盘驱动器，所以写死   
                               ;为0
    INT          0x13          ;调用BIOS中断实现磁盘读取功能

    inc          CH
    dec          byte [load_count]
   
    JC           fin
    jmp          readFloppy
    
beginLoad:
    jmp          LOAD_ADDR


load_count db 2 ;连续读取几个柱面

fin:
    HLT
    jmp  fin

