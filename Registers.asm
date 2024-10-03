%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    
    ; 8 bit = 1byte
    ; 16 bit = 2byte = 1word
    ; 32 bit = 4byte = 2word = 1dword (double-word)
    ; 64 bit = 8byte = 4word = 1qword (quad-word)
    
    ;eax = 32bit 사용
    ;rax = 64bit 사용
    ;al = 1byte 사용
    
    mov eax, 0x1234
    mov rbx, 0x12345678
    mov cl, 0xff
    
    mov al, 0x00 ; 1byte만 바뀜.
    mov rax, rdx ; rdx값을 rax값에 넣음.
    
    
    xor rax, rax
    ret
    
section .data