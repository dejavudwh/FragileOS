[SECTION .s32]
BITS 32

_api_putchar:
  mov edx, 1
  mov al, [esp + 4]
  int 02Dh
  ret

_api_putstr:            ; void api_putstr(char* s)
  push ebx
  mov  edx, 2
  mov  ebx, [esp+8]
  int  02Dh
  pop  ebx
  ret

_api_openwin:           ; int api_openwin(char*buf, int xsiz, int ysiz, int col_inv, char*title)
  push edi
  push esi
  push ebx
  mov  edx, 5
  mov  ebx, [esp+16]    ; buf
  mov  esi, [esp+20]    ; xsiz
  mov  edi, [esp+24]    ; ysiz
  mov  eax, [esp+28]    ; col_inv
  mov  ecx, [esp+32]    ; title
  int  02Dh
  pop  ebx
  pop  esi
  pop  edi
  ret

 _api_putstrwin:        ; void api_putstrwin(int win, int x, int y, int col, int len, char* str)
  push edi
  push esi
  push ebp
  push ebx
  mov  edx, 6
  mov  ebx, [esp+20]    ; win
  mov  esi, [esp+24]    ; x
  mov  edi, [esp+28]    ; y
  mov  eax, [esp+32]    ; col
  mov  ecx, [esp+36]    ; len
  mov  ebp, [esp+40]    ; str
  int  02Dh
  pop  ebx
  pop  ebp
  pop  esi
  pop  edi
  ret

 _api_boxfillwin:       ; void api_boxfilwin(int win, int x0, int y0,int x1, int y1, int col)
  push edi
  push esi
  push ebp
  push ebx
  mov  edx, 7
  mov  ebx, [esp+20]    ; win
  mov  eax, [esp+24]    ; x0
  mov  ecx, [esp+28]    ; y0
  mov  esi, [esp+32]    ; x1
  mov  edi, [esp+36]    ; y1
  mov  ebp, [esp+40]    ; col

  int 02DH
  pop  ebx
  pop  ebp
  pop  esi
  pop  edi
  ret

_api_point:             ; void api_point(int win, int x, int y, int col)
  push edi
  push esi
  push ebx
  mov  edx, 11
  mov  ebx, [esp+16]    ; win
  mov  esi, [esp+20]    ; x
  mov  edi, [esp+24]    ; y
  mov  eax, [esp+28]    ; col
  int  02Dh
  pop  ebx
  pop  esi
  pop  edi
  ret

_api_refreshwin:        ; void api_refreshwin(int win, int x0, int y0, int x1, int y1)
  push  edi
  push  esi
  push  ebx
  mov   edx, 12
  mov   ebx, [esp+16]   ; win
  mov   eax, [esp+20]   ; x0
  mov   ecx, [esp+24]   ; y0
  mov   esi, [esp+28]   ; x1
  mov   edi, [esp+32]   ; y1
  int   02Dh
  pop   ebx
  pop   esi
  pop   edi
  ret

_api_linewin:           ; void api_linewin(int win, int x0, int y0, int x1, int y1, int col)
  push edi
  push esi
  push ebp
  push ebx
  mov  edx, 13
  mov  ebx, [esp+20]    ; win
  mov  eax, [esp+24]    ; x0
  mov  ecx, [esp+28]    ; y0
  mov  esi, [esp+32]    ; x1
  mov  edi, [esp+36]    ; y1
  mov  ebp, [esp+40]    ; col
  int  02Dh

  pop  ebx
  pop  ebp
  pop  esi
  pop  edi
  ret

_api_closewin:          ; void api_closewin(int win);
  push ebx
  mov  edx, 14
  mov  ebx, [esp+8]
  int  02Dh
  pop  ebx
  ret

_api_getkey:            ; int api_getkey(int mode)
  mov  edx, 15
  mov  eax, [esp+4]     ; mode
  int  02Dh
  ret

_api_alloctimer:
  mov edx, 16
  int 02Dh
  ret

_api_inittimer:         ; void api_initimer(int timer, int data)
  push ebx
  mov  edx, 17
  mov  ebx, [esp+8]
  mov  eax, [esp+12]
  int  02Dh
  pop  ebx
  ret

_api_settimer:          ; void api_settimer(int timer, int time)
  push ebx
  mov  edx, 18
  mov  ebx, [esp + 8]
  mov  eax, [esp + 12]
  int  02Dh
  pop  ebx
  ret

_api_freetimer:         ; void api_freetimer(int timer)
  push ebx
  mov  edx, 19
  mov  ebx, [esp + 8]
  int  02Dh
  pop  ebx
  ret

_api_showstring:
  push ebx
  mov  edx, 20
  int  02Dh
  pop  ebx
  ret

_api_fopen:              ; int api_fopen(char *fname)
  push ebx
  mov edx, 21
  mov ebx, [esp + 8]
  int 02Dh
  pop ebx
  ret

_api_close:              ; void api_close(int handle)
  mov edx, 22
  mov eax, [esp+4]
  int 02Dh

_api_fseek:              ; void api_fseek(int fhandle, int offset, int mode)
  push ebx
  mov edx, 23
  mov eax, [esp+8]      ; fhandle
  mov ecx, [esp+16]     ; mode
  mov ebx, [esp+12]     ; offset
  int 02Dh
  pop ebx
  ret

_api_fsize:              ; int api_fsize(int fhandle, int mode)
  mov edx, 24
  mov eax, [esp+4]
  mov ecx, [esp+8]
  int 02Dh
  ret

_api_fread:              ; int api_fread(char *buf, int maxsize, int fhandle)
  push ebx
  mov edx, 25
  mov eax, [esp+16]     ; fhandle
  mov ecx, [esp+12]     ; maxsize
  mov ebx, [esp+8]      ; buf
  int 02Dh
  pop ebx
  ret

___chkstk_ms:
  ret