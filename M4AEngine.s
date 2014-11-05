
C:/sound/m4aLib.o:     file format elf32-littlearm

Disassembly of section .text:

00000000 <umul3232H32>:
       0:	a200      	a200	add	r2, pc, #0	(adr r2,4 <__umul3232H32>)
       2:	4710      	4710	bx	r2

00000004 <__umul3232H32>:
       4:	e0832190 	umull	r2, r3, r0, r1
       8:	e2830000 	add	r0, r3, #0
       c:	e12fff1e 	bx	lr

00000010 <SoundMain>:
      10:	481a      	481a	ldr	r0, [pc, #104]	(7c <.i_SOUND_AREA_ADR>)
      12:	6800      	6800	ldr	r0, [r0, #0]
      14:	4a1a      	4a1a	ldr	r2, [pc, #104]	(80 <.i_ID_NUMBER>)
      16:	6803      	6803	ldr	r3, [r0, #0]
      18:	429a      	429a	cmp	r2, r3
      1a:	d000      	d000	beq	1e <SoundMain+0xe>
      1c:	4770      	4770	bx	lr
      1e:	3301      	3301	add	r3, #1
      20:	6003      	6003	str	r3, [r0, #0]
      22:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
      24:	4641      	4641	mov	r1, r8
      26:	464a      	464a	mov	r2, r9
      28:	4653      	4653	mov	r3, sl
      2a:	465c      	465c	mov	r4, fp
      2c:	b41f      	b41f	push	{r0, r1, r2, r3, r4}
      2e:	b086      	b086	sub	sp, #24
      30:	7b01      	7b01	ldrb	r1, [r0, #12]
      32:	2900      	2900	cmp	r1, #0
      34:	d005      	d005	beq	42 <SoundMain+0x32>
      36:	4a14      	4a14	ldr	r2, [pc, #80]	(88 <.is_REG_VCOUNT>)
      38:	7812      	7812	ldrb	r2, [r2, #0]
      3a:	2aa0      	2aa0	cmp	r2, #160
      3c:	d200      	d200	bcs	40 <SoundMain+0x30>
      3e:	32e4      	32e4	add	r2, #228
      40:	1889      	1889	add	r1, r1, r2
      42:	9105      	9105	str	r1, [sp, #20]
      44:	6a03      	6a03	ldr	r3, [r0, #32]
      46:	2b00      	2b00	cmp	r3, #0
      48:	d003      	d003	beq	52 <SoundMain+0x42>
      4a:	6a40      	6a40	ldr	r0, [r0, #36]
      4c:	f9f1f000 	f000	bl	432 <.call_r3>
      50:	9806      	9806	ldr	r0, [sp, #24]
      52:	6a83      	6a83	ldr	r3, [r0, #40]
      54:	f9edf000 	f000	bl	432 <.call_r3>
      58:	9806      	9806	ldr	r0, [sp, #24]
      5a:	6903      	6903	ldr	r3, [r0, #16]
      5c:	4698      	4698	mov	r8, r3
      5e:	4d0b      	4d0b	ldr	r5, [pc, #44]	(8c <.i_o_SA_pcmbuf>)
      60:	182d      	182d	add	r5, r5, r0
      62:	7904      	7904	ldrb	r4, [r0, #4]
      64:	1e67      	1e67	sub	r7, r4, #1
      66:	d904      	d904	bls	72 <SoundMain+0x62>
      68:	7ac1      	7ac1	ldrb	r1, [r0, #11]
      6a:	1bc9      	1bc9	sub	r1, r1, r7
      6c:	4642      	4642	mov	r2, r8
      6e:	434a      	434a	mul	r2, r1
      70:	18ad      	18ad	add	r5, r5, r2
      72:	9502      	9502	str	r5, [sp, #8]
      74:	4e06      	4e06	ldr	r6, [pc, #24]	(90 <.i_PCM_DMA_BUF>)
      76:	4b03      	4b03	ldr	r3, [pc, #12]	(84 <.i_SoundMainRAM>)
      78:	4718      	4718	bx	r3
	...

0000007c <.i_SOUND_AREA_ADR>:
      7c:	03007ff0 	tsteq	r0, #960

00000080 <.i_ID_NUMBER>:
      80:	68736d53 	ldmvsda	r3!, {r0, r1, r4, r6, r8, sl, fp, sp, lr}^

00000084 <.i_SoundMainRAM>:
      84:	00000001 	andeq	r0, r0, r1

00000088 <.is_REG_VCOUNT>:
      88:	04000006 	streq	r0, [r0], -#6

0000008c <.i_o_SA_pcmbuf>:
      8c:	00000350 	andeq	r0, r0, r0, asr r3

00000090 <.i_PCM_DMA_BUF>:
      90:	00000630 	andeq	r0, r0, r0, lsr r6

00000094 <SoundMainRAM>:
      94:	7943      	7943	ldrb	r3, [r0, #5]
      96:	2b00      	2b00	cmp	r3, #0
      98:	d02c      	d02c	beq	f4 <.toArm010+0x54>
      9a:	a101      	a101	add	r1, pc, #4	(adr r1,a0 <.toArm010>)
      9c:	4708      	4708	bx	r1
	...

000000a0 <.toArm010>:
      a0:	e3540002 	cmp	r4, #2
      a4:	02807e35 	addeq	r7, r0, #848
      a8:	10857008 	addne	r7, r5, r8
      ac:	e1a04008 	mov	r4, r8
      b0:	e19500d6 	ldrsb	r0, [r5, r6]
      b4:	e1d510d0 	ldrsb	r1, [r5]
      b8:	e0800001 	add	r0, r0, r1
      bc:	e19710d6 	ldrsb	r1, [r7, r6]
      c0:	e0800001 	add	r0, r0, r1
      c4:	e0d710d1 	ldrsb	r1, [r7], #1
      c8:	e0800001 	add	r0, r0, r1
      cc:	e0010390 	mul	r1, r0, r3
      d0:	e1a004c1 	mov	r0, r1, asr #9
      d4:	e3100080 	tst	r0, #128
      d8:	12800001 	addne	r0, r0, #1
      dc:	e7c50006 	strb	r0, [r5, r6]
      e0:	e4c50001 	strb	r0, [r5], #1
      e4:	e2544001 	subs	r4, r4, #1
      e8:	ca00002a 	bgt	198 <.i_REG_VCOUNT+0x50>
      ec:	e28f002f 	add	r0, pc, #47
      f0:	e12fff10 	bx	r0
      f4:	46412000 	strmib	r2, [r1], -r0
      f8:	08c91976 	stmeqia	r9, {r1, r2, r4, r5, r6, r8, fp, ip}^
      fc:	c501d301 	strgt	sp, [r1, -#769]
     100:	0849c601 	stmeqda	r9, {r0, r9, sl, lr, pc}^
     104:	c501d303 	strgt	sp, [r1, -#771]
     108:	c501c601 	strgt	ip, [r1, -#1537]
     10c:	c501c601 	strgt	ip, [r1, -#1537]
     110:	c501c601 	strgt	ip, [r1, -#1537]
     114:	c501c601 	strgt	ip, [r1, -#1537]
     118:	c501c601 	strgt	ip, [r1, -#1537]
     11c:	3901c601 	stmccdb	r1, {r0, r9, sl, lr, pc}
     120:	9c06dcf5 	stcls	12, cr13, [r6], -#980

00000122 <.toThumb010>:
     122:	69a09c06 	stmvsib	r0!, {r1, r2, sl, fp, ip, pc}
     126:	79a04684 	stmvcib	r0!, {r2, r7, r9, sl, lr}
     12a:	90013450 	andls	r3, r1, r0, asr r4
     12e:	98056a63 	stmlsda	r5, {r0, r1, r5, r6, r9, fp, sp, lr}
     132:	d00a2800 	andle	r2, sl, r0, lsl #16
     136:	78094904 	stmvcda	r9, {r2, r8, fp, lr}
     13a:	d20029a0 	andle	r2, r0, #2621440
     13e:	428131e4 	addmi	r3, r1, #57
     142:	e16bd303 	cmn	fp, r3, lsl #6
	...

00000148 <.i_REG_VCOUNT>:
     148:	04000006 	streq	r0, [r0], -#6
     14c:	20c77826 	sbccs	r7, r7, r6, lsr #16
     150:	d1004230 	tstle	r0, r0, lsr r2
     154:	2080e15e 	addcs	lr, r0, lr, asr r1
     158:	d0144230 	andles	r4, r4, r0, lsr r2
     15c:	42302040 	eormis	r2, r0, #64
     160:	2603d119 	undefined
     164:	1c187026 	ldcne	0, cr7, [r8], -#152
     168:	62a03010 	adcvs	r3, r0, #16
     16c:	61a068d8 	strvssb	r6, [r0, r8]!
     170:	72652500 	rsbvc	r2, r5, #0
     174:	78da61e5 	ldmvcia	sl, {r0, r2, r5, r6, r7, r8, sp, lr}^
     178:	421020c0 	andmis	r2, r0, #192
     17c:	2010d02f 	andcss	sp, r0, pc, lsr #32
     180:	70264306 	eorvc	r4, r6, r6, lsl #6
     184:	7a65e02b 	bvc	1978238 <MUSICPLAYER_STATUS_TRACK+0x1968239>
     188:	42302004 	eormis	r2, r0, #4
     18c:	7b60d006 	blvc	18341ac <MUSICPLAYER_STATUS_TRACK+0x18241ad>
     190:	73603801 	cmnvc	r0, #65536
     194:	2000d82a 	andcs	sp, r0, sl, lsr #16
     198:	e13b7020 	teq	fp, r0, lsr #32
     19c:	42302040 	eormis	r2, r0, #64
     1a0:	79e0d00c 	stmvcib	r0!, {r2, r3, ip, lr, pc}^
     1a4:	0a2d4345 	beq	b50ec0 <MUSICPLAYER_STATUS_TRACK+0xb40ec1>
     1a8:	42857b20 	addmi	r7, r5, #32768
     1ac:	7b25d81e 	blvc	97622c <MUSICPLAYER_STATUS_TRACK+0x96622d>
     1b0:	d0f02d00 	rscles	r2, r0, r0, lsl #26
     1b4:	43062004 	tstmi	r6, #4
     1b8:	e0177026 	ands	r7, r7, r6, lsr #32
     1bc:	40322203 	eormis	r2, r2, r3, lsl #4
     1c0:	d10a2a02 	tstle	sl, r2, lsl #20
     1c4:	43457960 	cmpmi	r5, #1572864
     1c8:	79a00a2d 	stmvcib	r0!, {r0, r2, r3, r5, r9, fp}
     1cc:	d80d4285 	stmleda	sp, {r0, r2, r7, r9, lr}
     1d0:	d0ec1c05 	rscle	r1, ip, r5, lsl #24
     1d4:	70263e01 	eorvc	r3, r6, r1, lsl #28
     1d8:	2a03e008 	bcs	f8200 <MUSICPLAYER_STATUS_TRACK+0xe8201>
     1dc:	7920d106 	stmvcdb	r0!, {r1, r2, r8, ip, lr, pc}
     1e0:	2dff182d 	ldccsl	8, cr1, [pc, #180]!
     1e4:	25ffd302 	ldrcsb	sp, [pc, #302]!	; 4ee <ply_goto_01+0xc>
     1e8:	70263e01 	eorvc	r3, r6, r1, lsl #28
     1ec:	98067265 	stmlsda	r6, {r0, r2, r5, r6, r9, ip, sp, lr}
     1f0:	300179c0 	andcc	r7, r1, r0, asr #19
     1f4:	09054368 	stmeqdb	r5, {r3, r5, r6, r8, r9, lr}
     1f8:	436878a0 	cmnmi	r8, #10485760
     1fc:	72a00a00 	adcvc	r0, r0, #0
     200:	436878e0 	cmnmi	r8, #14680064
     204:	72e00a00 	rscvc	r0, r0, #0
     208:	40302010 	eormis	r2, r0, r0, lsl r0
     20c:	d0079004 	andle	r9, r7, r4
     210:	30101c18 	andccs	r1, r0, r8, lsl ip
     214:	18406899 	stmneda	r0, {r0, r3, r4, r7, fp, sp, lr}^
     218:	68d89003 	ldmvsia	r8, {r0, r1, ip, pc}^
     21c:	90041a40 	andls	r1, r4, r0, asr #20
     220:	69a29d02 	stmvsib	r2!, {r1, r8, sl, fp, ip, pc}
     224:	a0016aa3 	andge	r6, r1, r3, lsr #21
     228:	00004700 	andeq	r4, r0, r0, lsl #14

0000022c <.toArm020>:
     22c:	e58d8000 	str	r8, [sp]
     230:	e5d4a00a 	ldrb	sl, [r4, #10]
     234:	e1a0a80a 	mov	sl, sl, lsl #16
     238:	e5d4b00b 	ldrb	fp, [r4, #11]
     23c:	e1a0b80b 	mov	fp, fp, lsl #16
     240:	e5d40001 	ldrb	r0, [r4, #1]
     244:	e3100008 	tst	r0, #8
     248:	0a0000d9 	beq	5b4 <ply_voice+0x20>
     24c:	e3520004 	cmp	r2, #4
     250:	da0000ad 	ble	50c <ply_patt+0xc>
     254:	e0522008 	subs	r2, r2, r8
     258:	c3a0e000 	movgt	lr, #0
     25c:	ca00009c 	bgt	4d4 <ld_r3_tp_adr_i>
     260:	e1a0e008 	mov	lr, r8
     264:	e0822008 	add	r2, r2, r8
     268:	e2428004 	sub	r8, r2, #4
     26c:	e04ee008 	sub	lr, lr, r8
     270:	e2122003 	ands	r2, r2, #3
     274:	03a02004 	moveq	r2, #4
     278:	e5956000 	ldr	r6, [r5]
     27c:	e5957630 	ldr	r7, [r5, #1584]
     280:	e0d300d1 	ldrsb	r0, [r3], #1
     284:	e001009a 	mul	r1, sl, r0
     288:	e3c118ff 	bic	r1, r1, #16711680
     28c:	e0816466 	add	r6, r1, r6, ror #8
     290:	e001009b 	mul	r1, fp, r0
     294:	e3c118ff 	bic	r1, r1, #16711680
     298:	e0817467 	add	r7, r1, r7, ror #8
     29c:	e2955101 	adds	r5, r5, #1073741824
     2a0:	3a00009e 	bcc	520 <ply_pend+0x4>
     2a4:	e5857630 	str	r7, [r5, #1584]
     2a8:	e4856004 	str	r6, [r5], #4
     2ac:	e2588004 	subs	r8, r8, #4
     2b0:	ca00009c 	bgt	528 <ply_pend+0xc>
     2b4:	e098800e 	adds	r8, r8, lr
     2b8:	0a0000fe 	beq	6b8 <MPlayMain_rev01+0x1c>
     2bc:	e5956000 	ldr	r6, [r5]
     2c0:	e5957630 	ldr	r7, [r5, #1584]
     2c4:	e0d300d1 	ldrsb	r0, [r3], #1
     2c8:	e001009a 	mul	r1, sl, r0
     2cc:	e3c118ff 	bic	r1, r1, #16711680
     2d0:	e0816466 	add	r6, r1, r6, ror #8
     2d4:	e001009b 	mul	r1, fp, r0
     2d8:	e3c118ff 	bic	r1, r1, #16711680
     2dc:	e0817467 	add	r7, r1, r7, ror #8
     2e0:	e2522001 	subs	r2, r2, #1
     2e4:	0a0000cb 	beq	618 <ply_lfodl+0x4>
     2e8:	e2955101 	adds	r5, r5, #1073741824
     2ec:	3a0000af 	bcc	5b0 <ply_voice+0x1c>
     2f0:	e5857630 	str	r7, [r5, #1584]
     2f4:	e4856004 	str	r6, [r5], #4
     2f8:	e2588004 	subs	r8, r8, #4
     2fc:	ca000091 	bgt	548 <ply_rept+0x18>
     300:	ea0000fe 	b	700 <MPlayMain_rev01+0x64>
     304:	e59d0018 	ldr	r0, [sp, #24]
     308:	e3500000 	cmp	r0, #0
     30c:	0a0000c8 	beq	634 <ply_modt+0x14>
     310:	e59d3014 	ldr	r3, [sp, #20]
     314:	e2629000 	rsb	r9, r2, #0
     318:	e0902002 	adds	r2, r0, r2
     31c:	ca0000f2 	bgt	6ec <MPlayMain_rev01+0x50>
     320:	e0499000 	sub	r9, r9, r0
     324:	ea0000c4 	b	63c <ply_tune+0x4>
     328:	e8bd1010 	ldmia	sp!, {r4, ip}
     32c:	e3a02000 	mov	r2, #0
     330:	ea0000cf 	b	674 <SoundVSync_rev01+0x10>
     334:	e59d2010 	ldr	r2, [sp, #16]
     338:	e3520000 	cmp	r2, #0
     33c:	159d300c 	ldrne	r3, [sp, #12]
     340:	1a0000b8 	bne	628 <ply_modt+0x8>
     344:	e5c42000 	strb	r2, [r4]
     348:	e1a00f25 	mov	r0, r5, lsr #30
     34c:	e3c55103 	bic	r5, r5, #-1073741824
     350:	e2600003 	rsb	r0, r0, #3
     354:	e1a00180 	mov	r0, r0, lsl #3
     358:	e1a06076 	mov	r6, r6, ror r0
     35c:	e1a07077 	mov	r7, r7, ror r0
     360:	e5857630 	str	r7, [r5, #1584]
     364:	e4856004 	str	r6, [r5], #4
     368:	ea000100 	b	770 <MPlayMain_rev01+0xd4>
     36c:	e92d1010 	stmdb	sp!, {r4, ip}
     370:	e594e01c 	ldr	lr, [r4, #28]
     374:	e5941020 	ldr	r1, [r4, #32]
     378:	e004019c 	mul	r4, ip, r1
     37c:	e1d300d0 	ldrsb	r0, [r3]
     380:	e1f310d1 	ldrsb	r1, [r3, #1]!
     384:	e0411000 	sub	r1, r1, r0
     388:	e5956000 	ldr	r6, [r5]
     38c:	e5957630 	ldr	r7, [r5, #1584]
     390:	e009019e 	mul	r9, lr, r1
     394:	e0809bc9 	add	r9, r0, r9, asr #23
     398:	e00c099a 	mul	ip, sl, r9
     39c:	e3ccc8ff 	bic	ip, ip, #16711680
     3a0:	e08c6466 	add	r6, ip, r6, ror #8
     3a4:	e00c099b 	mul	ip, fp, r9
     3a8:	e3ccc8ff 	bic	ip, ip, #16711680
     3ac:	e08c7467 	add	r7, ip, r7, ror #8
     3b0:	e08ee004 	add	lr, lr, r4
     3b4:	e1b09bae 	movs	r9, lr, lsr #23
     3b8:	0a0000f5 	beq	794 <MPlayMain_rev01+0xf8>
     3bc:	e3cee5fe 	bic	lr, lr, #1065353216
     3c0:	e0522009 	subs	r2, r2, r9
     3c4:	da0000bf 	ble	6c8 <MPlayMain_rev01+0x2c>
     3c8:	e2599001 	subs	r9, r9, #1
     3cc:	00800001 	addeq	r0, r0, r1
     3d0:	11b300d9 	ldrnesb	r0, [r3, r9]!
     3d4:	e1f310d1 	ldrsb	r1, [r3, #1]!
     3d8:	e0411000 	sub	r1, r1, r0
     3dc:	e2955101 	adds	r5, r5, #1073741824
     3e0:	3a0000e2 	bcc	770 <MPlayMain_rev01+0xd4>
     3e4:	e5857630 	str	r7, [r5, #1584]
     3e8:	e4856004 	str	r6, [r5], #4
     3ec:	e2588004 	subs	r8, r8, #4
     3f0:	ca0000e0 	bgt	778 <MPlayMain_rev01+0xdc>
     3f4:	e2433001 	sub	r3, r3, #1
     3f8:	e8bd1010 	ldmia	sp!, {r4, ip}
     3fc:	e584e01c 	str	lr, [r4, #28]
     400:	e5842018 	str	r2, [r4, #24]
     404:	e5843028 	str	r3, [r4, #40]
     408:	e59d8000 	ldr	r8, [sp]
     40c:	e28f0001 	add	r0, pc, #1
     410:	e12fff10 	bx	r0

00000414 <.toThumb020>:
     414:	38019801 	stmccda	r1, {r0, fp, ip, pc}
     418:	3440dd01 	strccb	sp, [r0], -#3329
     41c:	9806e686 	stmlsda	r6, {r1, r2, r7, r9, sl, sp, lr, pc}
     420:	60034b04 	andvs	r4, r3, r4, lsl #22
     424:	bcffb007 	ldcltl	0, cr11, [pc], #28
     428:	46894680 	strmi	r4, [r9], r0, lsl #13
     42c:	469b4692 	undefined
     430:	4718bc08 	ldrmi	fp, [r8, -r8, lsl #24]

00000432 <.call_r3>:
     432:	6d534718 	ldcvsl	7, cr4, [r3, -#96]

00000434 <.ie_ID_NUMBER>:
     434:	68736d53 	ldmvsda	r3!, {r0, r1, r4, r6, r8, sl, fp, sp, lr}^

00000438 <Clear64byte>:
     438:	46a4      	46a4	mov	ip, r4
     43a:	2100      	2100	mov	r1, #0
     43c:	2200      	2200	mov	r2, #0
     43e:	2300      	2300	mov	r3, #0
     440:	2400      	2400	mov	r4, #0
     442:	c01e      	c01e	stmia	r0!,{r1, r2, r3, r4}
     444:	c01e      	c01e	stmia	r0!,{r1, r2, r3, r4}
     446:	c01e      	c01e	stmia	r0!,{r1, r2, r3, r4}
     448:	c01e      	c01e	stmia	r0!,{r1, r2, r3, r4}
     44a:	4664      	4664	mov	r4, ip
     44c:	4770      	4770	bx	lr
	...

00000450 <ClearChain>:
     450:	6ac3      	6ac3	ldr	r3, [r0, #44]
     452:	2b00      	2b00	cmp	r3, #0
     454:	d00b      	d00b	beq	46e <ClearChain+0x1e>
     456:	6b41      	6b41	ldr	r1, [r0, #52]
     458:	6b02      	6b02	ldr	r2, [r0, #48]
     45a:	2a00      	2a00	cmp	r2, #0
     45c:	d001      	d001	beq	462 <ClearChain+0x12>
     45e:	6351      	6351	str	r1, [r2, #52]
     460:	e000      	e000	b	464 <ClearChain+0x14>
     462:	6219      	6219	str	r1, [r3, #32]
     464:	2900      	2900	cmp	r1, #0
     466:	d000      	d000	beq	46a <ClearChain+0x1a>
     468:	630a      	630a	str	r2, [r1, #48]
     46a:	2100      	2100	mov	r1, #0
     46c:	62c1      	62c1	str	r1, [r0, #44]
     46e:	4770      	4770	bx	lr

00000470 <ply_fine>:
     470:	b530      	b530	push	{r4, r5, lr}
     472:	1c0d      	1c0d	mov	r5, r1		(add r5, r1, #0)
     474:	6a2c      	6a2c	ldr	r4, [r5, #32]
     476:	2c00      	2c00	cmp	r4, #0
     478:	d00c      	d00c	beq	494 <ply_fine+0x24>
     47a:	7821      	7821	ldrb	r1, [r4, #0]
     47c:	20c7      	20c7	mov	r0, #199
     47e:	4208      	4208	tst	r0, r1
     480:	d002      	d002	beq	488 <ply_fine+0x18>
     482:	2040      	2040	mov	r0, #64
     484:	4301      	4301	orr	r1, r0
     486:	7021      	7021	strb	r1, [r4, #0]
     488:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
     48a:	ffe1f7ff 	f7ff	bl	450 <ClearChain>
     48e:	6b64      	6b64	ldr	r4, [r4, #52]
     490:	2c00      	2c00	cmp	r4, #0
     492:	d1f2      	d1f2	bne	47a <ply_fine+0xa>
     494:	2000      	2000	mov	r0, #0
     496:	7028      	7028	strb	r0, [r5, #0]
     498:	bc30      	bc30	pop	{r4, r5}
     49a:	bc01      	bc01	pop	{r0}
     49c:	4700      	4700	bx	r0
	...

000004a0 <MPlyJmpTblCopy>:
     4a0:	46f4      	46f4	mov	ip, lr
     4a2:	2124      	2124	mov	r1, #36
     4a4:	4a0a      	4a0a	ldr	r2, [pc, #40]	(4d0 <.i_MPlyJmpTbl>)
     4a6:	6813      	6813	ldr	r3, [r2, #0]
     4a8:	f807f000 	f000	bl	4ba <chk_adr_r2>
     4ac:	c008      	c008	stmia	r0!,{r3}
     4ae:	3204      	3204	add	r2, #4
     4b0:	3901      	3901	sub	r1, #1
     4b2:	dcf8      	dcf8	bgt	4a6 <MPlyJmpTblCopy+0x6>
     4b4:	4760      	4760	bx	ip
	...

000004b8 <ldrb_r3_r2>:
     4b8:	7813      	7813	ldrb	r3, [r2, #0]

000004ba <chk_adr_r2>:
     4ba:	b401      	b401	push	{r0}
     4bc:	0e50      	0e50	lsr	r0, r2, #25
     4be:	d105      	d105	bne	4cc <chk_adr_r2+0x12>
     4c0:	4803      	4803	ldr	r0, [pc, #12]	(4d0 <.i_MPlyJmpTbl>)
     4c2:	4282      	4282	cmp	r2, r0
     4c4:	d301      	d301	bcc	4ca <chk_adr_r2+0x10>
     4c6:	0b90      	0b90	lsr	r0, r2, #14
     4c8:	d000      	d000	beq	4cc <chk_adr_r2+0x12>
     4ca:	2300      	2300	mov	r3, #0
     4cc:	bc01      	bc01	pop	{r0}
     4ce:	4770      	4770	bx	lr

000004d0 <.i_MPlyJmpTbl>:
     4d0:	00000000 	andeq	r0, r0, r0

000004d4 <ld_r3_tp_adr_i>:
     4d4:	6c0a      	6c0a	ldr	r2, [r1, #64]

000004d6 <ld_r3_r2_i_sub>:
     4d6:	1c53      	1c53	add	r3, r2, #1
     4d8:	640b      	640b	str	r3, [r1, #64]
     4da:	7813      	7813	ldrb	r3, [r2, #0]
     4dc:	e7ed      	e7ed	b	4ba <chk_adr_r2>
	...

000004e0 <ply_goto>:
     4e0:	b500      	b500	push	{lr}

000004e2 <ply_goto_01>:
     4e2:	78d06c0a 	ldmvcia	r0, {r1, r3, sl, fp, sp, lr}^
     4e6:	78930200 	ldmvcia	r3, {r9}
     4ea:	02004318 	andeq	r4, r0, #1610612736
     4ee:	43187853 	tstmi	r8, #5439488
     4f2:	f7ff0200 	ldrnvb	r0, [pc, r0, lsl #4]!
     4f6:	4318ffe0 	tstmip	r8, #896
     4fa:	bc016408 	stclt	4, cr6, [r1], -#32
     4fe:	788a4700 	stmvcia	sl, {r8, r9, sl, lr}

00000500 <ply_patt>:
     500:	788a      	788a	ldrb	r2, [r1, #2]
     502:	2a03      	2a03	cmp	r2, #3
     504:	d208      	d208	bcs	518 <ply_patt+0x18>
     506:	0092      	0092	lsl	r2, r2, #2
     508:	188b      	188b	add	r3, r1, r2
     50a:	6c0a      	6c0a	ldr	r2, [r1, #64]
     50c:	3204      	3204	add	r2, #4
     50e:	645a      	645a	str	r2, [r3, #68]
     510:	788a      	788a	ldrb	r2, [r1, #2]
     512:	3201      	3201	add	r2, #1
     514:	708a      	708a	strb	r2, [r1, #2]
     516:	e7e3      	e7e3	b	4e0 <ply_goto>
     518:	e7aa      	e7aa	b	470 <ply_fine>
	...

0000051c <ply_pend>:
     51c:	788a      	788a	ldrb	r2, [r1, #2]
     51e:	2a00      	2a00	cmp	r2, #0
     520:	d005      	d005	beq	52e <ply_pend+0x12>
     522:	3a01      	3a01	sub	r2, #1
     524:	708a      	708a	strb	r2, [r1, #2]
     526:	0092      	0092	lsl	r2, r2, #2
     528:	188b      	188b	add	r3, r1, r2
     52a:	6c5a      	6c5a	ldr	r2, [r3, #68]
     52c:	640a      	640a	str	r2, [r1, #64]
     52e:	4770      	4770	bx	lr

00000530 <ply_rept>:
     530:	b500      	b500	push	{lr}
     532:	6c0a      	6c0a	ldr	r2, [r1, #64]
     534:	7813      	7813	ldrb	r3, [r2, #0]
     536:	2b00      	2b00	cmp	r3, #0
     538:	d102      	d102	bne	540 <ply_rept+0x10>
     53a:	3201      	3201	add	r2, #1
     53c:	640a      	640a	str	r2, [r1, #64]
     53e:	e7d0      	e7d0	b	4e2 <ply_goto_01>
     540:	78cb      	78cb	ldrb	r3, [r1, #3]
     542:	3301      	3301	add	r3, #1
     544:	70cb      	70cb	strb	r3, [r1, #3]
     546:	469c      	469c	mov	ip, r3
     548:	ffc4f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     54c:	459c      	459c	cmp	ip, r3
     54e:	d200      	d200	bcs	552 <ply_rept+0x22>
     550:	e7c7      	e7c7	b	4e2 <ply_goto_01>
     552:	2300      	2300	mov	r3, #0
     554:	70cb      	70cb	strb	r3, [r1, #3]
     556:	3205      	3205	add	r2, #5
     558:	640a      	640a	str	r2, [r1, #64]
     55a:	bc01      	bc01	pop	{r0}
     55c:	4700      	4700	bx	r0
	...

00000560 <ply_prio>:
     560:	46f4      	46f4	mov	ip, lr
     562:	ffb7f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     566:	774b      	774b	strb	r3, [r1, #29]
     568:	4760      	4760	bx	ip
	...

0000056c <ply_tempo>:
     56c:	46f4      	46f4	mov	ip, lr
     56e:	ffb1f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     572:	005b      	005b	lsl	r3, r3, #1
     574:	8383      	8383	strh	r3, [r0, #28]
     576:	8bc2      	8bc2	ldrh	r2, [r0, #30]
     578:	4353      	4353	mul	r3, r2
     57a:	0a1b      	0a1b	lsr	r3, r3, #8
     57c:	8403      	8403	strh	r3, [r0, #32]
     57e:	4760      	4760	bx	ip

00000580 <ply_keysh>:
     580:	46f4      	46f4	mov	ip, lr
     582:	ffa7f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     586:	728b      	728b	strb	r3, [r1, #10]
     588:	780b      	780b	ldrb	r3, [r1, #0]
     58a:	220c      	220c	mov	r2, #12
     58c:	4313      	4313	orr	r3, r2
     58e:	700b      	700b	strb	r3, [r1, #0]
     590:	4760      	4760	bx	ip
	...

00000594 <ply_voice>:
     594:	46f4      	46f4	mov	ip, lr
     596:	6c0a      	6c0a	ldr	r2, [r1, #64]
     598:	7813      	7813	ldrb	r3, [r2, #0]
     59a:	3201      	3201	add	r2, #1
     59c:	640a      	640a	str	r2, [r1, #64]
     59e:	005a      	005a	lsl	r2, r3, #1
     5a0:	18d2      	18d2	add	r2, r2, r3
     5a2:	0092      	0092	lsl	r2, r2, #2
     5a4:	6b03      	6b03	ldr	r3, [r0, #48]
     5a6:	18d2      	18d2	add	r2, r2, r3
     5a8:	6813      	6813	ldr	r3, [r2, #0]
     5aa:	ff86f7ff 	f7ff	bl	4ba <chk_adr_r2>
     5ae:	624b      	624b	str	r3, [r1, #36]
     5b0:	6853      	6853	ldr	r3, [r2, #4]
     5b2:	ff82f7ff 	f7ff	bl	4ba <chk_adr_r2>
     5b6:	628b      	628b	str	r3, [r1, #40]
     5b8:	6893      	6893	ldr	r3, [r2, #8]
     5ba:	ff7ef7ff 	f7ff	bl	4ba <chk_adr_r2>
     5be:	62cb      	62cb	str	r3, [r1, #44]
     5c0:	4760      	4760	bx	ip
	...

000005c4 <ply_vol>:
     5c4:	46f4      	46f4	mov	ip, lr
     5c6:	ff85f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     5ca:	748b      	748b	strb	r3, [r1, #18]
     5cc:	780b      	780b	ldrb	r3, [r1, #0]
     5ce:	2203      	2203	mov	r2, #3
     5d0:	4313      	4313	orr	r3, r2
     5d2:	700b      	700b	strb	r3, [r1, #0]
     5d4:	4760      	4760	bx	ip
	...

000005d8 <ply_pan>:
     5d8:	46f4      	46f4	mov	ip, lr
     5da:	ff7bf7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     5de:	3b40      	3b40	sub	r3, #64
     5e0:	750b      	750b	strb	r3, [r1, #20]
     5e2:	780b      	780b	ldrb	r3, [r1, #0]
     5e4:	2203      	2203	mov	r2, #3
     5e6:	4313      	4313	orr	r3, r2
     5e8:	700b      	700b	strb	r3, [r1, #0]
     5ea:	4760      	4760	bx	ip

000005ec <ply_bend>:
     5ec:	46f4      	46f4	mov	ip, lr
     5ee:	ff71f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     5f2:	3b40      	3b40	sub	r3, #64
     5f4:	738b      	738b	strb	r3, [r1, #14]
     5f6:	780b      	780b	ldrb	r3, [r1, #0]
     5f8:	220c      	220c	mov	r2, #12
     5fa:	4313      	4313	orr	r3, r2
     5fc:	700b      	700b	strb	r3, [r1, #0]
     5fe:	4760      	4760	bx	ip

00000600 <ply_bendr>:
     600:	46f4      	46f4	mov	ip, lr
     602:	ff67f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     606:	73cb      	73cb	strb	r3, [r1, #15]
     608:	780b      	780b	ldrb	r3, [r1, #0]
     60a:	220c      	220c	mov	r2, #12
     60c:	4313      	4313	orr	r3, r2
     60e:	700b      	700b	strb	r3, [r1, #0]
     610:	4760      	4760	bx	ip
	...

00000614 <ply_lfodl>:
     614:	46f4      	46f4	mov	ip, lr
     616:	ff5df7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     61a:	76cb      	76cb	strb	r3, [r1, #27]
     61c:	4760      	4760	bx	ip
	...

00000620 <ply_modt>:
     620:	46f4      	46f4	mov	ip, lr
     622:	ff57f7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     626:	7e08      	7e08	ldrb	r0, [r1, #24]
     628:	4298      	4298	cmp	r0, r3
     62a:	d004      	d004	beq	636 <ply_modt+0x16>
     62c:	760b      	760b	strb	r3, [r1, #24]
     62e:	780b      	780b	ldrb	r3, [r1, #0]
     630:	220f      	220f	mov	r2, #15
     632:	4313      	4313	orr	r3, r2
     634:	700b      	700b	strb	r3, [r1, #0]
     636:	4760      	4760	bx	ip

00000638 <ply_tune>:
     638:	46f4      	46f4	mov	ip, lr
     63a:	ff4bf7ff 	f7ff	bl	4d4 <ld_r3_tp_adr_i>
     63e:	3b40      	3b40	sub	r3, #64
     640:	730b      	730b	strb	r3, [r1, #12]
     642:	780b      	780b	ldrb	r3, [r1, #0]
     644:	220c      	220c	mov	r2, #12
     646:	4313      	4313	orr	r3, r2
     648:	700b      	700b	strb	r3, [r1, #0]
     64a:	4760      	4760	bx	ip

0000064c <ply_port>:
     64c:	46f4      	46f4	mov	ip, lr
     64e:	6c0a      	6c0a	ldr	r2, [r1, #64]
     650:	7813      	7813	ldrb	r3, [r2, #0]
     652:	3201      	3201	add	r2, #1
     654:	4802      	4802	ldr	r0, [pc, #8]	(660 <ply_port+0x14>)
     656:	18c0      	18c0	add	r0, r0, r3
     658:	ff3df7ff 	f7ff	bl	4d6 <ld_r3_r2_i_sub>
     65c:	7003      	7003	strb	r3, [r0, #0]
     65e:	4760      	4760	bx	ip
     660:	0060      	0060	lsl	r0, r4, #1
     662:	0400      	0400	lsl	r0, r0, #16

00000664 <SoundVSync_rev01>:
     664:	48a6      	48a6	ldr	r0, [pc, #664]	(900 <.i2_SOUND_AREA_ADR>)
     666:	6800      	6800	ldr	r0, [r0, #0]
     668:	4aa6      	4aa6	ldr	r2, [pc, #664]	(904 <.i2_ID_NUMBER>)
     66a:	6803      	6803	ldr	r3, [r0, #0]
     66c:	1a9b      	1a9b	sub	r3, r3, r2
     66e:	2b01      	2b01	cmp	r3, #1
     670:	d80e      	d80e	bhi	690 <SoundVSync_rev01+0x2c>
     672:	7901      	7901	ldrb	r1, [r0, #4]
     674:	3901      	3901	sub	r1, #1
     676:	7101      	7101	strb	r1, [r0, #4]
     678:	dc0a      	dc0a	bgt	690 <SoundVSync_rev01+0x2c>
     67a:	7ac1      	7ac1	ldrb	r1, [r0, #11]
     67c:	7101      	7101	strb	r1, [r0, #4]
     67e:	2000      	2000	mov	r0, #0
     680:	21b6      	21b6	mov	r1, #182
     682:	0209      	0209	lsl	r1, r1, #8
     684:	4a03      	4a03	ldr	r2, [pc, #12]	(694 <.i_DMA1CNT_H>)
     686:	4b04      	4b04	ldr	r3, [pc, #16]	(698 <.i_DMA2CNT_H>)
     688:	8010      	8010	strh	r0, [r2, #0]
     68a:	8018      	8018	strh	r0, [r3, #0]
     68c:	8011      	8011	strh	r1, [r2, #0]
     68e:	8019      	8019	strh	r1, [r3, #0]
     690:	4770      	4770	bx	lr
	...

00000694 <.i_DMA1CNT_H>:
     694:	040000c6 	streq	r0, [r0], -#198

00000698 <.i_DMA2CNT_H>:
     698:	040000d2 	streq	r0, [r0], -#210

0000069c <MPlayMain_rev01>:
     69c:	4a99      	4a99	ldr	r2, [pc, #612]	(904 <.i2_ID_NUMBER>)
     69e:	6b43      	6b43	ldr	r3, [r0, #52]
     6a0:	429a      	429a	cmp	r2, r3
     6a2:	d000      	d000	beq	6a6 <MPlayMain_rev01+0xa>
     6a4:	4770      	4770	bx	lr
     6a6:	3301      	3301	add	r3, #1
     6a8:	6343      	6343	str	r3, [r0, #52]
     6aa:	b501      	b501	push	{r0, lr}
     6ac:	6b83      	6b83	ldr	r3, [r0, #56]
     6ae:	2b00      	2b00	cmp	r3, #0
     6b0:	d002      	d002	beq	6b8 <MPlayMain_rev01+0x1c>
     6b2:	6bc0      	6bc0	ldr	r0, [r0, #60]
     6b4:	f920f000 	f000	bl	8f8 <.call_r3_rev>
     6b8:	bc01      	bc01	pop	{r0}
     6ba:	b4f0      	b4f0	push	{r4, r5, r6, r7}
     6bc:	4644      	4644	mov	r4, r8
     6be:	464d      	464d	mov	r5, r9
     6c0:	4656      	4656	mov	r6, sl
     6c2:	465f      	465f	mov	r7, fp
     6c4:	b4f0      	b4f0	push	{r4, r5, r6, r7}
     6c6:	1c07      	1c07	mov	r7, r0		(add r7, r0, #0)
     6c8:	6878      	6878	ldr	r0, [r7, #4]
     6ca:	2800      	2800	cmp	r0, #0
     6cc:	da00      	da00	bge	6d0 <MPlayMain_rev01+0x34>
     6ce:	e10b      	e10b	b	8e8 <.pause>
     6d0:	488b      	488b	ldr	r0, [pc, #556]	(900 <.i2_SOUND_AREA_ADR>)
     6d2:	6800      	6800	ldr	r0, [r0, #0]
     6d4:	4680      	4680	mov	r8, r0
     6d6:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
     6d8:	fef0f000 	f000	bl	14bc <FadeOutBody_rev01>
     6dc:	8c78      	8c78	ldrh	r0, [r7, #34]
     6de:	8c39      	8c39	ldrh	r1, [r7, #32]
     6e0:	1840      	1840	add	r0, r0, r1
     6e2:	e0a3      	e0a3	b	82c <.next_trk+0x28>
     6e4:	7a3e      	7a3e	ldrb	r6, [r7, #8]
     6e6:	6afd      	6afd	ldr	r5, [r7, #44]
     6e8:	2301      	2301	mov	r3, #1
     6ea:	2400      	2400	mov	r4, #0
     6ec:	7828      	7828	ldrb	r0, [r5, #0]
     6ee:	2180      	2180	mov	r1, #128
     6f0:	4201      	4201	tst	r1, r0
     6f2:	d100      	d100	bne	6f6 <MPlayMain_rev01+0x5a>
     6f4:	e088      	e088	b	808 <.next_trk+0x4>
     6f6:	469a      	469a	mov	sl, r3
     6f8:	431c      	431c	orr	r4, r3
     6fa:	46a3      	46a3	mov	fp, r4
     6fc:	6a2c      	6a2c	ldr	r4, [r5, #32]
     6fe:	2c00      	2c00	cmp	r4, #0
     700:	d013      	d013	beq	72a <MPlayMain_rev01+0x8e>
     702:	7821      	7821	ldrb	r1, [r4, #0]
     704:	20c7      	20c7	mov	r0, #199
     706:	4208      	4208	tst	r0, r1
     708:	d009      	d009	beq	71e <MPlayMain_rev01+0x82>
     70a:	7c20      	7c20	ldrb	r0, [r4, #16]
     70c:	2800      	2800	cmp	r0, #0
     70e:	d009      	d009	beq	724 <MPlayMain_rev01+0x88>
     710:	3801      	3801	sub	r0, #1
     712:	7420      	7420	strb	r0, [r4, #16]
     714:	d106      	d106	bne	724 <MPlayMain_rev01+0x88>
     716:	2040      	2040	mov	r0, #64
     718:	4301      	4301	orr	r1, r0
     71a:	7021      	7021	strb	r1, [r4, #0]
     71c:	e002      	e002	b	724 <MPlayMain_rev01+0x88>
     71e:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
     720:	fc92f000 	f000	bl	1048 <ClearChain_rev>
     724:	6b64      	6b64	ldr	r4, [r4, #52]
     726:	2c00      	2c00	cmp	r4, #0
     728:	d1eb      	d1eb	bne	702 <MPlayMain_rev01+0x66>
     72a:	782b      	782b	ldrb	r3, [r5, #0]
     72c:	2040      	2040	mov	r0, #64
     72e:	4218      	4218	tst	r0, r3
     730:	d03a      	d03a	beq	7a8 <MPlayMain_rev01+0x10c>
     732:	1c28      	1c28	mov	r0, r5		(add r0, r5, #0)
     734:	fc92f000 	f000	bl	105c <Clear64byte_rev>
     738:	2080      	2080	mov	r0, #128
     73a:	7028      	7028	strb	r0, [r5, #0]
     73c:	2002      	2002	mov	r0, #2
     73e:	73e8      	73e8	strb	r0, [r5, #15]
     740:	2040      	2040	mov	r0, #64
     742:	74e8      	74e8	strb	r0, [r5, #19]
     744:	2016      	2016	mov	r0, #22
     746:	7668      	7668	strb	r0, [r5, #25]
     748:	2001      	2001	mov	r0, #1
     74a:	1da9      	1da9	add	r1, r5, #6
     74c:	7788      	7788	strb	r0, [r1, #30]
     74e:	e02b      	e02b	b	7a8 <MPlayMain_rev01+0x10c>
     750:	6c2a      	6c2a	ldr	r2, [r5, #64]
     752:	7811      	7811	ldrb	r1, [r2, #0]
     754:	2980      	2980	cmp	r1, #128
     756:	d201      	d201	bcs	75c <MPlayMain_rev01+0xc0>
     758:	79e9      	79e9	ldrb	r1, [r5, #7]
     75a:	e004      	e004	b	766 <MPlayMain_rev01+0xca>
     75c:	3201      	3201	add	r2, #1
     75e:	642a      	642a	str	r2, [r5, #64]
     760:	29bd      	29bd	cmp	r1, #189
     762:	d300      	d300	bcc	766 <MPlayMain_rev01+0xca>
     764:	71e9      	71e9	strb	r1, [r5, #7]
     766:	29cf      	29cf	cmp	r1, #207
     768:	d308      	d308	bcc	77c <MPlayMain_rev01+0xe0>
     76a:	4640      	4640	mov	r0, r8
     76c:	6b83      	6b83	ldr	r3, [r0, #56]
     76e:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     770:	38cf      	38cf	sub	r0, #207
     772:	1c39      	1c39	mov	r1, r7		(add r1, r7, #0)
     774:	1c2a      	1c2a	mov	r2, r5		(add r2, r5, #0)
     776:	f8bff000 	f000	bl	8f8 <.call_r3_rev>
     77a:	e015      	e015	b	7a8 <MPlayMain_rev01+0x10c>
     77c:	29b0      	29b0	cmp	r1, #176
     77e:	d90e      	d90e	bls	79e <MPlayMain_rev01+0x102>
     780:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     782:	38b1      	38b1	sub	r0, #177
     784:	72b8      	72b8	strb	r0, [r7, #10]
     786:	4643      	4643	mov	r3, r8
     788:	6b5b      	6b5b	ldr	r3, [r3, #52]
     78a:	0080      	0080	lsl	r0, r0, #2
     78c:	581b      	581b	ldr	r3, [r3, r0]
     78e:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
     790:	1c29      	1c29	mov	r1, r5		(add r1, r5, #0)
     792:	f8b1f000 	f000	bl	8f8 <.call_r3_rev>
     796:	7828      	7828	ldrb	r0, [r5, #0]
     798:	2800      	2800	cmp	r0, #0
     79a:	d033      	d033	beq	804 <.next_trk>
     79c:	e004      	e004	b	7a8 <MPlayMain_rev01+0x10c>
     79e:	4857      	4857	ldr	r0, [pc, #348]	(8fc <.i_clock_tbl>)
     7a0:	3980      	3980	sub	r1, #128
     7a2:	1809      	1809	add	r1, r1, r0
     7a4:	7808      	7808	ldrb	r0, [r1, #0]
     7a6:	7068      	7068	strb	r0, [r5, #1]
     7a8:	7868      	7868	ldrb	r0, [r5, #1]
     7aa:	2800      	2800	cmp	r0, #0
     7ac:	d0d0      	d0d0	beq	750 <MPlayMain_rev01+0xb4>
     7ae:	3801      	3801	sub	r0, #1
     7b0:	7068      	7068	strb	r0, [r5, #1]
     7b2:	7e69      	7e69	ldrb	r1, [r5, #25]
     7b4:	2900      	2900	cmp	r1, #0
     7b6:	d025      	d025	beq	804 <.next_trk>
     7b8:	7de8      	7de8	ldrb	r0, [r5, #23]
     7ba:	2800      	2800	cmp	r0, #0
     7bc:	d022      	d022	beq	804 <.next_trk>
     7be:	7f28      	7f28	ldrb	r0, [r5, #28]
     7c0:	2800      	2800	cmp	r0, #0
     7c2:	d002      	d002	beq	7ca <MPlayMain_rev01+0x12e>
     7c4:	3801      	3801	sub	r0, #1
     7c6:	7728      	7728	strb	r0, [r5, #28]
     7c8:	e01c      	e01c	b	804 <.next_trk>
     7ca:	7ea8      	7ea8	ldrb	r0, [r5, #26]
     7cc:	1840      	1840	add	r0, r0, r1
     7ce:	76a8      	76a8	strb	r0, [r5, #26]
     7d0:	1c01      	1c01	mov	r1, r0		(add r1, r0, #0)
     7d2:	3840      	3840	sub	r0, #64
     7d4:	0600      	0600	lsl	r0, r0, #24
     7d6:	d502      	d502	bpl	7de <MPlayMain_rev01+0x142>
     7d8:	060a      	060a	lsl	r2, r1, #24
     7da:	1612      	1612	asr	r2, r2, #24
     7dc:	e001      	e001	b	7e2 <MPlayMain_rev01+0x146>
     7de:	2080      	2080	mov	r0, #128
     7e0:	1a42      	1a42	sub	r2, r0, r1
     7e2:	7de8      	7de8	ldrb	r0, [r5, #23]
     7e4:	4350      	4350	mul	r0, r2
     7e6:	1182      	1182	asr	r2, r0, #6
     7e8:	7da8      	7da8	ldrb	r0, [r5, #22]
     7ea:	4050      	4050	eor	r0, r2
     7ec:	0600      	0600	lsl	r0, r0, #24
     7ee:	d009      	d009	beq	804 <.next_trk>
     7f0:	75aa      	75aa	strb	r2, [r5, #22]
     7f2:	7828      	7828	ldrb	r0, [r5, #0]
     7f4:	7e29      	7e29	ldrb	r1, [r5, #24]
     7f6:	2900      	2900	cmp	r1, #0
     7f8:	d101      	d101	bne	7fe <MPlayMain_rev01+0x162>
     7fa:	210c      	210c	mov	r1, #12
     7fc:	e000      	e000	b	800 <MPlayMain_rev01+0x164>
     7fe:	2103      	2103	mov	r1, #3
     800:	4308      	4308	orr	r0, r1
     802:	7028      	7028	strb	r0, [r5, #0]

00000804 <.next_trk>:
     804:	465c4653 	undefined
     808:	dd033e01 	stcle	14, cr3, [r3, -#4]
     80c:	182d2050 	stmneda	sp!, {r4, r6, sp}
     810:	e76b005b 	undefined
     814:	300168f8 	strccsh	r6, [r1], -r8
     818:	2c0060f8 	stccs	0, cr6, [r0], -#992
     81c:	2080d103 	addcs	sp, r0, r3, lsl #2
     820:	60780600 	rsbvss	r0, r8, r0, lsl #12
     824:	607ce060 	rsbvss	lr, ip, r0, rrx
     828:	38968c78 	ldmccia	r6, {r3, r4, r5, r6, sl, fp, pc}
     82c:	28968478 	ldmcsia	r6, {r3, r4, r5, r6, sl, pc}
     830:	e757d300 	ldrb	sp, [r7, -r0, lsl #6]
     834:	6afd7a3a 	bvs	fff5f124 <MUSICPLAYER_STATUS_PAUSE+0x7ff5f124>
     838:	21807828 	orrcs	r7, r0, r8, lsr #16
     83c:	d04e4201 	suble	r4, lr, r1, lsl #4
     840:	4201210f 	andmi	r2, r1, #-1073741821
     844:	4691d04b 	ldrmi	sp, [r1], fp, asr #32
     848:	1c291c38 	stcne	12, cr1, [r9], -#224
     84c:	fe76f000 	cdpnv	0, 7, cr15, cr6, cr0, {0}
     850:	2c006a2c 	stccs	10, cr6, [r0], -#176
     854:	7821d03e 	stmvcda	r1!, {r1, r2, r3, r4, r5, ip, lr, pc}
     858:	420820c7 	andmi	r2, r8, #199
     85c:	1c20d103 	stfned	f5, [r0], -#12
     860:	fbf2f000 	blnv	ffcbc868 <MUSICPLAYER_STATUS_PAUSE+0x7fcbc868>
     864:	7860e033 	stmvcda	r0!, {r0, r1, r4, r5, sp, lr, pc}^
     868:	40062607 	andmi	r2, r6, r7, lsl #12
     86c:	2003782b 	andcs	r7, r3, fp, lsr #16
     870:	d00e4218 	andle	r4, lr, r8, lsl r2
     874:	7c287ca1 	stcvc	12, cr7, [r8], -#644
     878:	11c04348 	bicne	r4, r0, r8, asr #6
     87c:	7c6870a0 	stcvcl	0, cr7, [r8], -#640
     880:	11c04348 	bicne	r4, r0, r8, asr #6
     884:	2e0070e0 	cdpcs	0, 0, cr7, cr0, cr0, {7}
     888:	7f60d003 	swivc	0x0060d003
     88c:	43082101 	tstmi	r8, #1073741824
     890:	200c7760 	andcs	r7, ip, r0, ror #14
     894:	d01a4218 	andles	r4, sl, r8, lsl r2
     898:	20087a21 	andcs	r7, r8, r1, lsr #20
     89c:	180a5628 	stmneda	sl, {r3, r5, r9, sl, ip, lr}
     8a0:	2200d500 	andcs	sp, r0, #0
     8a4:	d00c2e00 	andle	r2, ip, r0, lsl #28
     8a8:	6b034640 	blvs	d21b0 <MUSICPLAYER_STATUS_TRACK+0xc21b1>
     8ac:	7a6a1c11 	bvc	1a878f8 <MUSICPLAYER_STATUS_TRACK+0x1a778f9>
     8b0:	f0001c30 	andnv	r1, r0, r0, lsr ip
     8b4:	6220f821 	eorvs	pc, r0, #2162688
     8b8:	21027f60 	tstcs	r2, r0, ror #30
     8bc:	77604308 	strvcb	r4, [r0, -r8, lsl #6]!
     8c0:	1c11e005 	ldcne	0, cr14, [r1], -#20
     8c4:	6a607a6a 	bvs	181f274 <MUSICPLAYER_STATUS_TRACK+0x180f275>
     8c8:	f994f000 	ldmnvib	r4, {ip, sp, lr, pc}
     8cc:	6b646220 	blvs	1919154 <MUSICPLAYER_STATUS_TRACK+0x1909155>
     8d0:	d1c02c00 	bicle	r2, r0, r0, lsl #24
     8d4:	21f07828 	mvncss	r7, r8, lsr #16
     8d8:	70284008 	eorvc	r4, r8, r8
     8dc:	3a01464a 	bcc	5220c <MUSICPLAYER_STATUS_TRACK+0x4220d>
     8e0:	2050dd02 	subcss	sp, r0, r2, lsl #26
     8e4:	dca7182d 	stcle	8, cr1, [r7], #180

000008e8 <.pause>:
     8e8:	63784806 	cmnvs	r8, #393216
     8ec:	4680bcff 	undefined
     8f0:	46924689 	ldrmi	r4, [r2], r9, lsl #13
     8f4:	bc08469b 	stclt	6, cr4, [r8], -#620

000008f8 <.call_r3_rev>:
     8f8:	00004718 	andeq	r4, r0, r8, lsl r7

000008fc <.i_clock_tbl>:
     8fc:	00000000 	andeq	r0, r0, r0

00000900 <.i2_SOUND_AREA_ADR>:
     900:	03007ff0 	tsteq	r0, #960

00000904 <.i2_ID_NUMBER>:
     904:	68736d53 	ldmvsda	r3!, {r0, r1, r4, r6, r8, sl, fp, sp, lr}^

00000908 <TrackStop_rev01>:
     908:	b570      	b570	push	{r4, r5, r6, lr}
     90a:	1c0d      	1c0d	mov	r5, r1		(add r5, r1, #0)
     90c:	7829      	7829	ldrb	r1, [r5, #0]
     90e:	2080      	2080	mov	r0, #128
     910:	4208      	4208	tst	r0, r1
     912:	d015      	d015	beq	940 <TrackStop_rev01+0x38>
     914:	6a2c      	6a2c	ldr	r4, [r5, #32]
     916:	2c00      	2c00	cmp	r4, #0
     918:	d011      	d011	beq	93e <TrackStop_rev01+0x36>
     91a:	2600      	2600	mov	r6, #0
     91c:	7820      	7820	ldrb	r0, [r4, #0]
     91e:	2800      	2800	cmp	r0, #0
     920:	d009      	d009	beq	936 <TrackStop_rev01+0x2e>
     922:	7860      	7860	ldrb	r0, [r4, #1]
     924:	2307      	2307	mov	r3, #7
     926:	4018      	4018	and	r0, r3
     928:	d004      	d004	beq	934 <TrackStop_rev01+0x2c>
     92a:	4b07      	4b07	ldr	r3, [pc, #28]	(948 <.i4_SOUND_AREA_ADR>)
     92c:	681b      	681b	ldr	r3, [r3, #0]
     92e:	6adb      	6adb	ldr	r3, [r3, #44]
     930:	ffe2f7ff 	f7ff	bl	8f8 <.call_r3_rev>
     934:	7026      	7026	strb	r6, [r4, #0]
     936:	62e6      	62e6	str	r6, [r4, #44]
     938:	6b64      	6b64	ldr	r4, [r4, #52]
     93a:	2c00      	2c00	cmp	r4, #0
     93c:	d1ee      	d1ee	bne	91c <TrackStop_rev01+0x14>
     93e:	622c      	622c	str	r4, [r5, #32]
     940:	bc70      	bc70	pop	{r4, r5, r6}
     942:	bc01      	bc01	pop	{r0}
     944:	4700      	4700	bx	r0
	...

00000948 <.i4_SOUND_AREA_ADR>:
     948:	03007ff0 	tsteq	r0, #960

0000094c <ply_note_rev01>:
     94c:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
     94e:	4644      	4644	mov	r4, r8
     950:	464d      	464d	mov	r5, r9
     952:	4656      	4656	mov	r6, sl
     954:	465f      	465f	mov	r7, fp
     956:	b4f0      	b4f0	push	{r4, r5, r6, r7}
     958:	b086      	b086	sub	sp, #24
     95a:	9100      	9100	str	r1, [sp, #0]
     95c:	1c15      	1c15	mov	r5, r2		(add r5, r2, #0)
     95e:	497f      	497f	ldr	r1, [pc, #508]	(b5c <.i3_SOUND_AREA_ADR>)
     960:	6809      	6809	ldr	r1, [r1, #0]
     962:	9101      	9101	str	r1, [sp, #4]
     964:	497e      	497e	ldr	r1, [pc, #504]	(b60 <.i2_clock_tbl>)
     966:	1840      	1840	add	r0, r0, r1
     968:	7800      	7800	ldrb	r0, [r0, #0]
     96a:	7128      	7128	strb	r0, [r5, #4]
     96c:	6c2b      	6c2b	ldr	r3, [r5, #64]
     96e:	7818      	7818	ldrb	r0, [r3, #0]
     970:	2880      	2880	cmp	r0, #128
     972:	d20e      	d20e	bcs	992 <ply_note_rev01+0x46>
     974:	7168      	7168	strb	r0, [r5, #5]
     976:	3301      	3301	add	r3, #1
     978:	7818      	7818	ldrb	r0, [r3, #0]
     97a:	2880      	2880	cmp	r0, #128
     97c:	d208      	d208	bcs	990 <ply_note_rev01+0x44>
     97e:	71a8      	71a8	strb	r0, [r5, #6]
     980:	3301      	3301	add	r3, #1
     982:	7818      	7818	ldrb	r0, [r3, #0]
     984:	2880      	2880	cmp	r0, #128
     986:	d203      	d203	bcs	990 <ply_note_rev01+0x44>
     988:	7929      	7929	ldrb	r1, [r5, #4]
     98a:	1809      	1809	add	r1, r1, r0
     98c:	7129      	7129	strb	r1, [r5, #4]
     98e:	3301      	3301	add	r3, #1
     990:	642b      	642b	str	r3, [r5, #64]
     992:	2000      	2000	mov	r0, #0
     994:	9005      	9005	str	r0, [sp, #20]
     996:	1c2c      	1c2c	mov	r4, r5		(add r4, r5, #0)
     998:	3424      	3424	add	r4, #36
     99a:	7822      	7822	ldrb	r2, [r4, #0]
     99c:	20c0      	20c0	mov	r0, #192
     99e:	4210      	4210	tst	r0, r2
     9a0:	d01e      	d01e	beq	9e0 <ply_note_rev01+0x94>
     9a2:	796b      	796b	ldrb	r3, [r5, #5]
     9a4:	2040      	2040	mov	r0, #64
     9a6:	4210      	4210	tst	r0, r2
     9a8:	d003      	d003	beq	9b2 <ply_note_rev01+0x66>
     9aa:	6ae9      	6ae9	ldr	r1, [r5, #44]
     9ac:	18c9      	18c9	add	r1, r1, r3
     9ae:	7808      	7808	ldrb	r0, [r1, #0]
     9b0:	e000      	e000	b	9b4 <ply_note_rev01+0x68>
     9b2:	1c18      	1c18	mov	r0, r3		(add r0, r3, #0)
     9b4:	0041      	0041	lsl	r1, r0, #1
     9b6:	1809      	1809	add	r1, r1, r0
     9b8:	0089      	0089	lsl	r1, r1, #2
     9ba:	6aa8      	6aa8	ldr	r0, [r5, #40]
     9bc:	1809      	1809	add	r1, r1, r0
     9be:	4689      	4689	mov	r9, r1
     9c0:	464e      	464e	mov	r6, r9
     9c2:	7831      	7831	ldrb	r1, [r6, #0]
     9c4:	20c0      	20c0	mov	r0, #192
     9c6:	4208      	4208	tst	r0, r1
     9c8:	d000      	d000	beq	9cc <ply_note_rev01+0x80>
     9ca:	e0bf      	e0bf	b	b4c <.NoTone>
     9cc:	2080      	2080	mov	r0, #128
     9ce:	4210      	4210	tst	r0, r2
     9d0:	d008      	d008	beq	9e4 <ply_note_rev01+0x98>
     9d2:	78f1      	78f1	ldrb	r1, [r6, #3]
     9d4:	2080      	2080	mov	r0, #128
     9d6:	4208      	4208	tst	r0, r1
     9d8:	d000      	d000	beq	9dc <ply_note_rev01+0x90>
     9da:	9105      	9105	str	r1, [sp, #20]
     9dc:	7873      	7873	ldrb	r3, [r6, #1]
     9de:	e001      	e001	b	9e4 <ply_note_rev01+0x98>
     9e0:	46a1      	46a1	mov	r9, r4
     9e2:	796b      	796b	ldrb	r3, [r5, #5]
     9e4:	9302      	9302	str	r3, [sp, #8]
     9e6:	9e00      	9e00	ldr	r6, [sp, #0]
     9e8:	7a71      	7a71	ldrb	r1, [r6, #9]
     9ea:	7f68      	7f68	ldrb	r0, [r5, #29]
     9ec:	1840      	1840	add	r0, r0, r1
     9ee:	28ff      	28ff	cmp	r0, #255
     9f0:	d900      	d900	bls	9f4 <ply_note_rev01+0xa8>
     9f2:	20ff      	20ff	mov	r0, #255
     9f4:	9004      	9004	str	r0, [sp, #16]
     9f6:	464e      	464e	mov	r6, r9
     9f8:	7830      	7830	ldrb	r0, [r6, #0]
     9fa:	2607      	2607	mov	r6, #7
     9fc:	4006      	4006	and	r6, r0
     9fe:	9603      	9603	str	r6, [sp, #12]
     a00:	d018      	d018	beq	a34 <ply_note_rev01+0xe8>
     a02:	9801      	9801	ldr	r0, [sp, #4]
     a04:	69c4      	69c4	ldr	r4, [r0, #28]
     a06:	2c00      	2c00	cmp	r4, #0
     a08:	d100      	d100	bne	a0c <ply_note_rev01+0xc0>
     a0a:	e09f      	e09f	b	b4c <.NoTone>
     a0c:	3e01      	3e01	sub	r6, #1
     a0e:	01b0      	01b0	lsl	r0, r6, #6
     a10:	1824      	1824	add	r4, r4, r0
     a12:	7821      	7821	ldrb	r1, [r4, #0]
     a14:	20c7      	20c7	mov	r0, #199
     a16:	4208      	4208	tst	r0, r1
     a18:	d036      	d036	beq	a88 <.SetChn>
     a1a:	2040      	2040	mov	r0, #64
     a1c:	4208      	4208	tst	r0, r1
     a1e:	d133      	d133	bne	a88 <.SetChn>
     a20:	7ce1      	7ce1	ldrb	r1, [r4, #19]
     a22:	9804      	9804	ldr	r0, [sp, #16]
     a24:	4281      	4281	cmp	r1, r0
     a26:	d32f      	d32f	bcc	a88 <.SetChn>
     a28:	d000      	d000	beq	a2c <ply_note_rev01+0xe0>
     a2a:	e08f      	e08f	b	b4c <.NoTone>
     a2c:	6ae0      	6ae0	ldr	r0, [r4, #44]
     a2e:	42a8      	42a8	cmp	r0, r5
     a30:	d22a      	d22a	bcs	a88 <.SetChn>
     a32:	e08b      	e08b	b	b4c <.NoTone>
     a34:	9e04      	9e04	ldr	r6, [sp, #16]
     a36:	1c2f      	1c2f	mov	r7, r5		(add r7, r5, #0)
     a38:	2200      	2200	mov	r2, #0
     a3a:	4690      	4690	mov	r8, r2
     a3c:	9c01      	9c01	ldr	r4, [sp, #4]
     a3e:	79a3      	79a3	ldrb	r3, [r4, #6]
     a40:	3450      	3450	add	r4, #80
     a42:	7821      	7821	ldrb	r1, [r4, #0]
     a44:	20c7      	20c7	mov	r0, #199
     a46:	4208      	4208	tst	r0, r1
     a48:	d01e      	d01e	beq	a88 <.SetChn>
     a4a:	2040      	2040	mov	r0, #64
     a4c:	4208      	4208	tst	r0, r1
     a4e:	d005      	d005	beq	a5c <ply_note_rev01+0x110>
     a50:	2a00      	2a00	cmp	r2, #0
     a52:	d105      	d105	bne	a60 <.ChkPrTp>
     a54:	3201      	3201	add	r2, #1
     a56:	7ce6      	7ce6	ldrb	r6, [r4, #19]
     a58:	6ae7      	6ae7	ldr	r7, [r4, #44]
     a5a:	e00e      	e00e	b	a7a <.SetMinCp>
     a5c:	2a00      	2a00	cmp	r2, #0
     a5e:	d10d      	d10d	bne	a7c <.SetMinCp+0x2>

00000a60 <.ChkPrTp>:
     a60:	42b07ce0 	adcmis	r7, r0, #57344
     a64:	1c06d202 	sfmne	f5, 1, [r6], -#8
     a68:	e0066ae7 	and	r6, r6, r7, ror #21
     a6c:	6ae0d806 	bvs	ff836a8c <MUSICPLAYER_STATUS_PAUSE+0x7f836a8c>
     a70:	d90142b8 	stmledb	r1, {r3, r4, r5, r7, r9, lr}
     a74:	e0001c07 	and	r1, r0, r7, lsl #24
     a78:	46a0d300 	strmit	sp, [r0], r0, lsl #6

00000a7a <.SetMinCp>:
     a7a:	344046a0 	strccb	r4, [r0], -#1696
     a7e:	dcdf3b01 	ldclel	11, cr3, [pc], #4
     a82:	2c004644 	stccs	6, cr4, [r0], -#272
     a86:	1c20d061 	stcne	0, cr13, [r0], -#388

00000a88 <.SetChn>:
     a88:	f0001c20 	andnv	r1, r0, r0, lsr #24
     a8c:	2100fadd 	strcssb	pc, [r0, -sp]
     a90:	6a2b6321 	bvs	ad971c <MUSICPLAYER_STATUS_TRACK+0xac971d>
     a94:	2b006363 	blcs	19828 <MUSICPLAYER_STATUS_TRACK+0x9829>
     a98:	631cd000 	tstvs	ip, #0
     a9c:	62e5622c 	rscvs	r6, r5, #-1073741822
     aa0:	77287ee8 	strvc	r7, [r8, -r8, ror #29]!
     aa4:	d0024288 	andle	r4, r2, r8, lsl #5
     aa8:	f0001c29 	andnv	r1, r0, r9, lsr #24
     aac:	9905f87b 	stmlsdb	r5, {r0, r1, r3, r4, r5, r6, fp, ip, sp, lr, pc}
     ab0:	d0062900 	andle	r2, r6, r0, lsl #18
     ab4:	004939c0 	subeq	r3, r9, r0, asr #19
     ab8:	78287569 	stmvcda	r8!, {r0, r3, r5, r6, r8, sl, ip, sp, lr}
     abc:	43082103 	tstmi	r8, #-1073741824
     ac0:	98007028 	stmlsda	r0, {r3, r5, ip, sp, lr}
     ac4:	f0001c29 	andnv	r1, r0, r9, lsr #24
     ac8:	6868fd39 	stmvsda	r8!, {r0, r3, r4, r5, r8, sl, fp, ip, sp, lr, pc}^
     acc:	98046120 	stmlsda	r4, {r5, r8, sp, lr}
     ad0:	980274e0 	stmlsda	r2, {r5, r6, r7, sl, ip, sp, lr}
     ad4:	464e7220 	strmib	r7, [lr], -r0, lsr #4
     ad8:	70607830 	rsbvc	r7, r0, r0, lsr r8
     adc:	62676877 	rsbvs	r6, r7, #7798784
     ae0:	606068b0 	strvsh	r6, [r0], -#128
     ae4:	81a08be8 	movhi	r8, r8, ror #23
     ae8:	7c287ca1 	stcvc	12, cr7, [r8], -#644
     aec:	11c04348 	bicne	r4, r0, r8, asr #6
     af0:	7c6870a0 	stcvcl	0, cr7, [r8], -#640
     af4:	11c04348 	bicne	r4, r0, r8, asr #6
     af8:	7a2170e0 	bvc	85ce80 <MUSICPLAYER_STATUS_TRACK+0x84ce81>
     afc:	56282008 	strplt	r2, [r8], -r8
     b00:	d500180b 	strle	r1, [r0, -#2059]
     b04:	9e032300 	cdpls	3, 0, cr2, cr3, cr0, {0}
     b08:	d0132e00 	andles	r2, r3, r0, lsl #28
     b0c:	78b0464e 	ldmvcia	r0!, {r1, r2, r3, r6, r9, sl, lr}
     b10:	78f177a0 	ldmvcia	r1!, {r5, r7, r8, r9, sl, ip, sp, lr}^
     b14:	42082080 	andmi	r2, r8, #128
     b18:	2070d102 	rsbcss	sp, r0, r2, lsl #2
     b1c:	d1004208 	tstle	r0, r8, lsl #4
     b20:	77e12108 	strvcb	r2, [r1, r8, lsl #2]!
     b24:	1c197a6a 	ldcne	10, cr7, [r9], -#424
     b28:	9b019803 	blls	66b3c <MUSICPLAYER_STATUS_TRACK+0x56b3d>
     b2c:	f7ff6b1b 	undefined
     b30:	e004fee3 	and	pc, r4, r3, ror #29
     b34:	1c197a6a 	ldcne	10, cr7, [r9], -#424
     b38:	f0001c38 	andnv	r1, r0, r8, lsr ip
     b3c:	6220f85b 	eorvs	pc, r0, #5963776
     b40:	70202080 	eorvc	r2, r0, r0, lsl #1
     b44:	20f07829 	rsccss	r7, r0, r9, lsr #16
     b48:	70284008 	eorvc	r4, r8, r8

00000b4c <.NoTone>:
     b4c:	bcffb006 	ldcltl	0, cr11, [pc], #24
     b50:	46894680 	strmi	r4, [r9], r0, lsl #13
     b54:	469b4692 	undefined
     b58:	4700bc01 	strmi	fp, [r0, -r1, lsl #24]

00000b5c <.i3_SOUND_AREA_ADR>:
     b5c:	03007ff0 	tsteq	r0, #960

00000b60 <.i2_clock_tbl>:
     b60:	00000000 	andeq	r0, r0, r0

00000b64 <ply_endtie_rev01>:
     b64:	b430      	b430	push	{r4, r5}
     b66:	6c0a      	6c0a	ldr	r2, [r1, #64]
     b68:	7813      	7813	ldrb	r3, [r2, #0]
     b6a:	2b80      	2b80	cmp	r3, #128
     b6c:	d203      	d203	bcs	b76 <ply_endtie_rev01+0x12>
     b6e:	714b      	714b	strb	r3, [r1, #5]
     b70:	3201      	3201	add	r2, #1
     b72:	640a      	640a	str	r2, [r1, #64]
     b74:	e000      	e000	b	b78 <ply_endtie_rev01+0x14>
     b76:	794b      	794b	ldrb	r3, [r1, #5]
     b78:	6a09      	6a09	ldr	r1, [r1, #32]
     b7a:	2900      	2900	cmp	r1, #0
     b7c:	d010      	d010	beq	ba0 <ply_endtie_rev01+0x3c>
     b7e:	2483      	2483	mov	r4, #131
     b80:	2540      	2540	mov	r5, #64
     b82:	780a      	780a	ldrb	r2, [r1, #0]
     b84:	4222      	4222	tst	r2, r4
     b86:	d008      	d008	beq	b9a <ply_endtie_rev01+0x36>
     b88:	422a      	422a	tst	r2, r5
     b8a:	d106      	d106	bne	b9a <ply_endtie_rev01+0x36>
     b8c:	7c48      	7c48	ldrb	r0, [r1, #17]
     b8e:	4298      	4298	cmp	r0, r3
     b90:	d103      	d103	bne	b9a <ply_endtie_rev01+0x36>
     b92:	2040      	2040	mov	r0, #64
     b94:	4302      	4302	orr	r2, r0
     b96:	700a      	700a	strb	r2, [r1, #0]
     b98:	e002      	e002	b	ba0 <ply_endtie_rev01+0x3c>
     b9a:	6b49      	6b49	ldr	r1, [r1, #52]
     b9c:	2900      	2900	cmp	r1, #0
     b9e:	d1f0      	d1f0	bne	b82 <ply_endtie_rev01+0x1e>
     ba0:	bc30      	bc30	pop	{r4, r5}
     ba2:	4770      	4770	bx	lr

00000ba4 <clear_modM>:
     ba4:	2200      	2200	mov	r2, #0
     ba6:	758a      	758a	strb	r2, [r1, #22]
     ba8:	768a      	768a	strb	r2, [r1, #26]
     baa:	7e0a      	7e0a	ldrb	r2, [r1, #24]
     bac:	2a00      	2a00	cmp	r2, #0
     bae:	d101      	d101	bne	bb4 <clear_modM+0x10>
     bb0:	220c      	220c	mov	r2, #12
     bb2:	e000      	e000	b	bb6 <clear_modM+0x12>
     bb4:	2203      	2203	mov	r2, #3
     bb6:	780b      	780b	ldrb	r3, [r1, #0]
     bb8:	4313      	4313	orr	r3, r2
     bba:	700b      	700b	strb	r3, [r1, #0]
     bbc:	4770      	4770	bx	lr
	...

00000bc0 <ld_r3_tp_adr_i_rev>:
     bc0:	6c0a      	6c0a	ldr	r2, [r1, #64]

00000bc2 <ld_r3_r2_i_sub_rev>:
     bc2:	1c53      	1c53	add	r3, r2, #1
     bc4:	640b      	640b	str	r3, [r1, #64]
     bc6:	7813      	7813	ldrb	r3, [r2, #0]
     bc8:	4770      	4770	bx	lr
	...

00000bcc <ply_lfos_rev01>:
     bcc:	46f4      	46f4	mov	ip, lr
     bce:	fff7f7ff 	f7ff	bl	bc0 <ld_r3_tp_adr_i_rev>
     bd2:	764b      	764b	strb	r3, [r1, #25]
     bd4:	2b00      	2b00	cmp	r3, #0
     bd6:	d101      	d101	bne	bdc <ply_lfos_rev01+0x10>
     bd8:	ffe4f7ff 	f7ff	bl	ba4 <clear_modM>
     bdc:	4760      	4760	bx	ip
	...

00000be0 <ply_mod_rev01>:
     be0:	46f4      	46f4	mov	ip, lr
     be2:	ffedf7ff 	f7ff	bl	bc0 <ld_r3_tp_adr_i_rev>
     be6:	75cb      	75cb	strb	r3, [r1, #23]
     be8:	2b00      	2b00	cmp	r3, #0
     bea:	d101      	d101	bne	bf0 <ply_mod_rev01+0x10>
     bec:	ffdaf7ff 	f7ff	bl	ba4 <clear_modM>
     bf0:	4760      	4760	bx	ip

00000bf2 <.gcc2_compiled.>:
	...

00000bf4 <MidiKey2fr>:
     bf4:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
     bf6:	4684      	4684	mov	ip, r0
     bf8:	0609      	0609	lsl	r1, r1, #24
     bfa:	0e0e      	0e0e	lsr	r6, r1, #24
     bfc:	0617      	0617	lsl	r7, r2, #24
     bfe:	2eb2      	2eb2	cmp	r6, #178
     c00:	d902      	d902	bls	c08 <MidiKey2fr+0x14>
     c02:	26b2      	26b2	mov	r6, #178
     c04:	27ff      	27ff	mov	r7, #255
     c06:	063f      	063f	lsl	r7, r7, #24
     c08:	4b11      	4b11	ldr	r3, [pc, #68]	(c50 <MidiKey2fr+0x5c>)
     c0a:	18f0      	18f0	add	r0, r6, r3
     c0c:	7805      	7805	ldrb	r5, [r0, #0]
     c0e:	4c11      	4c11	ldr	r4, [pc, #68]	(c54 <MidiKey2fr+0x60>)
     c10:	220f      	220f	mov	r2, #15
     c12:	1c28      	1c28	mov	r0, r5		(add r0, r5, #0)
     c14:	4010      	4010	and	r0, r2
     c16:	0080      	0080	lsl	r0, r0, #2
     c18:	1900      	1900	add	r0, r0, r4
     c1a:	0929      	0929	lsr	r1, r5, #4
     c1c:	6805      	6805	ldr	r5, [r0, #0]
     c1e:	40cd      	40cd	lsr	r5, r1
     c20:	1c70      	1c70	add	r0, r6, #1
     c22:	18c0      	18c0	add	r0, r0, r3
     c24:	7801      	7801	ldrb	r1, [r0, #0]
     c26:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     c28:	4010      	4010	and	r0, r2
     c2a:	0080      	0080	lsl	r0, r0, #2
     c2c:	1900      	1900	add	r0, r0, r4
     c2e:	0909      	0909	lsr	r1, r1, #4
     c30:	6800      	6800	ldr	r0, [r0, #0]
     c32:	40c8      	40c8	lsr	r0, r1
     c34:	4661      	4661	mov	r1, ip
     c36:	684c      	684c	ldr	r4, [r1, #4]
     c38:	1b40      	1b40	sub	r0, r0, r5
     c3a:	1c39      	1c39	mov	r1, r7		(add r1, r7, #0)
     c3c:	f9e0f7ff 	f7ff	bl	0 <umul3232H32>
     c40:	1c01      	1c01	mov	r1, r0		(add r1, r0, #0)
     c42:	1869      	1869	add	r1, r5, r1
     c44:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
     c46:	f9dbf7ff 	f7ff	bl	0 <umul3232H32>
     c4a:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
     c4c:	bc02      	bc02	pop	{r1}
     c4e:	4708      	4708	bx	r1
	...

00000c58 <DummyFunc>:
     c58:	4770      	4770	bx	lr
	...

00000c5c <MPlayContinue>:
     c5c:	1c02      	1c02	mov	r2, r0		(add r2, r0, #0)
     c5e:	6b53      	6b53	ldr	r3, [r2, #52]
     c60:	4803      	4803	ldr	r0, [pc, #12]	(c70 <MPlayContinue+0x14>)
     c62:	4283      	4283	cmp	r3, r0
     c64:	d103      	d103	bne	c6e <MPlayContinue+0x12>
     c66:	6850      	6850	ldr	r0, [r2, #4]
     c68:	4902      	4902	ldr	r1, [pc, #8]	(c74 <MPlayContinue+0x18>)
     c6a:	4008      	4008	and	r0, r1
     c6c:	6050      	6050	str	r0, [r2, #4]
     c6e:	4770      	4770	bx	lr
     c70:	6d53      	6d53	ldr	r3, [r2, #84]
     c72:	6873      	6873	ldr	r3, [r6, #4]
     c74:	ffff      	ffff	second half of BL instruction 0xffff
     c76:	7fff      	7fff	ldrb	r7, [r7, #31]

00000c78 <MPlayFadeOut>:
     c78:	1c02      	1c02	mov	r2, r0		(add r2, r0, #0)
     c7a:	0409      	0409	lsl	r1, r1, #16
     c7c:	0c09      	0c09	lsr	r1, r1, #16
     c7e:	6b53      	6b53	ldr	r3, [r2, #52]
     c80:	4804      	4804	ldr	r0, [pc, #16]	(c94 <MPlayFadeOut+0x1c>)
     c82:	4283      	4283	cmp	r3, r0
     c84:	d104      	d104	bne	c90 <MPlayFadeOut+0x18>
     c86:	84d1      	84d1	strh	r1, [r2, #38]
     c88:	8491      	8491	strh	r1, [r2, #36]
     c8a:	2080      	2080	mov	r0, #128
     c8c:	0040      	0040	lsl	r0, r0, #1
     c8e:	8510      	8510	strh	r0, [r2, #40]
     c90:	4770      	4770	bx	lr
     c92:	0000      	0000	lsl	r0, r0, #0
     c94:	6d53      	6d53	ldr	r3, [r2, #84]
     c96:	6873      	6873	ldr	r3, [r6, #4]

00000c98 <m4aSoundInit>:
     c98:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
     c9a:	4647      	4647	mov	r7, r8
     c9c:	b480      	b480	push	{r7}
     c9e:	4818      	4818	ldr	r0, [pc, #96]	(d00 <m4aSoundInit+0x68>)
     ca0:	2102      	2102	mov	r1, #2
     ca2:	4249      	4249	neg	r1, r1
     ca4:	4008      	4008	and	r0, r1
     ca6:	4917      	4917	ldr	r1, [pc, #92]	(d04 <m4aSoundInit+0x6c>)
     ca8:	4a17      	4a17	ldr	r2, [pc, #92]	(d08 <m4aSoundInit+0x70>)
     caa:	fffef7ff 	f7ff	bl	caa <m4aSoundInit+0x12>
     cae:	4817      	4817	ldr	r0, [pc, #92]	(d0c <m4aSoundInit+0x74>)
     cb0:	f9def000 	f000	bl	1070 <SoundInit_rev01>
     cb4:	4816      	4816	ldr	r0, [pc, #88]	(d10 <m4aSoundInit+0x78>)
     cb6:	f933f000 	f000	bl	f20 <MPlayExtender>
     cba:	4816      	4816	ldr	r0, [pc, #88]	(d14 <m4aSoundInit+0x7c>)
     cbc:	fa8ef000 	f000	bl	11dc <SoundMode_rev01>
     cc0:	4815      	4815	ldr	r0, [pc, #84]	(d18 <m4aSoundInit+0x80>)
     cc2:	0400      	0400	lsl	r0, r0, #16
     cc4:	0c00      	0c00	lsr	r0, r0, #16
     cc6:	2800      	2800	cmp	r0, #0
     cc8:	d014      	d014	beq	cf4 <m4aSoundInit+0x5c>
     cca:	4914      	4914	ldr	r1, [pc, #80]	(d1c <m4aSoundInit+0x84>)
     ccc:	4688      	4688	mov	r8, r1
     cce:	4645      	4645	mov	r5, r8
     cd0:	2700      	2700	mov	r7, #0
     cd2:	1c06      	1c06	mov	r6, r0		(add r6, r0, #0)
     cd4:	682c      	682c	ldr	r4, [r5, #0]
     cd6:	4640      	4640	mov	r0, r8
     cd8:	3004      	3004	add	r0, #4
     cda:	1838      	1838	add	r0, r7, r0
     cdc:	6801      	6801	ldr	r1, [r0, #0]
     cde:	7a2a      	7a2a	ldrb	r2, [r5, #8]
     ce0:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
     ce2:	fb35f000 	f000	bl	1350 <MPlayOpen_rev01>
     ce6:	480e      	480e	ldr	r0, [pc, #56]	(d20 <m4aSoundInit+0x88>)
     ce8:	61a0      	61a0	str	r0, [r4, #24]
     cea:	350c      	350c	add	r5, #12
     cec:	370c      	370c	add	r7, #12
     cee:	3e01      	3e01	sub	r6, #1
     cf0:	2e00      	2e00	cmp	r6, #0
     cf2:	d1ef      	d1ef	bne	cd4 <m4aSoundInit+0x3c>
     cf4:	bc08      	bc08	pop	{r3}
     cf6:	4698      	4698	mov	r8, r3
     cf8:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
     cfa:	bc01      	bc01	pop	{r0}
     cfc:	4700      	4700	bx	r0
	...
     d06:	0000      	0000	lsl	r0, r0, #0
     d08:	0100      	0100	lsl	r0, r0, #4
     d0a:	0400      	0400	lsl	r0, r0, #16
	...

00000d24 <m4aSoundMain>:
     d24:	b500      	b500	push	{lr}
     d26:	f973f7ff 	f7ff	bl	10 <SoundMain>
     d2a:	bc01      	bc01	pop	{r0}
     d2c:	4700      	4700	bx	r0
	...

00000d30 <m4aSongNumStart>:
     d30:	b500      	b500	push	{lr}
     d32:	0400      	0400	lsl	r0, r0, #16
     d34:	4a07      	4a07	ldr	r2, [pc, #28]	(d54 <m4aSongNumStart+0x24>)
     d36:	4908      	4908	ldr	r1, [pc, #32]	(d58 <m4aSongNumStart+0x28>)
     d38:	0b40      	0b40	lsr	r0, r0, #13
     d3a:	1840      	1840	add	r0, r0, r1
     d3c:	8883      	8883	ldrh	r3, [r0, #4]
     d3e:	0059      	0059	lsl	r1, r3, #1
     d40:	18c9      	18c9	add	r1, r1, r3
     d42:	0089      	0089	lsl	r1, r1, #2
     d44:	1889      	1889	add	r1, r1, r2
     d46:	680a      	680a	ldr	r2, [r1, #0]
     d48:	6801      	6801	ldr	r1, [r0, #0]
     d4a:	1c10      	1c10	mov	r0, r2		(add r0, r2, #0)
     d4c:	fb3cf000 	f000	bl	13c8 <MPlayStart_rev01>
     d50:	bc01      	bc01	pop	{r0}
     d52:	4700      	4700	bx	r0
	...

00000d5c <m4aSongNumStartOrChange>:
     d5c:	b500      	b500	push	{lr}
     d5e:	0400      	0400	lsl	r0, r0, #16
     d60:	4a09      	4a09	ldr	r2, [pc, #36]	(d88 <m4aSongNumStartOrChange+0x2c>)
     d62:	490a      	490a	ldr	r1, [pc, #40]	(d8c <m4aSongNumStartOrChange+0x30>)
     d64:	0b40      	0b40	lsr	r0, r0, #13
     d66:	1840      	1840	add	r0, r0, r1
     d68:	8883      	8883	ldrh	r3, [r0, #4]
     d6a:	0059      	0059	lsl	r1, r3, #1
     d6c:	18c9      	18c9	add	r1, r1, r3
     d6e:	0089      	0089	lsl	r1, r1, #2
     d70:	1889      	1889	add	r1, r1, r2
     d72:	6809      	6809	ldr	r1, [r1, #0]
     d74:	680b      	680b	ldr	r3, [r1, #0]
     d76:	6802      	6802	ldr	r2, [r0, #0]
     d78:	4293      	4293	cmp	r3, r2
     d7a:	d009      	d009	beq	d90 <m4aSongNumStartOrChange+0x34>
     d7c:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     d7e:	1c11      	1c11	mov	r1, r2		(add r1, r2, #0)
     d80:	fb22f000 	f000	bl	13c8 <MPlayStart_rev01>
     d84:	e00e      	e00e	b	da4 <m4aSongNumStartOrChange+0x48>
	...
     d8e:	0000      	0000	lsl	r0, r0, #0
     d90:	684a      	684a	ldr	r2, [r1, #4]
     d92:	8888      	8888	ldrh	r0, [r1, #4]
     d94:	2800      	2800	cmp	r0, #0
     d96:	d001      	d001	beq	d9c <m4aSongNumStartOrChange+0x40>
     d98:	2a00      	2a00	cmp	r2, #0
     d9a:	da03      	da03	bge	da4 <m4aSongNumStartOrChange+0x48>
     d9c:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     d9e:	1c19      	1c19	mov	r1, r3		(add r1, r3, #0)
     da0:	fb12f000 	f000	bl	13c8 <MPlayStart_rev01>
     da4:	bc01      	bc01	pop	{r0}
     da6:	4700      	4700	bx	r0

00000da8 <m4aSongNumStartOrContinue>:
     da8:	b500      	b500	push	{lr}
     daa:	0400      	0400	lsl	r0, r0, #16
     dac:	4a09      	4a09	ldr	r2, [pc, #36]	(dd4 <m4aSongNumStartOrContinue+0x2c>)
     dae:	490a      	490a	ldr	r1, [pc, #40]	(dd8 <m4aSongNumStartOrContinue+0x30>)
     db0:	0b40      	0b40	lsr	r0, r0, #13
     db2:	1840      	1840	add	r0, r0, r1
     db4:	8883      	8883	ldrh	r3, [r0, #4]
     db6:	0059      	0059	lsl	r1, r3, #1
     db8:	18c9      	18c9	add	r1, r1, r3
     dba:	0089      	0089	lsl	r1, r1, #2
     dbc:	1889      	1889	add	r1, r1, r2
     dbe:	6809      	6809	ldr	r1, [r1, #0]
     dc0:	680b      	680b	ldr	r3, [r1, #0]
     dc2:	6802      	6802	ldr	r2, [r0, #0]
     dc4:	4293      	4293	cmp	r3, r2
     dc6:	d009      	d009	beq	ddc <m4aSongNumStartOrContinue+0x34>
     dc8:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     dca:	1c11      	1c11	mov	r1, r2		(add r1, r2, #0)
     dcc:	fafcf000 	f000	bl	13c8 <MPlayStart_rev01>
     dd0:	e012      	e012	b	df8 <m4aSongNumStartOrContinue+0x50>
	...
     dda:	0000      	0000	lsl	r0, r0, #0
     ddc:	684a      	684a	ldr	r2, [r1, #4]
     dde:	8888      	8888	ldrh	r0, [r1, #4]
     de0:	2800      	2800	cmp	r0, #0
     de2:	d104      	d104	bne	dee <m4aSongNumStartOrContinue+0x46>
     de4:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     de6:	1c19      	1c19	mov	r1, r3		(add r1, r3, #0)
     de8:	faeef000 	f000	bl	13c8 <MPlayStart_rev01>
     dec:	e004      	e004	b	df8 <m4aSongNumStartOrContinue+0x50>
     dee:	2a00      	2a00	cmp	r2, #0
     df0:	da02      	da02	bge	df8 <m4aSongNumStartOrContinue+0x50>
     df2:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     df4:	ff32f7ff 	f7ff	bl	c5c <MPlayContinue>
     df8:	bc01      	bc01	pop	{r0}
     dfa:	4700      	4700	bx	r0

00000dfc <m4aSongNumStop>:
     dfc:	b500      	b500	push	{lr}
     dfe:	0400      	0400	lsl	r0, r0, #16
     e00:	4a09      	4a09	ldr	r2, [pc, #36]	(e28 <m4aSongNumStop+0x2c>)
     e02:	490a      	490a	ldr	r1, [pc, #40]	(e2c <m4aSongNumStop+0x30>)
     e04:	0b40      	0b40	lsr	r0, r0, #13
     e06:	1840      	1840	add	r0, r0, r1
     e08:	8883      	8883	ldrh	r3, [r0, #4]
     e0a:	0059      	0059	lsl	r1, r3, #1
     e0c:	18c9      	18c9	add	r1, r1, r3
     e0e:	0089      	0089	lsl	r1, r1, #2
     e10:	1889      	1889	add	r1, r1, r2
     e12:	680a      	680a	ldr	r2, [r1, #0]
     e14:	6811      	6811	ldr	r1, [r2, #0]
     e16:	6800      	6800	ldr	r0, [r0, #0]
     e18:	4281      	4281	cmp	r1, r0
     e1a:	d102      	d102	bne	e22 <m4aSongNumStop+0x26>
     e1c:	1c10      	1c10	mov	r0, r2		(add r0, r2, #0)
     e1e:	fb2df000 	f000	bl	147c <MPlayStop_rev01>
     e22:	bc01      	bc01	pop	{r0}
     e24:	4700      	4700	bx	r0
	...

00000e30 <m4aSongNumContinue>:
     e30:	b500      	b500	push	{lr}
     e32:	0400      	0400	lsl	r0, r0, #16
     e34:	4a09      	4a09	ldr	r2, [pc, #36]	(e5c <m4aSongNumContinue+0x2c>)
     e36:	490a      	490a	ldr	r1, [pc, #40]	(e60 <m4aSongNumContinue+0x30>)
     e38:	0b40      	0b40	lsr	r0, r0, #13
     e3a:	1840      	1840	add	r0, r0, r1
     e3c:	8883      	8883	ldrh	r3, [r0, #4]
     e3e:	0059      	0059	lsl	r1, r3, #1
     e40:	18c9      	18c9	add	r1, r1, r3
     e42:	0089      	0089	lsl	r1, r1, #2
     e44:	1889      	1889	add	r1, r1, r2
     e46:	680a      	680a	ldr	r2, [r1, #0]
     e48:	6811      	6811	ldr	r1, [r2, #0]
     e4a:	6800      	6800	ldr	r0, [r0, #0]
     e4c:	4281      	4281	cmp	r1, r0
     e4e:	d102      	d102	bne	e56 <m4aSongNumContinue+0x26>
     e50:	1c10      	1c10	mov	r0, r2		(add r0, r2, #0)
     e52:	ff03f7ff 	f7ff	bl	c5c <MPlayContinue>
     e56:	bc01      	bc01	pop	{r0}
     e58:	4700      	4700	bx	r0
	...

00000e64 <m4aMPlayAllStop>:
     e64:	b530      	b530	push	{r4, r5, lr}
     e66:	4808      	4808	ldr	r0, [pc, #32]	(e88 <m4aMPlayAllStop+0x24>)
     e68:	0400      	0400	lsl	r0, r0, #16
     e6a:	0c00      	0c00	lsr	r0, r0, #16
     e6c:	2800      	2800	cmp	r0, #0
     e6e:	d008      	d008	beq	e82 <m4aMPlayAllStop+0x1e>
     e70:	4d06      	4d06	ldr	r5, [pc, #24]	(e8c <m4aMPlayAllStop+0x28>)
     e72:	1c04      	1c04	mov	r4, r0		(add r4, r0, #0)
     e74:	6828      	6828	ldr	r0, [r5, #0]
     e76:	fb01f000 	f000	bl	147c <MPlayStop_rev01>
     e7a:	350c      	350c	add	r5, #12
     e7c:	3c01      	3c01	sub	r4, #1
     e7e:	2c00      	2c00	cmp	r4, #0
     e80:	d1f8      	d1f8	bne	e74 <m4aMPlayAllStop+0x10>
     e82:	bc30      	bc30	pop	{r4, r5}
     e84:	bc01      	bc01	pop	{r0}
     e86:	4700      	4700	bx	r0
	...

00000e90 <m4aMPlayContinue>:
     e90:	b500      	b500	push	{lr}
     e92:	fee3f7ff 	f7ff	bl	c5c <MPlayContinue>
     e96:	bc01      	bc01	pop	{r0}
     e98:	4700      	4700	bx	r0
	...

00000e9c <m4aMPlayAllContinue>:
     e9c:	b530      	b530	push	{r4, r5, lr}
     e9e:	4808      	4808	ldr	r0, [pc, #32]	(ec0 <m4aMPlayAllContinue+0x24>)
     ea0:	0400      	0400	lsl	r0, r0, #16
     ea2:	0c00      	0c00	lsr	r0, r0, #16
     ea4:	2800      	2800	cmp	r0, #0
     ea6:	d008      	d008	beq	eba <m4aMPlayAllContinue+0x1e>
     ea8:	4d06      	4d06	ldr	r5, [pc, #24]	(ec4 <m4aMPlayAllContinue+0x28>)
     eaa:	1c04      	1c04	mov	r4, r0		(add r4, r0, #0)
     eac:	6828      	6828	ldr	r0, [r5, #0]
     eae:	fed5f7ff 	f7ff	bl	c5c <MPlayContinue>
     eb2:	350c      	350c	add	r5, #12
     eb4:	3c01      	3c01	sub	r4, #1
     eb6:	2c00      	2c00	cmp	r4, #0
     eb8:	d1f8      	d1f8	bne	eac <m4aMPlayAllContinue+0x10>
     eba:	bc30      	bc30	pop	{r4, r5}
     ebc:	bc01      	bc01	pop	{r0}
     ebe:	4700      	4700	bx	r0
	...

00000ec8 <m4aMPlayFadeOut>:
     ec8:	b500      	b500	push	{lr}
     eca:	0409      	0409	lsl	r1, r1, #16
     ecc:	0c09      	0c09	lsr	r1, r1, #16
     ece:	fed3f7ff 	f7ff	bl	c78 <MPlayFadeOut>
     ed2:	bc01      	bc01	pop	{r0}
     ed4:	4700      	4700	bx	r0
	...

00000ed8 <m4aMPlayImmInit>:
     ed8:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
     eda:	7a05      	7a05	ldrb	r5, [r0, #8]
     edc:	6ac4      	6ac4	ldr	r4, [r0, #44]
     ede:	2d00      	2d00	cmp	r5, #0
     ee0:	dd1b      	dd1b	ble	f1a <m4aMPlayImmInit+0x42>
     ee2:	2780      	2780	mov	r7, #128
     ee4:	7821      	7821	ldrb	r1, [r4, #0]
     ee6:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
     ee8:	4008      	4008	and	r0, r1
     eea:	2800      	2800	cmp	r0, #0
     eec:	d011      	d011	beq	f12 <m4aMPlayImmInit+0x3a>
     eee:	2640      	2640	mov	r6, #64
     ef0:	1c30      	1c30	mov	r0, r6		(add r0, r6, #0)
     ef2:	4008      	4008	and	r0, r1
     ef4:	2800      	2800	cmp	r0, #0
     ef6:	d00c      	d00c	beq	f12 <m4aMPlayImmInit+0x3a>
     ef8:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
     efa:	f8aff000 	f000	bl	105c <Clear64byte_rev>
     efe:	7027      	7027	strb	r7, [r4, #0]
     f00:	2002      	2002	mov	r0, #2
     f02:	73e0      	73e0	strb	r0, [r4, #15]
     f04:	74e6      	74e6	strb	r6, [r4, #19]
     f06:	2016      	2016	mov	r0, #22
     f08:	7660      	7660	strb	r0, [r4, #25]
     f0a:	1c21      	1c21	mov	r1, r4		(add r1, r4, #0)
     f0c:	3124      	3124	add	r1, #36
     f0e:	2001      	2001	mov	r0, #1
     f10:	7008      	7008	strb	r0, [r1, #0]
     f12:	3d01      	3d01	sub	r5, #1
     f14:	3450      	3450	add	r4, #80
     f16:	2d00      	2d00	cmp	r5, #0
     f18:	dce4      	dce4	bgt	ee4 <m4aMPlayImmInit+0xc>
     f1a:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
     f1c:	bc01      	bc01	pop	{r0}
     f1e:	4700      	4700	bx	r0

00000f20 <MPlayExtender>:
     f20:	b570      	b570	push	{r4, r5, r6, lr}
     f22:	b081      	b081	sub	sp, #4
     f24:	1c05      	1c05	mov	r5, r0		(add r5, r0, #0)
     f26:	4931      	4931	ldr	r1, [pc, #196]	(fec <MPlayExtender+0xcc>)
     f28:	208f      	208f	mov	r0, #143
     f2a:	8008      	8008	strh	r0, [r1, #0]
     f2c:	4a30      	4a30	ldr	r2, [pc, #192]	(ff0 <MPlayExtender+0xd0>)
     f2e:	2077      	2077	mov	r0, #119
     f30:	8010      	8010	strh	r0, [r2, #0]
     f32:	4830      	4830	ldr	r0, [pc, #192]	(ff4 <MPlayExtender+0xd4>)
     f34:	2108      	2108	mov	r1, #8
     f36:	7001      	7001	strb	r1, [r0, #0]
     f38:	3006      	3006	add	r0, #6
     f3a:	7001      	7001	strb	r1, [r0, #0]
     f3c:	3010      	3010	add	r0, #16
     f3e:	7001      	7001	strb	r1, [r0, #0]
     f40:	3814      	3814	sub	r0, #20
     f42:	2180      	2180	mov	r1, #128
     f44:	7001      	7001	strb	r1, [r0, #0]
     f46:	3008      	3008	add	r0, #8
     f48:	7001      	7001	strb	r1, [r0, #0]
     f4a:	3010      	3010	add	r0, #16
     f4c:	7001      	7001	strb	r1, [r0, #0]
     f4e:	492a      	492a	ldr	r1, [pc, #168]	(ff8 <MPlayExtender+0xd8>)
     f50:	2000      	2000	mov	r0, #0
     f52:	7008      	7008	strb	r0, [r1, #0]
     f54:	4929      	4929	ldr	r1, [pc, #164]	(ffc <MPlayExtender+0xdc>)
     f56:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
     f58:	8010      	8010	strh	r0, [r2, #0]
     f5a:	4829      	4829	ldr	r0, [pc, #164]	(1000 <MPlayExtender+0xe0>)
     f5c:	6804      	6804	ldr	r4, [r0, #0]
     f5e:	6826      	6826	ldr	r6, [r4, #0]
     f60:	4828      	4828	ldr	r0, [pc, #160]	(1004 <MPlayExtender+0xe4>)
     f62:	4286      	4286	cmp	r6, r0
     f64:	d13e      	d13e	bne	fe4 <MPlayExtender+0xc4>
     f66:	1c70      	1c70	add	r0, r6, #1
     f68:	6020      	6020	str	r0, [r4, #0]
     f6a:	4927      	4927	ldr	r1, [pc, #156]	(1008 <MPlayExtender+0xe8>)
     f6c:	4827      	4827	ldr	r0, [pc, #156]	(100c <MPlayExtender+0xec>)
     f6e:	6208      	6208	str	r0, [r1, #32]
     f70:	4827      	4827	ldr	r0, [pc, #156]	(1010 <MPlayExtender+0xf0>)
     f72:	6448      	6448	str	r0, [r1, #68]
     f74:	4827      	4827	ldr	r0, [pc, #156]	(1014 <MPlayExtender+0xf4>)
     f76:	64c8      	64c8	str	r0, [r1, #76]
     f78:	4827      	4827	ldr	r0, [pc, #156]	(1018 <MPlayExtender+0xf8>)
     f7a:	6708      	6708	str	r0, [r1, #112]
     f7c:	4827      	4827	ldr	r0, [pc, #156]	(101c <MPlayExtender+0xfc>)
     f7e:	6748      	6748	str	r0, [r1, #116]
     f80:	4827      	4827	ldr	r0, [pc, #156]	(1020 <MPlayExtender+0x100>)
     f82:	6788      	6788	str	r0, [r1, #120]
     f84:	4827      	4827	ldr	r0, [pc, #156]	(1024 <MPlayExtender+0x104>)
     f86:	67c8      	67c8	str	r0, [r1, #124]
     f88:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
     f8a:	3280      	3280	add	r2, #128
     f8c:	4826      	4826	ldr	r0, [pc, #152]	(1028 <MPlayExtender+0x108>)
     f8e:	6010      	6010	str	r0, [r2, #0]
     f90:	3184      	3184	add	r1, #132
     f92:	4826      	4826	ldr	r0, [pc, #152]	(102c <MPlayExtender+0x10c>)
     f94:	6008      	6008	str	r0, [r1, #0]
     f96:	61e5      	61e5	str	r5, [r4, #28]
     f98:	4825      	4825	ldr	r0, [pc, #148]	(1030 <MPlayExtender+0x110>)
     f9a:	62a0      	62a0	str	r0, [r4, #40]
     f9c:	4825      	4825	ldr	r0, [pc, #148]	(1034 <MPlayExtender+0x114>)
     f9e:	62e0      	62e0	str	r0, [r4, #44]
     fa0:	4825      	4825	ldr	r0, [pc, #148]	(1038 <MPlayExtender+0x118>)
     fa2:	6320      	6320	str	r0, [r4, #48]
     fa4:	4825      	4825	ldr	r0, [pc, #148]	(103c <MPlayExtender+0x11c>)
     fa6:	2100      	2100	mov	r1, #0
     fa8:	7320      	7320	strb	r0, [r4, #12]
     faa:	9100      	9100	str	r1, [sp, #0]
     fac:	4a24      	4a24	ldr	r2, [pc, #144]	(1040 <MPlayExtender+0x120>)
     fae:	4668      	4668	mov	r0, sp
     fb0:	1c29      	1c29	mov	r1, r5		(add r1, r5, #0)
     fb2:	fffef7ff 	f7ff	bl	fb2 <MPlayExtender+0x92>
     fb6:	2001      	2001	mov	r0, #1
     fb8:	7068      	7068	strb	r0, [r5, #1]
     fba:	2011      	2011	mov	r0, #17
     fbc:	7728      	7728	strb	r0, [r5, #28]
     fbe:	1c29      	1c29	mov	r1, r5		(add r1, r5, #0)
     fc0:	3141      	3141	add	r1, #65
     fc2:	2002      	2002	mov	r0, #2
     fc4:	7008      	7008	strb	r0, [r1, #0]
     fc6:	311b      	311b	add	r1, #27
     fc8:	2022      	2022	mov	r0, #34
     fca:	7008      	7008	strb	r0, [r1, #0]
     fcc:	3125      	3125	add	r1, #37
     fce:	2003      	2003	mov	r0, #3
     fd0:	7008      	7008	strb	r0, [r1, #0]
     fd2:	311b      	311b	add	r1, #27
     fd4:	2044      	2044	mov	r0, #68
     fd6:	7008      	7008	strb	r0, [r1, #0]
     fd8:	3124      	3124	add	r1, #36
     fda:	2004      	2004	mov	r0, #4
     fdc:	7048      	7048	strb	r0, [r1, #1]
     fde:	2088      	2088	mov	r0, #136
     fe0:	7708      	7708	strb	r0, [r1, #28]
     fe2:	6026      	6026	str	r6, [r4, #0]
     fe4:	b001      	b001	add	sp, #4
     fe6:	bc70      	bc70	pop	{r4, r5, r6}
     fe8:	bc01      	bc01	pop	{r0}
     fea:	4700      	4700	bx	r0
     fec:	0084      	0084	lsl	r4, r0, #2
     fee:	0400      	0400	lsl	r0, r0, #16
     ff0:	0080      	0080	lsl	r0, r0, #2
     ff2:	0400      	0400	lsl	r0, r0, #16
     ff4:	0063      	0063	lsl	r3, r4, #1
     ff6:	0400      	0400	lsl	r0, r0, #16
     ff8:	0070      	0070	lsl	r0, r6, #1
     ffa:	0400      	0400	lsl	r0, r0, #16
     ffc:	ff77      	ff77	second half of BL instruction 0xff77
     ffe:	0000      	0000	lsl	r0, r0, #0
    1000:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    1002:	0300      	0300	lsl	r0, r0, #12
    1004:	6d53      	6d53	ldr	r3, [r2, #84]
    1006:	6873      	6873	ldr	r3, [r6, #4]
	...
    1040:	0040      	0040	lsl	r0, r0, #1
    1042:	0500      	0500	lsl	r0, r0, #20

00001044 <MusicPlayerJumpTableCopy>:
    1044:	df2a      	df2a	swi	42
    1046:	4770      	4770	bx	lr

00001048 <ClearChain_rev>:
    1048:	b500      	b500	push	{lr}
    104a:	4903      	4903	ldr	r1, [pc, #12]	(1058 <ClearChain_rev+0x10>)
    104c:	6809      	6809	ldr	r1, [r1, #0]
    104e:	fffef7ff 	f7ff	bl	104e <ClearChain_rev+0x6>
    1052:	bc01      	bc01	pop	{r0}
    1054:	4700      	4700	bx	r0
    1056:	0000      	0000	lsl	r0, r0, #0
    1058:	0088      	0088	lsl	r0, r1, #2
	...

0000105c <Clear64byte_rev>:
    105c:	b500      	b500	push	{lr}
    105e:	4903      	4903	ldr	r1, [pc, #12]	(106c <Clear64byte_rev+0x10>)
    1060:	6809      	6809	ldr	r1, [r1, #0]
    1062:	fffef7ff 	f7ff	bl	1062 <Clear64byte_rev+0x6>
    1066:	bc01      	bc01	pop	{r0}
    1068:	4700      	4700	bx	r0
    106a:	0000      	0000	lsl	r0, r0, #0
    106c:	008c      	008c	lsl	r4, r1, #2
	...

00001070 <SoundInit_rev01>:
    1070:	b530      	b530	push	{r4, r5, lr}
    1072:	b081      	b081	sub	sp, #4
    1074:	1c05      	1c05	mov	r5, r0		(add r5, r0, #0)
    1076:	2300      	2300	mov	r3, #0
    1078:	602b      	602b	str	r3, [r5, #0]
    107a:	4822      	4822	ldr	r0, [pc, #136]	(1104 <SoundInit_rev01+0x94>)
    107c:	8003      	8003	strh	r3, [r0, #0]
    107e:	300c      	300c	add	r0, #12
    1080:	8003      	8003	strh	r3, [r0, #0]
    1082:	4921      	4921	ldr	r1, [pc, #132]	(1108 <SoundInit_rev01+0x98>)
    1084:	208f      	208f	mov	r0, #143
    1086:	8008      	8008	strh	r0, [r1, #0]
    1088:	3902      	3902	sub	r1, #2
    108a:	4a20      	4a20	ldr	r2, [pc, #128]	(110c <SoundInit_rev01+0x9c>)
    108c:	1c10      	1c10	mov	r0, r2		(add r0, r2, #0)
    108e:	8008      	8008	strh	r0, [r1, #0]
    1090:	4a1f      	4a1f	ldr	r2, [pc, #124]	(1110 <SoundInit_rev01+0xa0>)
    1092:	7811      	7811	ldrb	r1, [r2, #0]
    1094:	203f      	203f	mov	r0, #63
    1096:	4008      	4008	and	r0, r1
    1098:	2140      	2140	mov	r1, #64
    109a:	4308      	4308	orr	r0, r1
    109c:	7010      	7010	strb	r0, [r2, #0]
    109e:	491d      	491d	ldr	r1, [pc, #116]	(1114 <SoundInit_rev01+0xa4>)
    10a0:	22d4      	22d4	mov	r2, #212
    10a2:	0092      	0092	lsl	r2, r2, #2
    10a4:	18a8      	18a8	add	r0, r5, r2
    10a6:	6008      	6008	str	r0, [r1, #0]
    10a8:	3104      	3104	add	r1, #4
    10aa:	481b      	481b	ldr	r0, [pc, #108]	(1118 <SoundInit_rev01+0xa8>)
    10ac:	6008      	6008	str	r0, [r1, #0]
    10ae:	3108      	3108	add	r1, #8
    10b0:	2298      	2298	mov	r2, #152
    10b2:	0112      	0112	lsl	r2, r2, #4
    10b4:	18a8      	18a8	add	r0, r5, r2
    10b6:	6008      	6008	str	r0, [r1, #0]
    10b8:	3104      	3104	add	r1, #4
    10ba:	4818      	4818	ldr	r0, [pc, #96]	(111c <SoundInit_rev01+0xac>)
    10bc:	6008      	6008	str	r0, [r1, #0]
    10be:	4818      	4818	ldr	r0, [pc, #96]	(1120 <SoundInit_rev01+0xb0>)
    10c0:	6005      	6005	str	r5, [r0, #0]
    10c2:	9300      	9300	str	r3, [sp, #0]
    10c4:	4a17      	4a17	ldr	r2, [pc, #92]	(1124 <SoundInit_rev01+0xb4>)
    10c6:	4668      	4668	mov	r0, sp
    10c8:	1c29      	1c29	mov	r1, r5		(add r1, r5, #0)
    10ca:	fffef7ff 	f7ff	bl	10ca <SoundInit_rev01+0x5a>
    10ce:	2008      	2008	mov	r0, #8
    10d0:	71a8      	71a8	strb	r0, [r5, #6]
    10d2:	200f      	200f	mov	r0, #15
    10d4:	71e8      	71e8	strb	r0, [r5, #7]
    10d6:	4814      	4814	ldr	r0, [pc, #80]	(1128 <SoundInit_rev01+0xb8>)
    10d8:	63a8      	63a8	str	r0, [r5, #56]
    10da:	4814      	4814	ldr	r0, [pc, #80]	(112c <SoundInit_rev01+0xbc>)
    10dc:	62a8      	62a8	str	r0, [r5, #40]
    10de:	62e8      	62e8	str	r0, [r5, #44]
    10e0:	6328      	6328	str	r0, [r5, #48]
    10e2:	63e8      	63e8	str	r0, [r5, #60]
    10e4:	4c12      	4c12	ldr	r4, [pc, #72]	(1130 <SoundInit_rev01+0xc0>)
    10e6:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
    10e8:	f9daf7ff 	f7ff	bl	4a0 <MPlyJmpTblCopy>
    10ec:	636c      	636c	str	r4, [r5, #52]
    10ee:	2080      	2080	mov	r0, #128
    10f0:	02c0      	02c0	lsl	r0, r0, #11
    10f2:	f821f000 	f000	bl	1138 <SampFreqSet_rev01>
    10f6:	480f      	480f	ldr	r0, [pc, #60]	(1134 <SoundInit_rev01+0xc4>)
    10f8:	6028      	6028	str	r0, [r5, #0]
    10fa:	b001      	b001	add	sp, #4
    10fc:	bc30      	bc30	pop	{r4, r5}
    10fe:	bc01      	bc01	pop	{r0}
    1100:	4700      	4700	bx	r0
    1102:	0000      	0000	lsl	r0, r0, #0
    1104:	00c6      	00c6	lsl	r6, r0, #3
    1106:	0400      	0400	lsl	r0, r0, #16
    1108:	0084      	0084	lsl	r4, r0, #2
    110a:	0400      	0400	lsl	r0, r0, #16
    110c:	a90e      	a90e	add	r1, sp, #56
    110e:	0000      	0000	lsl	r0, r0, #0
    1110:	0089      	0089	lsl	r1, r1, #2
    1112:	0400      	0400	lsl	r0, r0, #16
    1114:	00bc      	00bc	lsl	r4, r7, #2
    1116:	0400      	0400	lsl	r0, r0, #16
    1118:	00a0      	00a0	lsl	r0, r4, #2
    111a:	0400      	0400	lsl	r0, r0, #16
    111c:	00a4      	00a4	lsl	r4, r4, #2
    111e:	0400      	0400	lsl	r0, r0, #16
    1120:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    1122:	0300      	0300	lsl	r0, r0, #12
    1124:	03ec      	03ec	lsl	r4, r5, #15
    1126:	0500      	0500	lsl	r0, r0, #20
	...
    1134:	6d53      	6d53	ldr	r3, [r2, #84]
    1136:	6873      	6873	ldr	r3, [r6, #4]

00001138 <SampFreqSet_rev01>:
    1138:	b570      	b570	push	{r4, r5, r6, lr}
    113a:	1c02      	1c02	mov	r2, r0		(add r2, r0, #0)
    113c:	481e      	481e	ldr	r0, [pc, #120]	(11b8 <SampFreqSet_rev01+0x80>)
    113e:	6804      	6804	ldr	r4, [r0, #0]
    1140:	20f0      	20f0	mov	r0, #240
    1142:	0300      	0300	lsl	r0, r0, #12
    1144:	4010      	4010	and	r0, r2
    1146:	0c02      	0c02	lsr	r2, r0, #16
    1148:	2600      	2600	mov	r6, #0
    114a:	7222      	7222	strb	r2, [r4, #8]
    114c:	491b      	491b	ldr	r1, [pc, #108]	(11bc <SampFreqSet_rev01+0x84>)
    114e:	1e50      	1e50	sub	r0, r2, #1
    1150:	0040      	0040	lsl	r0, r0, #1
    1152:	1840      	1840	add	r0, r0, r1
    1154:	8805      	8805	ldrh	r5, [r0, #0]
    1156:	6125      	6125	str	r5, [r4, #16]
    1158:	20c6      	20c6	mov	r0, #198
    115a:	00c0      	00c0	lsl	r0, r0, #3
    115c:	1c29      	1c29	mov	r1, r5		(add r1, r5, #0)
    115e:	fffef7ff 	f7ff	bl	115e <SampFreqSet_rev01+0x26>
    1162:	72e0      	72e0	strb	r0, [r4, #11]
    1164:	4816      	4816	ldr	r0, [pc, #88]	(11c0 <SampFreqSet_rev01+0x88>)
    1166:	4368      	4368	mul	r0, r5
    1168:	4916      	4916	ldr	r1, [pc, #88]	(11c4 <SampFreqSet_rev01+0x8c>)
    116a:	1840      	1840	add	r0, r0, r1
    116c:	4916      	4916	ldr	r1, [pc, #88]	(11c8 <SampFreqSet_rev01+0x90>)
    116e:	fffef7ff 	f7ff	bl	116e <SampFreqSet_rev01+0x36>
    1172:	1c01      	1c01	mov	r1, r0		(add r1, r0, #0)
    1174:	6161      	6161	str	r1, [r4, #20]
    1176:	2080      	2080	mov	r0, #128
    1178:	0440      	0440	lsl	r0, r0, #17
    117a:	fffef7ff 	f7ff	bl	117a <SampFreqSet_rev01+0x42>
    117e:	3001      	3001	add	r0, #1
    1180:	1040      	1040	asr	r0, r0, #1
    1182:	61a0      	61a0	str	r0, [r4, #24]
    1184:	4811      	4811	ldr	r0, [pc, #68]	(11cc <SampFreqSet_rev01+0x94>)
    1186:	8006      	8006	strh	r6, [r0, #0]
    1188:	4c11      	4c11	ldr	r4, [pc, #68]	(11d0 <SampFreqSet_rev01+0x98>)
    118a:	4812      	4812	ldr	r0, [pc, #72]	(11d4 <SampFreqSet_rev01+0x9c>)
    118c:	1c29      	1c29	mov	r1, r5		(add r1, r5, #0)
    118e:	fffef7ff 	f7ff	bl	118e <SampFreqSet_rev01+0x56>
    1192:	4240      	4240	neg	r0, r0
    1194:	8020      	8020	strh	r0, [r4, #0]
    1196:	f8bdf000 	f000	bl	1314 <SoundVSyncOn_rev01>
    119a:	490f      	490f	ldr	r1, [pc, #60]	(11d8 <SampFreqSet_rev01+0xa0>)
    119c:	7808      	7808	ldrb	r0, [r1, #0]
    119e:	289f      	289f	cmp	r0, #159
    11a0:	d0fc      	d0fc	beq	119c <SampFreqSet_rev01+0x64>
    11a2:	490d      	490d	ldr	r1, [pc, #52]	(11d8 <SampFreqSet_rev01+0xa0>)
    11a4:	7808      	7808	ldrb	r0, [r1, #0]
    11a6:	289f      	289f	cmp	r0, #159
    11a8:	d1fc      	d1fc	bne	11a4 <SampFreqSet_rev01+0x6c>
    11aa:	4908      	4908	ldr	r1, [pc, #32]	(11cc <SampFreqSet_rev01+0x94>)
    11ac:	2080      	2080	mov	r0, #128
    11ae:	8008      	8008	strh	r0, [r1, #0]
    11b0:	bc70      	bc70	pop	{r4, r5, r6}
    11b2:	bc01      	bc01	pop	{r0}
    11b4:	4700      	4700	bx	r0
    11b6:	0000      	0000	lsl	r0, r0, #0
    11b8:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    11ba:	0300      	0300	lsl	r0, r0, #12
    11bc:	0000      	0000	lsl	r0, r0, #0
    11be:	0000      	0000	lsl	r0, r0, #0
    11c0:	1d1b      	1d1b	add	r3, r3, #4
    11c2:	0009      	0009	lsl	r1, r1, #0
    11c4:	1388      	1388	asr	r0, r1, #14
    11c6:	0000      	0000	lsl	r0, r0, #0
    11c8:	2710      	2710	mov	r7, #16
    11ca:	0000      	0000	lsl	r0, r0, #0
    11cc:	0102      	0102	lsl	r2, r0, #4
    11ce:	0400      	0400	lsl	r0, r0, #16
    11d0:	0100      	0100	lsl	r0, r0, #4
    11d2:	0400      	0400	lsl	r0, r0, #16
    11d4:	4940      	4940	ldr	r1, [pc, #256]	(12d8 <SoundVSyncOff_rev01+0x10>)
    11d6:	0004      	0004	lsl	r4, r0, #0
    11d8:	0006      	0006	lsl	r6, r0, #0
    11da:	0400      	0400	lsl	r0, r0, #16

000011dc <SoundMode_rev01>:
    11dc:	b530      	b530	push	{r4, r5, lr}
    11de:	1c03      	1c03	mov	r3, r0		(add r3, r0, #0)
    11e0:	4821      	4821	ldr	r0, [pc, #132]	(1268 <SoundMode_rev01+0x8c>)
    11e2:	6805      	6805	ldr	r5, [r0, #0]
    11e4:	6829      	6829	ldr	r1, [r5, #0]
    11e6:	4821      	4821	ldr	r0, [pc, #132]	(126c <SoundMode_rev01+0x90>)
    11e8:	4281      	4281	cmp	r1, r0
    11ea:	d13a      	d13a	bne	1262 <SoundMode_rev01+0x86>
    11ec:	1c48      	1c48	add	r0, r1, #1
    11ee:	6028      	6028	str	r0, [r5, #0]
    11f0:	24ff      	24ff	mov	r4, #255
    11f2:	401c      	401c	and	r4, r3
    11f4:	2c00      	2c00	cmp	r4, #0
    11f6:	d002      	d002	beq	11fe <SoundMode_rev01+0x22>
    11f8:	207f      	207f	mov	r0, #127
    11fa:	4004      	4004	and	r4, r0
    11fc:	716c      	716c	strb	r4, [r5, #5]
    11fe:	24f0      	24f0	mov	r4, #240
    1200:	0124      	0124	lsl	r4, r4, #4
    1202:	401c      	401c	and	r4, r3
    1204:	2c00      	2c00	cmp	r4, #0
    1206:	d00a      	d00a	beq	121e <SoundMode_rev01+0x42>
    1208:	0a20      	0a20	lsr	r0, r4, #8
    120a:	71a8      	71a8	strb	r0, [r5, #6]
    120c:	240c      	240c	mov	r4, #12
    120e:	1c28      	1c28	mov	r0, r5		(add r0, r5, #0)
    1210:	3050      	3050	add	r0, #80
    1212:	2100      	2100	mov	r1, #0
    1214:	7001      	7001	strb	r1, [r0, #0]
    1216:	3c01      	3c01	sub	r4, #1
    1218:	3040      	3040	add	r0, #64
    121a:	2c00      	2c00	cmp	r4, #0
    121c:	d1fa      	d1fa	bne	1214 <SoundMode_rev01+0x38>
    121e:	24f0      	24f0	mov	r4, #240
    1220:	0224      	0224	lsl	r4, r4, #8
    1222:	401c      	401c	and	r4, r3
    1224:	2c00      	2c00	cmp	r4, #0
    1226:	d001      	d001	beq	122c <SoundMode_rev01+0x50>
    1228:	0b20      	0b20	lsr	r0, r4, #12
    122a:	71e8      	71e8	strb	r0, [r5, #7]
    122c:	24b0      	24b0	mov	r4, #176
    122e:	0424      	0424	lsl	r4, r4, #16
    1230:	401c      	401c	and	r4, r3
    1232:	2c00      	2c00	cmp	r4, #0
    1234:	d009      	d009	beq	124a <SoundMode_rev01+0x6e>
    1236:	20c0      	20c0	mov	r0, #192
    1238:	0380      	0380	lsl	r0, r0, #14
    123a:	4020      	4020	and	r0, r4
    123c:	0b84      	0b84	lsr	r4, r0, #14
    123e:	4a0c      	4a0c	ldr	r2, [pc, #48]	(1270 <SoundMode_rev01+0x94>)
    1240:	7811      	7811	ldrb	r1, [r2, #0]
    1242:	203f      	203f	mov	r0, #63
    1244:	4008      	4008	and	r0, r1
    1246:	4320      	4320	orr	r0, r4
    1248:	7010      	7010	strb	r0, [r2, #0]
    124a:	24f0      	24f0	mov	r4, #240
    124c:	0324      	0324	lsl	r4, r4, #12
    124e:	401c      	401c	and	r4, r3
    1250:	2c00      	2c00	cmp	r4, #0
    1252:	d004      	d004	beq	125e <SoundMode_rev01+0x82>
    1254:	f838f000 	f000	bl	12c8 <SoundVSyncOff_rev01>
    1258:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
    125a:	ff6df7ff 	f7ff	bl	1138 <SampFreqSet_rev01>
    125e:	4803      	4803	ldr	r0, [pc, #12]	(126c <SoundMode_rev01+0x90>)
    1260:	6028      	6028	str	r0, [r5, #0]
    1262:	bc30      	bc30	pop	{r4, r5}
    1264:	bc01      	bc01	pop	{r0}
    1266:	4700      	4700	bx	r0
    1268:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    126a:	0300      	0300	lsl	r0, r0, #12
    126c:	6d53      	6d53	ldr	r3, [r2, #84]
    126e:	6873      	6873	ldr	r3, [r6, #4]
    1270:	0089      	0089	lsl	r1, r1, #2
    1272:	0400      	0400	lsl	r0, r0, #16

00001274 <SoundClear_rev01>:
    1274:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1276:	4812      	4812	ldr	r0, [pc, #72]	(12c0 <SoundClear_rev01+0x4c>)
    1278:	6806      	6806	ldr	r6, [r0, #0]
    127a:	6831      	6831	ldr	r1, [r6, #0]
    127c:	4811      	4811	ldr	r0, [pc, #68]	(12c4 <SoundClear_rev01+0x50>)
    127e:	4281      	4281	cmp	r1, r0
    1280:	d11b      	d11b	bne	12ba <SoundClear_rev01+0x46>
    1282:	1c48      	1c48	add	r0, r1, #1
    1284:	6030      	6030	str	r0, [r6, #0]
    1286:	250c      	250c	mov	r5, #12
    1288:	1c34      	1c34	mov	r4, r6		(add r4, r6, #0)
    128a:	3450      	3450	add	r4, #80
    128c:	2000      	2000	mov	r0, #0
    128e:	7020      	7020	strb	r0, [r4, #0]
    1290:	3d01      	3d01	sub	r5, #1
    1292:	3440      	3440	add	r4, #64
    1294:	2d00      	2d00	cmp	r5, #0
    1296:	dcfa      	dcfa	bgt	128e <SoundClear_rev01+0x1a>
    1298:	69f4      	69f4	ldr	r4, [r6, #28]
    129a:	2c00      	2c00	cmp	r4, #0
    129c:	d00b      	d00b	beq	12b6 <SoundClear_rev01+0x42>
    129e:	2501      	2501	mov	r5, #1
    12a0:	2700      	2700	mov	r7, #0
    12a2:	0628      	0628	lsl	r0, r5, #24
    12a4:	0e00      	0e00	lsr	r0, r0, #24
    12a6:	6af1      	6af1	ldr	r1, [r6, #44]
    12a8:	fffef7ff 	f7ff	bl	12a8 <SoundClear_rev01+0x34>
    12ac:	7027      	7027	strb	r7, [r4, #0]
    12ae:	3501      	3501	add	r5, #1
    12b0:	3440      	3440	add	r4, #64
    12b2:	2d04      	2d04	cmp	r5, #4
    12b4:	ddf5      	ddf5	ble	12a2 <SoundClear_rev01+0x2e>
    12b6:	4803      	4803	ldr	r0, [pc, #12]	(12c4 <SoundClear_rev01+0x50>)
    12b8:	6030      	6030	str	r0, [r6, #0]
    12ba:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    12bc:	bc01      	bc01	pop	{r0}
    12be:	4700      	4700	bx	r0
    12c0:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    12c2:	0300      	0300	lsl	r0, r0, #12
    12c4:	6d53      	6d53	ldr	r3, [r2, #84]
    12c6:	6873      	6873	ldr	r3, [r6, #4]

000012c8 <SoundVSyncOff_rev01>:
    12c8:	b500      	b500	push	{lr}
    12ca:	b081      	b081	sub	sp, #4
    12cc:	480d      	480d	ldr	r0, [pc, #52]	(1304 <SoundVSyncOff_rev01+0x3c>)
    12ce:	6802      	6802	ldr	r2, [r0, #0]
    12d0:	6811      	6811	ldr	r1, [r2, #0]
    12d2:	4b0d      	4b0d	ldr	r3, [pc, #52]	(1308 <SoundVSyncOff_rev01+0x40>)
    12d4:	18c8      	18c8	add	r0, r1, r3
    12d6:	2801      	2801	cmp	r0, #1
    12d8:	d810      	d810	bhi	12fc <SoundVSyncOff_rev01+0x34>
    12da:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    12dc:	300a      	300a	add	r0, #10
    12de:	6010      	6010	str	r0, [r2, #0]
    12e0:	480a      	480a	ldr	r0, [pc, #40]	(130c <SoundVSyncOff_rev01+0x44>)
    12e2:	2100      	2100	mov	r1, #0
    12e4:	8001      	8001	strh	r1, [r0, #0]
    12e6:	300c      	300c	add	r0, #12
    12e8:	8001      	8001	strh	r1, [r0, #0]
    12ea:	2000      	2000	mov	r0, #0
    12ec:	9000      	9000	str	r0, [sp, #0]
    12ee:	20d4      	20d4	mov	r0, #212
    12f0:	0080      	0080	lsl	r0, r0, #2
    12f2:	1811      	1811	add	r1, r2, r0
    12f4:	4a06      	4a06	ldr	r2, [pc, #24]	(1310 <SoundVSyncOff_rev01+0x48>)
    12f6:	4668      	4668	mov	r0, sp
    12f8:	fffef7ff 	f7ff	bl	12f8 <SoundVSyncOff_rev01+0x30>
    12fc:	b001      	b001	add	sp, #4
    12fe:	bc01      	bc01	pop	{r0}
    1300:	4700      	4700	bx	r0
    1302:	0000      	0000	lsl	r0, r0, #0
    1304:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    1306:	0300      	0300	lsl	r0, r0, #12
    1308:	92ad      	92ad	str	r2, [sp, #692]
    130a:	978c      	978c	str	r7, [sp, #560]
    130c:	00c6      	00c6	lsl	r6, r0, #3
    130e:	0400      	0400	lsl	r0, r0, #16
    1310:	0318      	0318	lsl	r0, r3, #12
    1312:	0500      	0500	lsl	r0, r0, #20

00001314 <SoundVSyncOn_rev01>:
    1314:	b510      	b510	push	{r4, lr}
    1316:	480b      	480b	ldr	r0, [pc, #44]	(1344 <SoundVSyncOn_rev01+0x30>)
    1318:	6802      	6802	ldr	r2, [r0, #0]
    131a:	6813      	6813	ldr	r3, [r2, #0]
    131c:	480a      	480a	ldr	r0, [pc, #40]	(1348 <SoundVSyncOn_rev01+0x34>)
    131e:	4283      	4283	cmp	r3, r0
    1320:	d00c      	d00c	beq	133c <SoundVSyncOn_rev01+0x28>
    1322:	480a      	480a	ldr	r0, [pc, #40]	(134c <SoundVSyncOn_rev01+0x38>)
    1324:	24b6      	24b6	mov	r4, #182
    1326:	0224      	0224	lsl	r4, r4, #8
    1328:	1c21      	1c21	mov	r1, r4		(add r1, r4, #0)
    132a:	8001      	8001	strh	r1, [r0, #0]
    132c:	300c      	300c	add	r0, #12
    132e:	8001      	8001	strh	r1, [r0, #0]
    1330:	7910      	7910	ldrb	r0, [r2, #4]
    1332:	2000      	2000	mov	r0, #0
    1334:	7110      	7110	strb	r0, [r2, #4]
    1336:	1c18      	1c18	mov	r0, r3		(add r0, r3, #0)
    1338:	380a      	380a	sub	r0, #10
    133a:	6010      	6010	str	r0, [r2, #0]
    133c:	bc10      	bc10	pop	{r4}
    133e:	bc01      	bc01	pop	{r0}
    1340:	4700      	4700	bx	r0
    1342:	0000      	0000	lsl	r0, r0, #0
    1344:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    1346:	0300      	0300	lsl	r0, r0, #12
    1348:	6d53      	6d53	ldr	r3, [r2, #84]
    134a:	6873      	6873	ldr	r3, [r6, #4]
    134c:	00c6      	00c6	lsl	r6, r0, #3
    134e:	0400      	0400	lsl	r0, r0, #16

00001350 <MPlayOpen_rev01>:
    1350:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1352:	1c07      	1c07	mov	r7, r0		(add r7, r0, #0)
    1354:	1c0e      	1c0e	mov	r6, r1		(add r6, r1, #0)
    1356:	0612      	0612	lsl	r2, r2, #24
    1358:	0e14      	0e14	lsr	r4, r2, #24
    135a:	2c00      	2c00	cmp	r4, #0
    135c:	d02a      	d02a	beq	13b4 <MPlayOpen_rev01+0x64>
    135e:	2c10      	2c10	cmp	r4, #16
    1360:	d900      	d900	bls	1364 <MPlayOpen_rev01+0x14>
    1362:	2410      	2410	mov	r4, #16
    1364:	4815      	4815	ldr	r0, [pc, #84]	(13bc <MPlayOpen_rev01+0x6c>)
    1366:	6805      	6805	ldr	r5, [r0, #0]
    1368:	6829      	6829	ldr	r1, [r5, #0]
    136a:	4815      	4815	ldr	r0, [pc, #84]	(13c0 <MPlayOpen_rev01+0x70>)
    136c:	4281      	4281	cmp	r1, r0
    136e:	d121      	d121	bne	13b4 <MPlayOpen_rev01+0x64>
    1370:	1c48      	1c48	add	r0, r1, #1
    1372:	6028      	6028	str	r0, [r5, #0]
    1374:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
    1376:	fe71f7ff 	f7ff	bl	105c <Clear64byte_rev>
    137a:	62fe      	62fe	str	r6, [r7, #44]
    137c:	723c      	723c	strb	r4, [r7, #8]
    137e:	2080      	2080	mov	r0, #128
    1380:	0600      	0600	lsl	r0, r0, #24
    1382:	6078      	6078	str	r0, [r7, #4]
    1384:	2c00      	2c00	cmp	r4, #0
    1386:	d007      	d007	beq	1398 <MPlayOpen_rev01+0x48>
    1388:	2100      	2100	mov	r1, #0
    138a:	7031      	7031	strb	r1, [r6, #0]
    138c:	1e60      	1e60	sub	r0, r4, #1
    138e:	0600      	0600	lsl	r0, r0, #24
    1390:	0e04      	0e04	lsr	r4, r0, #24
    1392:	3650      	3650	add	r6, #80
    1394:	2c00      	2c00	cmp	r4, #0
    1396:	d1f8      	d1f8	bne	138a <MPlayOpen_rev01+0x3a>
    1398:	6a28      	6a28	ldr	r0, [r5, #32]
    139a:	2800      	2800	cmp	r0, #0
    139c:	d004      	d004	beq	13a8 <MPlayOpen_rev01+0x58>
    139e:	63b8      	63b8	str	r0, [r7, #56]
    13a0:	6a68      	6a68	ldr	r0, [r5, #36]
    13a2:	63f8      	63f8	str	r0, [r7, #60]
    13a4:	2000      	2000	mov	r0, #0
    13a6:	6228      	6228	str	r0, [r5, #32]
    13a8:	626f      	626f	str	r7, [r5, #36]
    13aa:	4806      	4806	ldr	r0, [pc, #24]	(13c4 <MPlayOpen_rev01+0x74>)
    13ac:	6228      	6228	str	r0, [r5, #32]
    13ae:	4804      	4804	ldr	r0, [pc, #16]	(13c0 <MPlayOpen_rev01+0x70>)
    13b0:	6028      	6028	str	r0, [r5, #0]
    13b2:	6378      	6378	str	r0, [r7, #52]
    13b4:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    13b6:	bc01      	bc01	pop	{r0}
    13b8:	4700      	4700	bx	r0
    13ba:	0000      	0000	lsl	r0, r0, #0
    13bc:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    13be:	0300      	0300	lsl	r0, r0, #12
    13c0:	6d53      	6d53	ldr	r3, [r2, #84]
    13c2:	6873      	6873	ldr	r3, [r6, #4]
    13c4:	0000      	0000	lsl	r0, r0, #0
	...

000013c8 <MPlayStart_rev01>:
    13c8:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    13ca:	4647      	4647	mov	r7, r8
    13cc:	b480      	b480	push	{r7}
    13ce:	1c05      	1c05	mov	r5, r0		(add r5, r0, #0)
    13d0:	1c0f      	1c0f	mov	r7, r1		(add r7, r1, #0)
    13d2:	6b69      	6b69	ldr	r1, [r5, #52]
    13d4:	4828      	4828	ldr	r0, [pc, #160]	(1478 <MPlayStart_rev01+0xb0>)
    13d6:	4281      	4281	cmp	r1, r0
    13d8:	d149      	d149	bne	146e <MPlayStart_rev01+0xa6>
    13da:	1c48      	1c48	add	r0, r1, #1
    13dc:	6368      	6368	str	r0, [r5, #52]
    13de:	2100      	2100	mov	r1, #0
    13e0:	6069      	6069	str	r1, [r5, #4]
    13e2:	602f      	602f	str	r7, [r5, #0]
    13e4:	6878      	6878	ldr	r0, [r7, #4]
    13e6:	6328      	6328	str	r0, [r5, #48]
    13e8:	78b8      	78b8	ldrb	r0, [r7, #2]
    13ea:	7268      	7268	strb	r0, [r5, #9]
    13ec:	60e9      	60e9	str	r1, [r5, #12]
    13ee:	2096      	2096	mov	r0, #150
    13f0:	83a8      	83a8	strh	r0, [r5, #28]
    13f2:	8428      	8428	strh	r0, [r5, #32]
    13f4:	306a      	306a	add	r0, #106
    13f6:	83e8      	83e8	strh	r0, [r5, #30]
    13f8:	8469      	8469	strh	r1, [r5, #34]
    13fa:	84a9      	84a9	strh	r1, [r5, #36]
    13fc:	2600      	2600	mov	r6, #0
    13fe:	6aec      	6aec	ldr	r4, [r5, #44]
    1400:	7838      	7838	ldrb	r0, [r7, #0]
    1402:	4286      	4286	cmp	r6, r0
    1404:	da19      	da19	bge	143a <MPlayStart_rev01+0x72>
    1406:	7a29      	7a29	ldrb	r1, [r5, #8]
    1408:	428e      	428e	cmp	r6, r1
    140a:	da26      	da26	bge	145a <MPlayStart_rev01+0x92>
    140c:	46b0      	46b0	mov	r8, r6
    140e:	1c28      	1c28	mov	r0, r5		(add r0, r5, #0)
    1410:	1c21      	1c21	mov	r1, r4		(add r1, r4, #0)
    1412:	fa79f7ff 	f7ff	bl	908 <TrackStop_rev01>
    1416:	20c0      	20c0	mov	r0, #192
    1418:	7020      	7020	strb	r0, [r4, #0]
    141a:	4640      	4640	mov	r0, r8
    141c:	6220      	6220	str	r0, [r4, #32]
    141e:	00b1      	00b1	lsl	r1, r6, #2
    1420:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
    1422:	3008      	3008	add	r0, #8
    1424:	1840      	1840	add	r0, r0, r1
    1426:	6800      	6800	ldr	r0, [r0, #0]
    1428:	6420      	6420	str	r0, [r4, #64]
    142a:	3601      	3601	add	r6, #1
    142c:	3450      	3450	add	r4, #80
    142e:	7839      	7839	ldrb	r1, [r7, #0]
    1430:	428e      	428e	cmp	r6, r1
    1432:	da02      	da02	bge	143a <MPlayStart_rev01+0x72>
    1434:	7a28      	7a28	ldrb	r0, [r5, #8]
    1436:	4286      	4286	cmp	r6, r0
    1438:	dbe9      	dbe9	blt	140e <MPlayStart_rev01+0x46>
    143a:	7a29      	7a29	ldrb	r1, [r5, #8]
    143c:	428e      	428e	cmp	r6, r1
    143e:	da0c      	da0c	bge	145a <MPlayStart_rev01+0x92>
    1440:	2000      	2000	mov	r0, #0
    1442:	4680      	4680	mov	r8, r0
    1444:	1c28      	1c28	mov	r0, r5		(add r0, r5, #0)
    1446:	1c21      	1c21	mov	r1, r4		(add r1, r4, #0)
    1448:	fa5ef7ff 	f7ff	bl	908 <TrackStop_rev01>
    144c:	4641      	4641	mov	r1, r8
    144e:	7021      	7021	strb	r1, [r4, #0]
    1450:	3601      	3601	add	r6, #1
    1452:	3450      	3450	add	r4, #80
    1454:	7a28      	7a28	ldrb	r0, [r5, #8]
    1456:	4286      	4286	cmp	r6, r0
    1458:	dbf4      	dbf4	blt	1444 <MPlayStart_rev01+0x7c>
    145a:	2080      	2080	mov	r0, #128
    145c:	78f9      	78f9	ldrb	r1, [r7, #3]
    145e:	4008      	4008	and	r0, r1
    1460:	2800      	2800	cmp	r0, #0
    1462:	d002      	d002	beq	146a <MPlayStart_rev01+0xa2>
    1464:	78f8      	78f8	ldrb	r0, [r7, #3]
    1466:	feb9f7ff 	f7ff	bl	11dc <SoundMode_rev01>
    146a:	4803      	4803	ldr	r0, [pc, #12]	(1478 <MPlayStart_rev01+0xb0>)
    146c:	6368      	6368	str	r0, [r5, #52]
    146e:	bc08      	bc08	pop	{r3}
    1470:	4698      	4698	mov	r8, r3
    1472:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1474:	bc01      	bc01	pop	{r0}
    1476:	4700      	4700	bx	r0
    1478:	6d53      	6d53	ldr	r3, [r2, #84]
    147a:	6873      	6873	ldr	r3, [r6, #4]

0000147c <MPlayStop_rev01>:
    147c:	b570      	b570	push	{r4, r5, r6, lr}
    147e:	1c06      	1c06	mov	r6, r0		(add r6, r0, #0)
    1480:	6b71      	6b71	ldr	r1, [r6, #52]
    1482:	480d      	480d	ldr	r0, [pc, #52]	(14b8 <MPlayStop_rev01+0x3c>)
    1484:	4281      	4281	cmp	r1, r0
    1486:	d114      	d114	bne	14b2 <MPlayStop_rev01+0x36>
    1488:	1c48      	1c48	add	r0, r1, #1
    148a:	6370      	6370	str	r0, [r6, #52]
    148c:	6870      	6870	ldr	r0, [r6, #4]
    148e:	2180      	2180	mov	r1, #128
    1490:	0609      	0609	lsl	r1, r1, #24
    1492:	4308      	4308	orr	r0, r1
    1494:	6070      	6070	str	r0, [r6, #4]
    1496:	7a34      	7a34	ldrb	r4, [r6, #8]
    1498:	6af5      	6af5	ldr	r5, [r6, #44]
    149a:	2c00      	2c00	cmp	r4, #0
    149c:	dd07      	dd07	ble	14ae <MPlayStop_rev01+0x32>
    149e:	1c30      	1c30	mov	r0, r6		(add r0, r6, #0)
    14a0:	1c29      	1c29	mov	r1, r5		(add r1, r5, #0)
    14a2:	fa31f7ff 	f7ff	bl	908 <TrackStop_rev01>
    14a6:	3c01      	3c01	sub	r4, #1
    14a8:	3550      	3550	add	r5, #80
    14aa:	2c00      	2c00	cmp	r4, #0
    14ac:	dcf7      	dcf7	bgt	149e <MPlayStop_rev01+0x22>
    14ae:	4802      	4802	ldr	r0, [pc, #8]	(14b8 <MPlayStop_rev01+0x3c>)
    14b0:	6370      	6370	str	r0, [r6, #52]
    14b2:	bc70      	bc70	pop	{r4, r5, r6}
    14b4:	bc01      	bc01	pop	{r0}
    14b6:	4700      	4700	bx	r0
    14b8:	6d53      	6d53	ldr	r3, [r2, #84]
    14ba:	6873      	6873	ldr	r3, [r6, #4]

000014bc <FadeOutBody_rev01>:
    14bc:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    14be:	1c06      	1c06	mov	r6, r0		(add r6, r0, #0)
    14c0:	8cb2      	8cb2	ldrh	r2, [r6, #36]
    14c2:	2a00      	2a00	cmp	r2, #0
    14c4:	d037      	d037	beq	1536 <FadeOutBody_rev01+0x7a>
    14c6:	8cf0      	8cf0	ldrh	r0, [r6, #38]
    14c8:	3801      	3801	sub	r0, #1
    14ca:	84f0      	84f0	strh	r0, [r6, #38]
    14cc:	4b0d      	4b0d	ldr	r3, [pc, #52]	(1504 <FadeOutBody_rev01+0x48>)
    14ce:	1c19      	1c19	mov	r1, r3		(add r1, r3, #0)
    14d0:	0400      	0400	lsl	r0, r0, #16
    14d2:	2800      	2800	cmp	r0, #0
    14d4:	d12f      	d12f	bne	1536 <FadeOutBody_rev01+0x7a>
    14d6:	8d30      	8d30	ldrh	r0, [r6, #40]
    14d8:	3810      	3810	sub	r0, #16
    14da:	8530      	8530	strh	r0, [r6, #40]
    14dc:	4008      	4008	and	r0, r1
    14de:	0400      	0400	lsl	r0, r0, #16
    14e0:	2800      	2800	cmp	r0, #0
    14e2:	dc11      	dc11	bgt	1508 <FadeOutBody_rev01+0x4c>
    14e4:	7a35      	7a35	ldrb	r5, [r6, #8]
    14e6:	6af4      	6af4	ldr	r4, [r6, #44]
    14e8:	2d00      	2d00	cmp	r5, #0
    14ea:	dd24      	dd24	ble	1536 <FadeOutBody_rev01+0x7a>
    14ec:	2700      	2700	mov	r7, #0
    14ee:	1c30      	1c30	mov	r0, r6		(add r0, r6, #0)
    14f0:	1c21      	1c21	mov	r1, r4		(add r1, r4, #0)
    14f2:	fa09f7ff 	f7ff	bl	908 <TrackStop_rev01>
    14f6:	7027      	7027	strb	r7, [r4, #0]
    14f8:	3d01      	3d01	sub	r5, #1
    14fa:	3450      	3450	add	r4, #80
    14fc:	2d00      	2d00	cmp	r5, #0
    14fe:	dcf6      	dcf6	bgt	14ee <FadeOutBody_rev01+0x32>
    1500:	e019      	e019	b	1536 <FadeOutBody_rev01+0x7a>
    1502:	0000      	0000	lsl	r0, r0, #0
    1504:	ffff      	ffff	second half of BL instruction 0xffff
    1506:	0000      	0000	lsl	r0, r0, #0
    1508:	84f2      	84f2	strh	r2, [r6, #38]
    150a:	7a35      	7a35	ldrb	r5, [r6, #8]
    150c:	6af4      	6af4	ldr	r4, [r6, #44]
    150e:	2d00      	2d00	cmp	r5, #0
    1510:	dd11      	dd11	ble	1536 <FadeOutBody_rev01+0x7a>
    1512:	2380      	2380	mov	r3, #128
    1514:	2700      	2700	mov	r7, #0
    1516:	2203      	2203	mov	r2, #3
    1518:	7821      	7821	ldrb	r1, [r4, #0]
    151a:	1c18      	1c18	mov	r0, r3		(add r0, r3, #0)
    151c:	4008      	4008	and	r0, r1
    151e:	2800      	2800	cmp	r0, #0
    1520:	d005      	d005	beq	152e <FadeOutBody_rev01+0x72>
    1522:	8d37      	8d37	ldrh	r7, [r6, #40]
    1524:	08b8      	08b8	lsr	r0, r7, #2
    1526:	74e0      	74e0	strb	r0, [r4, #19]
    1528:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    152a:	4310      	4310	orr	r0, r2
    152c:	7020      	7020	strb	r0, [r4, #0]
    152e:	3d01      	3d01	sub	r5, #1
    1530:	3450      	3450	add	r4, #80
    1532:	2d00      	2d00	cmp	r5, #0
    1534:	dcf0      	dcf0	bgt	1518 <FadeOutBody_rev01+0x5c>
    1536:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1538:	bc01      	bc01	pop	{r0}
    153a:	4700      	4700	bx	r0

0000153c <TrkVolPitSet_rev01>:
    153c:	b510      	b510	push	{r4, lr}
    153e:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
    1540:	2001      	2001	mov	r0, #1
    1542:	7811      	7811	ldrb	r1, [r2, #0]
    1544:	4008      	4008	and	r0, r1
    1546:	2800      	2800	cmp	r0, #0
    1548:	d034      	d034	beq	15b4 <TrkVolPitSet_rev01+0x78>
    154a:	7cd3      	7cd3	ldrb	r3, [r2, #19]
    154c:	7c91      	7c91	ldrb	r1, [r2, #18]
    154e:	1c18      	1c18	mov	r0, r3		(add r0, r3, #0)
    1550:	4348      	4348	mul	r0, r1
    1552:	0943      	0943	lsr	r3, r0, #5
    1554:	7e14      	7e14	ldrb	r4, [r2, #24]
    1556:	2c01      	2c01	cmp	r4, #1
    1558:	d104      	d104	bne	1564 <TrkVolPitSet_rev01+0x28>
    155a:	2016      	2016	mov	r0, #22
    155c:	5610      	5610	ldsb	r0, [r2, r0]
    155e:	3080      	3080	add	r0, #128
    1560:	4358      	4358	mul	r0, r3
    1562:	09c3      	09c3	lsr	r3, r0, #7
    1564:	2014      	2014	mov	r0, #20
    1566:	5610      	5610	ldsb	r0, [r2, r0]
    1568:	0040      	0040	lsl	r0, r0, #1
    156a:	2115      	2115	mov	r1, #21
    156c:	5651      	5651	ldsb	r1, [r2, r1]
    156e:	1841      	1841	add	r1, r0, r1
    1570:	2c02      	2c02	cmp	r4, #2
    1572:	d102      	d102	bne	157a <TrkVolPitSet_rev01+0x3e>
    1574:	2016      	2016	mov	r0, #22
    1576:	5610      	5610	ldsb	r0, [r2, r0]
    1578:	1809      	1809	add	r1, r1, r0
    157a:	2080      	2080	mov	r0, #128
    157c:	4240      	4240	neg	r0, r0
    157e:	4281      	4281	cmp	r1, r0
    1580:	da01      	da01	bge	1586 <TrkVolPitSet_rev01+0x4a>
    1582:	1c01      	1c01	mov	r1, r0		(add r1, r0, #0)
    1584:	e002      	e002	b	158c <TrkVolPitSet_rev01+0x50>
    1586:	297f      	297f	cmp	r1, #127
    1588:	dd00      	dd00	ble	158c <TrkVolPitSet_rev01+0x50>
    158a:	217f      	217f	mov	r1, #127
    158c:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    158e:	3080      	3080	add	r0, #128
    1590:	4358      	4358	mul	r0, r3
    1592:	0a00      	0a00	lsr	r0, r0, #8
    1594:	0600      	0600	lsl	r0, r0, #24
    1596:	0e00      	0e00	lsr	r0, r0, #24
    1598:	28ff      	28ff	cmp	r0, #255
    159a:	d900      	d900	bls	159e <TrkVolPitSet_rev01+0x62>
    159c:	20ff      	20ff	mov	r0, #255
    159e:	7410      	7410	strb	r0, [r2, #16]
    15a0:	207f      	207f	mov	r0, #127
    15a2:	1a40      	1a40	sub	r0, r0, r1
    15a4:	4358      	4358	mul	r0, r3
    15a6:	0a00      	0a00	lsr	r0, r0, #8
    15a8:	0600      	0600	lsl	r0, r0, #24
    15aa:	0e00      	0e00	lsr	r0, r0, #24
    15ac:	28ff      	28ff	cmp	r0, #255
    15ae:	d900      	d900	bls	15b2 <TrkVolPitSet_rev01+0x76>
    15b0:	20ff      	20ff	mov	r0, #255
    15b2:	7450      	7450	strb	r0, [r2, #17]
    15b4:	7811      	7811	ldrb	r1, [r2, #0]
    15b6:	2004      	2004	mov	r0, #4
    15b8:	4008      	4008	and	r0, r1
    15ba:	1c0b      	1c0b	mov	r3, r1		(add r3, r1, #0)
    15bc:	2800      	2800	cmp	r0, #0
    15be:	d01b      	d01b	beq	15f8 <TrkVolPitSet_rev01+0xbc>
    15c0:	200e      	200e	mov	r0, #14
    15c2:	5610      	5610	ldsb	r0, [r2, r0]
    15c4:	7bd1      	7bd1	ldrb	r1, [r2, #15]
    15c6:	4348      	4348	mul	r0, r1
    15c8:	210c      	210c	mov	r1, #12
    15ca:	5651      	5651	ldsb	r1, [r2, r1]
    15cc:	1809      	1809	add	r1, r1, r0
    15ce:	0089      	0089	lsl	r1, r1, #2
    15d0:	200a      	200a	mov	r0, #10
    15d2:	5610      	5610	ldsb	r0, [r2, r0]
    15d4:	0200      	0200	lsl	r0, r0, #8
    15d6:	1809      	1809	add	r1, r1, r0
    15d8:	200b      	200b	mov	r0, #11
    15da:	5610      	5610	ldsb	r0, [r2, r0]
    15dc:	0200      	0200	lsl	r0, r0, #8
    15de:	1809      	1809	add	r1, r1, r0
    15e0:	7b50      	7b50	ldrb	r0, [r2, #13]
    15e2:	1841      	1841	add	r1, r0, r1
    15e4:	7e10      	7e10	ldrb	r0, [r2, #24]
    15e6:	2800      	2800	cmp	r0, #0
    15e8:	d103      	d103	bne	15f2 <TrkVolPitSet_rev01+0xb6>
    15ea:	2016      	2016	mov	r0, #22
    15ec:	5610      	5610	ldsb	r0, [r2, r0]
    15ee:	0100      	0100	lsl	r0, r0, #4
    15f0:	1809      	1809	add	r1, r1, r0
    15f2:	1208      	1208	asr	r0, r1, #8
    15f4:	7210      	7210	strb	r0, [r2, #8]
    15f6:	7251      	7251	strb	r1, [r2, #9]
    15f8:	20fa      	20fa	mov	r0, #250
    15fa:	4018      	4018	and	r0, r3
    15fc:	7010      	7010	strb	r0, [r2, #0]
    15fe:	bc10      	bc10	pop	{r4}
    1600:	bc01      	bc01	pop	{r0}
    1602:	4700      	4700	bx	r0

00001604 <MidiKey2CgbFr>:
    1604:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1606:	0600      	0600	lsl	r0, r0, #24
    1608:	0e00      	0e00	lsr	r0, r0, #24
    160a:	0609      	0609	lsl	r1, r1, #24
    160c:	0e0d      	0e0d	lsr	r5, r1, #24
    160e:	0612      	0612	lsl	r2, r2, #24
    1610:	0e12      	0e12	lsr	r2, r2, #24
    1612:	4694      	4694	mov	ip, r2
    1614:	2804      	2804	cmp	r0, #4
    1616:	d111      	d111	bne	163c <MidiKey2CgbFr+0x38>
    1618:	2d14      	2d14	cmp	r5, #20
    161a:	d801      	d801	bhi	1620 <MidiKey2CgbFr+0x1c>
    161c:	2500      	2500	mov	r5, #0
    161e:	e006      	e006	b	162e <MidiKey2CgbFr+0x2a>
    1620:	1c28      	1c28	mov	r0, r5		(add r0, r5, #0)
    1622:	3815      	3815	sub	r0, #21
    1624:	0600      	0600	lsl	r0, r0, #24
    1626:	0e05      	0e05	lsr	r5, r0, #24
    1628:	2d3b      	2d3b	cmp	r5, #59
    162a:	d900      	d900	bls	162e <MidiKey2CgbFr+0x2a>
    162c:	253b      	253b	mov	r5, #59
    162e:	4802      	4802	ldr	r0, [pc, #8]	(1638 <MidiKey2CgbFr+0x34>)
    1630:	1828      	1828	add	r0, r5, r0
    1632:	7800      	7800	ldrb	r0, [r0, #0]
    1634:	e033      	e033	b	169e <MidiKey2CgbFr+0x9a>
    1636:	0000      	0000	lsl	r0, r0, #0
    1638:	0000      	0000	lsl	r0, r0, #0
    163a:	0000      	0000	lsl	r0, r0, #0
    163c:	2d23      	2d23	cmp	r5, #35
    163e:	d803      	d803	bhi	1648 <MidiKey2CgbFr+0x44>
    1640:	2000      	2000	mov	r0, #0
    1642:	4684      	4684	mov	ip, r0
    1644:	2500      	2500	mov	r5, #0
    1646:	e008      	e008	b	165a <MidiKey2CgbFr+0x56>
    1648:	1c28      	1c28	mov	r0, r5		(add r0, r5, #0)
    164a:	3824      	3824	sub	r0, #36
    164c:	0600      	0600	lsl	r0, r0, #24
    164e:	0e05      	0e05	lsr	r5, r0, #24
    1650:	2d82      	2d82	cmp	r5, #130
    1652:	d902      	d902	bls	165a <MidiKey2CgbFr+0x56>
    1654:	2582      	2582	mov	r5, #130
    1656:	21ff      	21ff	mov	r1, #255
    1658:	468c      	468c	mov	ip, r1
    165a:	4b12      	4b12	ldr	r3, [pc, #72]	(16a4 <MidiKey2CgbFr+0xa0>)
    165c:	18e8      	18e8	add	r0, r5, r3
    165e:	7806      	7806	ldrb	r6, [r0, #0]
    1660:	4c11      	4c11	ldr	r4, [pc, #68]	(16a8 <MidiKey2CgbFr+0xa4>)
    1662:	220f      	220f	mov	r2, #15
    1664:	1c30      	1c30	mov	r0, r6		(add r0, r6, #0)
    1666:	4010      	4010	and	r0, r2
    1668:	0040      	0040	lsl	r0, r0, #1
    166a:	1900      	1900	add	r0, r0, r4
    166c:	2700      	2700	mov	r7, #0
    166e:	5fc1      	5fc1	ldsh	r1, [r0, r7]
    1670:	1130      	1130	asr	r0, r6, #4
    1672:	1c0e      	1c0e	mov	r6, r1		(add r6, r1, #0)
    1674:	4106      	4106	asr	r6, r0
    1676:	1c68      	1c68	add	r0, r5, #1
    1678:	18c0      	18c0	add	r0, r0, r3
    167a:	7801      	7801	ldrb	r1, [r0, #0]
    167c:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    167e:	4010      	4010	and	r0, r2
    1680:	0040      	0040	lsl	r0, r0, #1
    1682:	1900      	1900	add	r0, r0, r4
    1684:	2200      	2200	mov	r2, #0
    1686:	5e80      	5e80	ldsh	r0, [r0, r2]
    1688:	1109      	1109	asr	r1, r1, #4
    168a:	4108      	4108	asr	r0, r1
    168c:	1b80      	1b80	sub	r0, r0, r6
    168e:	4667      	4667	mov	r7, ip
    1690:	4347      	4347	mul	r7, r0
    1692:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
    1694:	1200      	1200	asr	r0, r0, #8
    1696:	1830      	1830	add	r0, r6, r0
    1698:	2180      	2180	mov	r1, #128
    169a:	0109      	0109	lsl	r1, r1, #4
    169c:	1840      	1840	add	r0, r0, r1
    169e:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    16a0:	bc02      	bc02	pop	{r1}
    16a2:	4708      	4708	bx	r1
	...

000016ac <CgbOscOff>:
    16ac:	0600      	0600	lsl	r0, r0, #24
    16ae:	0e00      	0e00	lsr	r0, r0, #24
    16b0:	1c01      	1c01	mov	r1, r0		(add r1, r0, #0)
    16b2:	2802      	2802	cmp	r0, #2
    16b4:	d00e      	d00e	beq	16d4 <CgbOscOff+0x28>
    16b6:	2802      	2802	cmp	r0, #2
    16b8:	dc02      	dc02	bgt	16c0 <CgbOscOff+0x14>
    16ba:	2801      	2801	cmp	r0, #1
    16bc:	d003      	d003	beq	16c6 <CgbOscOff+0x1a>
    16be:	e013      	e013	b	16e8 <CgbOscOff+0x3c>
    16c0:	2903      	2903	cmp	r1, #3
    16c2:	d00b      	d00b	beq	16dc <CgbOscOff+0x30>
    16c4:	e010      	e010	b	16e8 <CgbOscOff+0x3c>
    16c6:	4902      	4902	ldr	r1, [pc, #8]	(16d0 <CgbOscOff+0x24>)
    16c8:	2008      	2008	mov	r0, #8
    16ca:	7008      	7008	strb	r0, [r1, #0]
    16cc:	3102      	3102	add	r1, #2
    16ce:	e00f      	e00f	b	16f0 <CgbOscOff+0x44>
    16d0:	0063      	0063	lsl	r3, r4, #1
    16d2:	0400      	0400	lsl	r0, r0, #16
    16d4:	4900      	4900	ldr	r1, [pc, #0]	(16d8 <CgbOscOff+0x2c>)
    16d6:	e008      	e008	b	16ea <CgbOscOff+0x3e>
    16d8:	0069      	0069	lsl	r1, r5, #1
    16da:	0400      	0400	lsl	r0, r0, #16
    16dc:	4901      	4901	ldr	r1, [pc, #4]	(16e4 <CgbOscOff+0x38>)
    16de:	2000      	2000	mov	r0, #0
    16e0:	e007      	e007	b	16f2 <CgbOscOff+0x46>
    16e2:	0000      	0000	lsl	r0, r0, #0
    16e4:	0070      	0070	lsl	r0, r6, #1
    16e6:	0400      	0400	lsl	r0, r0, #16
    16e8:	4903      	4903	ldr	r1, [pc, #12]	(16f8 <CgbOscOff+0x4c>)
    16ea:	2008      	2008	mov	r0, #8
    16ec:	7008      	7008	strb	r0, [r1, #0]
    16ee:	3104      	3104	add	r1, #4
    16f0:	2080      	2080	mov	r0, #128
    16f2:	7008      	7008	strb	r0, [r1, #0]
    16f4:	4770      	4770	bx	lr
    16f6:	0000      	0000	lsl	r0, r0, #0
    16f8:	0079      	0079	lsl	r1, r7, #1
    16fa:	0400      	0400	lsl	r0, r0, #16

000016fc <CgbModVol>:
    16fc:	b510      	b510	push	{r4, lr}
    16fe:	1c01      	1c01	mov	r1, r0		(add r1, r0, #0)
    1700:	7888      	7888	ldrb	r0, [r1, #2]
    1702:	0602      	0602	lsl	r2, r0, #24
    1704:	0e14      	0e14	lsr	r4, r2, #24
    1706:	78cb      	78cb	ldrb	r3, [r1, #3]
    1708:	0618      	0618	lsl	r0, r3, #24
    170a:	0e03      	0e03	lsr	r3, r0, #24
    170c:	429c      	429c	cmp	r4, r3
    170e:	d305      	d305	bcc	171c <CgbModVol+0x20>
    1710:	0e50      	0e50	lsr	r0, r2, #25
    1712:	4298      	4298	cmp	r0, r3
    1714:	d308      	d308	bcc	1728 <CgbModVol+0x2c>
    1716:	200f      	200f	mov	r0, #15
    1718:	76c8      	76c8	strb	r0, [r1, #27]
    171a:	e00c      	e00c	b	1736 <CgbModVol+0x3a>
    171c:	0e40      	0e40	lsr	r0, r0, #25
    171e:	42a0      	42a0	cmp	r0, r4
    1720:	d302      	d302	bcc	1728 <CgbModVol+0x2c>
    1722:	20f0      	20f0	mov	r0, #240
    1724:	76c8      	76c8	strb	r0, [r1, #27]
    1726:	e006      	e006	b	1736 <CgbModVol+0x3a>
    1728:	20ff      	20ff	mov	r0, #255
    172a:	76c8      	76c8	strb	r0, [r1, #27]
    172c:	78ca      	78ca	ldrb	r2, [r1, #3]
    172e:	788b      	788b	ldrb	r3, [r1, #2]
    1730:	18d0      	18d0	add	r0, r2, r3
    1732:	0900      	0900	lsr	r0, r0, #4
    1734:	e007      	e007	b	1746 <CgbModVol+0x4a>
    1736:	78ca      	78ca	ldrb	r2, [r1, #3]
    1738:	788b      	788b	ldrb	r3, [r1, #2]
    173a:	18d0      	18d0	add	r0, r2, r3
    173c:	0900      	0900	lsr	r0, r0, #4
    173e:	7288      	7288	strb	r0, [r1, #10]
    1740:	280f      	280f	cmp	r0, #15
    1742:	d901      	d901	bls	1748 <CgbModVol+0x4c>
    1744:	200f      	200f	mov	r0, #15
    1746:	7288      	7288	strb	r0, [r1, #10]
    1748:	798a      	798a	ldrb	r2, [r1, #6]
    174a:	7a8b      	7a8b	ldrb	r3, [r1, #10]
    174c:	1c10      	1c10	mov	r0, r2		(add r0, r2, #0)
    174e:	4358      	4358	mul	r0, r3
    1750:	300f      	300f	add	r0, #15
    1752:	1100      	1100	asr	r0, r0, #4
    1754:	7648      	7648	strb	r0, [r1, #25]
    1756:	7f08      	7f08	ldrb	r0, [r1, #28]
    1758:	7eca      	7eca	ldrb	r2, [r1, #27]
    175a:	4010      	4010	and	r0, r2
    175c:	76c8      	76c8	strb	r0, [r1, #27]
    175e:	bc10      	bc10	pop	{r4}
    1760:	bc01      	bc01	pop	{r0}
    1762:	4700      	4700	bx	r0

00001764 <CgbSound>:
    1764:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1766:	4657      	4657	mov	r7, sl
    1768:	464e      	464e	mov	r6, r9
    176a:	4645      	4645	mov	r5, r8
    176c:	b4e0      	b4e0	push	{r5, r6, r7}
    176e:	b088      	b088	sub	sp, #32
    1770:	4804      	4804	ldr	r0, [pc, #16]	(1784 <CgbSound+0x20>)
    1772:	6800      	6800	ldr	r0, [r0, #0]
    1774:	9001      	9001	str	r0, [sp, #4]
    1776:	7a80      	7a80	ldrb	r0, [r0, #10]
    1778:	2800      	2800	cmp	r0, #0
    177a:	d005      	d005	beq	1788 <CgbSound+0x24>
    177c:	3801      	3801	sub	r0, #1
    177e:	9901      	9901	ldr	r1, [sp, #4]
    1780:	7288      	7288	strb	r0, [r1, #10]
    1782:	e004      	e004	b	178e <CgbSound+0x2a>
    1784:	7ff0      	7ff0	ldrb	r0, [r6, #31]
    1786:	0300      	0300	lsl	r0, r0, #12
    1788:	200e      	200e	mov	r0, #14
    178a:	9a01      	9a01	ldr	r2, [sp, #4]
    178c:	7290      	7290	strb	r0, [r2, #10]
    178e:	2601      	2601	mov	r6, #1
    1790:	9801      	9801	ldr	r0, [sp, #4]
    1792:	69c4      	69c4	ldr	r4, [r0, #28]
    1794:	7821      	7821	ldrb	r1, [r4, #0]
    1796:	20c7      	20c7	mov	r0, #199
    1798:	4008      	4008	and	r0, r1
    179a:	1c72      	1c72	add	r2, r6, #1
    179c:	4691      	4691	mov	r9, r2
    179e:	2240      	2240	mov	r2, #64
    17a0:	1912      	1912	add	r2, r2, r4
    17a2:	4690      	4690	mov	r8, r2
    17a4:	2800      	2800	cmp	r0, #0
    17a6:	d100      	d100	bne	17aa <CgbSound+0x46>
    17a8:	e1f1      	e1f1	b	1b8e <CgbSound+0x42a>
    17aa:	2e02      	2e02	cmp	r6, #2
    17ac:	d016      	d016	beq	17dc <CgbSound+0x78>
    17ae:	2e02      	2e02	cmp	r6, #2
    17b0:	dc02      	dc02	bgt	17b8 <CgbSound+0x54>
    17b2:	2e01      	2e01	cmp	r6, #1
    17b4:	d003      	d003	beq	17be <CgbSound+0x5a>
    17b6:	e02d      	e02d	b	1814 <CgbSound+0xb0>
    17b8:	2e03      	2e03	cmp	r6, #3
    17ba:	d01b      	d01b	beq	17f4 <CgbSound+0x90>
    17bc:	e02a      	e02a	b	1814 <CgbSound+0xb0>
    17be:	4804      	4804	ldr	r0, [pc, #16]	(17d0 <CgbSound+0x6c>)
    17c0:	9002      	9002	str	r0, [sp, #8]
    17c2:	4f04      	4f04	ldr	r7, [pc, #16]	(17d4 <CgbSound+0x70>)
    17c4:	4a04      	4a04	ldr	r2, [pc, #16]	(17d8 <CgbSound+0x74>)
    17c6:	9203      	9203	str	r2, [sp, #12]
    17c8:	3004      	3004	add	r0, #4
    17ca:	9004      	9004	str	r0, [sp, #16]
    17cc:	3202      	3202	add	r2, #2
    17ce:	e029      	e029	b	1824 <CgbSound+0xc0>
    17d0:	0060      	0060	lsl	r0, r4, #1
    17d2:	0400      	0400	lsl	r0, r0, #16
    17d4:	0062      	0062	lsl	r2, r4, #1
    17d6:	0400      	0400	lsl	r0, r0, #16
    17d8:	0063      	0063	lsl	r3, r4, #1
    17da:	0400      	0400	lsl	r0, r0, #16
    17dc:	4802      	4802	ldr	r0, [pc, #8]	(17e8 <CgbSound+0x84>)
    17de:	9002      	9002	str	r0, [sp, #8]
    17e0:	4f02      	4f02	ldr	r7, [pc, #8]	(17ec <CgbSound+0x88>)
    17e2:	4a03      	4a03	ldr	r2, [pc, #12]	(17f0 <CgbSound+0x8c>)
    17e4:	e01a      	e01a	b	181c <CgbSound+0xb8>
    17e6:	0000      	0000	lsl	r0, r0, #0
    17e8:	0061      	0061	lsl	r1, r4, #1
    17ea:	0400      	0400	lsl	r0, r0, #16
    17ec:	0068      	0068	lsl	r0, r5, #1
    17ee:	0400      	0400	lsl	r0, r0, #16
    17f0:	0069      	0069	lsl	r1, r5, #1
    17f2:	0400      	0400	lsl	r0, r0, #16
    17f4:	4804      	4804	ldr	r0, [pc, #16]	(1808 <CgbSound+0xa4>)
    17f6:	9002      	9002	str	r0, [sp, #8]
    17f8:	4f04      	4f04	ldr	r7, [pc, #16]	(180c <CgbSound+0xa8>)
    17fa:	4a05      	4a05	ldr	r2, [pc, #20]	(1810 <CgbSound+0xac>)
    17fc:	9203      	9203	str	r2, [sp, #12]
    17fe:	3004      	3004	add	r0, #4
    1800:	9004      	9004	str	r0, [sp, #16]
    1802:	3202      	3202	add	r2, #2
    1804:	e00e      	e00e	b	1824 <CgbSound+0xc0>
    1806:	0000      	0000	lsl	r0, r0, #0
    1808:	0070      	0070	lsl	r0, r6, #1
    180a:	0400      	0400	lsl	r0, r0, #16
    180c:	0072      	0072	lsl	r2, r6, #1
    180e:	0400      	0400	lsl	r0, r0, #16
    1810:	0073      	0073	lsl	r3, r6, #1
    1812:	0400      	0400	lsl	r0, r0, #16
    1814:	4816      	4816	ldr	r0, [pc, #88]	(1870 <CgbSound+0x10c>)
    1816:	9002      	9002	str	r0, [sp, #8]
    1818:	4f16      	4f16	ldr	r7, [pc, #88]	(1874 <CgbSound+0x110>)
    181a:	4a17      	4a17	ldr	r2, [pc, #92]	(1878 <CgbSound+0x114>)
    181c:	9203      	9203	str	r2, [sp, #12]
    181e:	300b      	300b	add	r0, #11
    1820:	9004      	9004	str	r0, [sp, #16]
    1822:	3204      	3204	add	r2, #4
    1824:	9205      	9205	str	r2, [sp, #20]
    1826:	9801      	9801	ldr	r0, [sp, #4]
    1828:	7a80      	7a80	ldrb	r0, [r0, #10]
    182a:	9000      	9000	str	r0, [sp, #0]
    182c:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
    182e:	2080      	2080	mov	r0, #128
    1830:	4682      	4682	mov	sl, r0
    1832:	4010      	4010	and	r0, r2
    1834:	2800      	2800	cmp	r0, #0
    1836:	d072      	d072	beq	191e <CgbSound+0x1ba>
    1838:	2340      	2340	mov	r3, #64
    183a:	1c18      	1c18	mov	r0, r3		(add r0, r3, #0)
    183c:	4010      	4010	and	r0, r2
    183e:	0600      	0600	lsl	r0, r0, #24
    1840:	0e05      	0e05	lsr	r5, r0, #24
    1842:	1c71      	1c71	add	r1, r6, #1
    1844:	4689      	4689	mov	r9, r1
    1846:	2240      	2240	mov	r2, #64
    1848:	1912      	1912	add	r2, r2, r4
    184a:	4690      	4690	mov	r8, r2
    184c:	2d00      	2d00	cmp	r5, #0
    184e:	d178      	d178	bne	1942 <CgbSound+0x1de>
    1850:	2003      	2003	mov	r0, #3
    1852:	7020      	7020	strb	r0, [r4, #0]
    1854:	7760      	7760	strb	r0, [r4, #29]
    1856:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
    1858:	9307      	9307	str	r3, [sp, #28]
    185a:	ff4ff7ff 	f7ff	bl	16fc <CgbModVol>
    185e:	9b07      	9b07	ldr	r3, [sp, #28]
    1860:	2e02      	2e02	cmp	r6, #2
    1862:	d011      	d011	beq	1888 <CgbSound+0x124>
    1864:	2e02      	2e02	cmp	r6, #2
    1866:	dc09      	dc09	bgt	187c <CgbSound+0x118>
    1868:	2e01      	2e01	cmp	r6, #1
    186a:	d00a      	d00a	beq	1882 <CgbSound+0x11e>
    186c:	e038      	e038	b	18e0 <CgbSound+0x17c>
    186e:	0000      	0000	lsl	r0, r0, #0
    1870:	0071      	0071	lsl	r1, r6, #1
    1872:	0400      	0400	lsl	r0, r0, #16
    1874:	0078      	0078	lsl	r0, r7, #1
    1876:	0400      	0400	lsl	r0, r0, #16
    1878:	0079      	0079	lsl	r1, r7, #1
    187a:	0400      	0400	lsl	r0, r0, #16
    187c:	2e03      	2e03	cmp	r6, #3
    187e:	d009      	d009	beq	1894 <CgbSound+0x130>
    1880:	e02e      	e02e	b	18e0 <CgbSound+0x17c>
    1882:	7fe0      	7fe0	ldrb	r0, [r4, #31]
    1884:	9902      	9902	ldr	r1, [sp, #8]
    1886:	7008      	7008	strb	r0, [r1, #0]
    1888:	6a60      	6a60	ldr	r0, [r4, #36]
    188a:	0180      	0180	lsl	r0, r0, #6
    188c:	7fa2      	7fa2	ldrb	r2, [r4, #30]
    188e:	1810      	1810	add	r0, r2, r0
    1890:	7038      	7038	strb	r0, [r7, #0]
    1892:	e02b      	e02b	b	18ec <CgbSound+0x188>
    1894:	6a61      	6a61	ldr	r1, [r4, #36]
    1896:	6aa0      	6aa0	ldr	r0, [r4, #40]
    1898:	4281      	4281	cmp	r1, r0
    189a:	d00f      	d00f	beq	18bc <CgbSound+0x158>
    189c:	9802      	9802	ldr	r0, [sp, #8]
    189e:	7003      	7003	strb	r3, [r0, #0]
    18a0:	490c      	490c	ldr	r1, [pc, #48]	(18d4 <CgbSound+0x170>)
    18a2:	6a62      	6a62	ldr	r2, [r4, #36]
    18a4:	6810      	6810	ldr	r0, [r2, #0]
    18a6:	6008      	6008	str	r0, [r1, #0]
    18a8:	3104      	3104	add	r1, #4
    18aa:	6850      	6850	ldr	r0, [r2, #4]
    18ac:	6008      	6008	str	r0, [r1, #0]
    18ae:	3104      	3104	add	r1, #4
    18b0:	6890      	6890	ldr	r0, [r2, #8]
    18b2:	6008      	6008	str	r0, [r1, #0]
    18b4:	3104      	3104	add	r1, #4
    18b6:	68d0      	68d0	ldr	r0, [r2, #12]
    18b8:	6008      	6008	str	r0, [r1, #0]
    18ba:	62a2      	62a2	str	r2, [r4, #40]
    18bc:	9902      	9902	ldr	r1, [sp, #8]
    18be:	700d      	700d	strb	r5, [r1, #0]
    18c0:	7fa0      	7fa0	ldrb	r0, [r4, #30]
    18c2:	7038      	7038	strb	r0, [r7, #0]
    18c4:	7fa0      	7fa0	ldrb	r0, [r4, #30]
    18c6:	2800      	2800	cmp	r0, #0
    18c8:	d006      	d006	beq	18d8 <CgbSound+0x174>
    18ca:	20c0      	20c0	mov	r0, #192
    18cc:	76a0      	76a0	strb	r0, [r4, #26]
    18ce:	7921      	7921	ldrb	r1, [r4, #4]
    18d0:	e017      	e017	b	1902 <CgbSound+0x19e>
    18d2:	0000      	0000	lsl	r0, r0, #0
    18d4:	0090      	0090	lsl	r0, r2, #2
    18d6:	0400      	0400	lsl	r0, r0, #16
    18d8:	4652      	4652	mov	r2, sl
    18da:	76a2      	76a2	strb	r2, [r4, #26]
    18dc:	7921      	7921	ldrb	r1, [r4, #4]
    18de:	e010      	e010	b	1902 <CgbSound+0x19e>
    18e0:	7fa0      	7fa0	ldrb	r0, [r4, #30]
    18e2:	7038      	7038	strb	r0, [r7, #0]
    18e4:	6a60      	6a60	ldr	r0, [r4, #36]
    18e6:	00c0      	00c0	lsl	r0, r0, #3
    18e8:	9904      	9904	ldr	r1, [sp, #16]
    18ea:	7008      	7008	strb	r0, [r1, #0]
    18ec:	7921      	7921	ldrb	r1, [r4, #4]
    18ee:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    18f0:	3008      	3008	add	r0, #8
    18f2:	0600      	0600	lsl	r0, r0, #24
    18f4:	0e00      	0e00	lsr	r0, r0, #24
    18f6:	9006      	9006	str	r0, [sp, #24]
    18f8:	7fa0      	7fa0	ldrb	r0, [r4, #30]
    18fa:	2800      	2800	cmp	r0, #0
    18fc:	d000      	d000	beq	1900 <CgbSound+0x19c>
    18fe:	2040      	2040	mov	r0, #64
    1900:	76a0      	76a0	strb	r0, [r4, #26]
    1902:	2200      	2200	mov	r2, #0
    1904:	72e1      	72e1	strb	r1, [r4, #11]
    1906:	20ff      	20ff	mov	r0, #255
    1908:	4008      	4008	and	r0, r1
    190a:	1c71      	1c71	add	r1, r6, #1
    190c:	4689      	4689	mov	r9, r1
    190e:	2140      	2140	mov	r1, #64
    1910:	1909      	1909	add	r1, r1, r4
    1912:	4688      	4688	mov	r8, r1
    1914:	2800      	2800	cmp	r0, #0
    1916:	d100      	d100	bne	191a <CgbSound+0x1b6>
    1918:	e099      	e099	b	1a4e <CgbSound+0x2ea>
    191a:	7262      	7262	strb	r2, [r4, #9]
    191c:	e0ae      	e0ae	b	1a7c <CgbSound+0x318>
    191e:	2004      	2004	mov	r0, #4
    1920:	4010      	4010	and	r0, r2
    1922:	2800      	2800	cmp	r0, #0
    1924:	d014      	d014	beq	1950 <CgbSound+0x1ec>
    1926:	7b60      	7b60	ldrb	r0, [r4, #13]
    1928:	3801      	3801	sub	r0, #1
    192a:	7360      	7360	strb	r0, [r4, #13]
    192c:	22ff      	22ff	mov	r2, #255
    192e:	4010      	4010	and	r0, r2
    1930:	0600      	0600	lsl	r0, r0, #24
    1932:	1c71      	1c71	add	r1, r6, #1
    1934:	4689      	4689	mov	r9, r1
    1936:	2240      	2240	mov	r2, #64
    1938:	1912      	1912	add	r2, r2, r4
    193a:	4690      	4690	mov	r8, r2
    193c:	2800      	2800	cmp	r0, #0
    193e:	dd00      	dd00	ble	1942 <CgbSound+0x1de>
    1940:	e0a5      	e0a5	b	1a8e <CgbSound+0x32a>
    1942:	0630      	0630	lsl	r0, r6, #24
    1944:	0e00      	0e00	lsr	r0, r0, #24
    1946:	feb1f7ff 	f7ff	bl	16ac <CgbOscOff>
    194a:	2000      	2000	mov	r0, #0
    194c:	7020      	7020	strb	r0, [r4, #0]
    194e:	e11c      	e11c	b	1b8a <CgbSound+0x426>
    1950:	2040      	2040	mov	r0, #64
    1952:	4008      	4008	and	r0, r1
    1954:	1c72      	1c72	add	r2, r6, #1
    1956:	4691      	4691	mov	r9, r2
    1958:	2240      	2240	mov	r2, #64
    195a:	1912      	1912	add	r2, r2, r4
    195c:	4690      	4690	mov	r8, r2
    195e:	2800      	2800	cmp	r0, #0
    1960:	d016      	d016	beq	1990 <CgbSound+0x22c>
    1962:	2003      	2003	mov	r0, #3
    1964:	4008      	4008	and	r0, r1
    1966:	2800      	2800	cmp	r0, #0
    1968:	d012      	d012	beq	1990 <CgbSound+0x22c>
    196a:	20fc      	20fc	mov	r0, #252
    196c:	4008      	4008	and	r0, r1
    196e:	2200      	2200	mov	r2, #0
    1970:	7020      	7020	strb	r0, [r4, #0]
    1972:	79e1      	79e1	ldrb	r1, [r4, #7]
    1974:	72e1      	72e1	strb	r1, [r4, #11]
    1976:	20ff      	20ff	mov	r0, #255
    1978:	4008      	4008	and	r0, r1
    197a:	2800      	2800	cmp	r0, #0
    197c:	d021      	d021	beq	19c2 <CgbSound+0x25e>
    197e:	2001      	2001	mov	r0, #1
    1980:	7f61      	7f61	ldrb	r1, [r4, #29]
    1982:	4308      	4308	orr	r0, r1
    1984:	7760      	7760	strb	r0, [r4, #29]
    1986:	2e03      	2e03	cmp	r6, #3
    1988:	d078      	d078	beq	1a7c <CgbSound+0x318>
    198a:	79e2      	79e2	ldrb	r2, [r4, #7]
    198c:	9206      	9206	str	r2, [sp, #24]
    198e:	e075      	e075	b	1a7c <CgbSound+0x318>
    1990:	7ae0      	7ae0	ldrb	r0, [r4, #11]
    1992:	2800      	2800	cmp	r0, #0
    1994:	d172      	d172	bne	1a7c <CgbSound+0x318>
    1996:	2e03      	2e03	cmp	r6, #3
    1998:	d103      	d103	bne	19a2 <CgbSound+0x23e>
    199a:	2001      	2001	mov	r0, #1
    199c:	7f61      	7f61	ldrb	r1, [r4, #29]
    199e:	4308      	4308	orr	r0, r1
    19a0:	7760      	7760	strb	r0, [r4, #29]
    19a2:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
    19a4:	feaaf7ff 	f7ff	bl	16fc <CgbModVol>
    19a8:	2003      	2003	mov	r0, #3
    19aa:	7822      	7822	ldrb	r2, [r4, #0]
    19ac:	4010      	4010	and	r0, r2
    19ae:	2800      	2800	cmp	r0, #0
    19b0:	d11d      	d11d	bne	19ee <CgbSound+0x28a>
    19b2:	7a60      	7a60	ldrb	r0, [r4, #9]
    19b4:	3801      	3801	sub	r0, #1
    19b6:	7260      	7260	strb	r0, [r4, #9]
    19b8:	21ff      	21ff	mov	r1, #255
    19ba:	4008      	4008	and	r0, r1
    19bc:	0600      	0600	lsl	r0, r0, #24
    19be:	2800      	2800	cmp	r0, #0
    19c0:	dc13      	dc13	bgt	19ea <CgbSound+0x286>
    19c2:	7b22      	7b22	ldrb	r2, [r4, #12]
    19c4:	7aa1      	7aa1	ldrb	r1, [r4, #10]
    19c6:	1c10      	1c10	mov	r0, r2		(add r0, r2, #0)
    19c8:	4348      	4348	mul	r0, r1
    19ca:	30ff      	30ff	add	r0, #255
    19cc:	1200      	1200	asr	r0, r0, #8
    19ce:	2100      	2100	mov	r1, #0
    19d0:	7260      	7260	strb	r0, [r4, #9]
    19d2:	0600      	0600	lsl	r0, r0, #24
    19d4:	2800      	2800	cmp	r0, #0
    19d6:	d0b4      	d0b4	beq	1942 <CgbSound+0x1de>
    19d8:	2004      	2004	mov	r0, #4
    19da:	7822      	7822	ldrb	r2, [r4, #0]
    19dc:	4310      	4310	orr	r0, r2
    19de:	7020      	7020	strb	r0, [r4, #0]
    19e0:	2001      	2001	mov	r0, #1
    19e2:	7f61      	7f61	ldrb	r1, [r4, #29]
    19e4:	4308      	4308	orr	r0, r1
    19e6:	7760      	7760	strb	r0, [r4, #29]
    19e8:	e051      	e051	b	1a8e <CgbSound+0x32a>
    19ea:	79e0      	79e0	ldrb	r0, [r4, #7]
    19ec:	e045      	e045	b	1a7a <CgbSound+0x316>
    19ee:	2801      	2801	cmp	r0, #1
    19f0:	d103      	d103	bne	19fa <CgbSound+0x296>
    19f2:	7e60      	7e60	ldrb	r0, [r4, #25]
    19f4:	7260      	7260	strb	r0, [r4, #9]
    19f6:	2007      	2007	mov	r0, #7
    19f8:	e03f      	e03f	b	1a7a <CgbSound+0x316>
    19fa:	2802      	2802	cmp	r0, #2
    19fc:	d11f      	d11f	bne	1a3e <CgbSound+0x2da>
    19fe:	7a60      	7a60	ldrb	r0, [r4, #9]
    1a00:	3801      	3801	sub	r0, #1
    1a02:	7260      	7260	strb	r0, [r4, #9]
    1a04:	22ff      	22ff	mov	r2, #255
    1a06:	4010      	4010	and	r0, r2
    1a08:	0600      	0600	lsl	r0, r0, #24
    1a0a:	7e62      	7e62	ldrb	r2, [r4, #25]
    1a0c:	0611      	0611	lsl	r1, r2, #24
    1a0e:	4288      	4288	cmp	r0, r1
    1a10:	dc13      	dc13	bgt	1a3a <CgbSound+0x2d6>
    1a12:	79a0      	79a0	ldrb	r0, [r4, #6]
    1a14:	2800      	2800	cmp	r0, #0
    1a16:	d104      	d104	bne	1a22 <CgbSound+0x2be>
    1a18:	20fc      	20fc	mov	r0, #252
    1a1a:	7821      	7821	ldrb	r1, [r4, #0]
    1a1c:	4008      	4008	and	r0, r1
    1a1e:	7020      	7020	strb	r0, [r4, #0]
    1a20:	e7cf      	e7cf	b	19c2 <CgbSound+0x25e>
    1a22:	7820      	7820	ldrb	r0, [r4, #0]
    1a24:	3801      	3801	sub	r0, #1
    1a26:	7020      	7020	strb	r0, [r4, #0]
    1a28:	2001      	2001	mov	r0, #1
    1a2a:	7f62      	7f62	ldrb	r2, [r4, #29]
    1a2c:	4310      	4310	orr	r0, r2
    1a2e:	7760      	7760	strb	r0, [r4, #29]
    1a30:	2e03      	2e03	cmp	r6, #3
    1a32:	d0de      	d0de	beq	19f2 <CgbSound+0x28e>
    1a34:	2008      	2008	mov	r0, #8
    1a36:	9006      	9006	str	r0, [sp, #24]
    1a38:	e7db      	e7db	b	19f2 <CgbSound+0x28e>
    1a3a:	7960      	7960	ldrb	r0, [r4, #5]
    1a3c:	e01d      	e01d	b	1a7a <CgbSound+0x316>
    1a3e:	7a60      	7a60	ldrb	r0, [r4, #9]
    1a40:	3001      	3001	add	r0, #1
    1a42:	7260      	7260	strb	r0, [r4, #9]
    1a44:	21ff      	21ff	mov	r1, #255
    1a46:	4008      	4008	and	r0, r1
    1a48:	7aa2      	7aa2	ldrb	r2, [r4, #10]
    1a4a:	4290      	4290	cmp	r0, r2
    1a4c:	d314      	d314	bcc	1a78 <CgbSound+0x314>
    1a4e:	7820      	7820	ldrb	r0, [r4, #0]
    1a50:	3801      	3801	sub	r0, #1
    1a52:	2200      	2200	mov	r2, #0
    1a54:	7020      	7020	strb	r0, [r4, #0]
    1a56:	7961      	7961	ldrb	r1, [r4, #5]
    1a58:	72e1      	72e1	strb	r1, [r4, #11]
    1a5a:	20ff      	20ff	mov	r0, #255
    1a5c:	4008      	4008	and	r0, r1
    1a5e:	2800      	2800	cmp	r0, #0
    1a60:	d0d7      	d0d7	beq	1a12 <CgbSound+0x2ae>
    1a62:	2001      	2001	mov	r0, #1
    1a64:	7f61      	7f61	ldrb	r1, [r4, #29]
    1a66:	4308      	4308	orr	r0, r1
    1a68:	7760      	7760	strb	r0, [r4, #29]
    1a6a:	7aa0      	7aa0	ldrb	r0, [r4, #10]
    1a6c:	7260      	7260	strb	r0, [r4, #9]
    1a6e:	2e03      	2e03	cmp	r6, #3
    1a70:	d004      	d004	beq	1a7c <CgbSound+0x318>
    1a72:	7962      	7962	ldrb	r2, [r4, #5]
    1a74:	9206      	9206	str	r2, [sp, #24]
    1a76:	e001      	e001	b	1a7c <CgbSound+0x318>
    1a78:	7920      	7920	ldrb	r0, [r4, #4]
    1a7a:	72e0      	72e0	strb	r0, [r4, #11]
    1a7c:	7ae0      	7ae0	ldrb	r0, [r4, #11]
    1a7e:	3801      	3801	sub	r0, #1
    1a80:	72e0      	72e0	strb	r0, [r4, #11]
    1a82:	9800      	9800	ldr	r0, [sp, #0]
    1a84:	2800      	2800	cmp	r0, #0
    1a86:	d102      	d102	bne	1a8e <CgbSound+0x32a>
    1a88:	3801      	3801	sub	r0, #1
    1a8a:	9000      	9000	str	r0, [sp, #0]
    1a8c:	e780      	e780	b	1990 <CgbSound+0x22c>
    1a8e:	2002      	2002	mov	r0, #2
    1a90:	7f61      	7f61	ldrb	r1, [r4, #29]
    1a92:	4008      	4008	and	r0, r1
    1a94:	2800      	2800	cmp	r0, #0
    1a96:	d036      	d036	beq	1b06 <CgbSound+0x3a2>
    1a98:	2e03      	2e03	cmp	r6, #3
    1a9a:	dc18      	dc18	bgt	1ace <CgbSound+0x36a>
    1a9c:	2008      	2008	mov	r0, #8
    1a9e:	7862      	7862	ldrb	r2, [r4, #1]
    1aa0:	4010      	4010	and	r0, r2
    1aa2:	2800      	2800	cmp	r0, #0
    1aa4:	d013      	d013	beq	1ace <CgbSound+0x36a>
    1aa6:	4804      	4804	ldr	r0, [pc, #16]	(1ab8 <CgbSound+0x354>)
    1aa8:	7800      	7800	ldrb	r0, [r0, #0]
    1aaa:	283f      	283f	cmp	r0, #63
    1aac:	dc08      	dc08	bgt	1ac0 <CgbSound+0x35c>
    1aae:	6a20      	6a20	ldr	r0, [r4, #32]
    1ab0:	3002      	3002	add	r0, #2
    1ab2:	4902      	4902	ldr	r1, [pc, #8]	(1abc <CgbSound+0x358>)
    1ab4:	e009      	e009	b	1aca <CgbSound+0x366>
    1ab6:	0000      	0000	lsl	r0, r0, #0
    1ab8:	0089      	0089	lsl	r1, r1, #2
    1aba:	0400      	0400	lsl	r0, r0, #16
    1abc:	07fc      	07fc	lsl	r4, r7, #31
    1abe:	0000      	0000	lsl	r0, r0, #0
    1ac0:	287f      	287f	cmp	r0, #127
    1ac2:	dc04      	dc04	bgt	1ace <CgbSound+0x36a>
    1ac4:	6a20      	6a20	ldr	r0, [r4, #32]
    1ac6:	3001      	3001	add	r0, #1
    1ac8:	4904      	4904	ldr	r1, [pc, #16]	(1adc <CgbSound+0x378>)
    1aca:	4008      	4008	and	r0, r1
    1acc:	6220      	6220	str	r0, [r4, #32]
    1ace:	2e04      	2e04	cmp	r6, #4
    1ad0:	d006      	d006	beq	1ae0 <CgbSound+0x37c>
    1ad2:	6a20      	6a20	ldr	r0, [r4, #32]
    1ad4:	9904      	9904	ldr	r1, [sp, #16]
    1ad6:	7008      	7008	strb	r0, [r1, #0]
    1ad8:	e009      	e009	b	1aee <CgbSound+0x38a>
    1ada:	0000      	0000	lsl	r0, r0, #0
    1adc:	07fe      	07fe	lsl	r6, r7, #31
    1ade:	0000      	0000	lsl	r0, r0, #0
    1ae0:	9a04      	9a04	ldr	r2, [sp, #16]
    1ae2:	7810      	7810	ldrb	r0, [r2, #0]
    1ae4:	2108      	2108	mov	r1, #8
    1ae6:	4001      	4001	and	r1, r0
    1ae8:	6a20      	6a20	ldr	r0, [r4, #32]
    1aea:	4308      	4308	orr	r0, r1
    1aec:	7010      	7010	strb	r0, [r2, #0]
    1aee:	20c0      	20c0	mov	r0, #192
    1af0:	7ea1      	7ea1	ldrb	r1, [r4, #26]
    1af2:	4008      	4008	and	r0, r1
    1af4:	1c21      	1c21	mov	r1, r4		(add r1, r4, #0)
    1af6:	3121      	3121	add	r1, #33
    1af8:	7809      	7809	ldrb	r1, [r1, #0]
    1afa:	1808      	1808	add	r0, r1, r0
    1afc:	76a0      	76a0	strb	r0, [r4, #26]
    1afe:	22ff      	22ff	mov	r2, #255
    1b00:	4010      	4010	and	r0, r2
    1b02:	9905      	9905	ldr	r1, [sp, #20]
    1b04:	7008      	7008	strb	r0, [r1, #0]
    1b06:	2001      	2001	mov	r0, #1
    1b08:	7f62      	7f62	ldrb	r2, [r4, #29]
    1b0a:	4010      	4010	and	r0, r2
    1b0c:	2800      	2800	cmp	r0, #0
    1b0e:	d03c      	d03c	beq	1b8a <CgbSound+0x426>
    1b10:	490f      	490f	ldr	r1, [pc, #60]	(1b50 <CgbSound+0x3ec>)
    1b12:	7808      	7808	ldrb	r0, [r1, #0]
    1b14:	7f22      	7f22	ldrb	r2, [r4, #28]
    1b16:	4390      	4390	bic	r0, r2
    1b18:	7ee2      	7ee2	ldrb	r2, [r4, #27]
    1b1a:	4310      	4310	orr	r0, r2
    1b1c:	7008      	7008	strb	r0, [r1, #0]
    1b1e:	2e03      	2e03	cmp	r6, #3
    1b20:	d11a      	d11a	bne	1b58 <CgbSound+0x3f4>
    1b22:	480c      	480c	ldr	r0, [pc, #48]	(1b54 <CgbSound+0x3f0>)
    1b24:	7a61      	7a61	ldrb	r1, [r4, #9]
    1b26:	1808      	1808	add	r0, r1, r0
    1b28:	7800      	7800	ldrb	r0, [r0, #0]
    1b2a:	9a03      	9a03	ldr	r2, [sp, #12]
    1b2c:	7010      	7010	strb	r0, [r2, #0]
    1b2e:	2180      	2180	mov	r1, #128
    1b30:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    1b32:	7ea2      	7ea2	ldrb	r2, [r4, #26]
    1b34:	4010      	4010	and	r0, r2
    1b36:	2800      	2800	cmp	r0, #0
    1b38:	d027      	d027	beq	1b8a <CgbSound+0x426>
    1b3a:	9802      	9802	ldr	r0, [sp, #8]
    1b3c:	7001      	7001	strb	r1, [r0, #0]
    1b3e:	7ea0      	7ea0	ldrb	r0, [r4, #26]
    1b40:	9905      	9905	ldr	r1, [sp, #20]
    1b42:	7008      	7008	strb	r0, [r1, #0]
    1b44:	207f      	207f	mov	r0, #127
    1b46:	7ea2      	7ea2	ldrb	r2, [r4, #26]
    1b48:	4010      	4010	and	r0, r2
    1b4a:	76a0      	76a0	strb	r0, [r4, #26]
    1b4c:	e01d      	e01d	b	1b8a <CgbSound+0x426>
    1b4e:	0000      	0000	lsl	r0, r0, #0
    1b50:	0081      	0081	lsl	r1, r0, #2
    1b52:	0400      	0400	lsl	r0, r0, #16
    1b54:	0000      	0000	lsl	r0, r0, #0
    1b56:	0000      	0000	lsl	r0, r0, #0
    1b58:	200f      	200f	mov	r0, #15
    1b5a:	9906      	9906	ldr	r1, [sp, #24]
    1b5c:	4008      	4008	and	r0, r1
    1b5e:	7a62      	7a62	ldrb	r2, [r4, #9]
    1b60:	0111      	0111	lsl	r1, r2, #4
    1b62:	1840      	1840	add	r0, r0, r1
    1b64:	9903      	9903	ldr	r1, [sp, #12]
    1b66:	7008      	7008	strb	r0, [r1, #0]
    1b68:	2280      	2280	mov	r2, #128
    1b6a:	7ea0      	7ea0	ldrb	r0, [r4, #26]
    1b6c:	4310      	4310	orr	r0, r2
    1b6e:	9905      	9905	ldr	r1, [sp, #20]
    1b70:	7008      	7008	strb	r0, [r1, #0]
    1b72:	2e01      	2e01	cmp	r6, #1
    1b74:	d109      	d109	bne	1b8a <CgbSound+0x426>
    1b76:	9802      	9802	ldr	r0, [sp, #8]
    1b78:	7801      	7801	ldrb	r1, [r0, #0]
    1b7a:	2008      	2008	mov	r0, #8
    1b7c:	4008      	4008	and	r0, r1
    1b7e:	2800      	2800	cmp	r0, #0
    1b80:	d103      	d103	bne	1b8a <CgbSound+0x426>
    1b82:	7ea0      	7ea0	ldrb	r0, [r4, #26]
    1b84:	4310      	4310	orr	r0, r2
    1b86:	9905      	9905	ldr	r1, [sp, #20]
    1b88:	7008      	7008	strb	r0, [r1, #0]
    1b8a:	2000      	2000	mov	r0, #0
    1b8c:	7760      	7760	strb	r0, [r4, #29]
    1b8e:	464e      	464e	mov	r6, r9
    1b90:	4644      	4644	mov	r4, r8
    1b92:	2e04      	2e04	cmp	r6, #4
    1b94:	dc00      	dc00	bgt	1b98 <CgbSound+0x434>
    1b96:	e5fd      	e5fd	b	1794 <CgbSound+0x30>
    1b98:	b008      	b008	add	sp, #32
    1b9a:	bc38      	bc38	pop	{r3, r4, r5}
    1b9c:	4698      	4698	mov	r8, r3
    1b9e:	46a1      	46a1	mov	r9, r4
    1ba0:	46aa      	46aa	mov	sl, r5
    1ba2:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1ba4:	bc01      	bc01	pop	{r0}
    1ba6:	4700      	4700	bx	r0

00001ba8 <MPlayTempoControl>:
    1ba8:	b510      	b510	push	{r4, lr}
    1baa:	1c02      	1c02	mov	r2, r0		(add r2, r0, #0)
    1bac:	0409      	0409	lsl	r1, r1, #16
    1bae:	0c09      	0c09	lsr	r1, r1, #16
    1bb0:	6b53      	6b53	ldr	r3, [r2, #52]
    1bb2:	4806      	4806	ldr	r0, [pc, #24]	(1bcc <MPlayTempoControl+0x24>)
    1bb4:	4283      	4283	cmp	r3, r0
    1bb6:	d105      	d105	bne	1bc4 <MPlayTempoControl+0x1c>
    1bb8:	83d1      	83d1	strh	r1, [r2, #30]
    1bba:	8b94      	8b94	ldrh	r4, [r2, #28]
    1bbc:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    1bbe:	4360      	4360	mul	r0, r4
    1bc0:	1200      	1200	asr	r0, r0, #8
    1bc2:	8410      	8410	strh	r0, [r2, #32]
    1bc4:	bc10      	bc10	pop	{r4}
    1bc6:	bc01      	bc01	pop	{r0}
    1bc8:	4700      	4700	bx	r0
    1bca:	0000      	0000	lsl	r0, r0, #0
    1bcc:	6d53      	6d53	ldr	r3, [r2, #84]
    1bce:	6873      	6873	ldr	r3, [r6, #4]

00001bd0 <MPlayVolumeControl>:
    1bd0:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1bd2:	464f      	464f	mov	r7, r9
    1bd4:	4646      	4646	mov	r6, r8
    1bd6:	b4c0      	b4c0	push	{r6, r7}
    1bd8:	1c04      	1c04	mov	r4, r0		(add r4, r0, #0)
    1bda:	0409      	0409	lsl	r1, r1, #16
    1bdc:	0c0f      	0c0f	lsr	r7, r1, #16
    1bde:	0416      	0416	lsl	r6, r2, #16
    1be0:	6b63      	6b63	ldr	r3, [r4, #52]
    1be2:	4814      	4814	ldr	r0, [pc, #80]	(1c34 <MPlayVolumeControl+0x64>)
    1be4:	4283      	4283	cmp	r3, r0
    1be6:	d11f      	d11f	bne	1c28 <MPlayVolumeControl+0x58>
    1be8:	1c58      	1c58	add	r0, r3, #1
    1bea:	6360      	6360	str	r0, [r4, #52]
    1bec:	7a22      	7a22	ldrb	r2, [r4, #8]
    1bee:	6ae1      	6ae1	ldr	r1, [r4, #44]
    1bf0:	2501      	2501	mov	r5, #1
    1bf2:	2a00      	2a00	cmp	r2, #0
    1bf4:	dd16      	dd16	ble	1c24 <MPlayVolumeControl+0x54>
    1bf6:	2080      	2080	mov	r0, #128
    1bf8:	4680      	4680	mov	r8, r0
    1bfa:	0cb6      	0cb6	lsr	r6, r6, #18
    1bfc:	2003      	2003	mov	r0, #3
    1bfe:	4684      	4684	mov	ip, r0
    1c00:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
    1c02:	4028      	4028	and	r0, r5
    1c04:	2800      	2800	cmp	r0, #0
    1c06:	d008      	d008	beq	1c1a <MPlayVolumeControl+0x4a>
    1c08:	780b      	780b	ldrb	r3, [r1, #0]
    1c0a:	4640      	4640	mov	r0, r8
    1c0c:	4018      	4018	and	r0, r3
    1c0e:	2800      	2800	cmp	r0, #0
    1c10:	d003      	d003	beq	1c1a <MPlayVolumeControl+0x4a>
    1c12:	74ce      	74ce	strb	r6, [r1, #19]
    1c14:	4660      	4660	mov	r0, ip
    1c16:	4318      	4318	orr	r0, r3
    1c18:	7008      	7008	strb	r0, [r1, #0]
    1c1a:	3a01      	3a01	sub	r2, #1
    1c1c:	3150      	3150	add	r1, #80
    1c1e:	006d      	006d	lsl	r5, r5, #1
    1c20:	2a00      	2a00	cmp	r2, #0
    1c22:	dced      	dced	bgt	1c00 <MPlayVolumeControl+0x30>
    1c24:	4803      	4803	ldr	r0, [pc, #12]	(1c34 <MPlayVolumeControl+0x64>)
    1c26:	6360      	6360	str	r0, [r4, #52]
    1c28:	bc18      	bc18	pop	{r3, r4}
    1c2a:	4698      	4698	mov	r8, r3
    1c2c:	46a1      	46a1	mov	r9, r4
    1c2e:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1c30:	bc01      	bc01	pop	{r0}
    1c32:	4700      	4700	bx	r0
    1c34:	6d53      	6d53	ldr	r3, [r2, #84]
    1c36:	6873      	6873	ldr	r3, [r6, #4]

00001c38 <MPlayPitchControl>:
    1c38:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1c3a:	4657      	4657	mov	r7, sl
    1c3c:	464e      	464e	mov	r6, r9
    1c3e:	4645      	4645	mov	r5, r8
    1c40:	b4e0      	b4e0	push	{r5, r6, r7}
    1c42:	1c04      	1c04	mov	r4, r0		(add r4, r0, #0)
    1c44:	0409      	0409	lsl	r1, r1, #16
    1c46:	0c09      	0c09	lsr	r1, r1, #16
    1c48:	468c      	468c	mov	ip, r1
    1c4a:	0412      	0412	lsl	r2, r2, #16
    1c4c:	0c16      	0c16	lsr	r6, r2, #16
    1c4e:	6b63      	6b63	ldr	r3, [r4, #52]
    1c50:	4815      	4815	ldr	r0, [pc, #84]	(1ca8 <MPlayPitchControl+0x70>)
    1c52:	4283      	4283	cmp	r3, r0
    1c54:	d121      	d121	bne	1c9a <MPlayPitchControl+0x62>
    1c56:	1c58      	1c58	add	r0, r3, #1
    1c58:	6360      	6360	str	r0, [r4, #52]
    1c5a:	7a22      	7a22	ldrb	r2, [r4, #8]
    1c5c:	6ae3      	6ae3	ldr	r3, [r4, #44]
    1c5e:	2501      	2501	mov	r5, #1
    1c60:	2a00      	2a00	cmp	r2, #0
    1c62:	dd18      	dd18	ble	1c96 <MPlayPitchControl+0x5e>
    1c64:	2080      	2080	mov	r0, #128
    1c66:	4681      	4681	mov	r9, r0
    1c68:	0430      	0430	lsl	r0, r6, #16
    1c6a:	1607      	1607	asr	r7, r0, #24
    1c6c:	200c      	200c	mov	r0, #12
    1c6e:	4680      	4680	mov	r8, r0
    1c70:	4660      	4660	mov	r0, ip
    1c72:	4028      	4028	and	r0, r5
    1c74:	2800      	2800	cmp	r0, #0
    1c76:	d009      	d009	beq	1c8c <MPlayPitchControl+0x54>
    1c78:	7819      	7819	ldrb	r1, [r3, #0]
    1c7a:	4648      	4648	mov	r0, r9
    1c7c:	4008      	4008	and	r0, r1
    1c7e:	2800      	2800	cmp	r0, #0
    1c80:	d004      	d004	beq	1c8c <MPlayPitchControl+0x54>
    1c82:	72df      	72df	strb	r7, [r3, #11]
    1c84:	735e      	735e	strb	r6, [r3, #13]
    1c86:	4640      	4640	mov	r0, r8
    1c88:	4308      	4308	orr	r0, r1
    1c8a:	7018      	7018	strb	r0, [r3, #0]
    1c8c:	3a01      	3a01	sub	r2, #1
    1c8e:	3350      	3350	add	r3, #80
    1c90:	006d      	006d	lsl	r5, r5, #1
    1c92:	2a00      	2a00	cmp	r2, #0
    1c94:	dcec      	dcec	bgt	1c70 <MPlayPitchControl+0x38>
    1c96:	4804      	4804	ldr	r0, [pc, #16]	(1ca8 <MPlayPitchControl+0x70>)
    1c98:	6360      	6360	str	r0, [r4, #52]
    1c9a:	bc38      	bc38	pop	{r3, r4, r5}
    1c9c:	4698      	4698	mov	r8, r3
    1c9e:	46a1      	46a1	mov	r9, r4
    1ca0:	46aa      	46aa	mov	sl, r5
    1ca2:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1ca4:	bc01      	bc01	pop	{r0}
    1ca6:	4700      	4700	bx	r0
    1ca8:	6d53      	6d53	ldr	r3, [r2, #84]
    1caa:	6873      	6873	ldr	r3, [r6, #4]

00001cac <MPlayPanpotControl>:
    1cac:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1cae:	464f      	464f	mov	r7, r9
    1cb0:	4646      	4646	mov	r6, r8
    1cb2:	b4c0      	b4c0	push	{r6, r7}
    1cb4:	1c04      	1c04	mov	r4, r0		(add r4, r0, #0)
    1cb6:	0409      	0409	lsl	r1, r1, #16
    1cb8:	0c0f      	0c0f	lsr	r7, r1, #16
    1cba:	0612      	0612	lsl	r2, r2, #24
    1cbc:	0e16      	0e16	lsr	r6, r2, #24
    1cbe:	6b63      	6b63	ldr	r3, [r4, #52]
    1cc0:	4813      	4813	ldr	r0, [pc, #76]	(1d10 <MPlayPanpotControl+0x64>)
    1cc2:	4283      	4283	cmp	r3, r0
    1cc4:	d11e      	d11e	bne	1d04 <MPlayPanpotControl+0x58>
    1cc6:	1c58      	1c58	add	r0, r3, #1
    1cc8:	6360      	6360	str	r0, [r4, #52]
    1cca:	7a22      	7a22	ldrb	r2, [r4, #8]
    1ccc:	6ae1      	6ae1	ldr	r1, [r4, #44]
    1cce:	2501      	2501	mov	r5, #1
    1cd0:	2a00      	2a00	cmp	r2, #0
    1cd2:	dd15      	dd15	ble	1d00 <MPlayPanpotControl+0x54>
    1cd4:	2080      	2080	mov	r0, #128
    1cd6:	4680      	4680	mov	r8, r0
    1cd8:	2003      	2003	mov	r0, #3
    1cda:	4684      	4684	mov	ip, r0
    1cdc:	1c38      	1c38	mov	r0, r7		(add r0, r7, #0)
    1cde:	4028      	4028	and	r0, r5
    1ce0:	2800      	2800	cmp	r0, #0
    1ce2:	d008      	d008	beq	1cf6 <MPlayPanpotControl+0x4a>
    1ce4:	780b      	780b	ldrb	r3, [r1, #0]
    1ce6:	4640      	4640	mov	r0, r8
    1ce8:	4018      	4018	and	r0, r3
    1cea:	2800      	2800	cmp	r0, #0
    1cec:	d003      	d003	beq	1cf6 <MPlayPanpotControl+0x4a>
    1cee:	754e      	754e	strb	r6, [r1, #21]
    1cf0:	4660      	4660	mov	r0, ip
    1cf2:	4318      	4318	orr	r0, r3
    1cf4:	7008      	7008	strb	r0, [r1, #0]
    1cf6:	3a01      	3a01	sub	r2, #1
    1cf8:	3150      	3150	add	r1, #80
    1cfa:	006d      	006d	lsl	r5, r5, #1
    1cfc:	2a00      	2a00	cmp	r2, #0
    1cfe:	dced      	dced	bgt	1cdc <MPlayPanpotControl+0x30>
    1d00:	4803      	4803	ldr	r0, [pc, #12]	(1d10 <MPlayPanpotControl+0x64>)
    1d02:	6360      	6360	str	r0, [r4, #52]
    1d04:	bc18      	bc18	pop	{r3, r4}
    1d06:	4698      	4698	mov	r8, r3
    1d08:	46a1      	46a1	mov	r9, r4
    1d0a:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1d0c:	bc01      	bc01	pop	{r0}
    1d0e:	4700      	4700	bx	r0
    1d10:	6d53      	6d53	ldr	r3, [r2, #84]
    1d12:	6873      	6873	ldr	r3, [r6, #4]

00001d14 <MP_clear_modM>:
    1d14:	1c01      	1c01	mov	r1, r0		(add r1, r0, #0)
    1d16:	2200      	2200	mov	r2, #0
    1d18:	2000      	2000	mov	r0, #0
    1d1a:	7688      	7688	strb	r0, [r1, #26]
    1d1c:	7588      	7588	strb	r0, [r1, #22]
    1d1e:	7e08      	7e08	ldrb	r0, [r1, #24]
    1d20:	2800      	2800	cmp	r0, #0
    1d22:	d101      	d101	bne	1d28 <MP_clear_modM+0x14>
    1d24:	200c      	200c	mov	r0, #12
    1d26:	e000      	e000	b	1d2a <MP_clear_modM+0x16>
    1d28:	2003      	2003	mov	r0, #3
    1d2a:	780a      	780a	ldrb	r2, [r1, #0]
    1d2c:	4310      	4310	orr	r0, r2
    1d2e:	7008      	7008	strb	r0, [r1, #0]
    1d30:	4770      	4770	bx	lr
	...

00001d34 <MPlayModDepthSet>:
    1d34:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1d36:	4657      	4657	mov	r7, sl
    1d38:	464e      	464e	mov	r6, r9
    1d3a:	4645      	4645	mov	r5, r8
    1d3c:	b4e0      	b4e0	push	{r5, r6, r7}
    1d3e:	1c06      	1c06	mov	r6, r0		(add r6, r0, #0)
    1d40:	0409      	0409	lsl	r1, r1, #16
    1d42:	0c09      	0c09	lsr	r1, r1, #16
    1d44:	468a      	468a	mov	sl, r1
    1d46:	0612      	0612	lsl	r2, r2, #24
    1d48:	0e12      	0e12	lsr	r2, r2, #24
    1d4a:	4690      	4690	mov	r8, r2
    1d4c:	6b71      	6b71	ldr	r1, [r6, #52]
    1d4e:	4815      	4815	ldr	r0, [pc, #84]	(1da4 <MPlayModDepthSet+0x70>)
    1d50:	4281      	4281	cmp	r1, r0
    1d52:	d11f      	d11f	bne	1d94 <MPlayModDepthSet+0x60>
    1d54:	1c48      	1c48	add	r0, r1, #1
    1d56:	6370      	6370	str	r0, [r6, #52]
    1d58:	7a35      	7a35	ldrb	r5, [r6, #8]
    1d5a:	6af4      	6af4	ldr	r4, [r6, #44]
    1d5c:	2701      	2701	mov	r7, #1
    1d5e:	2d00      	2d00	cmp	r5, #0
    1d60:	dd16      	dd16	ble	1d90 <MPlayModDepthSet+0x5c>
    1d62:	46c1      	46c1	mov	r9, r8
    1d64:	4650      	4650	mov	r0, sl
    1d66:	4038      	4038	and	r0, r7
    1d68:	2800      	2800	cmp	r0, #0
    1d6a:	d00c      	d00c	beq	1d86 <MPlayModDepthSet+0x52>
    1d6c:	2080      	2080	mov	r0, #128
    1d6e:	7821      	7821	ldrb	r1, [r4, #0]
    1d70:	4008      	4008	and	r0, r1
    1d72:	2800      	2800	cmp	r0, #0
    1d74:	d007      	d007	beq	1d86 <MPlayModDepthSet+0x52>
    1d76:	4640      	4640	mov	r0, r8
    1d78:	75e0      	75e0	strb	r0, [r4, #23]
    1d7a:	4649      	4649	mov	r1, r9
    1d7c:	2900      	2900	cmp	r1, #0
    1d7e:	d102      	d102	bne	1d86 <MPlayModDepthSet+0x52>
    1d80:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
    1d82:	ffc7f7ff 	f7ff	bl	1d14 <MP_clear_modM>
    1d86:	3d01      	3d01	sub	r5, #1
    1d88:	3450      	3450	add	r4, #80
    1d8a:	007f      	007f	lsl	r7, r7, #1
    1d8c:	2d00      	2d00	cmp	r5, #0
    1d8e:	dce9      	dce9	bgt	1d64 <MPlayModDepthSet+0x30>
    1d90:	4804      	4804	ldr	r0, [pc, #16]	(1da4 <MPlayModDepthSet+0x70>)
    1d92:	6370      	6370	str	r0, [r6, #52]
    1d94:	bc38      	bc38	pop	{r3, r4, r5}
    1d96:	4698      	4698	mov	r8, r3
    1d98:	46a1      	46a1	mov	r9, r4
    1d9a:	46aa      	46aa	mov	sl, r5
    1d9c:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1d9e:	bc01      	bc01	pop	{r0}
    1da0:	4700      	4700	bx	r0
    1da2:	0000      	0000	lsl	r0, r0, #0
    1da4:	6d53      	6d53	ldr	r3, [r2, #84]
    1da6:	6873      	6873	ldr	r3, [r6, #4]

00001da8 <MPlayLFOSpeedSet>:
    1da8:	b5f0      	b5f0	push	{r4, r5, r6, r7, lr}
    1daa:	4657      	4657	mov	r7, sl
    1dac:	464e      	464e	mov	r6, r9
    1dae:	4645      	4645	mov	r5, r8
    1db0:	b4e0      	b4e0	push	{r5, r6, r7}
    1db2:	1c06      	1c06	mov	r6, r0		(add r6, r0, #0)
    1db4:	0409      	0409	lsl	r1, r1, #16
    1db6:	0c09      	0c09	lsr	r1, r1, #16
    1db8:	468a      	468a	mov	sl, r1
    1dba:	0612      	0612	lsl	r2, r2, #24
    1dbc:	0e12      	0e12	lsr	r2, r2, #24
    1dbe:	4690      	4690	mov	r8, r2
    1dc0:	6b71      	6b71	ldr	r1, [r6, #52]
    1dc2:	4815      	4815	ldr	r0, [pc, #84]	(1e18 <MPlayLFOSpeedSet+0x70>)
    1dc4:	4281      	4281	cmp	r1, r0
    1dc6:	d11f      	d11f	bne	1e08 <MPlayLFOSpeedSet+0x60>
    1dc8:	1c48      	1c48	add	r0, r1, #1
    1dca:	6370      	6370	str	r0, [r6, #52]
    1dcc:	7a35      	7a35	ldrb	r5, [r6, #8]
    1dce:	6af4      	6af4	ldr	r4, [r6, #44]
    1dd0:	2701      	2701	mov	r7, #1
    1dd2:	2d00      	2d00	cmp	r5, #0
    1dd4:	dd16      	dd16	ble	1e04 <MPlayLFOSpeedSet+0x5c>
    1dd6:	46c1      	46c1	mov	r9, r8
    1dd8:	4650      	4650	mov	r0, sl
    1dda:	4038      	4038	and	r0, r7
    1ddc:	2800      	2800	cmp	r0, #0
    1dde:	d00c      	d00c	beq	1dfa <MPlayLFOSpeedSet+0x52>
    1de0:	2080      	2080	mov	r0, #128
    1de2:	7821      	7821	ldrb	r1, [r4, #0]
    1de4:	4008      	4008	and	r0, r1
    1de6:	2800      	2800	cmp	r0, #0
    1de8:	d007      	d007	beq	1dfa <MPlayLFOSpeedSet+0x52>
    1dea:	4640      	4640	mov	r0, r8
    1dec:	7660      	7660	strb	r0, [r4, #25]
    1dee:	4649      	4649	mov	r1, r9
    1df0:	2900      	2900	cmp	r1, #0
    1df2:	d102      	d102	bne	1dfa <MPlayLFOSpeedSet+0x52>
    1df4:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
    1df6:	ff8df7ff 	f7ff	bl	1d14 <MP_clear_modM>
    1dfa:	3d01      	3d01	sub	r5, #1
    1dfc:	3450      	3450	add	r4, #80
    1dfe:	007f      	007f	lsl	r7, r7, #1
    1e00:	2d00      	2d00	cmp	r5, #0
    1e02:	dce9      	dce9	bgt	1dd8 <MPlayLFOSpeedSet+0x30>
    1e04:	4804      	4804	ldr	r0, [pc, #16]	(1e18 <MPlayLFOSpeedSet+0x70>)
    1e06:	6370      	6370	str	r0, [r6, #52]
    1e08:	bc38      	bc38	pop	{r3, r4, r5}
    1e0a:	4698      	4698	mov	r8, r3
    1e0c:	46a1      	46a1	mov	r9, r4
    1e0e:	46aa      	46aa	mov	sl, r5
    1e10:	bcf0      	bcf0	pop	{r4, r5, r6, r7}
    1e12:	bc01      	bc01	pop	{r0}
    1e14:	4700      	4700	bx	r0
    1e16:	0000      	0000	lsl	r0, r0, #0
    1e18:	6d53      	6d53	ldr	r3, [r2, #84]
    1e1a:	6873      	6873	ldr	r3, [r6, #4]

00001e1c <ply_memacc>:
    1e1c:	b570      	b570	push	{r4, r5, r6, lr}
    1e1e:	1c04      	1c04	mov	r4, r0		(add r4, r0, #0)
    1e20:	1c0e      	1c0e	mov	r6, r1		(add r6, r1, #0)
    1e22:	6c31      	6c31	ldr	r1, [r6, #64]
    1e24:	780d      	780d	ldrb	r5, [r1, #0]
    1e26:	1c4a      	1c4a	add	r2, r1, #1
    1e28:	6432      	6432	str	r2, [r6, #64]
    1e2a:	69a0      	69a0	ldr	r0, [r4, #24]
    1e2c:	7849      	7849	ldrb	r1, [r1, #1]
    1e2e:	180b      	180b	add	r3, r1, r0
    1e30:	1c50      	1c50	add	r0, r2, #1
    1e32:	6430      	6430	str	r0, [r6, #64]
    1e34:	7852      	7852	ldrb	r2, [r2, #1]
    1e36:	3001      	3001	add	r0, #1
    1e38:	6430      	6430	str	r0, [r6, #64]
    1e3a:	2d11      	2d11	cmp	r5, #17
    1e3c:	d900      	d900	bls	1e40 <ply_memacc+0x24>
    1e3e:	e096      	e096	b	1f6e <ply_memacc+0x152>
    1e40:	00a8      	00a8	lsl	r0, r5, #2
    1e42:	4902      	4902	ldr	r1, [pc, #8]	(1e4c <ply_memacc+0x30>)
    1e44:	1840      	1840	add	r0, r0, r1
    1e46:	6800      	6800	ldr	r0, [r0, #0]
    1e48:	4687      	4687	mov	pc, r0
    1e4a:	0000      	0000	lsl	r0, r0, #0
    1e4c:	1e50      	1e50	sub	r0, r2, #1
    1e4e:	0000      	0000	lsl	r0, r0, #0
    1e50:	1e98      	1e98	sub	r0, r3, #2
    1e52:	0000      	0000	lsl	r0, r0, #0
    1e54:	1e9c      	1e9c	sub	r4, r3, #2
    1e56:	0000      	0000	lsl	r0, r0, #0
    1e58:	1ea4      	1ea4	sub	r4, r4, #2
    1e5a:	0000      	0000	lsl	r0, r0, #0
    1e5c:	1eac      	1eac	sub	r4, r5, #2
    1e5e:	0000      	0000	lsl	r0, r0, #0
    1e60:	1eb6      	1eb6	sub	r6, r6, #2
    1e62:	0000      	0000	lsl	r0, r0, #0
    1e64:	1ec4      	1ec4	sub	r4, r0, #3
    1e66:	0000      	0000	lsl	r0, r0, #0
    1e68:	1ed2      	1ed2	sub	r2, r2, #3
    1e6a:	0000      	0000	lsl	r0, r0, #0
    1e6c:	1eda      	1eda	sub	r2, r3, #3
    1e6e:	0000      	0000	lsl	r0, r0, #0
    1e70:	1ee2      	1ee2	sub	r2, r4, #3
    1e72:	0000      	0000	lsl	r0, r0, #0
    1e74:	1eea      	1eea	sub	r2, r5, #3
    1e76:	0000      	0000	lsl	r0, r0, #0
    1e78:	1ef2      	1ef2	sub	r2, r6, #3
    1e7a:	0000      	0000	lsl	r0, r0, #0
    1e7c:	1efa      	1efa	sub	r2, r7, #3
    1e7e:	0000      	0000	lsl	r0, r0, #0
    1e80:	1f02      	1f02	sub	r2, r0, #4
    1e82:	0000      	0000	lsl	r0, r0, #0
    1e84:	1f10      	1f10	sub	r0, r2, #4
    1e86:	0000      	0000	lsl	r0, r0, #0
    1e88:	1f1e      	1f1e	sub	r6, r3, #4
    1e8a:	0000      	0000	lsl	r0, r0, #0
    1e8c:	1f2c      	1f2c	sub	r4, r5, #4
    1e8e:	0000      	0000	lsl	r0, r0, #0
    1e90:	1f3a      	1f3a	sub	r2, r7, #4
    1e92:	0000      	0000	lsl	r0, r0, #0
    1e94:	1f48      	1f48	sub	r0, r1, #5
    1e96:	0000      	0000	lsl	r0, r0, #0
    1e98:	701a      	701a	strb	r2, [r3, #0]
    1e9a:	e068      	e068	b	1f6e <ply_memacc+0x152>
    1e9c:	7819      	7819	ldrb	r1, [r3, #0]
    1e9e:	1888      	1888	add	r0, r1, r2
    1ea0:	7018      	7018	strb	r0, [r3, #0]
    1ea2:	e064      	e064	b	1f6e <ply_memacc+0x152>
    1ea4:	7819      	7819	ldrb	r1, [r3, #0]
    1ea6:	1a88      	1a88	sub	r0, r1, r2
    1ea8:	7018      	7018	strb	r0, [r3, #0]
    1eaa:	e060      	e060	b	1f6e <ply_memacc+0x152>
    1eac:	69a0      	69a0	ldr	r0, [r4, #24]
    1eae:	1880      	1880	add	r0, r0, r2
    1eb0:	7800      	7800	ldrb	r0, [r0, #0]
    1eb2:	7018      	7018	strb	r0, [r3, #0]
    1eb4:	e05b      	e05b	b	1f6e <ply_memacc+0x152>
    1eb6:	69a0      	69a0	ldr	r0, [r4, #24]
    1eb8:	1880      	1880	add	r0, r0, r2
    1eba:	7819      	7819	ldrb	r1, [r3, #0]
    1ebc:	7800      	7800	ldrb	r0, [r0, #0]
    1ebe:	1808      	1808	add	r0, r1, r0
    1ec0:	7018      	7018	strb	r0, [r3, #0]
    1ec2:	e054      	e054	b	1f6e <ply_memacc+0x152>
    1ec4:	69a0      	69a0	ldr	r0, [r4, #24]
    1ec6:	1880      	1880	add	r0, r0, r2
    1ec8:	7819      	7819	ldrb	r1, [r3, #0]
    1eca:	7800      	7800	ldrb	r0, [r0, #0]
    1ecc:	1a08      	1a08	sub	r0, r1, r0
    1ece:	7018      	7018	strb	r0, [r3, #0]
    1ed0:	e04d      	e04d	b	1f6e <ply_memacc+0x152>
    1ed2:	781b      	781b	ldrb	r3, [r3, #0]
    1ed4:	4293      	4293	cmp	r3, r2
    1ed6:	d03d      	d03d	beq	1f54 <ply_memacc+0x138>
    1ed8:	e046      	e046	b	1f68 <ply_memacc+0x14c>
    1eda:	781b      	781b	ldrb	r3, [r3, #0]
    1edc:	4293      	4293	cmp	r3, r2
    1ede:	d139      	d139	bne	1f54 <ply_memacc+0x138>
    1ee0:	e042      	e042	b	1f68 <ply_memacc+0x14c>
    1ee2:	781b      	781b	ldrb	r3, [r3, #0]
    1ee4:	4293      	4293	cmp	r3, r2
    1ee6:	d835      	d835	bhi	1f54 <ply_memacc+0x138>
    1ee8:	e03e      	e03e	b	1f68 <ply_memacc+0x14c>
    1eea:	781b      	781b	ldrb	r3, [r3, #0]
    1eec:	4293      	4293	cmp	r3, r2
    1eee:	d231      	d231	bcs	1f54 <ply_memacc+0x138>
    1ef0:	e03a      	e03a	b	1f68 <ply_memacc+0x14c>
    1ef2:	781b      	781b	ldrb	r3, [r3, #0]
    1ef4:	4293      	4293	cmp	r3, r2
    1ef6:	d92d      	d92d	bls	1f54 <ply_memacc+0x138>
    1ef8:	e036      	e036	b	1f68 <ply_memacc+0x14c>
    1efa:	781b      	781b	ldrb	r3, [r3, #0]
    1efc:	4293      	4293	cmp	r3, r2
    1efe:	d329      	d329	bcc	1f54 <ply_memacc+0x138>
    1f00:	e032      	e032	b	1f68 <ply_memacc+0x14c>
    1f02:	69a0      	69a0	ldr	r0, [r4, #24]
    1f04:	1880      	1880	add	r0, r0, r2
    1f06:	781b      	781b	ldrb	r3, [r3, #0]
    1f08:	7800      	7800	ldrb	r0, [r0, #0]
    1f0a:	4283      	4283	cmp	r3, r0
    1f0c:	d022      	d022	beq	1f54 <ply_memacc+0x138>
    1f0e:	e02b      	e02b	b	1f68 <ply_memacc+0x14c>
    1f10:	69a0      	69a0	ldr	r0, [r4, #24]
    1f12:	1880      	1880	add	r0, r0, r2
    1f14:	781b      	781b	ldrb	r3, [r3, #0]
    1f16:	7800      	7800	ldrb	r0, [r0, #0]
    1f18:	4283      	4283	cmp	r3, r0
    1f1a:	d11b      	d11b	bne	1f54 <ply_memacc+0x138>
    1f1c:	e024      	e024	b	1f68 <ply_memacc+0x14c>
    1f1e:	69a0      	69a0	ldr	r0, [r4, #24]
    1f20:	1880      	1880	add	r0, r0, r2
    1f22:	781b      	781b	ldrb	r3, [r3, #0]
    1f24:	7800      	7800	ldrb	r0, [r0, #0]
    1f26:	4283      	4283	cmp	r3, r0
    1f28:	d814      	d814	bhi	1f54 <ply_memacc+0x138>
    1f2a:	e01d      	e01d	b	1f68 <ply_memacc+0x14c>
    1f2c:	69a0      	69a0	ldr	r0, [r4, #24]
    1f2e:	1880      	1880	add	r0, r0, r2
    1f30:	781b      	781b	ldrb	r3, [r3, #0]
    1f32:	7800      	7800	ldrb	r0, [r0, #0]
    1f34:	4283      	4283	cmp	r3, r0
    1f36:	d20d      	d20d	bcs	1f54 <ply_memacc+0x138>
    1f38:	e016      	e016	b	1f68 <ply_memacc+0x14c>
    1f3a:	69a0      	69a0	ldr	r0, [r4, #24]
    1f3c:	1880      	1880	add	r0, r0, r2
    1f3e:	781b      	781b	ldrb	r3, [r3, #0]
    1f40:	7800      	7800	ldrb	r0, [r0, #0]
    1f42:	4283      	4283	cmp	r3, r0
    1f44:	d906      	d906	bls	1f54 <ply_memacc+0x138>
    1f46:	e00f      	e00f	b	1f68 <ply_memacc+0x14c>
    1f48:	69a0      	69a0	ldr	r0, [r4, #24]
    1f4a:	1880      	1880	add	r0, r0, r2
    1f4c:	781b      	781b	ldrb	r3, [r3, #0]
    1f4e:	7800      	7800	ldrb	r0, [r0, #0]
    1f50:	4283      	4283	cmp	r3, r0
    1f52:	d209      	d209	bcs	1f68 <ply_memacc+0x14c>
    1f54:	4803      	4803	ldr	r0, [pc, #12]	(1f64 <ply_memacc+0x148>)
    1f56:	6802      	6802	ldr	r2, [r0, #0]
    1f58:	1c20      	1c20	mov	r0, r4		(add r0, r4, #0)
    1f5a:	1c31      	1c31	mov	r1, r6		(add r1, r6, #0)
    1f5c:	fffef7ff 	f7ff	bl	1f5c <ply_memacc+0x140>
    1f60:	e005      	e005	b	1f6e <ply_memacc+0x152>
    1f62:	0000      	0000	lsl	r0, r0, #0
    1f64:	0004      	0004	lsl	r4, r0, #0
    1f66:	0000      	0000	lsl	r0, r0, #0
    1f68:	6c30      	6c30	ldr	r0, [r6, #64]
    1f6a:	3004      	3004	add	r0, #4
    1f6c:	6430      	6430	str	r0, [r6, #64]
    1f6e:	bc70      	bc70	pop	{r4, r5, r6}
    1f70:	bc01      	bc01	pop	{r0}
    1f72:	4700      	4700	bx	r0

00001f74 <ply_xcmd>:
    1f74:	b500      	b500	push	{lr}
    1f76:	6c0a      	6c0a	ldr	r2, [r1, #64]
    1f78:	7813      	7813	ldrb	r3, [r2, #0]
    1f7a:	3201      	3201	add	r2, #1
    1f7c:	640a      	640a	str	r2, [r1, #64]
    1f7e:	4a04      	4a04	ldr	r2, [pc, #16]	(1f90 <ply_xcmd+0x1c>)
    1f80:	009b      	009b	lsl	r3, r3, #2
    1f82:	189b      	189b	add	r3, r3, r2
    1f84:	681a      	681a	ldr	r2, [r3, #0]
    1f86:	fffef7ff 	f7ff	bl	1f86 <ply_xcmd+0x12>
    1f8a:	bc01      	bc01	pop	{r0}
    1f8c:	4700      	4700	bx	r0
    1f8e:	0000      	0000	lsl	r0, r0, #0
    1f90:	0000      	0000	lsl	r0, r0, #0
	...

00001f94 <ply_xxx>:
    1f94:	b500      	b500	push	{lr}
    1f96:	4a03      	4a03	ldr	r2, [pc, #12]	(1fa4 <ply_xxx+0x10>)
    1f98:	6812      	6812	ldr	r2, [r2, #0]
    1f9a:	fffef7ff 	f7ff	bl	1f9a <ply_xxx+0x6>
    1f9e:	bc01      	bc01	pop	{r0}
    1fa0:	4700      	4700	bx	r0
    1fa2:	0000      	0000	lsl	r0, r0, #0
    1fa4:	0000      	0000	lsl	r0, r0, #0
	...

00001fa8 <ply_xwave>:
    1fa8:	b510      	b510	push	{r4, lr}
    1faa:	6c0a      	6c0a	ldr	r2, [r1, #64]
    1fac:	480c      	480c	ldr	r0, [pc, #48]	(1fe0 <ply_xwave+0x38>)
    1fae:	4004      	4004	and	r4, r0
    1fb0:	7810      	7810	ldrb	r0, [r2, #0]
    1fb2:	4304      	4304	orr	r4, r0
    1fb4:	7850      	7850	ldrb	r0, [r2, #1]
    1fb6:	0203      	0203	lsl	r3, r0, #8
    1fb8:	480a      	480a	ldr	r0, [pc, #40]	(1fe4 <ply_xwave+0x3c>)
    1fba:	4004      	4004	and	r4, r0
    1fbc:	431c      	431c	orr	r4, r3
    1fbe:	7890      	7890	ldrb	r0, [r2, #2]
    1fc0:	0403      	0403	lsl	r3, r0, #16
    1fc2:	4809      	4809	ldr	r0, [pc, #36]	(1fe8 <ply_xwave+0x40>)
    1fc4:	4004      	4004	and	r4, r0
    1fc6:	431c      	431c	orr	r4, r3
    1fc8:	78d0      	78d0	ldrb	r0, [r2, #3]
    1fca:	0603      	0603	lsl	r3, r0, #24
    1fcc:	4807      	4807	ldr	r0, [pc, #28]	(1fec <ply_xwave+0x44>)
    1fce:	4004      	4004	and	r4, r0
    1fd0:	431c      	431c	orr	r4, r3
    1fd2:	628c      	628c	str	r4, [r1, #40]
    1fd4:	3204      	3204	add	r2, #4
    1fd6:	640a      	640a	str	r2, [r1, #64]
    1fd8:	bc10      	bc10	pop	{r4}
    1fda:	bc01      	bc01	pop	{r0}
    1fdc:	4700      	4700	bx	r0
    1fde:	0000      	0000	lsl	r0, r0, #0
    1fe0:	ff00      	ff00	second half of BL instruction 0xff00
    1fe2:	ffff      	ffff	second half of BL instruction 0xffff
    1fe4:	00ff      	00ff	lsl	r7, r7, #3
    1fe6:	ffff      	ffff	second half of BL instruction 0xffff
    1fe8:	ffff      	ffff	second half of BL instruction 0xffff
    1fea:	ff00      	ff00	second half of BL instruction 0xff00
    1fec:	ffff      	ffff	second half of BL instruction 0xffff
    1fee:	00ff      	00ff	lsl	r7, r7, #3

00001ff0 <ply_xtype>:
    1ff0:	6c08      	6c08	ldr	r0, [r1, #64]
    1ff2:	7802      	7802	ldrb	r2, [r0, #0]
    1ff4:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    1ff6:	3024      	3024	add	r0, #36
    1ff8:	7002      	7002	strb	r2, [r0, #0]
    1ffa:	6c08      	6c08	ldr	r0, [r1, #64]
    1ffc:	3001      	3001	add	r0, #1
    1ffe:	6408      	6408	str	r0, [r1, #64]
    2000:	4770      	4770	bx	lr
	...

00002004 <ply_xatta>:
    2004:	6c08      	6c08	ldr	r0, [r1, #64]
    2006:	7802      	7802	ldrb	r2, [r0, #0]
    2008:	1c08      	1c08	mov	r0, r1		(add r0, r1, #0)
    200a:	302c      	302c	add	r0, #44
    200c:	7002      	7002	strb	r2, [r0, #0]
    200e:	6c08      	6c08	ldr	r0, [r1, #64]
    2010:	3001      	3001	add	r0, #1
    2012:	6408      	6408	str	r0, [r1, #64]
    2014:	4770      	4770	bx	lr
	...

00002018 <ply_xdeca>:
    2018:	6c08      	6c08	ldr	r0, [r1, #64]
    201a:	7800      	7800	ldrb	r0, [r0, #0]
    201c:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
    201e:	322d      	322d	add	r2, #45
    2020:	7010      	7010	strb	r0, [r2, #0]
    2022:	6c08      	6c08	ldr	r0, [r1, #64]
    2024:	3001      	3001	add	r0, #1
    2026:	6408      	6408	str	r0, [r1, #64]
    2028:	4770      	4770	bx	lr
	...

0000202c <ply_xsust>:
    202c:	6c08      	6c08	ldr	r0, [r1, #64]
    202e:	7800      	7800	ldrb	r0, [r0, #0]
    2030:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
    2032:	322e      	322e	add	r2, #46
    2034:	7010      	7010	strb	r0, [r2, #0]
    2036:	6c08      	6c08	ldr	r0, [r1, #64]
    2038:	3001      	3001	add	r0, #1
    203a:	6408      	6408	str	r0, [r1, #64]
    203c:	4770      	4770	bx	lr
	...

00002040 <ply_xrele>:
    2040:	6c08      	6c08	ldr	r0, [r1, #64]
    2042:	7800      	7800	ldrb	r0, [r0, #0]
    2044:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
    2046:	322f      	322f	add	r2, #47
    2048:	7010      	7010	strb	r0, [r2, #0]
    204a:	6c08      	6c08	ldr	r0, [r1, #64]
    204c:	3001      	3001	add	r0, #1
    204e:	6408      	6408	str	r0, [r1, #64]
    2050:	4770      	4770	bx	lr
	...

00002054 <ply_xiecv>:
    2054:	6c08      	6c08	ldr	r0, [r1, #64]
    2056:	7802      	7802	ldrb	r2, [r0, #0]
    2058:	778a      	778a	strb	r2, [r1, #30]
    205a:	3001      	3001	add	r0, #1
    205c:	6408      	6408	str	r0, [r1, #64]
    205e:	4770      	4770	bx	lr

00002060 <ply_xiecl>:
    2060:	6c08      	6c08	ldr	r0, [r1, #64]
    2062:	7802      	7802	ldrb	r2, [r0, #0]
    2064:	77ca      	77ca	strb	r2, [r1, #31]
    2066:	3001      	3001	add	r0, #1
    2068:	6408      	6408	str	r0, [r1, #64]
    206a:	4770      	4770	bx	lr

0000206c <ply_xleng>:
    206c:	6c08      	6c08	ldr	r0, [r1, #64]
    206e:	7800      	7800	ldrb	r0, [r0, #0]
    2070:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
    2072:	3226      	3226	add	r2, #38
    2074:	7010      	7010	strb	r0, [r2, #0]
    2076:	6c08      	6c08	ldr	r0, [r1, #64]
    2078:	3001      	3001	add	r0, #1
    207a:	6408      	6408	str	r0, [r1, #64]
    207c:	4770      	4770	bx	lr
	...

00002080 <ply_xswee>:
    2080:	6c08      	6c08	ldr	r0, [r1, #64]
    2082:	7800      	7800	ldrb	r0, [r0, #0]
    2084:	1c0a      	1c0a	mov	r2, r1		(add r2, r1, #0)
    2086:	3227      	3227	add	r2, #39
    2088:	7010      	7010	strb	r0, [r2, #0]
    208a:	6c08      	6c08	ldr	r0, [r1, #64]
    208c:	3001      	3001	add	r0, #1
    208e:	6408      	6408	str	r0, [r1, #64]
    2090:	4770      	4770	bx	lr
	...

00002094 <DummyFunc_rev>:
    2094:	4770      	4770	bx	lr
	...
