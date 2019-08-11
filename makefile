VPATH = ./boot:./kernel:./launch:./memory:./interrupt:./process:./util:./fs:./api

FragileOS.img: boot.bat kernel.bat hlt.bat
	cd simulationfloppy && java Loader
boot.bat: boot.asm
	cd boot && nasm -o boot.bat boot.asm
kernel.bat: kernel.asm ckernel.asm
	cd kernel && nasm -o kernel.bat kernel.asm	
hlt.bat: app.asm
	cd api && nasm -o hlt.bat api_call.asm		
ckernel.asm: ckernel.o
	cd kernel && objconv -fnasm ckernel.o -o ckernel.asm && cd .. && cd simulationfloppy && java LinkAssembly ckernel.asm
ckernel.o: launch.o mem_util.o win_sheet.o queue.o timer.o multi_task.o string.o 
	cd kernel && ld -m i386pe -r ../launch/launch.o ../launch/win_sheet.o ../memory/mem_util.o ../interrupt/queue.o ../interrupt/timer.o ../process/multi_task.o ../util/string.o  -o ckernel.o
launch.o: launch.c win_sheet.c win_sheet.h mem_util.c mem_util.h string.c string.h fat12.h
	cd launch && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o launch.o launch.c	
mem_util.o: mem_util.h mem_util.c 
	cd memory && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o mem_util.o mem_util.c
win_sheet.o: win_sheet.h win_sheet.c 
	cd launch && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o win_sheet.o win_sheet.c
queue.o: queue.h queue.c 
	cd util && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o queue.o queue.c
timer.o: timer.h timer.c 
	cd interrupt && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o timer.o timer.c	
multi_task.o: multi_task.h multi_task.c 
	cd process && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o multi_task.o multi_task.c
string.o: string.h string.c 
	cd util && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o string.o string.c	
app.asm: app.o
	cd api && objconv -fnasm app.o -o app.asm && cd .. && cd simulationfloppy && java LinkAssembly app.asm	
app.o : app.c
	cd api && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o app.o app.c	
