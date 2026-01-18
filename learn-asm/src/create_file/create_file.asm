section .data
    ask db "Insert the name: "
    len_ask equ $ - ask

    verbose_out db "File created at: "
    len_verbose_out equ $ - verbose_out

section .bss
    file_name resb 1024

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
    mov rsi, file_name
    mov rdx, 1024
    syscall

    dec rax
    mov byte [file_name + rax], 0

    mov rax, 2
    mov rdi, file_name
    mov rsi, 2 | 64
    mov rdx, 0644
    syscall

    mov rdi, 1
    mov rax, 1
    mov rsi, verbose_out
    mov rdx, len_verbose_out
    syscall

    inc rax
    mov byte [file_name + rax], 0x0A

    mov rdi, 1
    mov rax, 1
    mov rsi, file_name
    mov rdx, 1024
    syscall

    mov rdi, 0
    mov rax, 60
    syscall
