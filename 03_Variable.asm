%include "io64.inc"

section .text
global main
main:                        
    mov rbp, rsp; for correct debugging

    ; 메모리 <-> 레지스터
    ; mov rax, a ; a라는 바구니의 주소값 rax에 복사
    ; mov rax, [a] ; a라는 바구니 안에 있는 값을 rax에 복사
    mov al, [a]
    
    mov [a], byte 0x55
    mov [a], word 0x6666
    mov cl, 0xff
    mov [a], cl
                        
    xor rax, rax
    ret
    
    ; 변수의 선언 및 사용
    ; 변수는 데이터를 저장하는 바구니
    ; - 처음에 바구니 사용하겠다 선언 (이름과 크기 지정)
    
    ; 메모리에는 구분할 수 있도록 주소(번지수)가 있다.

; 초기화 된 데이터
; [변수이름][크기][초기값]
; [크기] db(1byte) dw(2byte) dd(4byte) dq(8byte)
section .data
    a db 0x11     ; [0x11]
    b dw 0x2222
    c dd 0x33333333
    d dq 0x4444444444444444
    
; 초기화 되지 않은 데이터
; [변수이름][크기][개수]
; [크기] resb(1byte) resw(2byte) resd(4byte) resq(8byte)
section .bss
    e resb 10