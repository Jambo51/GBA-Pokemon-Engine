@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song196_grp, group_6
	.equ	song196_pri, 4
	.equ	song196_rev, 178
	.equ	song196_mvl, 127
	.equ	song196_key, 0
	.equ	song196_tbs, 1
	.equ	song196_exg, 1
	.equ	song196_cmp, 1

	.text
	.global	song196
	.align	2

@**************** Track 00 ****************************@

song196_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 45
	.byte		BENDR , 24
	.byte		PAN   , c_v+0
	.byte		VOL   , 32*song196_mvl/mxv
	.byte		MOD   , 30
	.byte		BEND  , c_v+0
	.byte		N06   , Cn3 , v127
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		VOL   , 49*song196_mvl/mxv
	.byte		PAN   , c_v+5
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		VOL   , 61*song196_mvl/mxv
	.byte		BEND  , c_v+24
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+2
	.byte		N06   , Dn3 , v116
	.byte	W01
	.byte		VOL   , 71*song196_mvl/mxv
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		PAN   , c_v-4
	.byte		BEND  , c_v+12
	.byte	W01
	.byte		VOL   , 81*song196_mvl/mxv
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		        c_v+27
	.byte	W02
	.byte		VOL   , 95*song196_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+4
	.byte		N06   , En3 , v112
	.byte	W01
	.byte		BEND  , c_v+9
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+29
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+6
	.byte		N06   , Fn3 
	.byte	W01
	.byte		BEND  , c_v+11
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+15
	.byte	W01
	.byte		        c_v+22
	.byte	W01
	.byte		        c_v+31
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+9
	.byte		N06   , Gn3 , v108
	.byte	W01
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+34
	.byte	W02
	.byte		VOL   , 82*song196_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+14
	.byte		N06   , An3 , v100
	.byte	W01
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		VOL   , 71*song196_mvl/mxv
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		VOL   , 61*song196_mvl/mxv
	.byte		BEND  , c_v+38
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+14
	.byte		N06   , Bn3 , v060
	.byte	W01
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+38
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+14
	.byte		N06   , Cn4 , v040
	.byte	W01
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		PAN   , c_v-8
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+38
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+14
	.byte		N06   , Dn4 , v020
	.byte	W01
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		BEND  , c_v+23
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+38
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song196:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song196_pri	@ Priority
	.byte	song196_rev	@ Reverb.

	.word	song196_grp

	.word	song196_0

	.end
