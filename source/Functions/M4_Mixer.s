/*****************************/
/*    Engine M4 2009, Aik    */
/*****************************/

#include "EngineM4.h"

/*****************************/

.section	.iwram, "ax", %progbits
.global		M4_Mixer
.align		4
.arm

/*****************************/

M4_Mixer:
	stmfd	sp!, {r4-r11,lr}
	
	ldr		r3, =M4DriverArea+4
	ldmia	r3!, {r0-r2}
	mov		r1, r1, lsr #0x10
	bic		r2, r2, #0xFF00
	bic		r2, r2, #0xFF000000
	sub		r2, r2, #0x010000
	add		r2, r2, #0x01
	ldr		r4, =M4MixArea

/*	r0: 1/Freq
	r1: Batch Size
	r2: MaxChn<<16 + Volume
	r3: &Chan
	r4: &Dest				*/

.LChannelLoop:
	ldr		r5, [r3], #0x30
	tst		r5, #M4_Active|M4_NoteOn
	beq		.LChannelLoopEnd
	stmnefd	sp!, {r0-r4}

.LChannelNoteOn:
	tst		r5, #M4_NoteOn
	beq		.LStartChannel
	
	ldr		r6, =0xFFFF0000 | M4_FX | M4_NoteOff
	and		r5, r5, r6
	orr		r5, r5, #M4_Active
	
	ldr		r6, [r3, #0x24-0x30]
	add		r6, r6, #0x10
	str		r6, [r3, #0x0C-0x30]
	mov		r7, #0x00
	str		r7, [r3, #0x08-0x30]
	ldr		r9, [r6, #0x0C-0x10]
	add		r7, r9, r6
	mov		r7, r7, lsl #0x04
	ldrb	r8, [r6, #0x03-0x10]
	orr		r7, r7, r8, lsr #0x06
	str		r7, [r3, #0x10-0x30]
	ldr		r7, [r6, #0x08-0x10]
	sub		r7, r9, r7
	str		r7, [r3, #0x14-0x30]
	
	ldr		r7, [r3, #0x18-0x30]
	ands	r8, r7, #0xFF
	cmpne	r8, #0xFF
	beq		1f
	
	bic		r5, r5, #0xFF00
	add		r5, r5, r8, lsl #0x08
	orr		r5, r5, #M4_Attack
	strh	r5, [r3, #-0x30]
	b		.LStartChannel

1:
	tst		r7, #0xFF00
	orrne	r5, r5, #0xFF00
	orrne	r5, r5, #M4_Decay
	strneh	r5, [r3, #-0x30]
	bne		.LStartChannel
	
	bic		r5, r5, #0xFF00
	and		r7, r7, #0xFF0000
	orr		r5, r5, r7, lsr #0x08
	orr		r5, r5, #M4_Sustain
	strh	r5, [r3, #-0x30]

.LStartChannel:
	bic		r2, r2, #0xFF0000		@ GlobalVol
	mov		r6, r5, lsr #0x08
	and		r7, r6, #0xFF			@ Scalar
	mov		r5, r5, lsr #0x10		@ RRLL
	mul		r2, r7, r2				@ Scalar * GlobalVol
	mov		r2, r2, lsr #0x08		@ Scaled GlobalVol
#if M4_UseDMA2
	orr		r5, r5, r5, lsl #0x08	@ 00RRxxLL
	bic		r5, r5, #0xFF00			@ 00RR00LL
	mul		r2, r5, r2				@ Vol * GlobalVol
	bic		r2, r2, #0x7F0000
	mov		r2, r2, lsr #0x07		@ 00RR00LL
	tst		r2, #0x000000FF
	addeq	r2, r2, #0x00000001
	tst		r2, #0x00FF0000
	addeq	r2, r2, #0x00010000
#else
	add		r5, r5, r5, lsl #0x08	@ LL+RR = 00xxVVLL
	bic		r5, r5, #0xFF0000		@ VVxx
	mov		r5, r5, lsr #0x09		@ 000000VV
	mul		r2, r5, r2				@ Vol * GlobalVol
	movs	r2, r2, lsr #0x07		@ Vol>>7
	addeq	r2, r2, #0x01			@ if(!Vol) Vol++
#endif
	sub		r9, r3, #0x30			@ &Chan[Idx]
	ldmib	r9, {r3,r5,r6,r7}		@ {Freq,SubS,Data,Fine}
	mul		r0, r3, r0				@ Freq / MFreq
	mov		r3, r7					@ Fine

/*

	r0: SFreq<<23/MFreq
	r1: Batch Size
	r2: RightVol<<16 + LeftVol
	r3: &End
	r4: &Dest
	r5: SubS
	r6: &Src

*/

.macro MixSamp Out

#if M4_UseHQ
	mul		lr, r5, r8				@ SubS * Diff
	add		lr, r7, lr, asr #0x17	@ y0 + f(y1-y0)
	muls	lr, r2, lr				@ Vol * Smp

#if M4_UseDMA2
	orrmi	lr, lr, #0xFF0000		@ Fill sign
	bicpl	lr, lr, #0xFF0000
	add		\Out, \Out, lr, asr #0x08
#else
	add		\Out, \Out, lr
#endif

#else

#if M4_UseDMA2
	add		\Out, \Out, r7, asr #0x08
#else
	add		\Out, \Out, r7
#endif

#endif

	add		r5, r5, r0				@ SubS += Freq/MFreq
	movs	lr, r5, lsr #0x17		@ if(SubS < 1.0)
	beq		1f						@  continue
	
	bic		r5, r5, lr, lsl #0x17	@ SubS -= (int)SubS
	subs	lr, lr, #0x01
	addeq	r7, r7, r8
	ldrnesb	r7, [r6, lr]!
	
	cmp		r6, r3, lsr #0x04		@ if(Data >= Fine)
	blge	.LOutOfData				@  Loop/End
	
	ldrsb	r7, [r6]				@ y0 = Src[0]
#if M4_UseHQ
	ldrsb	r8, [r6, #0x01]!		@ y1 = Src[1]
	sub		r8, r8, r7				@ y1 = y1 - y0
#else
	muls	r7, r2, r7				@ Vol * Smp
#if M4_UseDMA2
	orrmi	r7, r7, #0xFF0000		@ Fill sign
	bicpl	r7, r7, #0xFF0000
#endif
#endif

1:
.endm

	ldrsb	r7, [r6]				@ y0
	ldrsb	r8, [r6, #0x01]!		@ y1
	sub		r8, r8, r7				@ y1-y0

.LMixChannel:
.rept 2
	ldmia	r4, {r9-ip}
	MixSamp	r9
	MixSamp	r10
	MixSamp	r11
	MixSamp	r12
	stmia	r4!, {r9-ip}
.endr
	subs	r1, r1, #0x08
	bne		.LMixChannel
	sub		r6, r6, #0x01

.LChannelEnvelope:
	ldr		r0, [sp, #0x03*4]
	ldrh	r1, [r0, #-0x30]!
	ldr		r2, [r0, #0x18]
	mov		r3, #0xFF

.LChannelNoteOff:
	tst		r1, #M4_NoteOff
	beq		.LChannelAttack
	ands	r4, r2, #0xFF000000
	streqb	r4, [r0]
	beq		.LChannelKill
	bic		r1, r1, #M4_Attack|M4_Decay|M4_Sustain|M4_Release|M4_NoteOn|M4_NoteOff
	orr		r1, r1, #M4_Release
	b		.LChannelRelease

.LChannelAttack:
	tst		r1, #M4_Attack
	beq		.LChannelDecay
	
	and		r4, r3, r2
	add		r1, r1, r4, lsl #0x08
	tst		r1, #0xFF0000
	streqh	r1, [r0]
	beq		.LChannelKill
	
	bic		r1, r1, #0xFF0000
	orr		r1, r1, #0xFF00
	bic		r1, r1, #M4_Attack
	tst		r2, #0xFF00
	orreq	r1, r1, #M4_Sustain
	beq		.LChannelSustain
	orr		r1, r1, #M4_Decay

.LChannelDecay:
	tst		r1, #M4_Decay
	beq		.LChannelSustain
	
	and		r4, r3, r2, lsr #0x08
	subs	r1, r1, r4, lsl #0x08
	bmi		.LChannelMinus
	and		r4, r3, r2, lsr #0x10
	cmp		r4, r1, lsr #0x08
	strleh	r1, [r0]
	ble		.LChannelKill
	
	bic		r1, r1, #M4_Decay
	orr		r1, r1, #M4_Sustain

.LChannelSustain:
	tst		r1, #M4_Sustain
	beq		.LChannelRelease
	
	ands	r4, r3, r2, lsr #0x10
	strneb	r4, [r0, #0x01]
	bne		.LChannelKill
	mov		r4, #0x00
	strb	r4, [r0]
	b		.LChannelKill

.LChannelRelease:
	tst		r1, #M4_Release
	beq		.LChannelKill
	
	and		r4, r3, r2, lsr #0x18
	subs	r1, r1, r4, lsl #0x08
	strplh	r1, [r0]

.LChannelMinus:
	movmi	r1, #0x00
	strmib	r1, [r0]

.LChannelKill:
	ldmfd	sp!, {r0-r4}
	str		r5, [r3, #0x08-0x30]
	str		r6, [r3, #0x0C-0x30]

.LChannelLoopEnd:
	subs	r2, r2, #0x010000
	bge		.LChannelLoop

/*

	r0: &Src0/Dst0
	r1: Batch Size
	r2: &Src1/Dst1
	r3: &Src2/Dst2
	r4: &Src

*/

.LMixdown:
	ldr		lr, =M4DriverArea
	add		r3, lr, #0x10+(48*M4_MaxChn)
	ldrb	r9, [lr, #0x0F] @ DMACount
	
	subs	r9, r9, #0x01
	addmi	r9, r9, #M4_DMACount
	rsb		r9, r9, #M4_DMACount-1
	mla		r0, r9, r1, r3
	
	ldrb	ip, [lr, #0x0D] @ Reverb
	add		ip, ip, ip, lsl #0x01
	mov		lr, #M4_DMACount*M4_BuffLen
	mov		r10, #0x7F

.macro DoRvb0

	ldrsb	r6, [r0, lr]
	mul		r6, ip, r6
	mov		r6, r6, asr #0x0A

.endm

.macro DoRvb1

	ldrsb	r6, [r0]
	mul		r6, ip, r6
	mov		r6, r6, asr #0x0A

.endm

.macro MixdownSample
	ldr		r5, [r4], #0x04
	
#if M4_UseDMA2
	DoRvb0
	
	adds	r6, r6, r5, asr #0x10
	addmis	r6, r6, #0x01
	teq		r6, r6, lsl #0x18
	submi	r6, r10, r6, asr #0x1F
	strb	r6, [r0, lr]
	mov		r5, r5, lsl #0x10
#endif
	
	DoRvb1
	
	adds	r6, r6, r5, asr #(M4_UseDMA2*16)+(!M4_UseDMA2*4)
	addmis	r6, r6, #0x01
	teq		r6, r6, lsl #0x18
	submi	r6, r10, r6, asr #0x1F
	strb	r6, [r0], #0x01

.endm

1:
	MixdownSample
	
	subs	r1, r1, #0x01
	bne		1b

.LExit:
	ldmfd	sp!, {r4-r11,lr}
	bx		lr

.LOutOfData:
	tst		r3, #0x01
	beq		2f
	
	str		lr, [sp, #-0x04]!
	ldr		lr, [sp, #0x04*4]
	ldr		lr, [lr, #0x14-0x30]

1:
	sub		r6, r6, lr
	cmp		r6, r3, lsr #0x04
	ldrltsb	r7, [r6]
	ldrlt	pc, [sp], #0x04
	bge		1b

2:
	ldr		lr, [sp, #0x03*4]
	movs	r6, #0x00
	streqb	r6, [lr, #-0x30]
	beq		.LChannelKill

/*****************************/

.align	4
.size	M4_Mixer, .-M4_Mixer

/*****************************/
