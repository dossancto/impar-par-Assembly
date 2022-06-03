section .data
    x dd 1
    
    par_msg db "O numero é Par", 0xA
    par_len equ $- par_msg
    
    impar_msg db "O numero é Impar", 0xA
    impar_len equ $- impar_msg

section .text
global _start

_start:
    mov     eax, [x]
    mov     ebx, eax
    
    sub     eax, 0x1
    xor     ebx, eax
    
    cmp     ebx, 0x1
    
    jne      _impar
    je      _par
    
    int     0x80
    
_impar:
    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, par_msg
    mov     edx, par_len
    int     0x80
    
    jmp     _fim
    
_par:
    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, impar_msg
    mov     edx, impar_len
    int     0x80
    
    jmp     _fim
_fim:
    mov     eax, 0x1
    mov     ebx, 0x0
    int     0x80
