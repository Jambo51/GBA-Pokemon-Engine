@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song168_grp, group_6
	.equ	song168_pri, 4
	.equ	song168_rev, 178
	.equ	song168_mvl, 127
	.equ	song168_key, 0
	.equ	song168_tbs, 1
	.equ	song168_exg, 1
	.equ	song168_cmp, 1

	.text
	.global	song168
	.align	2

@**************** Track 00 ****************************@

song168_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 115*song168_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn2 , v112
	.byte	W01
	.byte		VOICE , 26
	.byte		N02   , Cn3 , v127
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v+16
	.byte		N03
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+28
	.byte	W02
	.byte		        c_v+45
	.byte	W01
	.byte		VOICE , 36
	.byte		PAN   , c_v+12
	.byte		BEND  , c_v+0
	.byte		N02   , Cn3 , v056
	.byte	W02
	.byte	W03
	.byte		PAN   , c_v-12
	.byte		N02   , Cn3 , v036
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song168:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song168_pri	@ Priority
	.byte	song168_rev	@ Reverb.

	.word	song168_grp

	.word	song168_0

	.end
