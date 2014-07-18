@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song90_grp, group_6
	.equ	song90_pri, 5
	.equ	song90_rev, 178
	.equ	song90_mvl, 127
	.equ	song90_key, 0
	.equ	song90_tbs, 1
	.equ	song90_exg, 1
	.equ	song90_cmp, 1

	.text
	.global	song90
	.align	2

@**************** Track 00 ****************************@

song90_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 25
	.byte		VOL   , 12*song90_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Gs4 , v060
	.byte	W01
	.byte		VOL   , 22*song90_mvl/mxv
	.byte	W01
	.byte		        33*song90_mvl/mxv
	.byte	W01
	.byte		        46*song90_mvl/mxv
	.byte	W01
	.byte		        58*song90_mvl/mxv
	.byte	W02
	.byte		        70*song90_mvl/mxv
	.byte	W02
	.byte		        60*song90_mvl/mxv
	.byte	W01
	.byte		        42*song90_mvl/mxv
	.byte	W01
	.byte		        22*song90_mvl/mxv
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song90_1:
	.byte	KEYSH , 0
	.byte		VOICE , 15
	.byte		VOL   , 12*song90_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Fn3 , v100
	.byte	W01
	.byte		VOL   , 22*song90_mvl/mxv
	.byte		BEND  , c_v+3
	.byte	W01
	.byte		VOL   , 33*song90_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W01
	.byte		VOL   , 46*song90_mvl/mxv
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 58*song90_mvl/mxv
	.byte		BEND  , c_v+12
	.byte	W02
	.byte		VOL   , 70*song90_mvl/mxv
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		VOL   , 60*song90_mvl/mxv
	.byte		BEND  , c_v+25
	.byte	W01
	.byte		VOL   , 42*song90_mvl/mxv
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		VOL   , 22*song90_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song90:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song90_pri	@ Priority
	.byte	song90_rev	@ Reverb.

	.word	song90_grp

	.word	song90_0
	.word	song90_1

	.end
