/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "EngineM4.h"

/*****************************/

.text
.global		M4_Intr
.align		2

.thumb
.thumb_func

/*****************************/

M4_Intr:
	ldr		r0, =M4DriverArea
	ldr		r1, [r0]
	ldr		r2, =M4_Status
	cmp		r1, r2
	bne		.LExit
	
	ldrb	r1, [r0, #0x0F]
	sub		r1, #0x01
	bge		.LExitSave
	mov		r1, #M4_DMACount-1
	
	ldr		r2, =0x040000BC
	mov		r3, #0xB6
	lsl		r3, #0x18
	strh	r3, [r2, #0x0A]
	str		r3, [r2, #0x08]
#if M4_UseDMA2
	strh	r3, [r2, #0x0A+12]
	str		r3, [r2, #0x08+12]
#endif

.LExitSave:
	strb	r1, [r0, #0x0F]

.LExit:
	bx		lr

/*****************************/

.align	2
.size	M4_Intr, .-M4_Intr

/*****************************/
