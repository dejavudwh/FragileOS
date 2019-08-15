#include "../process/multi_task.h"
#include "../memory/mem_util.h"
#include "win_sheet.h"

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

struct MOUSE_DEC {
    unsigned char buf[3], phase;
    int x, y, btn;
};

struct BOOTINFO {
    char *vgaRam;
    short screenX, screenY;
};

void init_screen8(char *vram, int xsize, int ysize);

char charToHexVal(char c);
char *charToHexStr(unsigned char c);
char *intToHexStr(unsigned int d);

void initBootInfo(struct BOOTINFO *pBootInfo);

void showFont8(char *vram, int xsize, int x, int y, char c, char *font);

void putblock(char *vram, int vxsize, int pxsize, int pysize, int px0, int py0,
              char *buf, int bxsize);

void showMemoryInfo(struct SHTCTL *shtctl, struct SHEET *sht,
                    struct AddrRangeDesc *desc, char *vram, int page, int xsize,
                    int color);

void init_screen8(char *vram, int x, int y);

void make_window8(struct SHTCTL *shtctl, struct SHEET *sht, char *title,
                  char act);

void make_textbox8(struct SHEET *sht, int x0, int y0, int sx, int sy, int c);

void make_wtitle8(struct SHTCTL *shtctl, struct SHEET *sht, char *title,
                  char act);

void showString(struct SHTCTL *shtctl, struct SHEET *sht, int x, int y,
                char color, unsigned char *s);

struct SHEET *message_box(struct SHTCTL *shtctl, char *title);

void show_mouse_info(struct SHTCTL *shtctl, struct SHEET *sht_back,
                     struct SHEET *sht_mouse);

extern void kill_process();
