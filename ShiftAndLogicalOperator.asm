%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp; for correct debugging
   
    ; 쉬프트(Shift)연산

    mov eax, 0x12345678
    PRINT_HEX 4, eax
    NEWLINE
    
    shl eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    
    shr eax, 8
    PRINT_HEX 4, eax
    NEWLINE
    
    ; 곱셉/나눗셈 용이
    ; 게임서버에서 ObjectID를 만들어 줄때
    
    ; 논리(Logical) 연산
    ; not and or xor
    
    ; 조건A
    ; 조건B
    
    ; not A : A가 아니다 -> (0 이면 1, 1 이면 0)
    ; A and B : A 와 B -> 둘다 1이면 1, 아니면 0
    ; A or B : A 또는 B -> 둘 중 하나 1이면 1, 둘다 아니면 0
    ; A xor b : 둘다 1이거나 둘다 0이면 0, 둘의 값이 다르면 1
    
    mov al, 0b10010101
    mov bl, 0b01111100
    
    and al,bl
    PRINT_HEX 1, al ; 0b00010100 = 0x14
    NEWLINE
    
    not al
    PRINT_HEX 1, al ; 0b11101011 = 0xeb
    NEWLINE
    
    or al,bl
    PRINT_HEX 1, al
    NEWLINE
    
    xor al,bl
    PRINT_HEX 1, al
    NEWLINE
    
    ; 응용 : bitflag
    
    mov al, 0b10010101
    mov bl, 0b01111100
    
    NEWLINE
    PRINT_HEX 1, al
    NEWLINE
    
    xor al,bl
    PRINT_HEX 1, al
    NEWLINE
    
    xor al,bl
    PRINT_HEX 1, al
    NEWLINE
    ; 동일한 값으로 xor 두번하면 자기 자신으로 되돌아오는 특성
    ; 암호학에서 유용하다! (value xor key)
    
    xor al, al
    PRINT_HEX 1, al ; 무조건 0
    
    xor rax, rax ; 값 return 0
    ret
    
section .data

section .bss
    num resb 1

  
