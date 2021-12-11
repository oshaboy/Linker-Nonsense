.global main
.extern call_this
.text
main:
    lea langname(%rip), %rdi
    call call_this
    xor %eax, %eax
    ret
.data

langname: .ascii "Assembly\0"
