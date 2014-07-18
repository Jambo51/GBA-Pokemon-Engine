@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song42_grp, group_6
	.equ	song42_pri, 4
	.equ	song42_rev, 178
	.equ	song42_mvl, 127
	.equ	song42_key, 0
	.equ	song42_tbs, 1
	.equ	song42_exg, 1
	.equ	song42_cmp, 1

	.text
	.global	song42
	.align	2

@**************** Track 00 ****************************@

song42_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 9
	.byte		VOL   , 90*song42_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 , v112
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		N21   , Gn5 
	.byte	W03
	.byte	W03
	.byte		VOL   , 81*song42_mvl/mxv
	.byte		BEND  , c_v+6
	.byte	W03
	.byte		VOL   , 72*song42_mvl/mxv
	.byte		BEND  , c_v+20
	.byte	W03
	.byte		VOL   , 46*song42_mvl/mxv
	.byte		BEND  , c_v+37
	.byte	W03
	.byte		VOL   , 24*song42_mvl/mxv
	.byte		BEND  , c_v+63
	.byte	W03
	.byte		VOL   , 7*song42_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song42:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song42_pri	@ Priority
	.byte	song42_rev	@ Reverb.

	.word	song42_grp

	.word	song42_0

	.end
