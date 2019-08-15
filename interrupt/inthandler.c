#include "inthandler.h"

extern struct FIFO8 mouseinfo;
extern struct FIFO8 keyinfo;
extern struct BOOTINFO bootInfo;

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