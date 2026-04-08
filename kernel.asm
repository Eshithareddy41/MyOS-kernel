[org 0x1000]
[bits 16]

start:
    mov si, start_msg
    call print_string

    mov cx, 5          ; run scheduler 5 cycles (IMPORTANT)

main_loop:
    call scheduler
    loop main_loop

    mov si, done_msg
    call print_string

hang:
    jmp hang

; ------------------------
print_string:
    push ax
    push si

    mov ah, 0Eh
.next:
    lodsb
    cmp al, 0
    je .done
    int 10h
    jmp .next

.done:
    pop si
    pop ax
    ret

; ------------------------
; simple delay (for better visualization)
delay:
    push cx
    mov cx, 0FFFFh
d1:
    loop d1
    pop cx
    ret

; ------------------------
start_msg db "Round Robin Scheduler Start",13,10,0
done_msg  db "Scheduling Finished",13,10,0

%include "scheduler.asm"
%include "task.asm"
