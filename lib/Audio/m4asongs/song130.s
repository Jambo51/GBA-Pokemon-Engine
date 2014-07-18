@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song130_grp, group_6
	.equ	song130_pri, 4
	.equ	song130_rev, 178
	.equ	song130_mvl, 127
	.equ	song130_key, 0
	.equ	song130_tbs, 1
	.equ	song130_exg, 1
	.equ	song130_cmp, 1

	.text
	.global	song130
	.align	2

@**************** Track 00 ****************************@

song130_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 3
	.byte		VOL   , 100*song130_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Ds4 , v112
	.byte	W04
	.byte		PAN   , c_v+6
	.byte		N01   , Bn4 , v040
	.byte	W04
	.byte		PAN   , c_v-5
	.byte		N01   , Ds4 , v112
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		N01   , Bn4 
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song130_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		VOL   , 100*song130_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N01   , Dn4 , v040
	.byte	W04
	.byte		        Bn3 
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W02
	.byte		        c_v+9
	.byte	W01
	.byte		N01   , Dn4 
	.byte	W01
	.byte		PAN   , c_v-7
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song130:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song130_pri	@ Priority
	.byte	song130_rev	@ Reverb.

	.word	song130_grp

	.word	song130_0
	.word	song130_1

	.end
