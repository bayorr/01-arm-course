		.global main
main:
	ldr		r1,=1000000000
	ldr		r2,=2000000000
	ldr		r3,=3000000000
	ldr		r4,=4000000000
	ldr		r5,=4100000000
	
	mov		r8,#0		@ for saving lower word
	mov		r9,#0		@ use as an accumulator
	
	adds	r8,r8,r1
	adc		r9,r9,#0	@ r9 = r9 + carry + 0 (use 0 because we need another operand)
	
	adds	r8,r8,r2
	adc		r9,r9,#0
	
	adds	r8,r8,r3
	adc		r9,r9,#0
	
	adds	r8,r8,r4
	adc		r9,r9,#0
	
	adds	r8,r8,r5
	adc		r9,r9,#0
	
	mov		r7,#1
	svc		0
	.end
