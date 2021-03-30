@ find the max value from a list of numbers



@ declare data
data:		.word		21,32,85,12,11,54,98,22

			.global main
main:
				mov		r0,#8		@ counter, we have 8 elements (c = 8)
				mov		r1,#0
				ldr		r2,=data	@ load address of data into r2
				
loop:			ldr		r3,[r2]		@ load contents of first word into r3
				cmp		r1,r3		@ compare first word of r3 with zero
				bhs		continue	@ branch to counter
		
continue:		add		r2,r2,#4	@ incrememnt pointer by r2+4
				subs	r0,r0,#1	@ c = c--
				bne		loop		@ go to loop
				
				mov		r7,0
				svc		0
				.end
		
