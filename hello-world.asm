        global _start

        section .data
message: db     "Hello HTP Academy"

        section .text
_start:
        mov     rax, 1
        mov     rdi, 1
        mov     rsi, message
        mov     rdx, 18
        syscall

        mov     rax, 60
        mov     rdi, 0
        syscall

