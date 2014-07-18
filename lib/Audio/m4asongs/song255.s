@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song255_grp, group_5
	.equ	song255_pri, 5
	.equ	song255_rev, 178
	.equ	song255_mvl, 127
	.equ	song255_key, 0
	.equ	song255_tbs, 1
	.equ	song255_exg, 1
	.equ	song255_cmp, 1

	.text
	.global	song255
	.align	2

@**************** Track 00 ****************************@

song255_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 92
	.byte		BENDR , 12
	.byte		VOL   , 120*song255_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn2 , v127
	.byte	W03
	.byte		        Cn2 , v020
	.byte	W03
	.byte		N18   , Cn2 , v127
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		N09   , Cn2 , v020
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song255:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song255_pri	@ Priority
	.byte	song255_rev	@ Reverb.

	.word	song255_grp

	.word	song255_0

	.end
