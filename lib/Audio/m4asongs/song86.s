@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song86_grp, group_6
	.equ	song86_pri, 2
	.equ	song86_rev, 178
	.equ	song86_mvl, 127
	.equ	song86_key, 0
	.equ	song86_tbs, 1
	.equ	song86_exg, 1
	.equ	song86_cmp, 1

	.text
	.global	song86
	.align	2

@**************** Track 00 ****************************@

song86_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 63
	.byte		BENDR , 6
	.byte		VOL   , 110*song86_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N72   , Dn3 , v127
	.byte	W06
	.byte		VOL   , 107*song86_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W06
	.byte		VOL   , 106*song86_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W06
	.byte		VOL   , 104*song86_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W06
	.byte		VOL   , 102*song86_mvl/mxv
	.byte		BEND  , c_v-10
	.byte	W06
	.byte		VOL   , 97*song86_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W06
	.byte		VOL   , 90*song86_mvl/mxv
	.byte		BEND  , c_v-14
	.byte	W06
	.byte		VOL   , 73*song86_mvl/mxv
	.byte		BEND  , c_v-19
	.byte	W06
	.byte		VOL   , 58*song86_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W06
	.byte		VOL   , 40*song86_mvl/mxv
	.byte		BEND  , c_v-29
	.byte	W06
	.byte		VOL   , 25*song86_mvl/mxv
	.byte		BEND  , c_v-35
	.byte	W06
	.byte		VOL   , 12*song86_mvl/mxv
	.byte		BEND  , c_v-46
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song86:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song86_pri	@ Priority
	.byte	song86_rev	@ Reverb.

	.word	song86_grp

	.word	song86_0

	.end
