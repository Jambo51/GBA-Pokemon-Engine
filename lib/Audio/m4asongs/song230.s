@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song230_grp, group_6
	.equ	song230_pri, 4
	.equ	song230_rev, 178
	.equ	song230_mvl, 127
	.equ	song230_key, 0
	.equ	song230_tbs, 1
	.equ	song230_exg, 1
	.equ	song230_cmp, 1

	.text
	.global	song230
	.align	2

@**************** Track 00 ****************************@

song230_0:
	.byte		VOL   , 110*song230_mvl/mxv
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 61
	.byte		BENDR , 44
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N48   , Cn4 , v108
	.byte	W02
	.byte		BEND  , c_v-1
	.byte	W01
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		PAN   , c_v-4
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+1
	.byte	W03
	.byte		PAN   , c_v-10
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+2
	.byte	W02
	.byte		        c_v+2
	.byte	W03
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+1
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+1
	.byte	W01
	.byte		        c_v+1
	.byte	W02
	.byte		        c_v+1
	.byte	W01
	.byte		        c_v+0
	.byte	W02
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-3
	.byte	W01
	.byte		        c_v-3
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song230_1:
	.byte	KEYSH , 0
	.byte		VOICE , 66
	.byte		BENDR , 44
	.byte		PAN   , c_v+1
	.byte		VOL   , 110*song230_mvl/mxv
	.byte		N48   , Dn3 , v020
	.byte	W24
	.byte	W03
	.byte		VOL   , 103*song230_mvl/mxv
	.byte	W04
	.byte		        96*song230_mvl/mxv
	.byte	W03
	.byte		        83*song230_mvl/mxv
	.byte	W04
	.byte		        67*song230_mvl/mxv
	.byte	W04
	.byte		        49*song230_mvl/mxv
	.byte	W03
	.byte		        23*song230_mvl/mxv
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song230:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song230_pri	@ Priority
	.byte	song230_rev	@ Reverb.

	.word	song230_grp

	.word	song230_0
	.word	song230_1

	.end
