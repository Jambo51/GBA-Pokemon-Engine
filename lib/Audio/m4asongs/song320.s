@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song320_grp, group_55
	.equ	song320_pri, 5
	.equ	song320_rev, 178
	.equ	song320_mvl, 127
	.equ	song320_key, 0
	.equ	song320_tbs, 1
	.equ	song320_exg, 1
	.equ	song320_cmp, 1

	.text
	.global	song320
	.align	2

@**************** Track 00 ****************************@

song320_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 96
	.byte		VOICE , 1
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 81*song320_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N03   , Ds4 , v068
	.byte	W03
	.byte		        Dn4 , v032
	.byte	W03
	.byte		        Fn4 , v068
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        Fn4 , v032
	.byte	W03
	.byte		        As4 , v068
	.byte	W03
	.byte		        Gn4 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        As4 , v032
	.byte	W03
	.byte		        Fn5 , v068
	.byte	W03
	.byte		        Dn5 , v032
	.byte	W03
	.byte		        Gn5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        As5 , v068
	.byte	W03
	.byte		        Gn5 , v032
	.byte	W03
	.byte		        Ds6 , v068
	.byte	W03
	.byte		        As5 , v056
	.byte	W03
	.byte		        Ds6 , v048
	.byte	W03
	.byte		        As5 , v040
	.byte	W03
	.byte		        Ds6 , v028
	.byte	W03
	.byte		        As5 , v024
	.byte	W03
	.byte		        Ds6 , v016
	.byte	W03
	.byte		        As5 , v008
	.byte	W03
	.byte		VOL   , 0*song320_mvl/mxv
	.byte	W24
	.byte		        0*song320_mvl/mxv
	.byte	FINE

@**************** Track 01 ****************************@

song320_1:
	.byte	KEYSH , 0
	.byte		VOICE , 5
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v-32
	.byte		VOL   , 67*song320_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 , v068
	.byte	W03
	.byte		        Dn4 , v032
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        Fn4 , v032
	.byte	W03
	.byte		        As4 , v068
	.byte	W03
	.byte		        Gn4 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        As4 , v032
	.byte	W03
	.byte		        Fn5 , v068
	.byte	W03
	.byte		        Dn5 , v032
	.byte	W03
	.byte		        Gn5 , v068
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte		        As5 , v068
	.byte	W03
	.byte		        Gn5 , v032
	.byte	W03
	.byte		        Ds6 , v068
	.byte	W03
	.byte		        As5 , v056
	.byte	W03
	.byte		        Ds6 , v048
	.byte	W03
	.byte		        As5 , v040
	.byte	W03
	.byte		        Ds6 , v028
	.byte	W03
	.byte		        As5 , v024
	.byte	W03
	.byte		        Ds6 , v016
	.byte	W03
	.byte		        As5 , v008
	.byte	W03
	.byte		VOL   , 1*song320_mvl/mxv
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song320_2:
	.byte	KEYSH , 0
	.byte		VOICE , 4
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+32
	.byte		VOL   , 59*song320_mvl/mxv
	.byte		N03   , Ds3 , v068
	.byte	W03
	.byte		        Dn3 , v032
	.byte	W03
	.byte		        Fn3 , v068
	.byte	W03
	.byte		        Ds3 , v032
	.byte	W03
	.byte		        Gn3 , v068
	.byte	W03
	.byte		        Fn3 , v032
	.byte	W03
	.byte		        As3 , v068
	.byte	W03
	.byte		        Gn3 , v032
	.byte	W03
	.byte		        Ds4 , v068
	.byte	W03
	.byte		        As3 , v032
	.byte	W03
	.byte		        Fn4 , v068
	.byte	W03
	.byte		        Dn4 , v032
	.byte	W03
	.byte		        Gn4 , v068
	.byte	W03
	.byte		        Ds4 , v032
	.byte	W03
	.byte		        As4 , v068
	.byte	W03
	.byte		        Gn4 , v032
	.byte	W03
	.byte		        Ds5 , v068
	.byte	W03
	.byte		        As4 , v056
	.byte	W03
	.byte		        Ds5 , v048
	.byte	W03
	.byte		        As4 , v040
	.byte	W03
	.byte		        Ds5 , v028
	.byte	W03
	.byte		        As4 , v024
	.byte	W03
	.byte		        Ds5 , v016
	.byte	W03
	.byte		        As4 , v008
	.byte	W03
	.byte		VOL   , 1*song320_mvl/mxv
	.byte	W24
	.byte		        0*song320_mvl/mxv
	.byte	FINE

@**************** Track 03 ****************************@

song320_3:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 63*song320_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N01   , Cn5 , v112
	.byte	W02
	.byte		        An5 
	.byte	W14
	.byte		N03   , Gs5 , v120
	.byte	W08
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 04 ****************************@

song320_4:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song320_mvl/mxv
	.byte		N02   , Cs3 , v127
	.byte	W10
	.byte		N01   , Bn3 , v116
	.byte	W06
	.byte		N02   , En4 , v127
	.byte	W08
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song320:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song320_pri	@ Priority
	.byte	song320_rev	@ Reverb.

	.word	song320_grp

	.word	song320_0
	.word	song320_1
	.word	song320_2
	.word	song320_3
	.word	song320_4

	.end
