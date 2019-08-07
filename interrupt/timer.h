#define PIT_CTRL 0x0043
#define PIT_CNT0 0x0040

struct TIMERCTL {
    unsigned int count;
    unsigned int timeout;
    struct FIFO8 *fifo;
    unsigned char data;
};

/*
    进行时钟中断的初始化配置
 */
void init_pit();

struct TIMERCTL *getTimer();

void settimer(unsigned int timeout, struct FIFO8 *fifo, unsigned char data);