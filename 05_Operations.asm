%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp; for correct debugging

    GET_DEC 1, al
    GEt_DEC 1, num

    ;PRINT_DEC 1, al
    ;NEWLINE
    ;PRINT_DEC 1, num

    ; 더하기 연산
    ; add a, b (a = a + b)
    ; a 레지스터 or 메모리
    ; b 레지스터 or 메모리 or 상수
    ; a, b 모두 메모리는 x

    ; 뺴기 연산
    ; sub a, b (a = a - b)

    add al. 1 ; 레지스터 + 상수
    PRINT_DEC 1, al ; 1+1
    NEWLINE

    add al, [num] ; 레지스터 + 메모리 바구니를 씌워줘야함
    PRINT_DEC 1, al ; 2+2
    NEWLINE

    mov bl, 3
    add al, bl ; 레지스터 + 레즈스터
    PRINT_DEC 1, al ; 4+3
    NEWLINE

    add [num], byte 1 ; 메모리 + 상수
    PRINT_DEC 1, [num] ; 2+1
    NEWLINE
    
    add [num], al ; 메모리 + 레지스터
    PRINT_DEC 1, [num] ; 3+7
    NEWLINE

    ; 곱하기 연산
    ; mul reg
    ; - mul bl => al * bl
    ; -- 연산 결과를 ax에 저장
    ; mul bx => ax * bx
    ; -- 연산 결과를 dx(상위16비트) ax(하위16비트)에 저장
    ; mul ebx => eax * ebx

    ; ex) 5 * 8 은?
    mov ax, 0
    mov al, 5
    mov bl, 8
    mul bl
    PRINT_DEC 2, ax
    NEWLINE

    ; 나누기 연산
    ; div reg
    ; - div bl => ax / bl
    ; -- 연산 결과는 al(몫) ah(나머지)
    
    ; ex) 100 / 3 은?
    mov ax, 100
    mov bl, 3
    div bl
    PRINT_DEC 1, al
    NEWLINE
    mov al, ah
    PRINT_DEC 1, al ; ah 값 출력
    
    
    xor rax, rax
    ret
    
section .bss
    num resb 1
