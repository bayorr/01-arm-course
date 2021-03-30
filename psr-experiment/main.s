@ simple experiement to mess with th CPRS register

		.global main
main:

		mov		r2,#4
		mov		r3,#2
		mov		r4,#4
		
		subs	r5,r2,r3	@ we use sub_s_ to update the cprs register
		subs	r5,r2,r4	@ We expect the cpsr register to change at this instruction
		
		mov		r7,#1
		svc 0
		.end
