@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song137_grp, group_6
	.equ	song137_pri, 4
	.equ	song137_rev, 178
	.equ	song137_mvl, 127
	.equ	song137_key, 0
	.equ	song137_tbs, 1
	.equ	song137_exg, 1
	.equ	song137_cmp, 1

	.text
	.global	song137
	.align	2

@**************** Track 00 ****************************@

song137_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 29
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 22*song137_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N30   , Dn4 , v127
	.byte	W01
	.byte		VOL   , 49*song137_mvl/mxv
	.byte	W01
	.byte		        71*song137_mvl/mxv
	.byte	W01
	.byte		        95*song137_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 110*song137_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		VOL   , 95*song137_mvl/mxv
	.byte	W02
	.byte		        88*song137_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		VOL   , 93*song137_mvl/mxv
	.byte	W02
	.byte		        110*song137_mvl/mxv
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 86*song137_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		VOL   , 63*song137_mvl/mxv
	.byte	W02
	.byte		        37*song137_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		VOL   , 13*song137_mvl/mxv
	.byte		BEND  , c_v-46
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song137_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		PAN   , c_v+0
	.byte		VOL   , 22*song137_mvl/mxv
	.byte		N30   , Gn2 , v032
	.byte	W01
	.byte		VOL   , 49*song137_mvl/mxv
	.byte	W01
	.byte		        71*song137_mvl/mxv
	.byte	W01
	.byte		        95*song137_mvl/mxv
	.byte	W01
	.byte		        110*song137_mvl/mxv
	.byte	W02
	.byte	W01
	.byte		        95*song137_mvl/mxv
	.byte	W02
	.byte		        88*song137_mvl/mxv
	.byte	W01
	.byte		        93*song137_mvl/mxv
	.byte	W02
	.byte		        110*song137_mvl/mxv
	.byte	W02
	.byte		        86*song137_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        63*song137_mvl/mxv
	.byte	W02
	.byte		        37*song137_mvl/mxv
	.byte	W03
	.byte		        13*song137_mvl/mxv
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song137:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song137_pri	@ Priority
	.byte	song137_rev	@ Reverb.

	.word	song137_grp

	.word	song137_0
	.word	song137_1

	.end
