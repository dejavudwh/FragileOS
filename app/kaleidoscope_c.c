#include "../api/apilib.h"

struct POINT {
    int x, y;
};

char* intToStr(int v) {
    char s[3] = {'0'};
    s[2] = 0;

    s[1] = v % 10 + '0';
    s[0] = v / 10 + '0';

    return s;
}

void HariMain() {
    int win, i, j, dis;
    char buf[216 * 237];

    static struct POINT table[18] = {
        {204, 129}, {195, 90},  {172, 58},  {137, 38}, {98, 34},  {61, 46},
        {31, 73},   {15, 110},  {15, 148},  {31, 185}, {61, 212}, {98, 224},
        {137, 220}, {172, 200}, {195, 168}, {204, 129}};

    win = api_openwin(buf, 216, 237, -1, "kaleidoscope");
    api_boxfillwin(win, 8, 29, 207, 228, 255);
    for (i = 0; i <= 14; i++) {
        for (j = i + 1; j <= 15; j++) {
            dis = j - i; /*两点间的距离*/

            if (dis >= 8) {
                dis = 15 - dis; /*逆向计数*/
            }
            if (dis != 0) {
                // api_linewin(win, 20, 20, 100 + 100 * i, 100, 5);
                char *a = intToStr(table[i].x);
                api_putstr(table[i].x);
                api_linewin(win, table[i].x, table[i].y, table[j].x, table[j].y,
                            6);
            }
        }
    }

    api_refreshwin(win, 8, 29, 207, 228);

    for (;;) {
        if (api_getkey(1) == 0x0a) {
            break; /*按下回车键则break; */
        }
    }
}