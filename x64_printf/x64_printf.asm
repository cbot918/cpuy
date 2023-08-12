section .data
    hello db "Hello, World!", 0

section .text
    global main
    extern printf

main:
    push rbp

    ; Call printf
    mov rdi, hello         ; format string
    call printf

    pop rbp

    ; Exit the program
    mov rax, 60             ; syscall number for sys_exit
    xor rdi, rdi            ; exit status 0
    syscall