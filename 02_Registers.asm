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
    
    mov al, 0x00 ; 원래 값에서 1byte만 바뀜
    mov rax, rdx ; rdx값을 rax값에 넣음
    
    
    xor rax, rax
    ret
    
    ; 변수의 선언 및 사용
    ; 변수는 그냥 데이터를 저장하는 바구니
    ; - 처음에 바구니 사용하겠다 선언 (이름과 크기 지정)

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



