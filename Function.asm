%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp; for correct debugging

    ; 함수 (프로시저 procedure 서브루틴 subroutine)
    
    ;call PRINT_MSG

    mov eax, 10
    mov ebx, 5
    call MAX
    PRINT_DEC 4, ecx
    NEWLINE
    
    xor rax, rax
    ret

    ; ex) 헬로월드 출력 함수
PRINT_MSG:
    PRINT_STRING msg
    NEWLINE
    ret

    ; ex) 두 값중 더 큰 값을 반환하는 함수
MAX:
    cmp eax, ebx
    jg L1
    mov ecx, ebx
    jmp L2

L1:
    mov ecx, eax
L2:
    ret

    ; 인자가 10개라면
    ; eax, ebx에 이미 중요한 값이 있다면
    ; [!] .date .bss 사용
    ; 인자를 몇개를 할당해야 할지

    ; 다른 메모리 구조가 필요함
    ; - 함수가 유효한 동안에는 그 함수를 유지시켜야함 (유효 범위의 개념이 있다)
    ; - 함수가 끝나면 그 함수를 부셔버려도 됨 (정리의 개념)
    ; - 함수에서도 또 함수를 호출 할 수 있다는 것을 고려 (유동적으로 유효 범위가 확장 가능)

    ; [!] 스택(stack)이라는 메모리 영역을 사용
    ; 함수가 사용하는 일종의 메모장
    ; - 매개 변수 전달
    ; - 돌아갈 주소 관리
    
section .data
    msg db 'Hello World', 0x00
    
section .bss
    
