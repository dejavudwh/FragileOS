org  0x7c00;                                ;加载到内存0x7c00处

LoadAddr EQU  08000h                        ;内核的内存地址

entry:              
    mov  ax, 0                              ;进行寄存器的初始化操作
    mov  ss, ax
    mov  ds, ax
    mov  es, ax
    
    mov          bx, LoadAddr               ;ES:BX 数据存储缓冲区，指示扇区加载后放置的地址
    mov          CH, 1                      ;CH 用来存储柱面号
    mov          DH, 0                      ;DH 用来存储磁头号
    
read_floppy:
    cmp          byte [load_count], 0       ;比较load_count地址处的值，如果=0就跳转到begin_load
    je           begin_load
    
    mov          CL,  1                     ;CL 用来存储扇区号

    mov          AH,  0x02                  ;AH = 02 表示要做的是读盘操作
    mov          AL,  18                    ;AL 表示要练习读取几个扇区
    mov          DL,  0                     ;驱动器编号，一般我们只有一个软盘驱动器，所以写死   
                                            ;为0
    int          0x13                       ;调用BIOS中断实现磁盘读取功能

    inc          CH                         ;柱面号 +1
    dec          byte [load_count]          
    jc           fin
    add          bx,  512 * 18
    jmp          read_floppy
    
begin_load:
    jmp          LoadAddr

load_count db 3                             ;db 分配一字节

fin:
    hlt                                     ;暂停
    jmp  fin

