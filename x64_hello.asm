section .data
    string db "Hello World", 10, 0

section .text
    global _start
    extern printf

_start:
    push rbp

    lea rdi, [string]
    call printf

    pop rbp
    ret