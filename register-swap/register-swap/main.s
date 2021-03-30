@ Swap the values of two registers

            .global main

main:
            ldr     r0,0xf00dbabe
            ldr     r1,0xbaadb00b

            eor     r0,r0,r1
            eor     r1,r0,r1
            eor     r0,r0,r1

            mov     r7,#1
            svc     0

            .end
