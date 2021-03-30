@ playing with cpsr register by adding numbers larger than 2^32

			.global main
main:

		ldr		r0,=0xf62562fa		@ load these large values into the registers
		ldr		r1,=0xf60124ee
		
		mov		r2,#0x35			@ just for the controlled experiment
		mov		r3,#0x21
		
		adds	r5,r0,r1
		adc		r6,r0,r1			@ used after adds, and includes the carry. (r6=r0+r1+carry)
		
		adds	r5,r2,32			@ all flags should be set low after this computation
		mov		r7,#1
		svc		0
		.end
