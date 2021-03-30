@ p = q + r + s
@ where the p = 2 + 4 + 5, respectively
@ solve for p by storing data in memory

p:			.space		4 @ allocate 4 bytes in memory to label 'p'
q:			.word		2
r:			.word		4
s:			.word		5

			.global main
main:
			ldr			r1,q
			ldr			r2,r
			ldr			r3,s
			
			add			r0,r1,r2
			add			r0,r0,r3


			mov			r7,#1
			svc			0
			.end
