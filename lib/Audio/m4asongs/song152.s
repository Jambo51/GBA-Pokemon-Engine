@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song152_grp, group_6
	.equ	song152_pri, 4
	.equ	song152_rev, 178
	.equ	song152_mvl, 127
	.equ	song152_key, 0
	.equ	song152_tbs, 1
	.equ	song152_exg, 1
	.equ	song152_cmp, 1

	.text
	.global	song152
	.align	2

@**************** Track 00 ****************************@

song152_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 26
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song152_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Gn5 , v092
	.byte	W02
	.byte		        Cn5 
	.byte	W04
	.byte		VOICE , 36
	.byte		VOL   , 84*song152_mvl/mxv
	.byte		PAN   , c_v+5
	.byte		N15   , Gn5 , v040
	.byte	W01
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		VOL   , 94*song152_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		VOL   , 110*song152_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W02
	.byte		VOL   , 96*song152_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		VOL   , 68*song152_mvl/mxv
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		VOL   , 15*song152_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W01
	.byte		        c_v-10
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song152_1:
	.byte	KEYSH , 0
	.byte		VOICE , 25
	.byte		VOL   , 110*song152_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Cn3 , v040
	.byte	W02
	.byte		N01
	.byte	W22
	.byte	FINE

@******************************************************@
	.align	2

song152:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song152_pri	@ Priority
	.byte	song152_rev	@ Reverb.

	.word	song152_grp

	.word	song152_0
	.word	song152_1

	.end
