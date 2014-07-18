@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song138_grp, group_6
	.equ	song138_pri, 4
	.equ	song138_rev, 178
	.equ	song138_mvl, 127
	.equ	song138_key, 0
	.equ	song138_tbs, 1
	.equ	song138_exg, 1
	.equ	song138_cmp, 1

	.text
	.global	song138
	.align	2

@**************** Track 00 ****************************@

song138_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 29
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song138_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , Cn4 , v127
	.byte	W06
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		BEND  , c_v+2
	.byte	W03
	.byte		PAN   , c_v+10
	.byte	W03
	.byte		BEND  , c_v+5
	.byte	W03
	.byte		VOL   , 98*song138_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		BEND  , c_v+3
	.byte	W03
	.byte		VOL   , 88*song138_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		VOL   , 68*song138_mvl/mxv
	.byte		PAN   , c_v-5
	.byte	W03
	.byte		        c_v+7
	.byte		BEND  , c_v-9
	.byte	W03
	.byte		VOL   , 44*song138_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		BEND  , c_v-15
	.byte	W03
	.byte		VOL   , 13*song138_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		        c_v-40
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song138_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song138_mvl/mxv
	.byte		N48   , Gn2 , v032
	.byte	W18
	.byte		VOL   , 98*song138_mvl/mxv
	.byte	W06
	.byte		        88*song138_mvl/mxv
	.byte	W06
	.byte		        68*song138_mvl/mxv
	.byte	W06
	.byte		        44*song138_mvl/mxv
	.byte	W06
	.byte		        13*song138_mvl/mxv
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song138:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song138_pri	@ Priority
	.byte	song138_rev	@ Reverb.

	.word	song138_grp

	.word	song138_0
	.word	song138_1

	.end
