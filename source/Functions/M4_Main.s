/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "EngineM4.h"

/*****************************/

.text
.global		M4_Main
.align		2

.thumb
.thumb_func

/*****************************/

M4_Main:
	ldr		r0, =M4DriverArea
	ldrb	r3, [r0, #0x0D]
	ldr		r1, [r0]
	ldr		r2, =M4_Status
	cmp		r1, r2
	bne		.LExit2
	
	push	{r0,r3,lr}
	mov		r3, #0x00
	mov		r2, #0x00
	strb	r2, [r0]
	mov		r1, #M4_BuffLen>>4
	ldr		r0, =M4MixArea

1:
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	sub		r1, #0x01
	bgt		1b
	
	bl		M4_Player
	ldr		r2, =M4_Mixer
	bl		.LBxR2

.LExit:
	pop		{r0,r1,r2}
	strb	r1, [r0, #0x0D]
	mov		r1, #M4_Status&255
	strb	r1, [r0]

.LBxR2:
	bx		r2

.LExit2:
	bx		lr

/*****************************/

.align	2
.size	M4_Main, .-M4_Main

/*****************************/
