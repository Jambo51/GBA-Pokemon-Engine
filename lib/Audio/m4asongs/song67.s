@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song67_grp, group_6
	.equ	song67_pri, 4
	.equ	song67_rev, 178
	.equ	song67_mvl, 127
	.equ	song67_key, 0
	.equ	song67_tbs, 1
	.equ	song67_exg, 1
	.equ	song67_cmp, 1

	.text
	.global	song67
	.align	2

@**************** Track 00 ****************************@

song67_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		VOL   , 105*song67_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Cn4 , v127
	.byte	W06
	.byte		VOICE , 23
	.byte		N02   , Cn3 , v112
	.byte	W07
	.byte		N01   , Cn4 
	.byte	W05
	.byte		        Cn3 , v100
	.byte	W02
	.byte		        Gn3 , v092
	.byte	W02
	.byte		        Cn3 , v072
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song67:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song67_pri	@ Priority
	.byte	song67_rev	@ Reverb.

	.word	song67_grp

	.word	song67_0

	.end
