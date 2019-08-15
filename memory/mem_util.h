#define MEMMAN_FREES 4096

struct AddrRangeDesc {
    unsigned int baseAddrLow;
    unsigned int baseAddrHigh;
    unsigned int lengthLow;
    unsigned int lengthHigh;
    unsigned int type;
};

/*
    内存块
    addr 内存起始地址
    size 内存块大小
 */
struct FREEINFO {
    unsigned int addr, size;
};

/*
    内存管理
    frees 当前可用内存对应的FREEINO结构体个数
    maxfrees 内存块数量最大值
    lostsize 记录无法被处理的内存碎片
    losts 被丢弃的碎片的数量
    free[] 内存块数组
 */
struct MEMMAN {
    int frees, maxfrees, lostsize, losts;
    struct FREEINFO free[MEMMAN_FREES];
};

/*
    初始化内存管理结构体
 */
void memman_init(struct MEMMAN *man);

/*
    统计内存块数量
 */
unsigned int memman_total(struct MEMMAN *man);

/*
    进行内存块的分配
    size 需要分配的内存大小
 */
unsigned int memman_alloc(struct MEMMAN *man, unsigned int size);

/*
    释放内存
    addr 要释放内存的起始地址
    size 内存大小
 */
int memman_free(struct MEMMAN *man, unsigned int addr, unsigned int size);

/*
    分配4k内存
 */
unsigned int memman_allock_4k(struct MEMMAN *man, unsigned int size);

/*
    释放4k内存
 */
int memman_free_4k(struct MEMMAN *man, unsigned int addr, unsigned int size);