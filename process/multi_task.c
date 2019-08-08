#include "../memory/mem_util.h"
#include "multi_task.h"
#include "../interrupt/timer.h"

static struct TIMER *task_timer = 0;
static struct TASKCTL *taskctl = 0;

void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base,
                  int attr) {
    if (limit > 0xfffff) {
        attr |= 0x8000;
        limit /= 0x1000;
    }
    sd->limit_low = limit & 0xffff;
    sd->base_low = base & 0xffff;
    sd->base_mid = (base >> 16) & 0xff;
    sd->access_right = attr & 0xff;
    sd->limit_high = ((limit >> 16) & 0x0f) | ((attr >> 8) & 0xf0);
    sd->base_high = (base >> 24) & 0xff;

    return;
}

struct TASK *task_init(struct MEMMAN *memman) {
    struct TASK *task;
    struct SEGMENT_DESCRIPTOR *gdt =
        (struct SEGMENT_DESCRIPTOR *)get_addr_gdt();
    taskctl = (struct TASKCTL *)memman_alloc_4k(memman, SIZE_OF_TASKCTL);
    for (int i = 0; i < MAX_TASKS; i++) {
        taskctl->tasks0[i].flags = 0;
        taskctl->tasks0[i].sel = (TASK_GDT0 + i) * 8;
        set_segmdesc(gdt + TASK_GDT0 + i, 103, (int)&taskctl->tasks0[i].tss,
                     AR_TSS32);
    }

    task = task_alloc();
    task->flags = 2;
    taskctl->running = 1;
    taskctl->now = 0;
    taskctl->tasks[0] = task;
    load_tr(task->sel);
    task_timer = timer_alloc();
    timer_settime(task_timer, 100);

    return task;
}

struct TASK *task_alloc(void) {
    int i;
    struct TASK *task;
    //从进程队列中取出一个没有使用的来分配
    for (i = 0; i < MAX_TASKS; i++) {
        if (taskctl->tasks0[i].flags == 0) {
            task = &taskctl->tasks0[i];
            task->flags = 1;
            task->tss.eflags = 0x00000202;
            task->tss.eax = 0;
            task->tss.ecx = 0;
            task->tss.edx = 0;
            task->tss.ebx = 0;
            task->tss.ebp = 0;
            task->tss.esp = 512 * (i + 1);
            task->tss.esi = 0;
            task->tss.edi = 0;
            task->tss.es = 0;
            task->tss.ds = 0;
            task->tss.fs = 0;
            task->tss.gs = 0;
            task->tss.ldtr = 0;
            task->tss.iomap = 0x40000000;
            return task;
        }
    }

    return 0;
}

void task_run(struct TASK *task) {
    task->flags = 2;
    taskctl->tasks[taskctl->running] = task;
    taskctl->running++;
    return;
}

void task_switch() {
    timer_settime(task_timer, 100);
    if (taskctl->running >= 2) {
        taskctl->now++;
        if (taskctl->now == taskctl->running) {
            taskctl->now = 0;
        }

        farjmp(0, taskctl->tasks[taskctl->now]->sel);
    }

    return;
}

struct TIMER *get_task_timer() {
    return task_timer;
}