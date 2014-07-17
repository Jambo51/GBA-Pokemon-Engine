@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song109_grp, group_5
	.equ	song109_pri, 5
	.equ	song109_rev, 178
	.equ	song109_mvl, 127
	.equ	song109_key, 0
	.equ	song109_tbs, 1
	.equ	song109_exg, 1
	.equ	song109_cmp, 1

	.section .rodata
	.global	song109
	.align	2

@**************** Track 00 ****************************@

song109_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 119
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song109_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N02   , Gs4 , v040
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song109:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song109_pri	@ Priority
	.byte	song109_rev	@ Reverb.

	.word	song109_grp

	.word	song109_0

	.end
