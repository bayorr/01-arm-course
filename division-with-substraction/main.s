@ we want to divide 2010 by 10 using subtraction
				.global main
main:
		ldr		r0,=2010
		mov		r1,#10
		mov		r2,#0
		
l:		cmp		r0,r1
		blo		stop
		subs	r0,r0,r1
		add		r2,r2,#1
		b		l

		mov		r7,#1
		
stop:	svc		0
