@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song50_grp, group_6
	.equ	song50_pri, 4
	.equ	song50_rev, 178
	.equ	song50_mvl, 127
	.equ	song50_key, 0
	.equ	song50_tbs, 1
	.equ	song50_exg, 1
	.equ	song50_cmp, 1

	.section .rodata
	.global	song50
	.align	2

@**************** Track 00 ****************************@

song50_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 16
	.byte		VOL   , 100*song50_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N12   , Fn4 , v100
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song50_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		VOL   , 100*song50_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N09   , Fn4 , v088
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song50:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song50_pri	@ Priority
	.byte	song50_rev	@ Reverb.

	.word	song50_grp

	.word	song50_0
	.word	song50_1

	.end
