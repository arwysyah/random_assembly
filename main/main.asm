section .data
    msg db 'Hello, World!', 0

section .text
    global _start

_start:
    mov eax, 4          ; Syscall number for sys_write
    mov ebx, 1          ; File descriptor 1: stdout
    mov ecx, msg        ; Pointer to the message
    mov edx, 13         ; Message length
    int 0x80            ; Call kernel

    mov eax, 1          ; Syscall number for sys_exit
    xor ebx, ebx        ; Return 0 status
    int 0x80            ; Call kernel


// nasm -f main.asm  asembly the code by nasm;
// ld -m elf_i386 -o main main.o  --> link to the code
// ./main  --> excecute the code
