@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song156_grp, group_6
	.equ	song156_pri, 4
	.equ	song156_rev, 178
	.equ	song156_mvl, 127
	.equ	song156_key, 0
	.equ	song156_tbs, 1
	.equ	song156_exg, 1
	.equ	song156_cmp, 1

	.section .rodata
	.global	song156
	.align	2

@**************** Track 00 ****************************@

song156_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		VOL   , 27*song156_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N96   , Cn3 , v112
	.byte	W04
	.byte		VOL   , 45*song156_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-4
	.byte	W02
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 60*song156_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-10
	.byte	W02
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		VOL   , 88*song156_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-5
	.byte	W02
	.byte		BEND  , c_v+14
	.byte	W04
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 110*song156_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v+19
	.byte	W03
	.byte		PAN   , c_v+4
	.byte	W02
	.byte		BEND  , c_v+24
	.byte	W04
	.byte		PAN   , c_v+11
	.byte	W06
	.byte		        c_v+4
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-4
	.byte	W02
	.byte		BEND  , c_v+19
	.byte	W04
	.byte		PAN   , c_v-10
	.byte	W01
	.byte		VOL   , 98*song156_mvl/mxv
	.byte	W05
	.byte		        81*song156_mvl/mxv
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+12
	.byte	W06
	.byte		VOL   , 68*song156_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		BEND  , c_v+17
	.byte	W01
	.byte		VOL   , 50*song156_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		VOL   , 31*song156_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+11
	.byte		BEND  , c_v+22
	.byte	W02
	.byte		VOL   , 11*song156_mvl/mxv
	.byte	W04
	.byte		        6*song156_mvl/mxv
	.byte		PAN   , c_v+4
	.byte		BEND  , c_v+30
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song156:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song156_pri	@ Priority
	.byte	song156_rev	@ Reverb.

	.word	song156_grp

	.word	song156_0

	.end
