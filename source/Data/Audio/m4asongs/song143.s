@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song143_grp, group_6
	.equ	song143_pri, 4
	.equ	song143_rev, 178
	.equ	song143_mvl, 127
	.equ	song143_key, 0
	.equ	song143_tbs, 1
	.equ	song143_exg, 1
	.equ	song143_cmp, 1

	.section .rodata
	.global	song143
	.align	2

@**************** Track 00 ****************************@

song143_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 29
	.byte		BENDR , 12
	.byte		VOL   , 22*song143_mvl/mxv
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+0
	.byte		N96   , Gn3 , v127
	.byte	W01
	.byte		VOL   , 49*song143_mvl/mxv
	.byte	W01
	.byte		        71*song143_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song143_mvl/mxv
	.byte		BEND  , c_v+8
	.byte	W01
	.byte		VOL   , 110*song143_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v+16
	.byte	W03
	.byte		VOL   , 97*song143_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+7
	.byte	W03
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 84*song143_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-9
	.byte	W03
	.byte		VOL   , 76*song143_mvl/mxv
	.byte		PAN   , c_v-5
	.byte		BEND  , c_v-24
	.byte	W03
	.byte		PAN   , c_v-2
	.byte		BEND  , c_v-46
	.byte	W03
	.byte		VOL   , 84*song143_mvl/mxv
	.byte		PAN   , c_v+5
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 92*song143_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W01
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 86*song143_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W02
	.byte		BEND  , c_v-18
	.byte	W01
	.byte		VOL   , 78*song143_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		        c_v-5
	.byte	W02
	.byte		VOL   , 71*song143_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-2
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+0
	.byte		VOL   , 78*song143_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-5
	.byte	W02
	.byte		VOL   , 86*song143_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		        c_v+5
	.byte	W02
	.byte		VOL   , 90*song143_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		        c_v-5
	.byte	W03
	.byte		        c_v-2
	.byte	W01
	.byte		VOL   , 80*song143_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+5
	.byte	W03
	.byte		        c_v+0
	.byte	W01
	.byte		VOL   , 86*song143_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-5
	.byte	W03
	.byte		        c_v+0
	.byte		VOL   , 83*song143_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+5
	.byte		VOL   , 63*song143_mvl/mxv
	.byte	W03
	.byte		        37*song143_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		        c_v-5
	.byte		VOL   , 13*song143_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-2
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song143_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		VOL   , 22*song143_mvl/mxv
	.byte		N96   , Gn2 , v032
	.byte	W01
	.byte		VOL   , 49*song143_mvl/mxv
	.byte	W01
	.byte		        71*song143_mvl/mxv
	.byte	W01
	.byte		        95*song143_mvl/mxv
	.byte	W01
	.byte		        110*song143_mvl/mxv
	.byte	W05
	.byte		        97*song143_mvl/mxv
	.byte	W15
	.byte	W24
	.byte	W24
	.byte	W09
	.byte		        83*song143_mvl/mxv
	.byte	W03
	.byte		        63*song143_mvl/mxv
	.byte	W03
	.byte		        37*song143_mvl/mxv
	.byte	W03
	.byte		        13*song143_mvl/mxv
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song143:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song143_pri	@ Priority
	.byte	song143_rev	@ Reverb.

	.word	song143_grp

	.word	song143_0
	.word	song143_1

	.end
