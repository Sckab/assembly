section .data
    string db "Hollow Knight", 0x0A
    len_string equ $ - string

section .text
    global _start

_start:
    mov rdi, 1
    mov rax, 1

    mov rsi, string
    mov rdx, len_string
    syscall

    mov rdi, 0
    mov rax, 60
    syscall
