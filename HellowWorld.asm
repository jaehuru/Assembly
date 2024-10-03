%include "io64.inc"

section .text
global main
main:
    ;주석표시
    
    ;1bite = 1bit
    
    ;2진수(0 1)
    ; 0 1 10 11 100 ...
    ; 0b0 0b1 0b10 0b100 ...

    ;16진수(0 1 2 3 4 5 6 7 8 9 A B C D E F)
    ; 0 1 2 3 4 5 6 7 8 9 A B C D E F 10
    ; 0x00
    
    ; 16진수 장점 : 2진수로 변환이 쉬움
    ; 0b10010101 = 0x95
    ; 0b1001 = 9, 0b0101 = 5 4자리씩 끊어서 쉽게 16진수로 변환
    
    PRINT_STRING msg
    
    xor rax, rax
    ret
    
section .data
    msg db 'Hello World', 0x00
    
