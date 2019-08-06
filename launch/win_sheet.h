/*
    描述图层信息
    buf 绘制的像素信息
    bxsize bysize 绘制的宽高
    vx0 vy0 移动后的左上角坐标
    con_inv 表示透明部分
    height 图层高度
    flags 图层状态 是否被使用 1 use 0 no use
 */
struct SHEET {
    unsigned char *buf;
    int bxsize, bysize, vx0, vy0, col_inv, height, flags;
};

/*
    最大图层数
 */
#define MAX_SHEETS 256

/*
    图层管理器
    vram 对应的是显存地址0xa0000
    xsize, ysize 整个显示界面的宽和高
    top 表示当前要显示的层
    sheets0 是用来存储图层对象的数组
    sheets 是指针数组，用来指向下面图层数组中的对应图层对象
 */
struct SHTCTL {
    unsigned char *vram;
    int xsize, ysize, top;
    struct SHEET *sheets[MAX_SHEETS];
    struct SHEET sheets0[MAX_SHEETS];
};

#define SIZE_OF_SHEET 32
#define SIZE_OF_SHTCTL 9232

/*
    初始化和分配图层对象
 */
struct SHEET *sheet_alloc(struct SHTCTL *ctl);

/*
    图层管理器的初始化
 */
struct SHTCTL *shtctl_init(struct MEMMAN *memman, unsigned char *vram,
                           int xsize, int ysize);

/*
    将图层和绘制对象关联起来
 */
void sheet_setbuf(struct SHEET *sht, unsigned char *buf, int xsize, int ysize,
                  int col_inv);

/*
    用来调整图层之间的高度关系
    height 要设置的对应图层的高度
 */
void sheet_updown(struct SHTCTL *ctl, struct SHEET *sht, int height);

/*
    图层绘制
    实际上调用了sheet_refreshsub
 */
int sheet_refresh(struct SHTCTL *ctl, struct SHEET *sht, int bx0, int by0,
                  int bx1, int by1);
/*
    图层进行移动时的重画
 */
void sheet_slide(struct SHTCTL *ctl, struct SHEET *sht, int vx0, int vy0);


/*
    图层绘制
    h0 当前图层高度
 */
void sheet_refreshsub(struct SHTCTL *ctl, int vx0, int vy0, int vx1, int vy1, int h0);
