#define ADR_DISKIMG 0x15800

struct FILEINFO {
    unsigned char name[8], ext[3], type;
    char reserve[10];
    unsigned short time, date, clustno;
    unsigned int size;
};

#define FILEINFO_SIZE 32
#define FILE_CONTENT_HEAD_ADDR 0x17C00
#define DISK_SECTOR_SIZE 512

struct Buffer {
    unsigned char *pBuffer;
    unsigned char *pDataSeg;
    int length;
};

struct FILEHANDLE {
    char *buf;
    int size;
    int pos;
};

void file_loadfile(char *fileName, struct Buffer *pBuffer);
