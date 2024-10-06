%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp; for correct debugging

    ; 분기문 (if)
    ; 특정 조건에 따라서 코드 흐름을 제어하는 것
    ; ex) 스킬 버튼 눌렀는가? Yes -> 스킬 사용
    ; ex) 제한 시간 내에 던전 입장 수락 버튼 눌렀는가? Yes -> 입장 No -> 취소

    ; 조건 -> 흐름

    ; CMP dst, src (dst가 기준)
    ; 비교 한 결과물은 Flag Register 저장

    ; JMP [label] 시리즈
    ; JMP : 무조건 jump
    ; JE : JumpEquals 같으면 jump
    ; JNE : JumpNotEquals 다르면 jump
    ; JG : JumpGreater 크면 jump
    ; JGE : JumpGreaterEquals 크거나 같으면 jump
    ; JL
    ; JLE 등등

    ; 두 숫자가 같으면 1, 아니면 0을 출력하는 프로그램
    mov rax, 10
    mov rbx, 20

    cmp rax, rbx ; -> Flag Register 저장
    je LABEL_EQUAL

    ; 점프를 안했다면, 같지 않다는 의미
    mov rcx, 0
    jmp LABEL_EQUAL_END

LABEL_EQUAL:
    mov rcx, 1
LABEL_EQUAL_END:
    PRINT_HEX 1, rcx
    NEWLINE

    ; 연습 문제 : 어떤 숫자(1~100)가 짝수면 1, 홀수면 0을 출력하는 프로그램
    
    xor rax, rax
    ret
    
section .data

section .bss

