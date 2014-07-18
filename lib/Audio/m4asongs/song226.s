@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song226_grp, group_6
	.equ	song226_pri, 4
	.equ	song226_rev, 178
	.equ	song226_mvl, 127
	.equ	song226_key, 0
	.equ	song226_tbs, 1
	.equ	song226_exg, 1
	.equ	song226_cmp, 1

	.text
	.global	song226
	.align	2

@**************** Track 00 ****************************@

song226_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 36
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 105*song226_mvl/mxv
	.byte		BEND  , c_v-18
	.byte		N06   , Fn2 , v127
	.byte	W03
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v-16
	.byte	W04
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v-14
	.byte		N04
	.byte	W03
	.byte		PAN   , c_v+3
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		N36   , Gn3 , v092
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-8
	.byte	W04
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v-5
	.byte	W02
	.byte		VOL   , 100*song226_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		VOL   , 94*song226_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v+1
	.byte	W02
	.byte		VOL   , 84*song226_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+4
	.byte	W04
	.byte		PAN   , c_v+3
	.byte		VOL   , 72*song226_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W04
	.byte		PAN   , c_v+6
	.byte		VOL   , 57*song226_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W03
	.byte		PAN   , c_v+3
	.byte		VOL   , 37*song226_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W03
	.byte		VOL   , 20*song226_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 7*song226_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-3
	.byte		BEND  , c_v-16
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song226_1:
	.byte	KEYSH , 0
	.byte		VOICE , 25
	.byte		VOL   , 105*song226_mvl/mxv
	.byte		N06   , An2 , v040
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs3 , v044
	.byte	W07
	.byte		        Gs3 , v036
	.byte	W05
	.byte	W02
	.byte		        Gs3 , v028
	.byte	W07
	.byte		        Gs3 , v020
	.byte	W03
	.byte	W04
	.byte		        Gs3 , v012
	.byte	W08
	.byte	FINE

@******************************************************@
	.align	2

song226:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song226_pri	@ Priority
	.byte	song226_rev	@ Reverb.

	.word	song226_grp

	.word	song226_0
	.word	song226_1

	.end
