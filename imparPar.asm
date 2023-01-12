section .data
    x dd 2
    
    even_msg db "The number is even.", 0xA
    even_len equ $- even_msg
    
    odd_msg db "The number is odd", 0xA
    odd_len equ $- odd_msg

section .text
global _start

_start:
    mov     eax, [x]
    mov     ebx, eax
    
    sub     eax, 0x1
    xor     ebx, eax
    
    cmp     ebx, 0x1
    
    je      _odd
    jmp      _even
    
    int     0x80
    
;; Print the "even" message
_even:
    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, even_msg
    mov     edx, even_len
    int     0x80
    
    jmp     _fim
    
;; Print the "odd" message
_odd:
    mov     eax, 0x4
    mov     ebx, 0x1
    mov     ecx, odd_msg
    mov     edx, odd_len
    int     0x80
    
    jmp     _fim

_fim:
    mov     eax, 0x1
    mov     ebx, 0x0
    int     0x80
