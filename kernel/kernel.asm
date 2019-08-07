%include "macro.inc"                                         

org   8000h                                               ; 指示加载到8000，和前面的boot对应,也相当于设置为段基址

VRAM_ADDRESS  equ  0x000a0000                             ; 显存地址

jmp   LABEL_BEGIN                                         ; 跳到执行的地儿

[SECTION .gdt]                                            ; 利用宏定义定义gdt
 ;                                  段基址          段界限              属性
LABEL_GDT:          Descriptor        0,            0,                 0  
LABEL_DESC_CODE32:  Descriptor        0,            0fffffh,           DA_C    | DA_32 | DA_LIMIT_4K
LABEL_DESC_VIDEO:   Descriptor        0B8000h,      0fffffh,           DA_DRW
LABEL_DESC_VRAM:    Descriptor        0,            0fffffh,           DA_DRW  | DA_LIMIT_4K

LABEL_DESC_STACK:   Descriptor        0,            TopOfStack,        DA_DRWA | DA_32
LABEL_DESC_FONT:    Descriptor        0,            0fffffh,           DA_DRW  | DA_LIMIT_4K  

GdtLen     equ    $ - LABEL_GDT                           
GdtPtr     dw     GdtLen - 1
           dd     0

SelectorCode32    equ   LABEL_DESC_CODE32 -  LABEL_GDT
SelectorVideo     equ   LABEL_DESC_VIDEO  -  LABEL_GDT
SelectorStack     equ   LABEL_DESC_STACK  -  LABEL_GDT
SelectorVram      equ   LABEL_DESC_VRAM   -  LABEL_GDT
SelectorFont      equ   LABEL_DESC_FONT - LABEL_GDT

LABEL_IDT:
%rep  32
    Gate  SelectorCode32, SpuriousHandler,  0,  DA_386IGate
%endrep

.020h:
    Gate SelectorCode32, timerHandler,0, DA_386IGate

.021h:
    Gate SelectorCode32, KeyBoardHandler, 0,  DA_386IGate

%rep  10
    Gate  SelectorCode32, SpuriousHandler,  0,  DA_386IGate
%endrep

.2CH:                                                         ; IRO4 so 28h + 4 = 2ch
    Gate SelectorCode32, mouseHandler,  0,  DA_386IGate

IdtLen  equ $ - LABEL_IDT
IdtPtr  dw  IdtLen - 1
        dd  0


[SECTION  .s16]
[BITS  16]
LABEL_BEGIN:                                      ; 初始化操作
     mov   ax, cs
     mov   ds, ax
     mov   es, ax
     mov   ss, ax
     mov   sp, 0100h

ComputeMemory:
     mov   ebx, 0
     mov   di, MemChkBuf                          ; BIOS会把地址范围描述符写入这个地址
.loop:                                            ; 检测内存步骤
     mov   eax, 0E820h      
     mov   ecx, 20                                ; 指定di的内存大小，一般总是填充20
     mov   edx, 0534D4150h                        ; 像edx写入...  "SMAP"
     int   15h                                    ; 调用中断
     jc    LABEL_MEM_CHK_FAIL                     ; CF位被置为1则为出错
     add   di, 20   
     inc   dword [dwMCRNumber]  
     cmp   ebx, 0                                 ; 如果ebx值为0，则表示查询结束
     jne   .loop
     jmp   LABEL_MEM_CHK_OK

LABEL_MEM_CHK_FAIL:
    mov    dword [dwMCRNumber], 0

LABEL_MEM_CHK_OK:
     mov   al, 0x13                               ; 进入图形模式
     mov   ah, 0
     int   0x10

     xor   eax, eax                               ; 计算物理内存地址
     mov   ax,  cs
     shl   eax, 4
     add   eax, LABEL_SEG_CODE32                  
     mov   word [LABEL_DESC_CODE32 + 2], ax       ; 初始化LABEL_DESC_CODE32段描述符
     shr   eax, 16
     mov   byte [LABEL_DESC_CODE32 + 4], al
     mov   byte [LABEL_DESC_CODE32 + 7], ah

     xor   eax, eax
     mov   ax,  cs
     shl   eax, 4
     add   eax, LABEL_SYSTEM_FONT                 ; 初始化LABEL_DESC_CODE32段描述符
     mov   word [LABEL_DESC_FONT + 2], ax
     shr   eax, 16
     mov   byte [LABEL_DESC_FONT + 4], al
     mov   byte [LABEL_DESC_FONT + 7], ah

     xor   eax, eax
     mov   ax,  ds
     shl   eax, 4
     add   eax, LABEL_GDT                         ; 计算gdt地址
     mov   dword  [GdtPtr + 2], eax


     lgdt  [GdtPtr]                               ; lgdt命令让cpu知道GDT

     cli   

     call init8259A                               ; 初始化芯片8259A

     xor   eax, eax
     mov   ax,  ds
     shl   eax, 4
     add   eax, LABEL_IDT                         ; 加载IDT
     mov   dword [IdtPtr + 2], eax
     lidt  [IdtPtr]

     in    al,  92h                               ; 切换到保护模式
     or    al,  00000010b
     out   92h, al

     mov   eax, cr0
     or    eax , 1
     mov   cr0, eax

     jmp   dword  SelectorCode32: 0

init8259A:
     mov  al, 011h                                ; 向主8259A发生ICW1
     out  020h, al                                ; 00010001 ICW[0]=1需要发送ICW2 ICW[1]=1 说明有级联8259A
     call io_delay                                ; ICW[2] = 0用八字节来表示中断向量 ICW1[3]=0 边沿触发  
  
     out 0A0h, al                                 ; 向从8259A发送ICW1
     call io_delay

     mov al, 020h                                 ; 向主8259A发送ICW2
     out 021h, al                                 ; ICW2[0,1,2]必须为0
     call io_delay                                ; ICW2 = 0x20,这样8259A对应的IRQ0管线向CPU发送信号时，CPU根据0x20这个值去查找要执行的代码

     mov  al, 028h                                ;向从8259A发送ICW2
     out  0A1h, al
     call io_delay

     mov  al, 004h                                ; 向主8259A发送ICW3
     out  021h, al                                ; ICW[2] = 1, 这表示从8259A通过主IRQ2管线连接到主8259A控制器
     call io_delay

     mov  al, 002h                                ; 向从8259A 发送 ICW3
     out  0A1h, al
     call io_delay

     mov  al, 001h                                ; 向主8259A发送ICW4
     out  021h, al                                ; ICW4[0]=1表示当前CPU架构师80X86，ICW4[1]=1表示自动EOI
     call io_delay

     out  0A1h, al                                ; 向主8259A发送ICW4
     call io_delay

     mov  al, 11111000b                           ; OCW[i] = 0即接收对应管线信号
     out  021h, al                                ; 键盘中断
     call io_delay

     mov  al, 11101111b                           ; 鼠标中断
     out  0A1h, al
     call io_delay

     ret

io_delay:
     nop
     nop
     nop
     nop
     ret

[SECTION .s32]
[BITS  32]
LABEL_SEG_CODE32:
     mov  ax,  SelectorStack                       ; 初始化堆栈
     mov  ss,  ax
     mov  esp, TopOfStack

     mov  ax,  SelectorVram                        
     mov  ds,  ax

     mov  ax,  SelectorVideo
     mov  gs,  ax
        
     sti

     %include "ckernel.asm"
     jmp  $

_SpuriousHandler:
SpuriousHandler  equ _SpuriousHandler - $$
     iretd

_KeyBoardHandler:
KeyBoardHandler equ _KeyBoardHandler - $$
     push es
     push ds
     pushad
     mov  eax, esp
     push eax

     call _intHandlerFromC
    
     pop  eax
     mov  esp, eax
     popad
     pop  ds
     pop  es
     iretd

_mouseHandler:
mouseHandler equ _mouseHandler - $$
     push es
     push ds
     pushad
     mov  eax, esp
     push eax

     call _intHandlerForMouse
    
     pop  eax
     mov  esp, eax
     popad
     pop  ds
     pop  es
     iretd

_timerHandler:
timerHandler equ _timerHandler - $$
     push es
     push ds
     pushad
     mov  eax, esp
     push eax

     call _intHandlerForTimer

     pop  eax
     mov  esp, eax
     popad
     pop  ds
     pop  es
     iretd

_get_font_data:
    mov ax, SelectorFont
    mov es, ax
    xor edi, edi
    mov edi, [esp + 4] ;char
    shl edi, 4
    add edi, [esp + 8]
    xor eax, eax
    mov al, byte [es:edi]
    ret

_io_hlt:  
  HLT
  RET

_io_cli:
  CLI
  RET

_io_sti:
  STI
  RET
  
_io_stihlt:
  STI
  HLT
  RET

_io_in8:
  mov  edx, [esp + 4]
  mov  eax, 0
  in   al, dx
  ret

_io_in16:
  mov  edx, [esp + 4]
  mov  eax, 0
  in   ax, dx
  ret

_io_in32:
  mov edx, [esp + 4]
  in  eax, dx
  ret

_io_out8:
    mov edx, [esp + 4]
    mov al, [esp + 8]
    out dx, al
    ret

_io_out16:
    mov edx, [esp + 4]
    mov eax, [esp + 8]
    out dx, ax
    ret

_io_out32:
    mov edx, [esp + 4]
    mov eax, [esp + 8]
    out dx, eax
    ret

_io_load_eflags:
    pushfd
    pop  eax
    ret

_io_store_eflags:                                  ; 恢复中断
    mov eax, [esp + 4]
    push eax
    popfd
    ret

_get_memory_block_count:
    mov  eax, [dwMCRNumber]
    ret

_get_addr_buffer:
    mov  eax, MemChkBuf
    ret


SegCode32Len   equ  $ - LABEL_SEG_CODE32


[SECTION .data]
ALIGN 32
[BITS 32]
MemChkBuf: times 256 db 0
dwMCRNumber:   dd 0


[SECTION .gs]
ALIGN 32
[BITS 32]
LABEL_STACK:
  times 512  db 0
  TopOfStack  equ  $ - LABEL_STACK


LABEL_SYSTEM_FONT:
%include "fonts.inc"

SystemFontLength equ $ - LABEL_SYSTEM_FONT