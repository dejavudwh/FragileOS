#include "../fs/fat12.h"
#include "../interrupt/timer.h"
#include "../util/string.h"

void load_ldt(short s);

void cmd_dir();
void asm_end_app(int *);
void kill_process();
void cons_putstr(char *s);
void asm_cons_putchar();

char get_font_data(int c, int offset);
void io_hlt(void);
void io_cli(void);
void io_sti(void);
int io_load_eflags(void);
void io_store_eflags(int eflags);
void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);
void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x, int y,
              int x0, int y0);

int get_leds();
void start_app(int eip, int cs, int esp, int ds, int *esp0);

void close_constask(struct TASK *task);
void close_console(struct TASK *task);
void cmd_exit(struct TASK *cons_task);

void cons_putchar(char chr, char move);

void init_mouse_cursor(char *mouse, char bc);

void init_keyboard(void);
void enable_mouse(struct MOUSE_DEC *mdec);

int mouse_decode(struct MOUSE_DEC *mdec, unsigned char dat);

int get_memory_block_count(void);
char *get_addr_buffer(void);

void set_cursor(struct SHTCTL *shtctl, struct SHEET *sheet, int cur_x,
                int cur_y, int cursor_c);

struct SHEET *launch_console(int i);
void console_task(struct SHEET *sheet, int memtotal);

char transferScanCode(int data);

int isSpecialKey(int data);

int cons_newline(int cursor_y, struct SHEET *sheet);

void file_loadfile(char *fileName, struct Buffer *pBuffer);
