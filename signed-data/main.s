@ add a list of signed data
							.global main
main:
			ldr		r0,signed_data
			mov		r3,#6				@ how many elements we have
			mov		r2,#0				@ our incrementer
			
label:		ldrsb	r1,[r0]				@ mov byte contents in r0 to r1
			add		r2,r2,r1			@ add nth element
			add		r0,r0,#1			@ increment position in signed_data
			subs	r3,r3,#1			@ decrement counter
			bne		label				@ loop

			svc		0
			
signed_data:				.byte		+13,-10,+2,-4,+12,-11
