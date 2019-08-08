#include "multi_task.h"

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