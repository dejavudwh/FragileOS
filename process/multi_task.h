#include "../util/queue.h"

struct CONSOLE {
    struct SHEET *sht;
    int cur_x, cur_y, cur_c;
    char s[2];
    struct TIMER *timer;
    char *cmdline;
};

/*
    用来描述TSS32：切换进程用来保存环境的数据结构
 */
struct TSS32 {
    int backlink, esp0, ss0, esp1, ss1, esp2, ss2, cr3;
    int eip, eflags, eax, ecx, edx, ebx, esp, ebp, esi, edi;
    int es, cs, ss, ds, fs, gs;
    int ldtr, iomap;
};

/*
    设置描述符
 */
struct SEGMENT_DESCRIPTOR {
    short limit_low, base_low;
    char base_mid, access_right;
    char limit_high, base_high;
};

void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base,
                  int ar);

#define AR_TSS32 0x0089
#define AR_CODE32 0x409a

#define AR_DATA 0x4092
#define AR_LDT 0x0082

/*
    描述进程
    sel 这个进程的tss在全局描述符表下的标号
    flags 是否已经启用 2 = active 1 = occupied 0 = empty
    priority 进程优先级
    tss 即tss
 */
struct TASK {
    int sel, flags;
    int priority;
    int level;
    struct FIFO8 fifo;
    struct TSS32 tss;
    struct CONSOLE console;
    struct Buffer *pTaskBuffer;
    struct SHEET *sht;
    // add stack record
    int cons_stack;
    struct SEGMENT_DESCRIPTOR ldt[2];
    struct FILEHANDLE *fhandle;
};

#define MAX_TASKS 10
#define MAX_TASKS_LV 10
#define MAX_TASKLEVELS 10

#define TASK_GDT0 7
#define SIZE_OF_TASK 264

/*
    优先级队列
    running 队列的任务列表长度
    now 当前队首的任务对象
    task 任务对象数组
*/
struct TASKLEVEL {
    int running;
    int now;
    struct TASK *tasks[MAX_TASKS_LV];
};

/*
    进程管理
    now_lv
    lv_change
    level 当前优先级队列
    tasks0 当前进程对象数组
*/
struct TASKCTL {
    int now_lv;
    int lv_change;
    struct TASKLEVEL level[MAX_TASKLEVELS];
    struct TASK tasks0[MAX_TASKS];
};

/*
    对所有进程初始化，并拿出当前的主线程也就是launch
 */
struct TASK *task_init(struct MEMMAN *memman);

#define SIZE_OF_TASKLEVEL (8 + 4 * MAX_TASKS_LV)
#define SIZE_OF_TASKCTL \
    (4 + 4 + SIZE_OF_TASKLEVEL * MAX_TASKLEVELS + SIZE_OF_TASK * MAX_TASKS)

/*
    分配一个线程
 */
struct TASK *task_alloc();

/*
    启动线程
 */
void task_run(struct TASK *task, int level, int priority);

/*
    切换线程
 */
void task_switch();

/*
    挂起线程
*/
int task_sleep(struct TASK *task);

/*
    初始化优先级队列
*/
void init_task_level(int level);

/*
    根据优先级加入队列
*/
void task_add(struct TASK *task);

void task_switchsub();

/*
    移除进程
*/
void task_remove(struct TASK *task);

struct TASK *task_now();

#define PROC_RESUME 0x57
#define PROC_PAUSE 0x58

/*
    进程间的相互通信
*/
void send_message(struct TASK *sender, struct TASK *receiver, int msg);
