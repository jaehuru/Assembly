%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp; for correct debugging

    ; 배열과 주소
    
    ; 배열 : 동일한 타입의 데이터 묶음
    ; - 배열을 구성하는 각 값을 배열 요소(element)라고 함
    ; - 배열의 위치를 가르키는 숫자를 인덱스(index)라고 함
    
    ; 주소
    ; [시작주소 + 인덱스 * 크기]
    
    mov rax, a ; 주소값
    
    ; ex) a배열의 모든 데이터 출력해보기
    xor ecx, ecx
LABEL_PRINT_A:
    PRINT_HEX 1, [a+ecx]
    NEWLINE
    inc ecx ; add ecx,1
    cmp ecx, 5
    jne LEBEL_PRINT_A
    
    ; ex) b배열의 모든 데이터 출력해보기
    xor ecx, ecx
LABEL_PRINT_B:
    PRINT_HEX 2, [b+ecx*2]
    NEWLINE
    inc ecx
    cmp ecx, 5
    jne LEBEL_PRINT_B
    
    xor rax, rax
    ret
    
section .data
    a db 0x01, 0x02, 0x03, 0x04, 0x05 ; 5 * 1 = 5byte
    
    ; 0x0001
    b times 5 dw 1 ; 5 * 2 = 10byte
    
    map1 db '##########' 0x00
    map2 db '#    #   #' 0x00
    map3 db '#        #' 0x00
    map4 db '##########' 0x00
    
section .bss
    num resb 10
