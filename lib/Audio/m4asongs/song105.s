@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song105_grp, group_5
	.equ	song105_pri, 5
	.equ	song105_rev, 178
	.equ	song105_mvl, 127
	.equ	song105_key, 0
	.equ	song105_tbs, 1
	.equ	song105_exg, 1
	.equ	song105_cmp, 1

	.text
	.global	song105
	.align	2

@**************** Track 00 ****************************@

song105_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 72
	.byte		VOICE , 4
	.byte		XCMD  , xIECV , 12
	.byte		        xIECL , 10
	.byte		VOL   , 100*song105_mvl/mxv
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds4 , v060
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , As4 , v060
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W02
	.byte		BEND  , c_v-6
	.byte		N02   , As4 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds4 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds4 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds3 , v040
	.byte	W02
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , As4 , v060
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , As4 , v060
	.byte	W02
	.byte	W01
	.byte		BEND  , c_v+6
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W02
	.byte		BEND  , c_v-6
	.byte		N02   , Ds4 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds5 , v060
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , As4 , v060
	.byte	W02
	.byte		BEND  , c_v+6
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		BEND  , c_v-6
	.byte		N02   , Ds4 , v060
	.byte	W03
	.byte		BEND  , c_v+6
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		BEND  , c_v-7
	.byte		N02   , Ds5 , v060
	.byte	W04
	.byte	FINE

@**************** Track 01 ****************************@

song105_1:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		VOL   , 50*song105_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		N02   , Ds4 , v060
	.byte	W02
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W02
	.byte		N02   , As4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W02
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		N02   , As4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		N02   , Ds4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds3 , v040
	.byte	W02
	.byte		N02   , Ds5 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		N02   , Ds4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W02
	.byte		        c_v-8
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		N02   , As4 , v060
	.byte	W02
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W02
	.byte		N02   , As4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , As3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W02
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		N02   , Ds4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W02
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds4 , v040
	.byte	W01
	.byte		N02   , As4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , As3 , v040
	.byte	W02
	.byte		N02   , Ds4 , v060
	.byte	W01
	.byte		BEND  , c_v+4
	.byte	W01
	.byte		        c_v-8
	.byte		N01   , Ds3 , v040
	.byte	W01
	.byte		N02   , Ds5 , v060
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song105:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song105_pri	@ Priority
	.byte	song105_rev	@ Reverb.

	.word	song105_grp

	.word	song105_0
	.word	song105_1

	.end
