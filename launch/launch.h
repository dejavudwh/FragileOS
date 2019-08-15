#include "../fs/fat12.h"
#include "../interrupt/timer.h"
#include "../util/string.h"
#include "../interrupt/inthandler.h"

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

void start_app(int eip, int cs, int esp, int ds, int *esp0);

void cons_putchar(char chr, char move);

void init_mouse_cursor(char *mouse, char bc);

int get_memory_block_count(void);
char *get_addr_buffer(void);

struct SHEET *launch_console(int i);
void console_task(struct SHEET *sheet, int memtotal);

int cons_newline(int cursor_y, struct SHEET *sheet);

void close_constask(struct TASK *task);
void close_console(struct TASK *task);
void cmd_exit(struct TASK *cons_task);