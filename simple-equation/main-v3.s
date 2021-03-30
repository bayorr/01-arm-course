@ p = q + r + s
@ where the p = 2 + 4 + 5, respectively
@ solve for p by storing data in memory and using register-relative indexing


			.global main
main:
		adrl	r4,vals		@ r4 now points to vals (load register with address)
		ldr		r1,[r4,#4]	@ load value at the address pointed to in r4+4
		ldr		r2,[r4,#8]	@ load value at the address pointed to in r4+8
		ldr		r3,[r4,#12]	@ load value at the address pointed to in r4+12
		
		add		r0,r1,r2
		add		r0,r0,r3

		mov		r7,#1
		svc		0
		
vals:		.space		4	@ allocate 4 bytes
			.word		2	@ allocate & initialize a word with 2
			.word		4	@ allocate & initialize a word with 4
			.word		5	@ allocate & initialize a word with 5
			.align			@ align memory in vals
			.end			@ tell assembler our program text ends
			
/* Another way to do this for scalabilty is to use the .equ directive to replace the int literals

			.global main
main:
		adrl	r4,vals		@ r4 now points to vals
		ldr		r1,[r4,#q]	@ load value at the address pointed to in r4+4
		ldr		r2,[r4,#r]	@ load value at the address pointed to in r4+8
		ldr		r3,[r4,#s]	@ load value at the address pointed to in r4+12
		
		add		r0,r1,r2
		add		r0,r0,r3

		mov		r7,#1
		svc		0
		
		@ give the literals a label
		.equ	p,0
		.equ	q,4
		.equ	r,8
		.equ	s,12

*/
