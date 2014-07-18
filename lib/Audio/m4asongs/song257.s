@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song257_grp, group_0
	.equ	song257_pri, 5
	.equ	song257_rev, 178
	.equ	song257_mvl, 127
	.equ	song257_key, 0
	.equ	song257_tbs, 1
	.equ	song257_exg, 1
	.equ	song257_cmp, 1

	.text
	.global	song257
	.align	2

@**************** Track 00 ****************************@

song257_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 87
	.byte		VOICE , 46
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 90*song257_mvl/mxv
	.byte		PAN   , c_v+48
	.byte	W08
	.byte		N04   , Bn3 , v100
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N24   , Gs4 
	.byte	W10
	.byte		MOD   , 5
	.byte	W06
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song257_1:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 90*song257_mvl/mxv
	.byte	W08
	.byte		PAN   , c_v-16
	.byte		N04   , En4 , v100
	.byte	W08
	.byte		PAN   , c_v+16
	.byte		N04
	.byte	W08
	.byte		PAN   , c_v-16
	.byte		N04
	.byte	W08
	.byte		PAN   , c_v+0
	.byte		N24   , Bn4 
	.byte	W10
	.byte		MOD   , 5
	.byte	W06
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song257_2:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 90*song257_mvl/mxv
	.byte		PAN   , c_v-48
	.byte	W08
	.byte		N04   , Gs3 , v068
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N24   , En4 
	.byte	W10
	.byte		MOD   , 5
	.byte	W06
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song257_3:
	.byte	KEYSH , 0
	.byte		VOICE , 84
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 90*song257_mvl/mxv
	.byte	W08
	.byte		N04   , Bn3 , v048
	.byte	W04
	.byte		        Bn3 , v020
	.byte	W04
	.byte		        Bn3 , v048
	.byte	W04
	.byte		        Bn3 , v020
	.byte	W04
	.byte		        Bn3 , v048
	.byte	W04
	.byte		        Bn3 , v020
	.byte	W04
	.byte		N24   , Gs4 , v048
	.byte	W10
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 71*song257_mvl/mxv
	.byte	W03
	.byte		        48*song257_mvl/mxv
	.byte	W03
	.byte		        25*song257_mvl/mxv
	.byte	W03
	.byte		        10*song257_mvl/mxv
	.byte	W03
	.byte		        0*song257_mvl/mxv
	.byte	W15
	.byte	FINE

@**************** Track 04 ****************************@

song257_4:
	.byte	KEYSH , 0
	.byte		VOICE , 85
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		VOL   , 90*song257_mvl/mxv
	.byte	W08
	.byte		N04   , En4 , v048
	.byte	W04
	.byte		        En4 , v020
	.byte	W04
	.byte		        En4 , v048
	.byte	W04
	.byte		        En4 , v020
	.byte	W04
	.byte		        En4 , v048
	.byte	W04
	.byte		        En4 , v020
	.byte	W04
	.byte		N24   , Bn4 , v048
	.byte	W10
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 71*song257_mvl/mxv
	.byte	W03
	.byte		        48*song257_mvl/mxv
	.byte	W03
	.byte		        25*song257_mvl/mxv
	.byte	W03
	.byte		        10*song257_mvl/mxv
	.byte	W03
	.byte		        0*song257_mvl/mxv
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

song257:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song257_pri	@ Priority
	.byte	song257_rev	@ Reverb.

	.word	song257_grp

	.word	song257_0
	.word	song257_1
	.word	song257_2
	.word	song257_3
	.word	song257_4

	.end
