@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song154_grp, group_6
	.equ	song154_pri, 4
	.equ	song154_rev, 178
	.equ	song154_mvl, 127
	.equ	song154_key, 0
	.equ	song154_tbs, 1
	.equ	song154_exg, 1
	.equ	song154_cmp, 1

	.text
	.global	song154
	.align	2

@**************** Track 00 ****************************@

song154_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 26
	.byte		BENDR , 12
	.byte		PAN   , c_v+6
	.byte		VOL   , 110*song154_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Gn3 , v112
	.byte	W02
	.byte		        Gs3 
	.byte	W01
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		N02   , An3 
	.byte	W02
	.byte		PAN   , c_v+7
	.byte	W02
	.byte		        c_v-8
	.byte	W02
	.byte		VOICE , 21
	.byte		PAN   , c_v+0
	.byte		N01   , Cn5 , v116
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		N01   , Cn4 , v108
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		N01   , Gn4 , v104
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Gn3 , v096
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		N01   , Cn4 , v088
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		N01   , Cn3 , v080
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		N01   , Gn3 , v072
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		N01   , Gn2 , v064
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		N01   , Cn3 , v056
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Gn2 , v048
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song154_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		VOL   , 110*song154_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W10
	.byte		N01   , Gn2 , v040
	.byte	W08
	.byte		N01
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song154:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song154_pri	@ Priority
	.byte	song154_rev	@ Reverb.

	.word	song154_grp

	.word	song154_0
	.word	song154_1

	.end
