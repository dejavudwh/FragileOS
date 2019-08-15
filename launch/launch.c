
#include "launch.h"

struct MEMMAN *memman = (struct MEMMAN *)0x100000;
int key_shift = 0;
int caps_lock = 0;
int first_task_cons_selector = 0;
int KEY_CONTROL = 0x1D;

int current_console = 0;
int console_count = 0;

int show_console_window = 1;

static struct FIFO8 keyinfo;
static struct FIFO8 mouseinfo;

static char keybuf[32];
static char mousebuf[128];

static struct MOUSE_DEC mdec;

static struct FIFO8 timerinfo;
static char timerbuf[8];

static int mx = 0, my = 0, mmx = -1, mmy = -1;
static int xsize = 0, ysize = 0;
static unsigned char *buf_back, buf_mouse[256];
#define COLOR_INVISIBLE 99
#define KEY_RETURN 0x1C

static struct SHEET *shtMsgBox;
static struct SHTCTL *shtctl;
static struct SHEET *sht_back, *sht_mouse;
static struct SHEET *mouse_clicked_sht;

static struct TASK *task_main = 0, *current_console_task = 0;

static struct BOOTINFO bootInfo;

int console_pos = 240;

extern char keytable[0x54];
extern char keytable1[0x54];

void launch() {
    initBootInfo(&bootInfo);

    unsigned char *buf_win_b;
    struct SHEET *sht_win_b[3];
    static struct TASK *task_b[3];

    char *vram = bootInfo.vgaRam;
    xsize = bootInfo.screenX, ysize = bootInfo.screenY;

    struct TIMER *timer, *timer2, *timer3;

    init_pit();

    fifo8_init(&timerinfo, 8, timerbuf, 0);
    timer = timer_alloc();
    timer_init(timer, &timerinfo, 10);
    timer_settime(timer, 100);

    timer2 = timer_alloc();
    timer_init(timer2, &timerinfo, 2);
    timer_settime(timer2, 300);

    timer3 = timer_alloc();
    timer_init(timer3, &timerinfo, 1);
    timer_settime(timer3, 50);

    fifo8_init(&keyinfo, 32, keybuf, 0);
    fifo8_init(&mouseinfo, 128, mousebuf, 0);

    init_palette();
    init_keyboard();

    int memCnt = get_memory_block_count();

    struct AddrRangeDesc *memDesc = (struct AddrRangeDesc *)get_addr_buffer();
    memman_init(memman);
    memman_free(memman, 0x001008000, 0x3FEE8000);

    shtctl = shtctl_init(memman, vram, xsize, ysize);
    sht_back = sheet_alloc(shtctl);
    sht_mouse = sheet_alloc(shtctl);
    buf_back = (unsigned char *)memman_alloc_4k(memman, xsize * ysize);

    sheet_setbuf(sht_back, buf_back, xsize, ysize, COLOR_INVISIBLE);
    sheet_setbuf(sht_mouse, buf_mouse, 16, 16, COLOR_INVISIBLE);

    init_screen8(buf_back, xsize, ysize);

    init_mouse_cursor(buf_mouse, COLOR_INVISIBLE);
    sheet_slide(shtctl, sht_back, 0, 0);

    mx = (xsize - 16) / 2;
    my = (ysize - 28 - 16) / 2;
    sheet_slide(shtctl, sht_mouse, mx, my);

    int cursor_x = 8, cursor_c = COL8_FFFFFF;
    shtMsgBox = message_box(shtctl, "counter");

    sheet_updown(shtctl, sht_back, 0);

    sheet_updown(shtctl, sht_mouse, 4);

    io_sti();
    enable_mouse(&mdec);

    // switch task

    static struct TSS32 tss_b, tss_a;
    static struct TASK *task_a;

    task_a = task_init(memman);
    keyinfo.task = task_a;
    task_main = task_a;
    task_run(task_a, 0, 0);

    struct SHEET *sht_cons;  //*sht_cons[2];
    sht_cons = launch_console(0);
    console_count++;
    sheet_slide(shtctl, sht_cons, 8, 2);
    sheet_updown(shtctl, sht_cons, 2);

    int data = 0;
    int count = 0;
    int i = 0;
    int pos = 0;
    int stop_task_A = 0;
    int key_to = 0;
    int couser_c = COL8_000000;
    int last_console = 0;

    for (;;) {
        if (fifo8_status(&keyinfo) + fifo8_status(&mouseinfo) +
                fifo8_status(&timerinfo) ==
            0) {
            io_sti();
        } else if (fifo8_status(&keyinfo) != 0) {
            io_sti();
            data = fifo8_get(&keyinfo);
            if (key_shift != 0 && data == 0x11) {
                sht_cons = launch_console(console_count);
                sheet_slide(shtctl, sht_cons, 156, 176);
                sheet_updown(shtctl, sht_cons, 1);
                console_count++;
            }

            // when receive data > 768, it should be a console closing message
            if (data == 255 && current_console_task != 0) {
                close_console(current_console_task);
                continue;
            }

            transferScanCode(data);
            if (data == 0x10) {
                sheet_updown(shtctl, shtctl->sheets[1], shtctl->top - 1);
            }

            if (data == 0x0f) {
                int msg = -1;

                if (key_to == 0) {
                    key_to = 1;
                    if (current_console == 1) {
                        current_console = 0;
                    } else {
                        current_console = 1;
                    }
                    make_wtitle8(shtctl, shtMsgBox, "task_a", 0);
                    if (current_console_task != 0) {
                        make_wtitle8(shtctl, current_console_task->sht,
                                     "console", 1);
                    }
                    set_cursor(shtctl, shtMsgBox, cursor_x, 28, COL8_FFFFFF);
                } else {
                    key_to = 0;
                    make_wtitle8(shtctl, shtMsgBox, "task_a", 1);
                    if (current_console_task != 0) {
                        make_wtitle8(shtctl, current_console_task->sht,
                                     "console", 0);
                    }
                }
                sheet_refresh(shtctl, shtMsgBox, 0, 0, shtMsgBox->bxsize, 21);
                if (current_console_task != 0) {
                    sheet_refresh(shtctl, current_console_task->sht, 0, 0,
                                  current_console_task->sht->bxsize, 21);
                }
            }

            if (key_to == 0) {
                if (transferScanCode(data) != 0 && cursor_x < 144) {
                    set_cursor(shtctl, shtMsgBox, cursor_x, 28, COL8_FFFFFF);
                    char c = transferScanCode(data);
                    char buf[2] = {c, 0};
                    showString(shtctl, shtMsgBox, cursor_x, 28, COL8_000000,
                               buf);
                    cursor_x += 8;

                    stop_task_A = 1;
                    set_cursor(shtctl, shtMsgBox, cursor_x, 28, cursor_c);
                }
                // change here not active deleted console task
            } else if (isSpecialKey(data) == 0 && current_console_task != 0) {
                fifo8_put(&(current_console_task->fifo), data);

                if (fifo8_status(&keyinfo) == 0) {
                    task_sleep(task_a);
                }
            }

        } else if (fifo8_status(&mouseinfo) != 0) {
            show_mouse_info(shtctl, sht_back, sht_mouse);
        }

        if (fifo8_status(&timerinfo) != 0) {
            io_sti();
            int i = fifo8_get(&timerinfo);

            if (i != 0) {
                timer_init(timer3, &timerinfo, 0);
                cursor_c = COL8_000000;
            } else {
                timer_init(timer3, &timerinfo, 1);
                cursor_c = COL8_FFFFFF;
            }

            timer_settime(timer3, 50);
            if (key_to == 0) {
                set_cursor(shtctl, shtMsgBox, cursor_x, 28, cursor_c);
            } else {
                set_cursor(shtctl, shtMsgBox, cursor_x, 28, COL8_FFFFFF);
            }
        }
    }
}

struct SHEET *launch_console(int i) {
    struct SHEET *sht_cons = 0;
    sht_cons = sheet_alloc(shtctl);
    unsigned char *buf_cons =
        (unsigned char *)memman_alloc_4k(memman, 256 * 165);
    sheet_setbuf(sht_cons, buf_cons, 256, 165, COLOR_INVISIBLE);

    if (i > 0) {
        make_window8(shtctl, sht_cons, "console", 1);
    } else {
        make_window8(shtctl, sht_cons, "console", 0);
    }
    sheet_refresh(shtctl, sht_cons, 0, 0, sht_cons->bxsize, sht_cons->bysize);

    make_textbox8(sht_cons, 8, 28, 240, 128, COL8_000000);
    struct TASK *task_console = task_alloc();

    task_console->sht = sht_cons;
    sht_cons->task = task_console;
    // inactive last console window
    if (current_console_task != 0) {
        make_wtitle8(shtctl, current_console_task->sht, "console", 0);
        sheet_refresh(shtctl, current_console_task->sht, 0, 0,
                      current_console_task->sht->bxsize,
                      current_console_task->sht->bysize);
    }
    current_console_task = task_console;

    int addr_code32 = get_addr_code32();
    task_console->tss.eip = (int)(console_task - addr_code32);

    task_console->tss.es = 0;
    task_console->tss.cs = 1 * 8;  // 6 * 8;
    task_console->tss.ss = 4 * 8;
    task_console->tss.ds = 3 * 8;
    task_console->tss.fs = 0;
    task_console->tss.gs = 2 * 8;
    task_console->cons_stack = memman_alloc_4k(memman, 64 * 1024);
    task_console->tss.esp = task_console->cons_stack + 64 * 1024 - 12;  // 8;

    *((int *)(task_console->tss.esp + 4)) = (int)sht_cons;
    *((int *)(task_console->tss.esp + 8)) = memman_total(memman);

    char *fifobuf = (char *)memman_alloc(memman, 128);
    fifo8_init(&task_console->fifo, 128, fifobuf, task_console);

    /*
    init file handles for task
    */
    struct FILEHANDLE fhandle[8];
    for (i = 0; i < 8; i++) {
        fhandle[i].buf = 0;
    }
    task_console->fhandle = fhandle;

    task_run(task_console, 1, 5);

    if (i == 0) {
        first_task_cons_selector = task_console->sel;
    }

    return sht_cons;
}

void kill_process() {
    struct TASK *task = task_now();
    cons_newline(task->console.cur_y, task->console.sht);
    task->console.cur_y += 16;
    asm_end_app(&(task->tss.esp0));
}

void cmd_dir() {
    struct TASK *task = task_now();

    struct FILEINFO *finfo = (struct FILEINFO *)(ADR_DISKIMG);
    char *s = (char *)memman_alloc(memman, 13);
    s[12] = 0;
    while (finfo->name[0] != 0) {
        int k;
        for (k = 0; k < 8; k++) {
            if (finfo->name[k] != 0) {
                s[k] = finfo->name[k];
            } else {
                break;
            }
        }

        int t = 0;
        s[k] = '.';
        k++;
        for (t = 0; t < 3; t++) {
            s[k] = finfo->ext[t];
            k++;
        }
        s[k] = 0;
        showString(shtctl, task->console.sht, 16, task->console.cur_y,
                   COL8_FFFFFF, s);
        int offset = 16 + 8 * 15;
        char *p = intToHexStr(finfo->size);
        showString(shtctl, task->console.sht, offset, task->console.cur_y,
                   COL8_FFFFFF, p);
        task->console.cur_y =
            cons_newline(task->console.cur_y, task->console.sht);
        finfo++;
    }

    memman_free(memman, (int)s, 13);
}

void cmd_type(char *cmdline) {
    struct TASK *task = task_now();
    if (task->console.sht == 0) {
        return;
    }

    char *name = (char *)memman_alloc(memman, 13);
    name[12] = 0;
    int p = 0;
    int x = 5;
    for (x = 5; x < 17; x++) {
        if (cmdline[x] != 0) {
            name[p] = cmdline[x];
            p++;
        } else {
            break;
        }
    }

    name[p] = 0;
    struct FILEINFO *finfo = (struct FILEINFO *)(ADR_DISKIMG);
    while (finfo->name[0] != 0) {
        char s[13];
        s[12] = 0;
        int k;
        for (k = 0; k < 8; k++) {
            if (finfo->name[k] != 0) {
                s[k] = finfo->name[k];
            } else {
                break;
            }
        }

        int t = 0;
        s[k] = '.';
        k++;
        for (t = 0; t < 3; t++) {
            s[k] = finfo->ext[t];
            k++;
        }

        if (strcmp(name, s) == 1) {
            char *p = (char *)FILE_CONTENT_HEAD_ADDR;
            p += finfo->clustno * DISK_SECTOR_SIZE;
            int sz = finfo->size;
            char c[2];
            int t = 0;
            task->console.cur_x = 16;
            for (t = 0; t < sz; t++) {
                c[0] = p[t];
                c[1] = 0;
                if (c[0] == 0x09) {
                    // handle tab key
                    for (;;) {
                        showString(shtctl, task->console.sht,
                                   task->console.cur_x, task->console.cur_y,
                                   COL8_FFFFFF, " ");
                        task->console.cur_x += 8;

                        if (task->console.cur_x == 8 + 240) {
                            task->console.cur_x = 8;
                            task->console.cur_y = cons_newline(
                                task->console.cur_y, task->console.sht);
                        }

                        if ((task->console.cur_x - 8) & 0x1f == 0) {
                            break;
                        }
                    }
                } else if (c[0] == 0x0a) {
                    // handle return
                    task->console.cur_x = 8;
                    task->console.cur_y =
                        cons_newline(task->console.cur_y, task->console.sht);
                } else if (c[0] == 0x0d) {
                    // do nothing
                } else {
                    showString(shtctl, task->console.sht, task->console.cur_x,
                               task->console.cur_y, COL8_FFFFFF, c);
                    task->console.cur_x += 8;
                    if (task->console.cur_x == 8 + 240) {
                        task->console.cur_x = 16;
                        task->console.cur_y = cons_newline(task->console.cur_y,
                                                           task->console.sht);
                    }
                }
            }

            break;
        }

        finfo++;
    }

    task->console.cur_y = cons_newline(task->console.cur_y, task->console.sht);
    memman_free(memman, (int)name, 13);
    task->console.cur_x = 16;
}

void cmd_mem(int memtotal) {
    struct TASK *task = task_now();
    if (task->console.sht == 0) {
        return;
    }
    char *s = intToHexStr(memtotal / (1024));
    showString(shtctl, task->console.sht, 16, task->console.cur_y, COL8_FFFFFF,
               "free ");
    showString(shtctl, task->console.sht, 52, task->console.cur_y, COL8_FFFFFF,
               s);
    showString(shtctl, task->console.sht, 126, task->console.cur_y, COL8_FFFFFF,
               " KB");
    task->console.cur_y = cons_newline(task->console.cur_y, task->console.sht);
}

void cmd_cls() {
    struct TASK *task = task_now();
    if (task->console.sht == 0) {
        return;
    }

    int x = 8;
    int y = 28;
    for (y = 28; y < 28 + 128; y++)
        for (x = 8; x < 8 + 240; x++) {
            task->console.sht->buf[x + y * task->console.sht->bxsize] =
                COL8_000000;
        }

    sheet_refresh(shtctl, task->console.sht, 8, 28, 8 + 240, 28 + 128);
    task->console.cur_y = 28;
    showString(shtctl, task->console.sht, 8, 28, COL8_FFFFFF, ">");
}

void cmd_execute_program(char *file) {
    io_cli();

    struct Buffer *appBuffer = (struct Buffer *)memman_alloc(memman, 16);
    struct TASK *task = task_now();
    task->pTaskBuffer = appBuffer;

    file_loadfile(file, appBuffer);
    struct SEGMENT_DESCRIPTOR *gdt =
        (struct SEGMENT_DESCRIPTOR *)get_addr_gdt();
    // select is multiply of 8, divided by 8 get the original value
    int code_seg = 21 + (task->sel - first_task_cons_selector) / 8;
    int mem_seg = 30 + (task->sel - first_task_cons_selector) / 8;  // 22;
    set_segmdesc(task->ldt + 0, 0xfffff, (int)appBuffer->pBuffer,
                 0x409a + 0x60);
    // new memory
    char *q = (char *)memman_alloc_4k(memman, 64 * 1024);
    appBuffer->pDataSeg = (unsigned char *)q;

    set_segmdesc(task->ldt + 1, 64 * 1204 - 1, (int)q, 0x4092 + 0x60);

    task->tss.esp0 = 0;
    io_sti();
    start_app(0, 0 * 8 + 4, 64 * 1024, 1 * 8 + 4, &(task->tss.esp0));
    io_cli();
    /*
    close any file handles
    */
    int i = 0;
    for (i = 0; i < 8; i++) {
        if (task->fhandle[i].buf != 0) {
            memman_free_4k(memman, (unsigned int)task->fhandle[i].buf,
                           task->fhandle[i].size);
            task->fhandle[i].buf = 0;
        }
    }
    memman_free_4k(memman, (unsigned int)appBuffer->pBuffer, appBuffer->length);
    memman_free_4k(memman, (unsigned int)q, 64 * 1024);
    memman_free(memman, (unsigned int)appBuffer, 16);
    task->pTaskBuffer = 0;
    io_sti();
}

void cmd_start(char *scanCodeBuf) {
    struct SHEET *sht_cons = launch_console(console_count);

    sheet_slide(shtctl, sht_cons, 156, 176);
    sheet_updown(shtctl, sht_cons, 1);
    console_count++;
    struct TASK *task = sht_cons->task;
    task->fifo.task = 0;
    int i = 6;
    while (scanCodeBuf[i] != 0) {
        fifo8_put(&task->fifo, scanCodeBuf[i]);
        i++;
    }
    task->fifo.task = task;
    fifo8_put(&task->fifo, KEY_RETURN);
}

void cmd_ncst(char *scanCodeBuf) {
    launch_console(console_count);

    console_count++;
    struct TASK *task = current_console_task;

    task->fifo.task = 0;
    int i = 5;
    int pos = 0;
    while (scanCodeBuf[i] != 0) {
        fifo8_put(&task->fifo, scanCodeBuf[i]);
        i++;
    }
    task->fifo.task = task;
    fifo8_put(&task->fifo, KEY_RETURN);
}

void console_task(struct SHEET *sheet, int memtotal) {
    struct TIMER *timer;
    struct TASK *task = task_now();
    int i, cursor_c = COL8_000000;

    int x = 0, y = 0;
    char *cmdline = (char *)memman_alloc(memman, 30);
    char scanCodeBuf[32];
    int pos = 96;
    int pos1 = 176;

    task->console.sht = sheet;
    task->console.cur_x = 16;
    task->console.cur_y = 28;
    task->console.cur_c = -1;

    timer = timer_alloc();
    timer_init(timer, &task->fifo, 1);
    timer_settime(timer, 50);
    task->console.timer = timer;
    task->console.cmdline = cmdline;

    showString(shtctl, sheet, 8, 28, COL8_FFFFFF, ">");

    struct FILEINFO *finfo = (struct FILEINFO *)(ADR_DISKIMG);
    int hlt = 0;

    for (;;) {
        io_cli();

        task = task_now();

        if (fifo8_status(&task->fifo) == 0) {
            // task_sleep(task_cons);
            io_sti();
        } else {
            i = fifo8_get(&task->fifo);

            if (i <= 1 && cursor_c >= 0) {
                if (i != 0) {
                    timer_init(timer, &task->fifo, 0);
                    cursor_c = COL8_FFFFFF;
                } else {
                    timer_init(timer, &task->fifo, 1);
                    cursor_c = COL8_000000;
                }

                timer_settime(timer, 50);
            }

            else if (i == PROC_RESUME) {
                cursor_c = COL8_FFFFFF;
                timer_init(timer, &task->fifo, 0);
                timer_settime(timer, 50);
            } else if (i == PROC_PAUSE) {
                set_cursor(shtctl, sheet, task->console.cur_x,
                           task->console.cur_y, COL8_000000);
                cursor_c = -1;
                task_run(task_main, -1, 0);
                task_sleep(task);
            }

            else if (i == KEY_RETURN) {
                set_cursor(shtctl, sheet, task->console.cur_x,
                           task->console.cur_y, COL8_000000);
                cmdline[task->console.cur_x / 8 - 2] = 0;
                scanCodeBuf[task->console.cur_x / 8 - 2] = 0;
                task->console.cur_y = cons_newline(task->console.cur_y, sheet);

                if (strcmp(cmdline, "mem") == 1) {
                    cmd_mem(memtotal);
                } else if (strcmp(cmdline, "cls") == 1) {
                    cmd_cls();
                } else if (strcmp(cmdline, "alienwar") == 1) {
                    cmd_execute_program("alienwar.exe");
                } else if (strcmp(cmdline, "circle") == 1) {
                    cmd_execute_program("circle.exe");
                } else if (strcmp(cmdline, "dir") == 1) {
                    cmd_dir();
                } else if (strcmp(cmdline, "exit") == 1) {
                    cmd_exit(task);
                } else if (cmdline[0] == 't' && cmdline[1] == 'y' &&
                           cmdline[2] == 'p' && cmdline[3] == 'e') {
                    cmd_type(cmdline);
                } else if (strcmp(cmdline, "start") == 1) {
                    cmd_start(scanCodeBuf);
                } else if (strcmp(cmdline, "ncst") == 1) {
                    cmd_ncst(scanCodeBuf);
                } else if (strcmp(cmdline, "crack") == 1) {
                    cmd_execute_program("crack.exe");
                }

                task->console.cur_x = 16;
            } else if (i == 0x0e && task->console.cur_x > 8) {
                set_cursor(shtctl, sheet, task->console.cur_x,
                           task->console.cur_y, COL8_000000);
                task->console.cur_x -= 8;
                set_cursor(shtctl, sheet, task->console.cur_x,
                           task->console.cur_y, COL8_000000);
            } else {
                char c = transferScanCode(i);
                if (task->console.cur_x < 240 && c != 0) {
                    cmdline[task->console.cur_x / 8 - 2] = c;
                    cmdline[task->console.cur_x / 8 - 1] = 0;
                    scanCodeBuf[task->console.cur_x / 8 - 2] = i;
                    scanCodeBuf[task->console.cur_x / 8 - 1] = 0;
                    cons_putchar(c, 1);
                }
            }

            if (cursor_c >= 0 && task->console.sht != 0) {
                set_cursor(shtctl, task->console.sht, task->console.cur_x,
                           task->console.cur_y, cursor_c);
            }
        }

        io_sti();
    }
}

void cons_putstr(char *s) {
    for (; *s != 0; s++) {
        cons_putchar(*s, 1);
    }

    return;
}

int api_linewin(struct SHEET *sht, int x0, int y0, int x1, int y1, int col) {
    int i, x, y, len, dx, dy;
    dx = x1 - x0;
    dy = y1 - y0;
    x = x0 << 10;
    y = y0 << 10;

    if (dx < 0) {
        dx = -dx;
    }
    if (dy < 0) {
        dy = -dy;
    }

    if (dx >= dy) {
        len = dx + 1;
        if (x0 > x1) {
            dx = -1024;
        } else {
            dx = 1024;
        }

        if (y0 <= y1) {
            dy = ((y1 - y0 + 1) << 10) / len;
        } else {
            dy = ((y1 - y0 - 1) << 10) / len;
        }
    } else {
        len = dy + 1;
        if (y0 > y1) {
            dy = -1024;
        } else {
            dy = 1024;
        }

        if (x0 <= x1) {
            dx = ((x1 - x0 + 1) << 10) / len;
        } else {
            dx = ((x1 - x0 - 1) << 10) / len;
        }
    }

    for (i = 0; i < len; i++) {
        sht->buf[(y >> 10) * sht->bxsize + (x >> 10)] = col;
        x += dx;
        y += dy;
    }
}

int handle_keyboard(struct TASK *task, int eax, int *reg) {
    // struct TIMER *timer = task->console.timer;
    for (;;) {
        io_cli();

        if (fifo8_status(&task->fifo) == 0) {
            io_sti();
            if (eax != 0) {
                //     task_sleep(task);
                continue;
            } else {
                io_sti();
                reg[7] = -1;
                return 0;
            }
        }

        int i;
        i = fifo8_get(&task->fifo);
        io_sti();

        if (i >= 256) {
            showString(shtctl, sht_back, 0, 176, COL8_FFFFFF, "keyboard");
        }
        if (i <= 1) {
            timer_init(task->console.timer, &task->fifo, 1);
            timer_settime(task->console.timer, 50);
        } else if (i == 2) {
            task->console.cur_c = COL8_FFFFFF;
        } else {
            reg[7] = i;
            return 0;
        }
    }

    return 0;
}

int *kernel_api(int edi, int esi, int ebp, int esp, int ebx, int edx, int ecx,
                int eax) {
    struct TASK *task = task_now();
    struct SHEET *sht = 0;
    int *reg = &eax + 1;
    int i = 0;
    struct FILEHANDLE *fh = 0;

    if (edx == 1) {
        cons_putchar(eax & 0xff, 1);
    } else if (edx == 2) {
        cons_putstr((char *)(task->pTaskBuffer->pBuffer + ebx));
    } else if (edx == 4) {
        task->tss.ss0 = 0;
        return &task->tss.esp0;
    } else if (edx == 5) {
        sht = sheet_alloc(shtctl);
        sht->task = task;
        sht->flags |= 0x10;
        sheet_setbuf(sht, (char *)(ebx + task->pTaskBuffer->pDataSeg), esi, edi,
                     eax);
        make_window8(shtctl, sht, (char *)(ecx + task->pTaskBuffer->pBuffer),
                     0);
        sheet_slide(shtctl, sht, (shtctl->xsize - esi) / 2,
                    (shtctl->ysize - edi) / 2);
        sheet_updown(shtctl, sht, shtctl->top);
        reg[7] = (int)sht;
    } else if (edx == 6) {
        sht = (struct SHEET *)ebx;
        // showString(shtctl, sht, esi, edi, eax, (char*)(ebp+buffer.pBuffer));
        showString(shtctl, sht, esi, edi, eax,
                   (char *)(ebp + task->pTaskBuffer->pDataSeg));
        sheet_refresh(shtctl, sht, esi, edi, esi + ecx * 8, edi + 16);
    } else if (edx == 7) {
        sht = (struct SHEET *)ebx;
        boxfill8(sht->buf, sht->bxsize, ebp, eax, ecx, esi, edi);
        sheet_refresh(shtctl, sht, eax, ecx, esi + 1, edi + 1);
    } else if (edx == 11) {
        sht = (struct SHEET *)ebx;
        sht->buf[sht->bxsize * edi + esi] = eax;
        // sheet_refresh(shtctl, sht, esi, edi, esi + 1, edi + 1);
    } else if (edx == 12) {
        sht = (struct SHEET *)ebx;
        sheet_refresh(shtctl, sht, eax, ecx, esi, edi);
    } else if (edx == 13) {
        sht = (struct SHEET *)ebx;
        api_linewin(sht, eax, ecx, esi, edi, ebp);
    } else if (edx == 14) {
        sheet_free(shtctl, (struct SHEET *)ebx);
        cons_putstr((char *)(task->pTaskBuffer->pDataSeg + 0x123));
    } else if (edx == 15) {
        handle_keyboard(task, eax, reg);
    } else if (edx == 16) {
        reg[7] = (int)timer_alloc();
    } else if (edx == 17) {
        timer_init((struct TIMER *)ebx, &task->fifo, eax + 256);
    } else if (edx == 18) {
        timer_settime((struct TIMER *)ebx, eax);
    } else if (edx == 19) {
        timer_free((struct TIMER *)ebx);
    }
    /*
    add file handling api
    */
    else if (edx == 21) {
        for (i = 0; i < 8; i++) {
            if (task->fhandle[i].buf == 0) {
                break;
            }
        }
        fh = &task->fhandle[i];
        reg[7] = 0;
        if (i < 8) {
            struct Buffer buffer;
            buffer.pBuffer = 0;
            char *file_name = (char *)(task->pTaskBuffer->pBuffer + ebx);
            file_loadfile(file_name, &buffer);
            if (buffer.pBuffer != 0) {
                reg[7] = (int)fh;
                fh->buf = buffer.pBuffer;
                fh->size = buffer.length;
                fh->pos = 0;
            }
        }
    } else if (edx == 22) {
        fh = (struct FILEHANDLE *)eax;
        memman_free_4k(memman, (unsigned int)fh->buf, fh->size);
        fh->buf = 0;
    } else if (edx == 23) {
        fh = (struct FILEHANDLE *)eax;
        if (ecx == 0) {
            fh->pos = ebx;
        } else if (ecx == 1) {
            fh->pos += ebx;
        } else if (ecx == 2) {
            fh->pos = fh->size + ebx;
        }
        if (fh->pos < 0) {
            fh->pos = 0;
        }
        if (fh->pos > fh->size) {
            fh->pos = fh->size;
        }
    } else if (edx == 24) {
        fh = (struct FILEHANDLE *)eax;
        if (ecx == 0) {
            reg[7] = fh->size;
        } else if (ecx == 1) {
            reg[7] = fh->pos;
        } else if (ecx == 2) {
            reg[7] = fh->pos - fh->size;
        }
    } else if (edx == 25) {
        fh = (struct FILEHANDLE *)eax;
        for (i = 0; i < ecx; i++) {
            if (fh->pos == fh->size) {
                break;
            }
            *((char *)(task->pTaskBuffer->pDataSeg + ebx + i)) =
                fh->buf[fh->pos];
            fh->pos++;
        }
        reg[7] = i;
    } else if (edx == 26) {
        reg[7] = task->console.cmdline;
    }

    return 0;
}

void cons_putchar(char c, char move) {
    struct TASK *task = task_now();
    set_cursor(shtctl, task->console.sht, task->console.cur_x,
               task->console.cur_y, COL8_000000);
    task->console.s[0] = c;
    task->console.s[1] = 0;
    showString(shtctl, task->console.sht, task->console.cur_x,
               task->console.cur_y, COL8_FFFFFF, task->console.s);
    task->console.cur_x += 8;
}

int cons_newline(int cursor_y, struct SHEET *sheet) {
    //  here
    if (sheet == 0) {
        return;
    }

    int x, y;

    if (cursor_y < 28 + 112) {
        cursor_y += 16;
    } else {
        for (y = 28; y < 28 + 112; y++) {
            for (x = 8; x < 8 + 240; x++) {
                sheet->buf[x + y * sheet->bxsize] =
                    sheet->buf[x + (y + 16) * sheet->bxsize];
            }
        }

        for (y = 28 + 112; y < 28 + 128; y++) {
            for (x = 8; x < 8 + 240; x++) {
                sheet->buf[x + y * sheet->bxsize] = COL8_000000;
            }
        }

        sheet_refresh(shtctl, sheet, 8, 28, 8 + 240, 28 + 128);
    }

    showString(shtctl, sheet, 8, cursor_y, COL8_FFFFFF, ">");
    return cursor_y;
}

void close_constask(struct TASK *task) {
    task_sleep(task);
    // problem
    memman_free_4k(memman, task->cons_stack, 64 * 1024);
    memman_free(memman, (int)task->fifo.buf, 128);
    memman_free(memman, (int)task->console.cmdline, 30);
    task->flags = 0;
    current_console_task = 0;
}

void close_console(struct TASK *task) {
    // struct TASK *task = sht->task;
    timer_free(task->console.timer);

    if (task->sht != 0) {
        struct SHEET *sht = task->sht;
        memman_free_4k(memman, (int)sht->buf, 256 * 165);
        sheet_free(shtctl, sht);
    }
    close_constask(task);
}

void cmd_exit(struct TASK *cons_task) {
    io_cli();
    // send msg to keyboad queue of main process
    // fifo8_put(&keyinfo, cons_task->sht - shtctl->sheets0 + 768);
    fifo8_put(&keyinfo, 255);
    io_sti();
}
