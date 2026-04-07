AS = nasm
EMU = qemu-system-i386

all: os.bin

boot.bin: boot.asm
	$(AS) -f bin boot.asm -o boot.bin

kernel.bin: kernel.asm
	$(AS) -f bin kernel.asm -o kernel.bin

os.bin: boot.bin kernel.bin
	cat boot.bin kernel.bin > os.bin

run: os.bin
	$(EMU) -drive format=raw,file=os.bin

clean:
	rm -f *.bin *.o
