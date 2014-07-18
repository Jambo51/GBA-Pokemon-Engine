@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song213_grp, group_6
	.equ	song213_pri, 4
	.equ	song213_rev, 178
	.equ	song213_mvl, 127
	.equ	song213_key, 0
	.equ	song213_tbs, 1
	.equ	song213_exg, 1
	.equ	song213_cmp, 1

	.text
	.global	song213
	.align	2

@**************** Track 00 ****************************@

song213_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 58
	.byte		BENDR , 24
	.byte		PAN   , c_v+0
	.byte		VOL   , 19*song213_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		N16   , Gn1 , v127
	.byte	W01
	.byte		VOL   , 43*song213_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 72*song213_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 92*song213_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 109*song213_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W02
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+40
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		VOL   , 102*song213_mvl/mxv
	.byte		BEND  , c_v+19
	.byte	W01
	.byte		VOL   , 88*song213_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W02
	.byte		VOL   , 69*song213_mvl/mxv
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		VOL   , 37*song213_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 17*song213_mvl/mxv
	.byte		BEND  , c_v-34
	.byte	W10
	.byte	FINE

@**************** Track 01 ****************************@

song213_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 110*song213_mvl/mxv
	.byte		N02   , Gs3 , v032
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		        Fn3 
	.byte	W03
	.byte		        En3 
	.byte	W02
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W02
	.byte		        Gs2 
	.byte	W10
	.byte	FINE

@******************************************************@
	.align	2

song213:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song213_pri	@ Priority
	.byte	song213_rev	@ Reverb.

	.word	song213_grp

	.word	song213_0
	.word	song213_1

	.end
