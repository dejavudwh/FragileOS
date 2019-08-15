#include "fat12.h"
#include "../memory/mem_util.h"

extern struct MEMMAN *memman;

void file_loadfile(char *name, struct Buffer *buffer) {
    struct FILEINFO *finfo = (struct FILEINFO *)(ADR_DISKIMG);
    char *s = (char *)memman_alloc(memman, 13);

    while (finfo->name[0] != 0) {
        int k;
        for (k = 0; k < 12; k++) {
            s[k] = 0;
        }

        for (k = 0; k < 8; k++) {
            if (finfo->name[k] != 0) {
                s[k] = finfo->name[k];
            } else {
                break;
            }
        }

        int t = 0;
        s[k] = '.';
        k++;
        for (t = 0; t < 3; t++) {
            s[k] = finfo->ext[t];
            k++;
        }

        if (strcmp(name, s) == 1) {
            buffer->pBuffer = (char *)memman_alloc_4k(memman, finfo->size);
            buffer->length = finfo->size;
            char *p = (char *)FILE_CONTENT_HEAD_ADDR;
            p += finfo->clustno * DISK_SECTOR_SIZE;
            int sz = finfo->size;
            int t = 0;
            for (t = 0; t < sz; t++) {
                buffer->pBuffer[t] = p[t];
            }
            break;
        }

        finfo++;
    }

    memman_free(memman, (unsigned int)s, 13);
}