@ First program - Allocates some memory and writes some values.

        .global main

main:
        ldr     r0,=A
        mov     r1,#5
        str     r1,[r0]

        ldr     r0,=C
        mov     r1,#4
        str     r1,[r0]

        ldr     r0,=D
        mov     r1,#100
        str     r1,[r0]

        mov     r0,#1
        svc     0

        .data
A:      .space      4
C:      .space      4
D:      .space      4
        .align
        .end
