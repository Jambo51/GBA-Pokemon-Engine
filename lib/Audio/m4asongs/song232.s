@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song232_grp, group_6
	.equ	song232_pri, 4
	.equ	song232_rev, 178
	.equ	song232_mvl, 127
	.equ	song232_key, 0
	.equ	song232_tbs, 1
	.equ	song232_exg, 1
	.equ	song232_cmp, 1

	.text
	.global	song232
	.align	2

@**************** Track 00 ****************************@

song232_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 85
	.byte		VOICE , 67
	.byte		VOL   , 70*song232_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , An5 , v076
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+5
	.byte		N02   , An4 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte		N02   , Dn5 
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+32
	.byte		N02   , Dn4 
	.byte	W01
	.byte		BEND  , c_v+42
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , As5 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+5
	.byte		N02   , As4 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte		N02   , Ds5 
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+32
	.byte		N02   , Ds4 
	.byte	W01
	.byte		BEND  , c_v+42
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Bn5 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+5
	.byte		N02   , Bn4 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte		N02   , En5 
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+32
	.byte		N02   , En4 
	.byte	W01
	.byte		BEND  , c_v+42
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Cn6 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+5
	.byte		N02   , Cn5 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte		N02   , Fn5 
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		BEND  , c_v+32
	.byte		N02   , Fn4 
	.byte	W01
	.byte		BEND  , c_v+42
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Cs6 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		PAN   , c_v+6
	.byte		BEND  , c_v+5
	.byte		N02   , Cs5 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte		N02   , Fn5 , v056
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		PAN   , c_v-12
	.byte		BEND  , c_v+32
	.byte		N02   , Fn4 
	.byte	W01
	.byte		BEND  , c_v+42
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Cs6 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		PAN   , c_v+12
	.byte		BEND  , c_v+5
	.byte		N02   , Cs5 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+12
	.byte		N02   , Fn5 , v032
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		PAN   , c_v-16
	.byte		BEND  , c_v+32
	.byte		N02   , Fn4 
	.byte	W01
	.byte		BEND  , c_v+42
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Cs6 
	.byte	W01
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+5
	.byte		N02   , Cs5 
	.byte	W01
	.byte		BEND  , c_v+8
	.byte	W02
	.byte	FINE

@**************** Track 01 ****************************@

song232_1:
	.byte	KEYSH , 0
	.byte		VOICE , 55
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 70*song232_mvl/mxv
	.byte		N02   , Cn3 , v052
	.byte	W03
	.byte		N02
	.byte	W03
	.byte	W01
	.byte		        Cs3 
	.byte	W03
	.byte		N02
	.byte	W02
	.byte	W02
	.byte		        Dn3 
	.byte	W04
	.byte		N02
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte	W01
	.byte		N02
	.byte	W03
	.byte		        En3 
	.byte	W02
	.byte	W02
	.byte		N02
	.byte	W04
	.byte		        Fn3 
	.byte	W03
	.byte		N02
	.byte	W03
	.byte	W01
	.byte		        Fs3 
	.byte	W03
	.byte		N02
	.byte	W02
	.byte	W02
	.byte		        Gn3 
	.byte	W04
	.byte		        Gn3 , v032
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte	W01
	.byte		N02
	.byte	W03
	.byte		        An3 , v020
	.byte	W02
	.byte	W02
	.byte		N02
	.byte	W04
	.byte		        As3 , v012
	.byte	W03
	.byte		N02
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song232:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song232_pri	@ Priority
	.byte	song232_rev	@ Reverb.

	.word	song232_grp

	.word	song232_0
	.word	song232_1

	.end
