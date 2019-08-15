#include "draw.h"

static char keytable[0x54] = {
    0, 0,   '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '^',
    0, 0,   'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '@', '[',
    0, 0,   'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', ';', ':', 0,
    0, ']', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', ',', '.', '/', 0,   '*',
    0, ' ', 0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0, '7', '8', '9', '-', '4', '5', '6', '+', '1', '2', '3', '0', '.'};

static char keytable1[0x90] = {
    0,   0,   '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '=', '~',
    0,   0,   'Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', '`', '{', 0,
    0,   'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', '+', '*', 0,   0,   '}',
    'Z', 'X', 'C', 'V', 'B', 'N', 'M', '<', '>', '?', 0,   '*', 0,   ' ', 0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   '7', '8', '9',
    '-', '4', '5', '6', '+', '1', '2', '3', '0', '.', 0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   '_', 0,   0,   0,
    0,   0,   0,   0,   0,   0,   '|', 0,   0};

static char keyval[5] = {'0', 'X', 0, 0, 0};

extern char systemFont[16];
extern int xsize, ysize;
extern struct MEMMAN *memman;
extern struct FIFO8 keyinfo;
extern struct FIFO8 mouseinfo;
extern int mx, my, mmx, mmy;
extern unsigned char *buf_back, buf_mouse[256];
extern struct TASK *current_console_task;
extern struct SHEET *mouse_clicked_sht;
extern struct MOUSE_DEC mdec;

void showMemoryInfo(struct SHTCTL *shtctl, struct SHEET *sht,
                    struct AddrRangeDesc *desc, char *vram, int page, int xsize,
                    int color) {
    int x = 0, y = 0, gap = 13 * 8, strLen = 10 * 8;

    init_screen8(sht->buf, xsize, ysize);

    showString(shtctl, sht, x, y, color, "page is: ");
    char *pPageCnt = intToHexStr(page);
    showString(shtctl, sht, gap, y, color, pPageCnt);
    y += 16;

    showString(shtctl, sht, x, y, color, "BaseAddrL: ");
    char *pBaseAddrL = intToHexStr(desc->baseAddrLow);
    showString(shtctl, sht, gap, y, color, pBaseAddrL);
    y += 16;

    showString(shtctl, sht, x, y, color, "BaseAddrH: ");
    char *pBaseAddrH = intToHexStr(desc->baseAddrHigh);
    showString(shtctl, sht, gap, y, color, pBaseAddrH);

    y += 16;
    showString(shtctl, sht, x, y, color, "lengthLow: ");
    char *pLengthLow = intToHexStr(desc->lengthLow);
    showString(shtctl, sht, gap, y, color, pLengthLow);
    /*
        y+= 16;
        showString(shtctl, sht, x, y, color, "lengthHigh: ");
        char* pLengthHigh = intToHexStr(desc->lengthHigh);
        showString(shtctl, sht, gap, y, color, pLengthHigh);

        y+= 16;
        showString(shtctl, sht, x, y, color, "type: ");
        char* pType = intToHexStr(desc->type);
        showString(shtctl, sht, gap, y, color, pType);
    */
}

struct SHEET *message_box(struct SHTCTL *shtctl, char *title) {
    struct SHEET *sht_win;
    unsigned char *buf_win;

    sht_win = sheet_alloc(shtctl);
    buf_win = (unsigned char *)memman_alloc_4k(memman, 160 * 68);
    sheet_setbuf(sht_win, buf_win, 160, 68, -1);

    make_window8(shtctl, sht_win, title, 1);
    make_textbox8(sht_win, 8, 28, 144, 16, COL8_FFFFFF);

    sheet_slide(shtctl, sht_win, 260, 172);
    sheet_updown(shtctl, sht_win, 2);

    return sht_win;
}

void showString(struct SHTCTL *shtctl, struct SHEET *sht, int x, int y,
                char color, unsigned char *s) {
    if (shtctl == 0 || sht == 0) {
        return;
    }

    int begin = x;
    int i = 0;
    for (; *s != 0x00; s++) {
        showFont8(sht->buf, sht->bxsize, x, y, color, systemFont + *s * 16);
        x += 8;
    }

    sheet_refresh(shtctl, sht, begin, y, x, y + 16);
}

void show_mouse_info(struct SHTCTL *shtctl, struct SHEET *sht_back,
                     struct SHEET *sht_mouse) {
    char *vram = buf_back;
    unsigned char data = 0;
    int j;
    struct SHEET *sht = 0;
    int x, y;
    io_sti();
    data = fifo8_get(&mouseinfo);
    if (mouse_decode(&mdec, data) != 0) {
        computeMousePosition(shtctl, sht_back, &mdec);

        sheet_slide(shtctl, sht_mouse, mx, my);
        if ((mdec.btn & 0x01) != 0) {
            if (mmx < 0) {
                for (j = shtctl->top - 1; j > 0; j--) {
                    sht = shtctl->sheets[j];
                    x = mx - sht->vx0;
                    y = my - sht->vy0;
                    if (0 <= x && x < sht->bxsize && 0 <= y &&
                        y < sht->bysize) {
                        if (sht->buf[y * sht->bxsize + x] != sht->col_inv) {
                            if (current_console_task->sht != 0) {
                                make_wtitle8(shtctl, current_console_task->sht,
                                             "console", 0);
                                sheet_refresh(shtctl, current_console_task->sht,
                                              0, 0, sht->bxsize, sht->bysize);
                            }
                            current_console_task = sht->task;
                            if (current_console_task->sht == 0) {
                                showString(shtctl, sht_back, 0, 96, COL8_FFFFFF,
                                           "user proc");
                            }
                            if (current_console_task->sht != 0) {
                                make_wtitle8(shtctl, current_console_task->sht,
                                             "console", 1);
                                sheet_refresh(shtctl, sht, 0, 0, sht->bxsize,
                                              sht->bysize);
                            }
                            sheet_updown(shtctl, sht, shtctl->top - 1);
                            if (3 <= x && x < sht->bxsize - 3 && 3 <= y &&
                                y < 21) {
                                mmx = mx;
                                mmy = my;
                                mouse_clicked_sht = sht;
                            }

                            if (sht->bxsize - 21 <= x && x < sht->bxsize - 5 &&
                                5 <= y && y < 19 && sht->task != 0) {
                                io_cli();
                                sheet_free(shtctl, sht);
                                int addr_code32 = get_addr_code32();
                                sht->task->tss.eip =
                                    (int)kill_process - addr_code32;
                                io_sti();
                            }
                            break;
                        }
                    }
                }
            } else {
                x = mx - mmx;
                y = my - mmy;
                sheet_slide(shtctl, mouse_clicked_sht,
                            mouse_clicked_sht->vx0 + x,
                            mouse_clicked_sht->vy0 + y);
                mmx = mx;
                mmy = my;
            }
        } else {
            mmx = -1;
        }
    }
}

void make_window8(struct SHTCTL *shtctl, struct SHEET *sht, char *title,
                  char act) {
    int bxsize = sht->bxsize;
    int bysize = sht->bysize;

    boxfill8(sht->buf, bxsize, COL8_C6C6C6, 0, 0, bxsize - 1, 0);
    boxfill8(sht->buf, bxsize, COL8_FFFFFF, 1, 1, bxsize - 2, 1);
    boxfill8(sht->buf, bxsize, COL8_C6C6C6, 0, 0, 0, bysize - 1);
    boxfill8(sht->buf, bxsize, COL8_FFFFFF, 1, 1, 1, bysize - 1);
    boxfill8(sht->buf, bxsize, COL8_848484, bxsize - 2, 1, bxsize - 2,
             bysize - 2);
    boxfill8(sht->buf, bxsize, COL8_000000, bxsize - 1, 0, bxsize - 1,
             bysize - 1);
    boxfill8(sht->buf, bxsize, COL8_C6C6C6, 2, 2, bxsize - 3, bysize - 3);
    boxfill8(sht->buf, bxsize, COL8_000084, 3, 3, bxsize - 4, 20);
    boxfill8(sht->buf, bxsize, COL8_848484, 1, bysize - 2, bxsize - 2,
             bysize - 2);
    boxfill8(sht->buf, bxsize, COL8_000000, 0, bysize - 1, bxsize - 1,
             bysize - 1);

    make_wtitle8(shtctl, sht, title, act);

    return;
}

void make_wtitle8(struct SHTCTL *shtctl, struct SHEET *sht, char *title,
                  char act) {
    static char closebtn[14][16] = {
        "OOOOOOOOOOOOOOO@", "OQQQQQQQQQQQQQ$@", "OQQQQQQQQQQQQQ$@",
        "OQQQ@@QQQQ@@QQ$@", "OQQQQ@@QQ@@QQQ$@", "OQQQQQ@@@@QQQQ$@",
        "OQQQQQQ@@QQQQQ$@", "OQQQQQ@@@@QQQQ$@", "OQQQQ@@QQ@@QQQ$@",
        "OQQQ@@QQQQ@@QQ$@", "OQQQQQQQQQQQQQ$@", "OQQQQQQQQQQQQQ$@",
        "O$$$$$$$$$$$$$$@", "@@@@@@@@@@@@@@@@"};

    int x, y;
    char c, tc, tbc;
    if (act != 0) {
        tc = COL8_FFFFFF;
        tbc = COL8_000084;
    } else {
        tc = COL8_C6C6C6;
        tbc = COL8_848484;
    }

    boxfill8(sht->buf, sht->bxsize, tbc, 3, 3, sht->bxsize - 4, 20);
    showString(shtctl, sht, 24, 4, tc, title);

    for (y = 0; y < 14; y++) {
        for (x = 0; x < 16; x++) {
            c = closebtn[y][x];
            if (c == '@') {
                c = COL8_000000;
            } else if (c == '$') {
                c = COL8_848484;
            } else if (c == 'Q') {
                c = COL8_C6C6C6;
            } else {
                c = COL8_FFFFFF;
            }

            sht->buf[(5 + y) * sht->bxsize + (sht->bxsize - 21 + x)] = c;
        }
    }
}

void make_textbox8(struct SHEET *sht, int x0, int y0, int sx, int sy, int c) {
    int x1 = x0 + sx, y1 = y0 + sy;
    boxfill8(sht->buf, sht->bxsize, COL8_848484, x0 - 2, y0 - 3, x1 + 1,
             y0 - 3);
    boxfill8(sht->buf, sht->bxsize, COL8_848484, x0 - 3, y0 - 3, x0 - 3,
             y1 + 1);
    boxfill8(sht->buf, sht->bxsize, COL8_FFFFFF, x0 - 3, y1 + 2, x1 + 1,
             y1 + 2);
    boxfill8(sht->buf, sht->bxsize, COL8_FFFFFF, x1 + 2, y0 - 3, x1 + 2,
             y1 + 2);
    boxfill8(sht->buf, sht->bxsize, COL8_000000, x0 - 1, y0 - 2, x1 + 0,
             y0 - 2);
    boxfill8(sht->buf, sht->bxsize, COL8_000000, x0 - 2, y0 - 2, x0 - 2,
             y1 + 0);
    boxfill8(sht->buf, sht->bxsize, COL8_C6C6C6, x0 - 2, y1 + 1, x1 + 0,
             y1 + 1);
    boxfill8(sht->buf, sht->bxsize, COL8_C6C6C6, x1 + 1, y0 - 2, x1 + 1,
             y1 + 1);
    boxfill8(sht->buf, sht->bxsize, c, x0 - 1, y0 - 1, x1 + 0, y1 + 0);
}

void init_screen8(char *vram, int xsize, int ysize) {
    boxfill8(vram, xsize, COL8_008484, 0, 0, xsize - 1, ysize - 29);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 28, xsize - 1, ysize - 28);
    boxfill8(vram, xsize, COL8_FFFFFF, 0, ysize - 27, xsize - 1, ysize - 27);
    boxfill8(vram, xsize, COL8_C6C6C6, 0, ysize - 26, xsize - 1, ysize - 1);

    boxfill8(vram, xsize, COL8_FFFFFF, 3, ysize - 24, 59, ysize - 24);
    boxfill8(vram, xsize, COL8_FFFFFF, 2, ysize - 24, 2, ysize - 4);
    boxfill8(vram, xsize, COL8_848484, 3, ysize - 4, 59, ysize - 4);
    boxfill8(vram, xsize, COL8_848484, 59, ysize - 23, 59, ysize - 5);
    boxfill8(vram, xsize, COL8_000000, 2, ysize - 3, 59, ysize - 3);
    boxfill8(vram, xsize, COL8_000000, 60, ysize - 24, 60, ysize - 3);

    boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 24, xsize - 4,
             ysize - 24);
    boxfill8(vram, xsize, COL8_848484, xsize - 47, ysize - 23, xsize - 47,
             ysize - 4);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize - 47, ysize - 3, xsize - 4,
             ysize - 3);
    boxfill8(vram, xsize, COL8_FFFFFF, xsize - 3, ysize - 24, xsize - 3,
             ysize - 3);
}

void computeMousePosition(struct SHTCTL *shtctl, struct SHEET *sht,
                          struct MOUSE_DEC *mdec) {
    mx += mdec->x;
    my += mdec->y;
    if (mx < 0) {
        mx = 0;
    }

    if (my < 0) {
        my = 0;
    }

    if (mx > xsize - 1) {
        mx = xsize - 1;
    }
    if (my > ysize - 1) {
        my = ysize - 1;
    }
}

void initBootInfo(struct BOOTINFO *pBootInfo) {
    pBootInfo->vgaRam = (char *)0xe0000000;
    pBootInfo->screenX = 640;
    pBootInfo->screenY = 480;
}

void init_palette(void) {
    static unsigned char table_rgb[16 * 3] = {
        0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0xff, 0x00, 0xff, 0xff, 0x00,
        0x00, 0x00, 0xff, 0xff, 0x00, 0xff, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xc6, 0xc6, 0xc6, 0x84, 0x00, 0x00, 0x00, 0x84, 0x00, 0x84, 0x84, 0x00,
        0x00, 0x00, 0x84, 0x84, 0x00, 0x84, 0x00, 0x84, 0x84, 0x84, 0x84, 0x84,
    };

    set_palette(0, 15, table_rgb);
    unsigned char table2[216 * 3];
    int r, g, b;
    for (b = 0; b < 6; b++) {
        for (g = 0; g < 6; g++) {
            for (r = 0; r < 6; r++) {
                table2[(r + g * 6 + b * 36) * 3 + 0] = r * 51;
                table2[(r + g * 6 + b * 36) * 3 + 1] = g * 51;
                table2[(r + g * 6 + b * 36) * 3 + 2] = b * 51;
            }
        }
    }

    set_palette(16, 231, table2);
    return;
}

void set_palette(int start, int end, unsigned char *rgb) {
    int i, eflags;
    eflags = io_load_eflags();
    io_cli();
    io_out8(0x03c8, start);  // set  palette number
    for (i = start; i <= end; i++) {
        io_out8(0x03c9, rgb[0] / 4);
        io_out8(0x03c9, rgb[1] / 4);
        io_out8(0x03c9, rgb[2] / 4);

        rgb += 3;
    }

    io_store_eflags(eflags);
    return;
}

void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x0, int y0,
              int x1, int y1) {
    int x, y;
    for (y = y0; y <= y1; y++)
        for (x = x0; x <= x1; x++) {
            vram[y * xsize + x] = c;
        }
}

void showFont8(char *vram, int xsize, int x, int y, char c, char *font) {
    int i;
    char d;

    for (i = 0; i < 16; i++) {
        d = font[i];
        if ((d & 0x80) != 0) {
            vram[(y + i) * xsize + x + 0] = c;
        }
        if ((d & 0x40) != 0) {
            vram[(y + i) * xsize + x + 1] = c;
        }
        if ((d & 0x20) != 0) {
            vram[(y + i) * xsize + x + 2] = c;
        }
        if ((d & 0x10) != 0) {
            vram[(y + i) * xsize + x + 3] = c;
        }
        if ((d & 0x08) != 0) {
            vram[(y + i) * xsize + x + 4] = c;
        }
        if ((d & 0x04) != 0) {
            vram[(y + i) * xsize + x + 5] = c;
        }
        if ((d & 0x02) != 0) {
            vram[(y + i) * xsize + x + 6] = c;
        }
        if ((d & 0x01) != 0) {
            vram[(y + i) * xsize + x + 7] = c;
        }
    }
}

void init_mouse_cursor(char *mouse, char bc) {
    static char cursor[16][16] = {
        "**************..", "*OOOOOOOOOOO*...", "*OOOOOOOOOO*....",
        "*OOOOOOOOO*.....", "*OOOOOOOO*......", "*OOOOOOO*.......",
        "*OOOOOOO*.......", "*OOOOOOOO*......", "*OOOO**OOO*.....",
        "*OOO*..*OOO*....", "*OO*....*OOO*...", "*O*......*OOO*..",
        "**........*OOO*.", "*..........*OOO*", "............*OO*",
        ".............***"};

    int x, y;
    for (y = 0; y < 16; y++) {
        for (x = 0; x < 16; x++) {
            if (cursor[y][x] == '*') {
                mouse[y * 16 + x] = COL8_000000;
            }
            if (cursor[y][x] == 'O') {
                mouse[y * 16 + x] = COL8_FFFFFF;
            }
            if (cursor[y][x] == '.') {
                mouse[y * 16 + x] = bc;
            }
        }
    }
}

void putblock(char *vram, int vxsize, int pxsize, int pysize, int px0, int py0,
              char *buf, int bxsize) {
    int x, y;
    for (y = 0; y < pysize; y++)
        for (x = 0; x < pxsize; x++) {
            vram[(py0 + y) * vxsize + (px0 + x)] = buf[y * bxsize + x];
        }
}

char charToHexVal(char c) {
    if (c >= 10) {
        return 'A' + c - 10;
    }

    return '0' + c;
}

char *charToHexStr(unsigned char c) {
    int i = 0;
    char mod = c % 16;
    keyval[3] = charToHexVal(mod);
    c = c / 16;
    keyval[2] = charToHexVal(c);

    return keyval;
}

char *intToHexStr(unsigned int d) {
    char str[11];
    str[0] = '0';
    str[1] = 'X';
    str[10] = 0;

    int i = 2;
    for (; i < 10; i++) {
        str[i] = '0';
    }

    int p = 9;
    while (p > 1 && d > 0) {
        int e = d % 16;
        d /= 16;
        if (e >= 10) {
            str[p] = 'A' + e - 10;
        } else {
            str[p] = '0' + e;
        }
        p--;
    }

    return str;
}

void set_cursor(struct SHTCTL *shtctl, struct SHEET *sheet, int cursor_x,
                int cursor_y, int cursor_c) {
    if (sheet == 0) {
        return;
    }

    boxfill8(sheet->buf, sheet->bxsize, cursor_c, cursor_x, cursor_y,
             cursor_x + 7, cursor_y + 15);
    sheet_refresh(shtctl, sheet, cursor_x, cursor_y, cursor_x + 8,
                  cursor_y + 16);
}