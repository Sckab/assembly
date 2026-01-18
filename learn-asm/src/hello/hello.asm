section .data
    msg db "Hello, World!", 0x0A    ; creates a string with a \n
    len equ $ - msg                 ; creates a constant that defines the size of the string

section .text
    global _start

_start:
    mov rsi, msg  ; set the parameter for the write syscall, telling to the syscall what string to write
    mov rdx, len  ; also sets another parameter for the write syscall, and set the lenght of the string
    mov rdi, 1    ; sets the output to the stdout
    mov rax, 1    ; set the write syscall
    syscall       ; calls the syscall

    mov rdi, 0    ; sets the exit code for the exit syscall
    mov rax, 60   ; sets the exit syscall
    syscall       ; creates the syscall, exiting the program
