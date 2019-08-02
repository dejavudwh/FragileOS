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
read_floppy:
    cmp          byte [load_count], 0
    je           begin_load

    mov          CH, 1         
    mov          DH, 0         
    mov          CL, 1        

    mov          AH, 0x02       
    mov          AL,  18        
    mov          DL, 0          
                              
    INT          0x13           

    inc          CH
    dec          byte [load_count]
   
    JC           fin
    jmp          read_floppy
    
begin_load:
    jmp          LOAD_ADDR


load_count db 2  

fin:
    HLT
    jmp  fin

