@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song53_grp, group_5
	.equ	song53_pri, 5
	.equ	song53_rev, 178
	.equ	song53_mvl, 127
	.equ	song53_key, 0
	.equ	song53_tbs, 1
	.equ	song53_exg, 1
	.equ	song53_cmp, 1

	.text
	.global	song53
	.align	2

@**************** Track 00 ****************************@

song53_0:
	.byte	KEYSH , 0
	.byte		VOICE , 13
	.byte		BENDR , 12
	.byte		VOL   , 12*song53_mvl/mxv
	.byte		BEND  , c_v+49
	.byte		N06   , Gn4 , v080
	.byte	W01
	.byte		VOL   , 44*song53_mvl/mxv
	.byte		BEND  , c_v+22
	.byte	W01
	.byte		VOL   , 75*song53_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W01
	.byte		VOL   , 87*song53_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 100*song53_mvl/mxv
	.byte		BEND  , c_v+54
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte	W03
	.byte		N03   , Gn4 , v040
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song53_1:
	.byte	KEYSH , 0
	.byte		VOICE , 123
	.byte		VOL   , 59*song53_mvl/mxv
	.byte		N06   , Gs4 , v052
	.byte	W01
	.byte		VOL   , 72*song53_mvl/mxv
	.byte	W01
	.byte		        90*song53_mvl/mxv
	.byte	W01
	.byte		        100*song53_mvl/mxv
	.byte	W03
	.byte	W03
	.byte		N03   , Gs4 , v024
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song53:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song53_pri	@ Priority
	.byte	song53_rev	@ Reverb.

	.word	song53_grp

	.word	song53_0
	.word	song53_1

	.end
