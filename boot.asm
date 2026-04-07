[bits 16]
[org 0x7c00]

start:
    mov ah,0x0e
    mov al,'B'
    int 0x10          ; print B to show bootloader started

    xor ax,ax
    mov es,ax
    mov bx,0x1000     ; kernel load address

    mov ah,0x02       ; BIOS disk read
    mov al,20         ; number of sectors
    mov ch,0
    mov cl,2
    mov dh,0
    mov dl,0x80
    int 0x13

    jmp 0x0000:0x1000 ; jump to kernel

hang:
    jmp hang

times 510-($-$$) db 0
dw 0xaa55
