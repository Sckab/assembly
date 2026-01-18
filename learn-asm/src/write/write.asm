section .data
    string db "Hollow Knight", 0x0A
    len_string equ $ - string

    peak db "è peak", 0x0A
    len_peak equ $ - peak

section .text
    global _start

_start:
    mov rdi, 1
    mov rax, 1

    mov rsi, string
    mov rdx, len_string
    syscall

    ; reset the syscall parameters cuz it resets it when it's called
    mov rdi, 1
    mov rax, 1

    mov rsi, peak
    mov rdx, len_peak
    syscall

    mov rdi, 0
    mov rax, 60
    syscall
