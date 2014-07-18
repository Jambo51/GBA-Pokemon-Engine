@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song81_grp, group_6
	.equ	song81_pri, 3
	.equ	song81_rev, 178
	.equ	song81_mvl, 127
	.equ	song81_key, 0
	.equ	song81_tbs, 1
	.equ	song81_exg, 1
	.equ	song81_cmp, 1

	.text
	.global	song81
	.align	2

@**************** Track 00 ****************************@

song81_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song81_mvl/mxv
	.byte		BEND  , c_v+35
	.byte		TIE   , Dn2 , v112
	.byte	W03
	.byte		BEND  , c_v+11
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+6
	.byte	W06
	.byte		        c_v+0
	.byte	W09
	.byte	W15
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-4
	.byte	W03
	.byte	W06
	.byte		        c_v-13
	.byte	W09
	.byte		        c_v-18
	.byte	W09
	.byte		VOL   , 102*song81_mvl/mxv
	.byte		BEND  , c_v-25
	.byte	W09
	.byte		VOL   , 97*song81_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W09
	.byte		VOL   , 92*song81_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W06
	.byte	W03
	.byte		VOL   , 83*song81_mvl/mxv
	.byte	W06
	.byte		BEND  , c_v-52
	.byte	W03
	.byte		VOL   , 64*song81_mvl/mxv
	.byte	W06
	.byte		        47*song81_mvl/mxv
	.byte	W06
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song81:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song81_pri	@ Priority
	.byte	song81_rev	@ Reverb.

	.word	song81_grp

	.word	song81_0

	.end
