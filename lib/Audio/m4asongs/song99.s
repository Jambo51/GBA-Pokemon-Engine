@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song99_grp, group_6
	.equ	song99_pri, 4
	.equ	song99_rev, 178
	.equ	song99_mvl, 127
	.equ	song99_key, 0
	.equ	song99_tbs, 1
	.equ	song99_exg, 1
	.equ	song99_cmp, 1

	.text
	.global	song99
	.align	2

@**************** Track 00 ****************************@

song99_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 8
	.byte		VOL   , 110*song99_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn4 , v092
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte	W03
	.byte		N02   , En3 , v127
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song99:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song99_pri	@ Priority
	.byte	song99_rev	@ Reverb.

	.word	song99_grp

	.word	song99_0

	.end
