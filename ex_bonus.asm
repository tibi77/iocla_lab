extern puts
extern printf

section .data

section .text
global main
; trebuie sa completati aici cu cheia care sa satisfaca conditiile
greetings db "",10, 0
fail_str db "You need more training padawan :)", 10, 0
win_str db "You are on the path to grateness padawan!", 10, 0


main:
    push ebp
    mov ebp, esp
    xor eax, eax

    mov ax, [greetings]
    cmp ax, 0x3059
    jne fail

    mov ax, [greetings + 2]
    cmp ax, 0x685f
    jne fail

    mov ax, [greetings + 4]
    cmp ax, 0x6361
    jne fail

    mov ax, [greetings + 6]
    cmp ax, 0x336b
    jne fail

    mov ax, [greetings + 8]
    cmp ax, 0x2172
    jne fail

    push win_str
    call printf
    add esp, 4

    leave
    ret
    

fail:
    push fail_str
    call printf
    add esp, 4
    
    
    leave
    ret

