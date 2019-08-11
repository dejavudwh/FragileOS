#include "string.h"

int strcmp(char *src, char *dest) {
    if (src == 0 || dest == 0) {
        return 0;
    }

    int i = 0;
    while (src[i] != 0 && dest[i] != 0) {
        if (src[i] != dest[i]) {
            return 0;
        }

        i++;
    }

    if (src[i] == 0 && dest[i] != 0) {
        return 0;
    }

    if (src[i] != 0 && dest[i] != 0) {
        return 0;
    }

    return 1;
}
