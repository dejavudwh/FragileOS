#include "inthandler.h"

extern struct FIFO8 mouseinfo;
extern struct FIFO8 keyinfo;
extern struct BOOTINFO bootInfo;
extern int key_shift;
extern int caps_lock;
extern char keytable[0x54];
extern char keytable1[0x54];

void intHandlerFromC(char *esp) {
    char *vram = bootInfo.vgaRam;
    int xsize = bootInfo.screenX, ysize = bootInfo.screenY;
    io_out8(PIC_OCW2, 0x20);
    unsigned char data = 0;
    data = io_in8(PORT_KEYDAT);
    fifo8_put(&keyinfo, data);
    return;
}

void intHandlerForMouse(char *esp) {
    unsigned char data;
    io_out8(PIC1_OCW2, 0x20);
    io_out8(PIC_OCW2, 0x20);

    data = io_in8(PORT_KEYDAT);
    fifo8_put(&mouseinfo, data);
}

int *intHandlerForStackOverFlow(int *esp) {
    struct TASK *task = task_now();
    task->console.cur_x = 8;
    cons_putstr("INT OC");
    task->console.cur_x = 8;
    task->console.cur_y += 16;
    cons_putstr("Stack Exception");
    task->console.cur_x = 8;
    task->console.cur_y += 16;
    char *p = intToHexStr(esp[11]);
    cons_putstr("EIP = ");
    cons_putstr(p);
    task->console.cur_x = 8;
    task->console.cur_y += 16;
    return &(task->tss.esp0);
}

int *intHandlerForException(int *esp) {
    struct TASK *task = task_now();

    task->console.cur_x = 8;
    cons_putstr("INT 0D ");
    task->console.cur_x = 8;
    task->console.cur_y += 16;
    cons_putstr("General Protected Exception");
    task->console.cur_y += 16;
    task->console.cur_x = 8;

    return &(task->tss.esp0);
}

void wait_KBC_sendready() {
    for (;;) {
        if ((io_in8(PORT_KEYSTA) & KEYSTA_SEND_NOTREADY) == 0) {
            break;
        }
    }
}

void init_keyboard(void) {
    wait_KBC_sendready();
    io_out8(PORT_KEYCMD, KEYCMD_WRITE_MODE);
    wait_KBC_sendready();
    io_out8(PORT_KEYDAT, KBC_MODE);
    return;
}

void enable_mouse(struct MOUSE_DEC *mdec) {
    wait_KBC_sendready();
    io_out8(PORT_KEYCMD, KEYCMD_SENDTO_MOUSE);
    wait_KBC_sendready();
    io_out8(PORT_KEYDAT, MOUSECMD_ENABLE);

    mdec->phase = 0;
    return;
}

int mouse_decode(struct MOUSE_DEC *mdec, unsigned char dat) {
    if (mdec->phase == 0) {
        if (dat == 0xfa) {
            mdec->phase = 1;
        }

        return 0;
    }

    if (mdec->phase == 1) {
        if ((dat & 0xc8) == 0x08) {
            mdec->buf[0] = dat;
            mdec->phase = 2;
        }

        return 0;
    }

    if (mdec->phase == 2) {
        mdec->buf[1] = dat;
        mdec->phase = 3;
        return 0;
    }

    if (mdec->phase == 3) {
        mdec->buf[2] = dat;
        mdec->phase = 1;
        mdec->btn = mdec->buf[0] & 0x07;
        mdec->x = mdec->buf[1];
        mdec->y = mdec->buf[2];
        if ((mdec->buf[0] & 0x10) != 0) {
            mdec->x |= 0xffffff00;
        }

        if ((mdec->buf[0] & 0x20) != 0) {
            mdec->y |= 0xffffff00;
        }

        mdec->y = -mdec->y;
        return 1;
    }

    return -1;
}

int isSpecialKey(int data) {
    transferScanCode(data);

    if (data == 0x3a || data == 0x1d || data == 0xba || data == 0x2a ||
        data == 0x36 || data == 0xaa || data == 0xb6) {
        return 1;
    }

    return 0;
}

char transferScanCode(int data) {
    if (data == 0x2a) {
        // left shift key down
        key_shift |= 1;
    }

    if (data == 0x36) {
        // right shift key down
        key_shift |= 2;
    }

    if (data == 0xaa) {
        // left shift key up
        key_shift &= ~1;
    }

    if (data == 0xb6) {
        // right shift key up
        key_shift &= ~2;
    }

    // caps lock
    if (data == 0x3a) {
        if (caps_lock == 0) {
            caps_lock = 1;
        } else {
            caps_lock = 0;
        }
    }

    if (data == 0x2a || data == 0x36 || data == 0xaa || data == 0xb6 ||
        data >= 0x54 || data == 0x3a) {
        return 0;
    }

    char c = 0;

    if (key_shift == 0 && data < 0x54 && keytable[data] != 0) {
        c = keytable[data];
        if ('A' <= c && c <= 'Z' && caps_lock == 0) {
            c += 0x20;
        }

    } else if (key_shift != 0 && data < 0x80 && keytable1[data] != 0) {
        c = keytable1[data];
    } else {
        c = 0;
    }

    return c;
}