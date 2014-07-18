@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song150_grp, group_6
	.equ	song150_pri, 4
	.equ	song150_rev, 178
	.equ	song150_mvl, 127
	.equ	song150_key, 0
	.equ	song150_tbs, 1
	.equ	song150_exg, 1
	.equ	song150_cmp, 1

	.text
	.global	song150
	.align	2

@**************** Track 00 ****************************@

song150_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*song150_mvl/mxv
	.byte		BEND  , c_v-32
	.byte		N10   , An1 , v127
	.byte	W01
	.byte		VOL   , 52*song150_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 68*song150_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 82*song150_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 105*song150_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+19
	.byte	W02
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+28
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+49
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+63
	.byte	W05
	.byte		VOL   , 40*song150_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06
	.byte	W01
	.byte		VOL   , 52*song150_mvl/mxv
	.byte		PAN   , c_v+10
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		VOL   , 79*song150_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+48
	.byte	W02
	.byte		VOL   , 105*song150_mvl/mxv
	.byte		PAN   , c_v-9
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W05
	.byte	FINE

@**************** Track 01 ****************************@

song150_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		PAN   , c_v+0
	.byte		VOL   , 52*song150_mvl/mxv
	.byte		N10   , Gn2 , v040
	.byte	W01
	.byte		VOL   , 69*song150_mvl/mxv
	.byte	W01
	.byte		        83*song150_mvl/mxv
	.byte	W01
	.byte		        105*song150_mvl/mxv
	.byte	W01
	.byte		        85*song150_mvl/mxv
	.byte	W02
	.byte		        52*song150_mvl/mxv
	.byte	W01
	.byte		        29*song150_mvl/mxv
	.byte	W01
	.byte		        12*song150_mvl/mxv
	.byte	W06
	.byte		VOICE , 25
	.byte		VOL   , 52*song150_mvl/mxv
	.byte		N06   , Gs4 
	.byte	W01
	.byte		VOL   , 81*song150_mvl/mxv
	.byte	W01
	.byte		        105*song150_mvl/mxv
	.byte	W03
	.byte		        52*song150_mvl/mxv
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song150:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song150_pri	@ Priority
	.byte	song150_rev	@ Reverb.

	.word	song150_grp

	.word	song150_0
	.word	song150_1

	.end
