@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song3_grp, group_5
	.equ	song3_pri, 5
	.equ	song3_rev, 178
	.equ	song3_mvl, 127
	.equ	song3_key, 0
	.equ	song3_tbs, 1
	.equ	song3_exg, 1
	.equ	song3_cmp, 1

	.section .rodata
	.global	song3
	.align	2

@**************** Track 00 ****************************@

song3_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 6
	.byte		VOL   , 100*song3_mvl/mxv
	.byte		BEND  , c_v-8
	.byte		N04   , Cn3 , v112
	.byte	W04
	.byte		        Cn2 
	.byte	W02
	.byte	W02
	.byte		        Cn1 
	.byte	W04
	.byte		        Cn1 , v024
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song3:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song3_pri	@ Priority
	.byte	song3_rev	@ Reverb.

	.word	song3_grp

	.word	song3_0

	.end
