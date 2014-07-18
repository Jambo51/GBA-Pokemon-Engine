@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song94_grp, group_6
	.equ	song94_pri, 5
	.equ	song94_rev, 178
	.equ	song94_mvl, 127
	.equ	song94_key, 0
	.equ	song94_tbs, 1
	.equ	song94_exg, 1
	.equ	song94_cmp, 1

	.text
	.global	song94
	.align	2

@**************** Track 00 ****************************@

song94_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 14
	.byte		VOL   , 90*song94_mvl/mxv
	.byte		BEND  , c_v-7
	.byte		N02   , Cn5 , v112
	.byte	W02
	.byte		        Cn6 
	.byte	W04
	.byte	W01
	.byte		        Cn6 , v060
	.byte	W05
	.byte	W02
	.byte		        Cn5 , v112
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte	W03
	.byte		        Cn6 , v060
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song94:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song94_pri	@ Priority
	.byte	song94_rev	@ Reverb.

	.word	song94_grp

	.word	song94_0

	.end
