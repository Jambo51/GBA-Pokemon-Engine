@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song63_grp, group_6
	.equ	song63_pri, 4
	.equ	song63_rev, 178
	.equ	song63_mvl, 127
	.equ	song63_key, 0
	.equ	song63_tbs, 1
	.equ	song63_exg, 1
	.equ	song63_cmp, 1

	.section .rodata
	.global	song63
	.align	2

@**************** Track 00 ****************************@

song63_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 23
	.byte		VOL   , 20*song63_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-25
	.byte		N03   , Gs4 , v112
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v+9
	.byte	W04
	.byte	W02
	.byte		VOL   , 17*song63_mvl/mxv
	.byte		BEND  , c_v+18
	.byte		N02   , Gs4 , v127
	.byte	W01
	.byte		BEND  , c_v+34
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song63:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song63_pri	@ Priority
	.byte	song63_rev	@ Reverb.

	.word	song63_grp

	.word	song63_0

	.end
