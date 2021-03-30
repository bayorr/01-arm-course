@ program to rename registers using .req directive

@ renames:
val1    .req    r1
val2    .req    r2
sum     .req    r3

                .global main
main:
        mov     val1,#0x10
        mov     val2,#0x25
        add     sum,val1,val2

        mov     r7,#1
        svc     0

        .end
