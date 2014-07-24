@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song106_grp, group_6
	.equ	song106_pri, 5
	.equ	song106_rev, 178
	.equ	song106_mvl, 127
	.equ	song106_key, 0
	.equ	song106_tbs, 1
	.equ	song106_exg, 1
	.equ	song106_cmp, 1

	.section .rodata
	.global	song106
	.align	2

@**************** Track 00 ****************************@

song106_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 21
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 120*song106_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N01   , Bn5 , v127
	.byte	W01
	.byte		        Cn5 , v100
	.byte	W01
	.byte		VOICE , 18
	.byte		N01   , Cn4 , v127
	.byte	W02
	.byte		VOICE , 36
	.byte		N19   , Cn6 , v040
	.byte	W02
	.byte		VOL   , 63*song106_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W01
	.byte		VOL   , 77*song106_mvl/mxv
	.byte		BEND  , c_v+13
	.byte	W01
	.byte		VOL   , 91*song106_mvl/mxv
	.byte		BEND  , c_v+21
	.byte	W01
	.byte		VOL   , 106*song106_mvl/mxv
	.byte		BEND  , c_v+33
	.byte	W01
	.byte		VOL   , 120*song106_mvl/mxv
	.byte	W05
	.byte		        109*song106_mvl/mxv
	.byte	W01
	.byte		        102*song106_mvl/mxv
	.byte	W02
	.byte		        84*song106_mvl/mxv
	.byte	W01
	.byte		        68*song106_mvl/mxv
	.byte	W01
	.byte		        56*song106_mvl/mxv
	.byte	W01
	.byte		        24*song106_mvl/mxv
	.byte	W01
	.byte		        10*song106_mvl/mxv
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song106_1:
	.byte	KEYSH , 0
	.byte		VOL   , 120*song106_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte	W07
	.byte		VOICE , 46
	.byte		N01   , Cn6 , v100
	.byte	W02
	.byte		BEND  , c_v+4
	.byte		N01   , Gn5 , v088
	.byte	W03
	.byte		BEND  , c_v+8
	.byte		N01   , Cn6 , v072
	.byte	W02
	.byte		BEND  , c_v+16
	.byte		N01   , Gn5 , v056
	.byte	W02
	.byte		BEND  , c_v+23
	.byte		N01   , Cn6 , v040
	.byte	W03
	.byte		BEND  , c_v+33
	.byte		N01   , Gn5 , v028
	.byte	W02
	.byte		BEND  , c_v+53
	.byte		N01   , Cn6 , v012
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song106:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song106_pri	@ Priority
	.byte	song106_rev	@ Reverb.

	.word	song106_grp

	.word	song106_0
	.word	song106_1

	.end
