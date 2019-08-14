void api_putchar(int c);
void api_putstr(char *s);
int api_openwin(char *buf, int xsiz, int ysiz, int col_inv, char *title);
void api_putstrwin(int win, int x, int y, int col, int len, char *str);
void api_boxfillwin(int win, int x0, int y0, int x1, int y1, int col);
void api_point(int win, int x, int y, int col);
void api_refreshwin(int win, int x0, int y0, int x1, int y1);
void api_linewin(int win, int x0, int y0, int x1, int y1, int col);
void api_closewin(int win);
int api_getkey(int mode);
void api_showstring();
void api_point(int win, int x, int y, int col);

int api_fsize(int fhandle, int mode);
int api_fopen(char *fname);
int api_fread(char *buf, int maxsize, int fh);
void api_fseek(int fhandle, int offset, int mode);
void api_close(int handle);

int api_alloctimer();
void api_inittimer(int timer, int data);
void api_settimer(int timer, int time);
void api_freetimer(int timer);