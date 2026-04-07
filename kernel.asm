[bits 16]
[org 0x1000]

start:
    mov si, message

print:
    lodsb          
    cmp al, 0
    je done

    mov ah, 0x0e
    int 0x10
    jmp print

done:
    jmp $

message db 'Welcome to MyOS',0
