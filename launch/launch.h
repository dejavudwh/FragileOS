#include "../fs/fat12.h"
#include "../gui/win_sheet.h"
#include "../interrupt/timer.h"
#include "../memory/mem_util.h"
#include "../process/multi_task.h"
#include "../util/string.h"

#define COL8_000000 0
#define COL8_FF0000 1
#define COL8_00FF00 2
#define COL8_FFFF00 3
#define COL8_0000FF 4
#define COL8_FF00FF 5
#define COL8_00FFFF 6
#define COL8_FFFFFF 7
#define COL8_C6C6C6 8
#define COL8_840000 9
#define COL8_008400 10
#define COL8_848400 11
#define COL8_000084 12
#define COL8_840084 13
#define COL8_008484 14
#define COL8_848484 15

#define PORT_KEYDAT 0x0060
#define PIC_OCW2 0x20
#define PIC1_OCW2 0xA0

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


struct BOOTINFO {
    char *vgaRam;
    short screenX, screenY;
};

void initBootInfo(struct BOOTINFO *pBootInfo);

extern char systemFont[16];

void showFont8(char *vram, int xsize, int x, int y, char c, char *font);

void showString(struct SHTCTL *shtctl, struct SHEET *sht, int x, int y,
                char color, unsigned char *s);

void putblock(char *vram, int vxsize, int pxsize, int pysize, int px0, int py0,
              char *buf, int bxsize);

void init_mouse_cursor(char *mouse, char bc);

struct MOUSE_DEC {
    unsigned char buf[3], phase;
    int x, y, btn;
};



char charToHexVal(char c);
char *charToHexStr(unsigned char c);
char *intToHexStr(unsigned int d);

void init_keyboard(void);
void enable_mouse(struct MOUSE_DEC *mdec);

void show_mouse_info(struct SHTCTL *shtctl, struct SHEET *sht_back,
                     struct SHEET *sht_mouse);
int mouse_decode(struct MOUSE_DEC *mdec, unsigned char dat);

struct AddrRangeDesc {
    unsigned int baseAddrLow;
    unsigned int baseAddrHigh;
    unsigned int lengthLow;
    unsigned int lengthHigh;
    unsigned int type;
};

int get_memory_block_count(void);
char *get_addr_buffer(void);
void showMemoryInfo(struct SHTCTL *shtctl, struct SHEET *sht,
                    struct AddrRangeDesc *desc, char *vram, int page, int xsize,
                    int color);

void init_screen8(char *vram, int x, int y);

struct SHEET *message_box(struct SHTCTL *shtctl, char *title);
void make_window8(struct SHTCTL *shtctl, struct SHEET *sht, char *title,
                  char act);



void make_textbox8(struct SHEET *sht, int x0, int y0, int sx, int sy, int c);


void set_cursor(struct SHTCTL *shtctl, struct SHEET *sheet, int cur_x,
                int cur_y, int cursor_c);

struct SHEET *launch_console(int i);
void console_task(struct SHEET *sheet, int memtotal);

void make_wtitle8(struct SHTCTL *shtctl, struct SHEET *sht, char *title,
                  char act);


char transferScanCode(int data);

int isSpecialKey(int data);

int cons_newline(int cursor_y, struct SHEET *sheet);

void file_loadfile(char *fileName, struct Buffer *pBuffer);

