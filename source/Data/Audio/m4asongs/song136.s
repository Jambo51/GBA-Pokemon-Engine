@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song136_grp, group_6
	.equ	song136_pri, 4
	.equ	song136_rev, 178
	.equ	song136_mvl, 127
	.equ	song136_key, 0
	.equ	song136_tbs, 1
	.equ	song136_exg, 1
	.equ	song136_cmp, 1

	.section .rodata
	.global	song136
	.align	2

@**************** Track 00 ****************************@

song136_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 90
	.byte		VOICE , 22
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song136_mvl/mxv
	.byte		BEND  , c_v-12
	.byte		N19   , Gn3 , v108
	.byte	W02
	.byte		BEND  , c_v-5
	.byte	W01
	.byte		VOL   , 101*song136_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		VOL   , 84*song136_mvl/mxv
	.byte		BEND  , c_v+4
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 64*song136_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		PAN   , c_v+8
	.byte	W02
	.byte		VOL   , 45*song136_mvl/mxv
	.byte		BEND  , c_v-31
	.byte	W02
	.byte		VOL   , 32*song136_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOICE , 2
	.byte	W01
	.byte		VOL   , 13*song136_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W08
	.byte	FINE

@******************************************************@
	.align	2

song136:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song136_pri	@ Priority
	.byte	song136_rev	@ Reverb.

	.word	song136_grp

	.word	song136_0

	.end
