VPATH = ./boot:./kernel:./launch:./memory:./interrupt:./process:./util:./fs:./api:./app:./gui

FragileOS.img: boot.bat kernel.bat kaleidoscope.bat alienwars.bat crack.bat
	cd simulationfloppy && java Loader
boot.bat: boot.asm
	cd boot && nasm -o boot.bat boot.asm
kernel.bat: kernel.asm ckernel.asm
	cd kernel && nasm -o kernel.bat kernel.asm	
kaleidoscope.bat: kaleidoscope.asm kaleidoscope_c.asm
	cd app && nasm -o kaleidoscope.bat kaleidoscope.asm		
alienwars.bat: alienwars.asm alienwars_c.asm
	cd app && nasm -o alienwars.bat alienwars.asm			
ckernel.asm: ckernel.o
	cd kernel && objconv -fnasm ckernel.o -o ckernel.asm && cd .. && cd simulationfloppy && java LinkAssembly ckernel.asm
ckernel.o: launch.o mem_util.o win_sheet.o queue.o timer.o multi_task.o string.o inthandler.o draw.o fat12.o
	cd kernel && ld -m i386pe -r ../launch/launch.o ../gui/draw.o ../interrupt/inthandler.o ../fs/fat12.o ../gui/win_sheet.o ../memory/mem_util.o ../process/multi_task.o ../util/queue.o ../interrupt/timer.o ../util/string.o  -o ckernel.o
launch.o: launch.c win_sheet.c win_sheet.h mem_util.c mem_util.h string.c string.h fat12.h
	cd launch && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o launch.o launch.c	
mem_util.o: mem_util.h mem_util.c 
	cd memory && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o mem_util.o mem_util.c
win_sheet.o: win_sheet.h win_sheet.c 
	cd gui && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o win_sheet.o win_sheet.c
queue.o: queue.h queue.c 
	cd util && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o queue.o queue.c
timer.o: timer.h timer.c 
	cd interrupt && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o timer.o timer.c	
draw.o: draw.h draw.c 
	cd gui && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o draw.o draw.c		
fat12.o: fat12.h fat12.c 
	cd fs && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o fat12.o fat12.c		
inthandler.o: inthandler.h inthandler.c 
	cd interrupt && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o inthandler.o inthandler.c		
multi_task.o: multi_task.h multi_task.c 
	cd process && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o multi_task.o multi_task.c
string.o: string.h string.c 
	cd util && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o string.o string.c	
kaleidoscope_c.asm: kaleidoscope_c.o
	cd app && objconv -fnasm kaleidoscope_c.o -o kaleidoscope_c.asm && cd .. && cd simulationfloppy && java LinkAssembly kaleidoscope_c.asm	
kaleidoscope_c.o : kaleidoscope_c.c
	cd app && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o kaleidoscope_c.o kaleidoscope_c.c
alienwars_c.asm: alienwars_c.o
	cd app && objconv -fnasm alienwars_c.o -o alienwars_c.asm && cd .. && cd simulationfloppy && java LinkAssembly alienwars_c.asm	
alienwars_c.o : alienwars_c.c
	cd app && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o alienwars_c.o alienwars_c.c