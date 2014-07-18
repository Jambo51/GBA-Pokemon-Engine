@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song34_grp, group_6
	.equ	song34_pri, 4
	.equ	song34_rev, 178
	.equ	song34_mvl, 127
	.equ	song34_key, 0
	.equ	song34_tbs, 1
	.equ	song34_exg, 1
	.equ	song34_cmp, 1

	.text
	.global	song34
	.align	2

@**************** Track 00 ****************************@

song34_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 3
	.byte		VOL   , 90*song34_mvl/mxv
	.byte		BEND  , c_v+16
	.byte		N03   , En3 , v112
	.byte	W01
	.byte		BEND  , c_v+38
	.byte	W01
	.byte		        c_v+62
	.byte	W02
	.byte		N12   , En4 
	.byte	W02
	.byte	W06
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song34_1:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		VOL   , 90*song34_mvl/mxv
	.byte		N03   , Gs3 , v096
	.byte	W04
	.byte		N12   , Gs4 
	.byte	W02
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song34:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song34_pri	@ Priority
	.byte	song34_rev	@ Reverb.

	.word	song34_grp

	.word	song34_0
	.word	song34_1

	.end
