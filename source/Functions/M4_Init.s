/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "EngineM4.h"

/*****************************/

#define STORE_IN_BRAM	0
#define WAIT_FOR_VSYNC	0

/*****************************/

.text
.global		M4_Init
.align		2

.thumb
.thumb_func

/*****************************/

M4_Init:
#if STORE_IN_BRAM
	ldr		r0, =M4DriverArea
	ldr		r1, =0x03007FF0
	str		r0, [r1]
#endif
	ldr		r0, =0x04000080
	strh	r0, [r0, #0x04]
#if M4_UseDMA2
	ldr		r1, =0xA90EFF77
#else
	ldr		r1, =0x0B0EFF77
#endif
	str		r1, [r0]
	ldrh	r1, [r0, #0x08]
	lsl		r1, #0x10+2
	lsr		r1, #0x18+2
	add		r1, #0x40
	strb	r1, [r0, #0x09]
	
	add		r0, #0xBC-0x80
	mov		r1, #0x00
	str		r1, [r0, #0x08]
#if M4_UseDMA2
	str		r1, [r0, #0x08+12]
#endif
	
	ldr		r1, =M4DriverArea+16+(M4_MaxChn*48)
	str		r1, [r0]
#if M4_UseDMA2
	ldr		r1, =M4DriverArea+16+(M4_MaxChn*48)+(M4_BuffLen*M4_DMACount)
	str		r1, [r0, #0x0C]
#endif
	mov		r1, r0
	sub		r1, #0xBC-0xA0
	str		r1, [r0, #0x04]
#if M4_UseDMA2
	add		r1, #0x04
	str		r1, [r0, #0x04+12]
#endif
	
	add		r0, #0x100-0xBC
	strb	r0, [r0, #0x02]
	ldr		r1, =0x00800000 + (65536-(16781312/M4_Freq))
	
#if WAIT_FOR_VSYNC
	ldr		r2, =0x04000006

1:
	ldrb	r3, [r2]
	lsl		r3, #0x1F
	beq		1b
#endif
	
	str		r1, [r0]
	
	ldr		r0, =M4DriverArea
	ldr		r1, =M4_Status
	ldr		r2, =0x800800/M4_Freq
	ldr		r3, =M4_Freq + (M4_BuffLen<<16)
	stmia	r0!, {r1-r3}
	ldr		r1, =127 + (M4_MaxChn<<16)
	stmia	r0!, {r1}
	
	mov		r1, #M4_MaxChn
	mov		r2, #0x00
	mov		r3, r2

1:
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	sub		r1, #0x01
	bne		1b
	
	mov		r1, #(M4_BuffLen * M4_DMACount * (M4_UseDMA2+1)) >> 4

1:
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	sub		r1, #0x01
	bne		1b
	
	ldr		r0, =M4CGBArea
	mov		r1, #0x04

1:
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	sub		r1, #0x01
	bne		1b
	
	ldr		r0, =M4Players
	mov		r1, #(16+(16*48))*M4_MaxPly / 16

1:
	stmia	r0!, {r2,r3}
	stmia	r0!, {r2,r3}
	sub		r1, #0x01
	bne		1b
	
	bx		lr

/*****************************/

.align	2
.size	M4_Init, .-M4_Init

/*****************************/
