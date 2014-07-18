@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song64_grp, group_6
	.equ	song64_pri, 4
	.equ	song64_rev, 178
	.equ	song64_mvl, 127
	.equ	song64_key, 0
	.equ	song64_tbs, 1
	.equ	song64_exg, 1
	.equ	song64_cmp, 1

	.text
	.global	song64
	.align	2

@**************** Track 00 ****************************@

song64_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 26
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song64_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn3 , v127
	.byte	W03
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song64:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song64_pri	@ Priority
	.byte	song64_rev	@ Reverb.

	.word	song64_grp

	.word	song64_0

	.end
