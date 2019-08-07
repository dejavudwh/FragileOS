org  0x7c00;                                ;加载到内存0x7c00处

LoadAddr EQU  08000h                        ;内核的内存地址
BufferAddr EQU  7E0h                        ;读取扇区的时候进行的缓存

BaseOfStack EQU 07c00h

entry:              
    mov  ax, 0                              ;进行寄存器的初始化操作
    mov  ss, ax
    mov  ds, ax

    mov  ax, BufferAddr
    mov  es, ax                             ;ES:BX 数据存储缓冲区，指示扇区加载后放置的地址
    
    mov  ax, 0
    mov  ss, ax
    mov  sp, BaseOfStack
    mov  di, ax
    mov  si, ax
    

    mov          BX, 0                      ;ES:BX 数据存储缓冲区
    mov          CH, 1                      ;CH 用来存储柱面号
    mov          DH, 0                      ;DH 用来存储磁头号
    mov          CL, 0                      ;CL 用来存储扇区号
    
read_floppy:                                ;每次都把扇区写入缓存地址07E00处
    cmp          byte [load_count], 0       ;比较load_count地址处的值，如果=0就跳转到begin_load
    je           begin_load
    
    mov          bx, 0
    inc          CL
    mov          AH, 0x02                   ;AH = 02 表示要做的是读盘操作
    mov          AL, 1                      ;AL 表示要练习读取几个扇区
    mov          DL, 0                      ;驱动器编号，一般我们只有一个软盘驱动器，所以写死

    int          0x13                       ;调用BIOS中断实现磁盘读取功能
    jc           fin
    
copySector:                                 ;进行单字节的拷贝
    push    si                              ;之所以需要进行拷贝，可能是因为之前再进行多次的18扇区连续读取，被编译器优化为次数x18的读取
    push    di
    push    cx

    mov  cx, 0200h                           ;需要拷贝512字节
    mov  di, 0
    mov  si, 0
    mov  ax, word [load_section]             ;放入段基址
    mov  ds, ax

copy:
    cmp cx, 0
    je  copyend    

    mov al, byte [es:si]
    mov byte [ds:di], al

    inc di
    inc si
    dec cx
    jmp copy

copyend:
    pop cx
    pop di
    pop si

    mov bx, ds
    add bx, 020h
    mov ax, 0
    mov ds, ax
    mov word [load_section], bx
    mov bx, 0

    cmp          cl, 18
    jb           read_floppy

    inc          CH
    mov          cl, 0
    dec          byte [load_count]
    jmp          read_floppy

begin_load:
    mov  ax, 0
    mov  ds, ax
  
    jmp          LoadAddr

load_count db 10                             ;db 分配一字节
load_section dw 0800h                       ;内核地址 0800h x 16

fin:
    hlt                                     ;暂停
    jmp  fin