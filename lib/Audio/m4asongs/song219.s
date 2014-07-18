@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song219_grp, group_6
	.equ	song219_pri, 4
	.equ	song219_rev, 178
	.equ	song219_mvl, 127
	.equ	song219_key, 0
	.equ	song219_tbs, 1
	.equ	song219_exg, 1
	.equ	song219_cmp, 1

	.text
	.global	song219
	.align	2

@**************** Track 00 ****************************@

song219_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 105
	.byte		VOICE , 46
	.byte		VOL   , 95*song219_mvl/mxv
	.byte		BENDR , 2
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte	W03
	.byte		N06   , Cn6 , v116
	.byte	W03
	.byte	W03
	.byte		        En6 , v108
	.byte	W03
	.byte	W03
	.byte		        Cs5 , v100
	.byte	W03
	.byte	W03
	.byte		        Gs5 , v088
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		N06   , Cs6 , v080
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N06   , Dn6 , v072
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+4
	.byte		N06   , Fs6 , v060
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N06   , Ds5 , v052
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-4
	.byte		N06   , As5 , v040
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v+0
	.byte	W03
	.byte	W03
	.byte		        c_v+4
	.byte	W03
	.byte	W03
	.byte		        c_v+0
	.byte	FINE

@**************** Track 01 ****************************@

song219_1:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		BENDR , 2
	.byte		VOL   , 43*song219_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+15
	.byte		N06   , Cn5 , v120
	.byte	W03
	.byte	W03
	.byte		        Gn5 , v112
	.byte	W03
	.byte	W03
	.byte		        Cn6 , v104
	.byte	W03
	.byte	W03
	.byte		        Cs6 , v092
	.byte	W03
	.byte	W03
	.byte		        Fn6 , v084
	.byte	W03
	.byte	W03
	.byte		        Dn5 , v076
	.byte	W03
	.byte	W03
	.byte		        An5 , v064
	.byte	W03
	.byte	W03
	.byte		        Dn6 , v056
	.byte	W03
	.byte	W03
	.byte		        Ds6 , v048
	.byte	W03
	.byte	W03
	.byte		        Gn6 , v036
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song219:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song219_pri	@ Priority
	.byte	song219_rev	@ Reverb.

	.word	song219_grp

	.word	song219_0
	.word	song219_1

	.end
