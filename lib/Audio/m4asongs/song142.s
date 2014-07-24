@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song142_grp, group_6
	.equ	song142_pri, 4
	.equ	song142_rev, 178
	.equ	song142_mvl, 127
	.equ	song142_key, 0
	.equ	song142_tbs, 1
	.equ	song142_exg, 1
	.equ	song142_cmp, 1

	.section .rodata
	.global	song142
	.align	2

@**************** Track 00 ****************************@

song142_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 29
	.byte		BENDR , 12
	.byte		VOL   , 110*song142_mvl/mxv
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+0
	.byte		N04   , Cn3 , v127
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		N18   , Gn4 
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W01
	.byte		VOL   , 98*song142_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 83*song142_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 63*song142_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+13
	.byte	W02
	.byte		VOL   , 44*song142_mvl/mxv
	.byte		PAN   , c_v-5
	.byte	W02
	.byte		VOL   , 28*song142_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		PAN   , c_v-2
	.byte	W01
	.byte		VOL   , 12*song142_mvl/mxv
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song142_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song142_mvl/mxv
	.byte		N01   , Gn2 , v032
	.byte	W02
	.byte		N01
	.byte	W02
	.byte		N18
	.byte	W03
	.byte		VOL   , 98*song142_mvl/mxv
	.byte	W03
	.byte		        83*song142_mvl/mxv
	.byte	W04
	.byte		        63*song142_mvl/mxv
	.byte	W04
	.byte		        44*song142_mvl/mxv
	.byte	W02
	.byte		        28*song142_mvl/mxv
	.byte	W02
	.byte		        12*song142_mvl/mxv
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song142:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song142_pri	@ Priority
	.byte	song142_rev	@ Reverb.

	.word	song142_grp

	.word	song142_0
	.word	song142_1

	.end
