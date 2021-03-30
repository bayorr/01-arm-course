@ p = q + r + s
@ where the p = 2 + 4 + 5, respectively
@ optimize main-v3.s byt using only registers r0-r2

			.global main
main:
		adrl	r0,p			@ r0 now contains the address of 'p'
		ldr		r1,[r0,#4]		@ r1 is initialized with 2
		ldr		r2,[r0,#8]		
		
		add		r2,r1,r2
		ldr		r1,[r0,#12]
		add		r2,r2,r1

		mov		r7,#1
		svc		0

		@ align 16 bytes
p:		.space		4	@ allocate 4 bytes for answer
		.word		2
		.word		4
		.word		5
		.align
		.end

