@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song116_grp, group_6
	.equ	song116_pri, 4
	.equ	song116_rev, 178
	.equ	song116_mvl, 127
	.equ	song116_key, 0
	.equ	song116_tbs, 1
	.equ	song116_exg, 1
	.equ	song116_cmp, 1

	.text
	.global	song116
	.align	2

@**************** Track 00 ****************************@

song116_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 6
	.byte		VOL   , 110*song116_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , En3 
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-21
	.byte	W01
	.byte		PAN   , c_v+7
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		        c_v-64
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N09   , An2 
	.byte	W01
	.byte		BEND  , c_v-9
	.byte	W01
	.byte		        c_v-19
	.byte	W01
	.byte		        c_v-29
	.byte	W01
	.byte		VOL   , 86*song116_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W02
	.byte		VOL   , 69*song116_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W01
	.byte		VOL   , 53*song116_mvl/mxv
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		VOL   , 20*song116_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W04
	.byte		        c_v-64
	.byte	FINE

@**************** Track 01 ****************************@

song116_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 110*song116_mvl/mxv
	.byte		PAN   , c_v+9
	.byte		N03   , Gs2 , v052
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N03
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song116:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song116_pri	@ Priority
	.byte	song116_rev	@ Reverb.

	.word	song116_grp

	.word	song116_0
	.word	song116_1

	.end
