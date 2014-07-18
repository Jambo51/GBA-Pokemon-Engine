@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song111_grp, group_6
	.equ	song111_pri, 4
	.equ	song111_rev, 178
	.equ	song111_mvl, 127
	.equ	song111_key, 0
	.equ	song111_tbs, 1
	.equ	song111_exg, 1
	.equ	song111_cmp, 1

	.text
	.global	song111
	.align	2

@**************** Track 00 ****************************@

song111_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 110
	.byte		VOICE , 18
	.byte		VOL   , 120*song111_mvl/mxv
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+32
	.byte		N06   , Dn3 , v127
	.byte	W02
	.byte		PAN   , c_v-8
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		PAN   , c_v-16
	.byte	W02
	.byte		        c_v+0
	.byte		BEND  , c_v+32
	.byte		N06   , Dn2 , v104
	.byte	W02
	.byte		PAN   , c_v+9
	.byte	W01
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W02
	.byte		        c_v+0
	.byte		BEND  , c_v+0
	.byte		N21   , Dn3 , v127
	.byte	W03
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		        c_v-15
	.byte	W01
	.byte		BEND  , c_v-13
	.byte	W02
	.byte		PAN   , c_v-7
	.byte	W01
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		VOL   , 100*song111_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		VOL   , 86*song111_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-54
	.byte	W01
	.byte		PAN   , c_v+10
	.byte		VOL   , 68*song111_mvl/mxv
	.byte	W02
	.byte		        37*song111_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		PAN   , c_v+16
	.byte	W02
	.byte		VOL   , 17*song111_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+10
	.byte	W15
	.byte	FINE

@**************** Track 01 ****************************@

song111_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		VOL   , 120*song111_mvl/mxv
	.byte		PAN   , c_v-7
	.byte		N02   , En3 , v048
	.byte	W05
	.byte		PAN   , c_v+10
	.byte		N02   , En3 , v040
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N02   , En3 , v032
	.byte	W07
	.byte		PAN   , c_v+10
	.byte		N02   , En3 , v024
	.byte	W06
	.byte		PAN   , c_v-7
	.byte		N02   , En3 , v016
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song111:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song111_pri	@ Priority
	.byte	song111_rev	@ Reverb.

	.word	song111_grp

	.word	song111_0
	.word	song111_1

	.end
