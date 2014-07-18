@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song171_grp, group_6
	.equ	song171_pri, 4
	.equ	song171_rev, 178
	.equ	song171_mvl, 127
	.equ	song171_key, 0
	.equ	song171_tbs, 1
	.equ	song171_exg, 1
	.equ	song171_cmp, 1

	.text
	.global	song171
	.align	2

@**************** Track 00 ****************************@

song171_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 41
	.byte		VOL   , 125*song171_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N01   , Ds3 , v127
	.byte	W01
	.byte		        As2 
	.byte	W02
	.byte		PAN   , c_v-8
	.byte		N02   , Gn3 
	.byte	W01
	.byte		PAN   , c_v+7
	.byte	W03
	.byte		        c_v+0
	.byte		N01   , Ds3 
	.byte	W01
	.byte		        As2 
	.byte	W02
	.byte		N54   , Fn3 
	.byte	W11
	.byte		BEND  , c_v+3
	.byte	W03
	.byte	W02
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+7
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W02
	.byte		PAN   , c_v-8
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		BEND  , c_v+20
	.byte	W02
	.byte		PAN   , c_v+7
	.byte	W02
	.byte		BEND  , c_v+25
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W04
	.byte		        c_v-8
	.byte		BEND  , c_v+20
	.byte	W03
	.byte		PAN   , c_v+6
	.byte	W01
	.byte		BEND  , c_v+10
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W02
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		PAN   , c_v+7
	.byte	W04
	.byte		        c_v-8
	.byte	W10
	.byte	FINE

@**************** Track 01 ****************************@

song171_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 125*song171_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N02   , Cn3 , v052
	.byte	W01
	.byte		VOL   , 74*song171_mvl/mxv
	.byte	W06
	.byte		        125*song171_mvl/mxv
	.byte		N02
	.byte	W01
	.byte		VOL   , 74*song171_mvl/mxv
	.byte	W16
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song171:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song171_pri	@ Priority
	.byte	song171_rev	@ Reverb.

	.word	song171_grp

	.word	song171_0
	.word	song171_1

	.end
