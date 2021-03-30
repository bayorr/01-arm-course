@ This is my first assembly program for arm.
@ $ as -o program1.o program1.s
@ $ ld -o program1 prgram1.o
@ If you have floats, you need to add these flags for compilation -mfpu=vpu -g -o

		.global _start

_start:
		mov r1,#20
		mov r2,#25
		add r3,r1,r2

		mov r7,#1
		svc 0

		.end
