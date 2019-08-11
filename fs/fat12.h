#define ADR_DISKIMG 0x10E00

struct FILEINFO {
    unsigned char name[8], ext[3], type;
    char reserve[10];
    unsigned short time, date, clustno;
    unsigned int size;
};

#define FILEINFO_SIZE 32
