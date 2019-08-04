VPATH = ./boot:./kernel:./launch:./memory

FragileOS.img: boot.bat kernel.bat
	cd simulationfloppy && java Loader
boot.bat: boot.asm
	cd boot && nasm -o boot.bat boot.asm
kernel.bat: kernel.asm ckernel.asm
	cd kernel && nasm -o kernel.bat kernel.asm	
ckernel.asm: ckernel.o
	cd kernel && objconv -fnasm ckernel.o -o ckernel.asm && cd .. && cd simulationfloppy && java LinkAssembly	
ckernel.o: launch.o mem_util.o win_sheet.o
	cd kernel && ld -m i386pe -r ../launch/launch.o ../launch/win_sheet.o ../memory/mem_util.o -o ckernel.o
launch.o: launch.c win_sheet.c win_sheet.h mem_util.c mem_util.h
	cd launch && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o launch.o launch.c	
mem_util.o: mem_util.h mem_util.c 
	cd memory && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o mem_util.o mem_util.c
win_sheet.o: win_sheet.h win_sheet.c 
	cd launch && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o win_sheet.o win_sheet.c

