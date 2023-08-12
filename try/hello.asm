section .data
    hello db "Hello, World!", 0

section .text
    global _start

_start:
    ; Write the message to stdout
    mov rax, 1              ; syscall number for sys_write
    mov rdi, 1              ; file descriptor 1 (stdout)
    mov rsi, hello         ; address of the message
    mov rdx, 13             ; message length
    syscall

    ; Exit the program
    mov rax, 60             ; syscall number for sys_exit
    xor rdi, rdi            ; exit status 0
    syscall