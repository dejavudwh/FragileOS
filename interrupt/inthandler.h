#include "../process/multi_task.h"
#include "../gui/draw.h"

#define PORT_KEYDAT 0x0060
#define PIC_OCW2 0x20
#define PIC1_OCW2 0xA0

void intHandlerFromC(char *esp);
void intHandlerForMouse(char *esp);
int *intHandlerForStackOverFlow(int *esp);
int *intHandlerForException(int *esp);