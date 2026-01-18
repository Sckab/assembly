section .data
    ask db "Inserisci stringa: "
    len_ask equ $ - ask

section .bss
    string resb 1024

section .text
    global _start

_start:
    mov rdi, 1
    mov rax, 1
    mov rsi, ask
    mov rdx, len_ask
    syscall

    mov rax, 0
    mov rdi, 0
    mov rsi, string
    mov rdx, 1024
    syscall

    mov rdi, 1
    mov rax, 1
    mov rsi, string
    mov rdx, 1024
    syscall

    mov rdi, 0
    mov rax, 60
    syscall
