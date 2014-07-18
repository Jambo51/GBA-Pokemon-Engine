@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song237_grp, group_6
	.equ	song237_pri, 4
	.equ	song237_rev, 178
	.equ	song237_mvl, 127
	.equ	song237_key, 0
	.equ	song237_tbs, 1
	.equ	song237_exg, 1
	.equ	song237_cmp, 1

	.text
	.global	song237
	.align	2

@**************** Track 00 ****************************@

song237_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 85
	.byte		VOICE , 37
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song237_mvl/mxv
	.byte		BEND  , c_v-4
	.byte		N03   , Gn4 , v100
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N03   , Gn4 , v056
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N03   , An5 , v100
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-15
	.byte		N03   , An5 , v056
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N03   , Cn6 , v100
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N03   , Cn6 , v056
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N03   , Gn4 , v072
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		N03   , Gn4 , v028
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N03   , An5 , v072
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N03   , An5 , v028
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N03   , Cn6 , v072
	.byte	W03
	.byte	W03
	.byte		PAN   , c_v-16
	.byte		N03   , Cn6 , v028
	.byte	W03
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song237_1:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		MOD   , 20
	.byte		VOL   , 44*song237_mvl/mxv
	.byte		BEND  , c_v-2
	.byte	W03
	.byte		N03   , Gn3 , v112
	.byte	W03
	.byte	W03
	.byte		        Gn3 , v068
	.byte	W03
	.byte		        An4 , v112
	.byte	W06
	.byte		        An4 , v068
	.byte	W03
	.byte		        Cn5 , v112
	.byte	W03
	.byte	W03
	.byte		        Cn5 , v068
	.byte	W03
	.byte		        Gn3 , v080
	.byte	W06
	.byte		        Gn3 , v036
	.byte	W03
	.byte		        An4 , v080
	.byte	W03
	.byte	W03
	.byte		        An4 , v036
	.byte	W03
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song237:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song237_pri	@ Priority
	.byte	song237_rev	@ Reverb.

	.word	song237_grp

	.word	song237_0
	.word	song237_1

	.end
