FragileOS.img: boot.bat kernel.bat
	cd simulationfloppy && java Loader
boot.bat:
	cd boot && nasm -o boot.bat boot.asm
kernel.bat: ckernel.asm
	cd kernel && nasm -o kernel.bat kernel.asm		
ckernel.asm: desktop.asm
	cd simulationfloppy && java LinkAssembly	 
desktop.asm: 
	cd gui && gcc -m32 -fno-asynchronous-unwind-tables -s -c -o desktop.o desktop.c	&& objconv -fnasm desktop.o -o desktop.asm