.global main
.extern call_this
.text
main:
    lea langname(%rip), %rdi
    call call_this
    ret
.data

langname: .ascii "Assembly\0"
