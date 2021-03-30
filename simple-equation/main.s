@ p = q + r + s
@ solve for p

		.equ		q,2
		.equ		r,4
		.equ		s,5

			.global main
main:
		mov			r1,#q
		mov			r2,#r
		mov			r3,#s
		
		add			r0,r1,r2
		add			r0,r0,r3
		
		mov			r7,#1
		svc			0

		.end
