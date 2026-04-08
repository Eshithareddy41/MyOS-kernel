task1:
   push si
    mov si, msg1
    call print_string
    pop si
    ret

task2:
    push si
    mov si, msg2
    call print_string
    pop si
    ret

task3:
   push si
    mov si, msg3
    call print_string
    pop si
    ret

msg1 db "Task 1 Running",13,10,0
msg2 db "Task 2 Running",13,10,0
msg3 db "Task 3 Running",13,10,0
