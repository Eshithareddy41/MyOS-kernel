all: os.bin

os.bin: boot.bin kernel.bin
	cat boot.bin kernel.bin > os.bin

boot.bin: boot.asm
	nasm -f bin boot.asm -o boot.bin

kernel.bin: kernel.asm
	nasm -f bin kernel.asm -o kernel.bin

run:
	qemu-system-i386 -fda os.bin

clean:
	rm -f *.bin os.bin
