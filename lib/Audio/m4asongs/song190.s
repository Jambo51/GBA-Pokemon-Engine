@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song190_grp, group_6
	.equ	song190_pri, 4
	.equ	song190_rev, 178
	.equ	song190_mvl, 127
	.equ	song190_key, 0
	.equ	song190_tbs, 1
	.equ	song190_exg, 1
	.equ	song190_cmp, 1

	.text
	.global	song190
	.align	2

@**************** Track 00 ****************************@

song190_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 38
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 27*song190_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N10   , An1 , v127
	.byte	W01
	.byte		VOL   , 75*song190_mvl/mxv
	.byte	W01
	.byte		        120*song190_mvl/mxv
	.byte	W04
	.byte	W02
	.byte		        75*song190_mvl/mxv
	.byte	W01
	.byte		        28*song190_mvl/mxv
	.byte	W03
	.byte		VOICE , 36
	.byte		VOL   , 83*song190_mvl/mxv
	.byte		N18   , En2 , v112
	.byte	W02
	.byte		VOL   , 87*song190_mvl/mxv
	.byte	W02
	.byte		        91*song190_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		        97*song190_mvl/mxv
	.byte	W02
	.byte		        102*song190_mvl/mxv
	.byte	W01
	.byte		        109*song190_mvl/mxv
	.byte	W02
	.byte		        113*song190_mvl/mxv
	.byte	W01
	.byte		        120*song190_mvl/mxv
	.byte	W05
	.byte	FINE

@**************** Track 01 ****************************@

song190_1:
	.byte		VOL   , 120*song190_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		N01   , En2 , v052
	.byte	W02
	.byte		        Dn2 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte	W01
	.byte		        Dn2 
	.byte	W02
	.byte		        En2 
	.byte	W03
	.byte	W01
	.byte		        En2 , v064
	.byte	W02
	.byte		        Gs2 
	.byte	W03
	.byte		        Dn3 
	.byte	W02
	.byte		        En2 
	.byte	W02
	.byte		        Gs2 
	.byte	W02
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song190:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song190_pri	@ Priority
	.byte	song190_rev	@ Reverb.

	.word	song190_grp

	.word	song190_0
	.word	song190_1

	.end
