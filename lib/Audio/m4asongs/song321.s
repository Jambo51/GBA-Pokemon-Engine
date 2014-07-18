@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song321_grp, group_56
	.equ	song321_pri, 0
	.equ	song321_rev, 178
	.equ	song321_mvl, 127
	.equ	song321_key, 0
	.equ	song321_tbs, 1
	.equ	song321_exg, 1
	.equ	song321_cmp, 1

	.text
	.global	song321
	.align	2

@**************** Track 00 ****************************@

song321_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 46
	.byte		BENDR , 2
	.byte		VOL   , 75*song321_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N02   , En6 , v112
	.byte	W02
	.byte		        Dn6 
	.byte	W01
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N02   , Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		N02   , Cn6 
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		PAN   , c_v-48
	.byte		N02   , An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , En6 , v048
	.byte	W01
	.byte	W01
	.byte		        Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		N02   , Fn5 , v048
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		PAN   , c_v+16
	.byte		N02   , Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		PAN   , c_v-48
	.byte		N02   , An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte	PATT
	 .word	song321_0 + 0x6D
	.byte	W01
	.byte		N02   , Dn5 , v048
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W01
	.byte	W01
	.byte		        En6 , v016
	.byte	W02
	.byte		        Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        Dn6 
	.byte	W01
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		PAN   , c_v-48
	.byte		N02   , An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        An4 
	.byte	W02
	.byte		PAN   , c_v-16
	.byte		N02   , Gs3 
	.byte	W02
	.byte		        Cn4 
	.byte	W01
	.byte	W01
	.byte		        Dn4 
	.byte	W02
	.byte		        Ds4 
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte	W01
	.byte		        Gs4 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		N02   , Dn4 
	.byte	W02
	.byte		        Ds4 
	.byte	W01
	.byte	W01
	.byte		        Gn4 , v024
	.byte	W02
	.byte		        Gs4 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Ds5 
	.byte	W02
	.byte		        Gn5 
	.byte	W01
	.byte	W01
	.byte		        Gs5 
	.byte	W02
	.byte		PAN   , c_v-16
	.byte		N02   , Ds4 
	.byte	W02
	.byte		        Gn4 , v032
	.byte	W01
	.byte	W01
	.byte		        Gs4 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		        Gn5 
	.byte	W02
	.byte		        Gs5 
	.byte	W01
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		N02   , Gn4 
	.byte	W02
	.byte		        Gs4 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Ds5 
	.byte	W01
	.byte	W01
	.byte		        Gn5 
	.byte	W02
	.byte		        Gs5 
	.byte	W02
	.byte		        Cn6 
	.byte	W01
	.byte	W01
	.byte		        Dn6 
	.byte	W02
	.byte		        Ds6 , v044
	.byte	W02
	.byte		        Cn6 
	.byte	W01
	.byte	W01
	.byte		        Gs5 
	.byte	W02
	.byte		        Ds5 
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , Dn6 , v080
	.byte	W01
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		        As5 
	.byte	W02
	.byte		        Gn5 
	.byte	W01
	.byte	W01
	.byte		PAN   , c_v-16
	.byte		N02   , Ds5 
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        As4 
	.byte	W02
	.byte		        Gn4 
	.byte	W02
	.byte		        Ds4 
	.byte	W01
	.byte	W01
	.byte		        Dn4 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		N02   , As3 
	.byte	W02
	.byte		        Dn6 , v048
	.byte	W01
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		        As5 
	.byte	W02
	.byte		PAN   , c_v-32
	.byte		N02   , Gn5 
	.byte	W01
	.byte	W01
	.byte		        Ds5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        As4 
	.byte	W02
	.byte		PAN   , c_v+32
	.byte		N02   , Cn6 , v080
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Gn5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		PAN   , c_v-16
	.byte		N02   , Dn5 
	.byte	W01
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		N02   , Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		        Cn4 
	.byte	W01
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		N02   , Cn6 , v048
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Gn5 
	.byte	W02
	.byte		PAN   , c_v-16
	.byte		N02   , Fn5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte		        Dn4 
	.byte	W02
	.byte		PAN   , c_v+16
	.byte		N02   , Cn6 , v020
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		PAN   , c_v-16
	.byte		N02   , Gn5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        As4 
	.byte	W01
	.byte	W01
	.byte		        Gs4 
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 62*song321_mvl/mxv
	.byte		N04   , Cn4 , v064
	.byte	W03
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte	W01
	.byte		        Bn4 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Gn5 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Bn5 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Dn6 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        En6 , v056
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 53*song321_mvl/mxv
	.byte		N04   , En6 , v036
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 44*song321_mvl/mxv
	.byte		N04   , En6 , v032
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 37*song321_mvl/mxv
	.byte		N04   , En6 , v020
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 27*song321_mvl/mxv
	.byte		N04   , En6 , v012
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 22*song321_mvl/mxv
	.byte		N04   , En6 , v008
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 14*song321_mvl/mxv
	.byte		N04
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 11*song321_mvl/mxv
	.byte		N04   , En6 , v004
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 7*song321_mvl/mxv
	.byte		N04
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		VOL   , 6*song321_mvl/mxv
	.byte		PAN   , c_v-17
	.byte		N72
	.byte	W02
	.byte		VOL   , 6*song321_mvl/mxv
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		        5*song321_mvl/mxv
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		        4*song321_mvl/mxv
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		        3*song321_mvl/mxv
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		        3*song321_mvl/mxv
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		        2*song321_mvl/mxv
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		        1*song321_mvl/mxv
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		        0*song321_mvl/mxv
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W02
	.byte		        0*song321_mvl/mxv
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 01 ****************************@

song321_1:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		BENDR , 2
	.byte		VOL   , 50*song321_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N02   , Cn6 , v112
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		N02   , En5 , v112
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        An4 
	.byte	W02
	.byte	PATT
	 .word	song321_1 + 0x15
	.byte	W01
	.byte		N02   , Cn5 , v112
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        Fn4 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W01
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte		        En4 
	.byte	W02
	.byte		        Cn6 , v064
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		N02   , Dn5 , v064
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W01
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte	PATT
	 .word	song321_1 + 0x62
	.byte	W01
	.byte		N02   , An4 , v064
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        En4 
	.byte	W01
	.byte	W01
	.byte		        Cn6 , v032
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        An4 
	.byte	W02
	.byte		        Fn4 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        Fn4 
	.byte	W01
	.byte	W01
	.byte		        En4 
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		VOL   , 40*song321_mvl/mxv
	.byte		N04   , Cn3 , v064
	.byte	W03
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte	W03
	.byte		        Gn3 
	.byte	W03
	.byte	W01
	.byte		        Bn3 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Cn4 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        En4 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Gn4 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Bn4 , v056
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        Dn5 , v052
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 41*song321_mvl/mxv
	.byte		N04   , En5 , v040
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 37*song321_mvl/mxv
	.byte		N04   , En5 , v032
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 29*song321_mvl/mxv
	.byte		N04   , En5 , v024
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 22*song321_mvl/mxv
	.byte		N04   , En5 , v016
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 17*song321_mvl/mxv
	.byte		N04   , En5 , v008
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 9*song321_mvl/mxv
	.byte		N04   , En5 , v004
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 4*song321_mvl/mxv
	.byte		N04
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-32
	.byte		VOL   , 2*song321_mvl/mxv
	.byte		N04
	.byte	W02
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v+32
	.byte		VOL   , 1*song321_mvl/mxv
	.byte		N76
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		VOL   , 0*song321_mvl/mxv
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		        0*song321_mvl/mxv
	.byte	W02
	.byte	FINE

@**************** Track 02 ****************************@

song321_2:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 31*song321_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		N72   , CnM2, v048
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 03 ****************************@

song321_3:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+33
	.byte		VOL   , 25*song321_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte	W01
	.byte		N02   , En6 , v112
	.byte	W02
	.byte		        Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        Dn6 
	.byte	W01
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        An4 
	.byte	W02
	.byte		        En6 , v048
	.byte	W02
	.byte		        Dn6 
	.byte	W01
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		N02   , An5 , v048
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		        Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Cn6 
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	W01
	.byte		        Dn5 
	.byte	W02
	.byte	PATT
	 .word	song321_3 + 0x54
	.byte	W01
	.byte		N02   , En5 , v048
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        Cn5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte		        An4 
	.byte	W02
	.byte		        En6 , v016
	.byte	W01
	.byte	W01
	.byte		        Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        Dn6 
	.byte	W02
	.byte		        Cn6 
	.byte	W01
	.byte	W01
	.byte		        An5 
	.byte	W02
	.byte		N02   , Fn5 , v016
	.byte	W02
	.byte		        En5 
	.byte	W01
	.byte	PEND
	.byte	W01
	.byte		        Cn6 
	.byte	W02
	.byte		        An5 
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W01
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W02
	.byte		        An5 
	.byte	W01
	.byte	W01
	.byte		        Fn5 
	.byte	W02
	.byte		        En5 
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W01
	.byte		        Cn5 
	.byte	W02
	.byte	PATT
	 .word	song321_3 + 0xA1
	.byte	W01
	.byte		N02   , Dn5 , v016
	.byte	W02
	.byte		VOICE , 1
	.byte		VOL   , 3*song321_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+0
	.byte		N80   , Cn4 , v124
	.byte	W01
	.byte		VOL   , 3*song321_mvl/mxv
	.byte	W01
	.byte		        4*song321_mvl/mxv
	.byte	W01
	.byte		        5*song321_mvl/mxv
	.byte	W01
	.byte		        6*song321_mvl/mxv
	.byte	W02
	.byte		        7*song321_mvl/mxv
	.byte	W01
	.byte		        7*song321_mvl/mxv
	.byte	W01
	.byte		        8*song321_mvl/mxv
	.byte	W01
	.byte		        9*song321_mvl/mxv
	.byte	W02
	.byte		        10*song321_mvl/mxv
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte		        12*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        13*song321_mvl/mxv
	.byte	W01
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte		        15*song321_mvl/mxv
	.byte	W02
	.byte		        16*song321_mvl/mxv
	.byte	W01
	.byte		        17*song321_mvl/mxv
	.byte	W01
	.byte		        18*song321_mvl/mxv
	.byte	W01
	.byte		        18*song321_mvl/mxv
	.byte	W01
	.byte		        19*song321_mvl/mxv
	.byte	W02
	.byte		        20*song321_mvl/mxv
	.byte	W01
	.byte		        21*song321_mvl/mxv
	.byte	W01
	.byte		        22*song321_mvl/mxv
	.byte	W01
	.byte		        22*song321_mvl/mxv
	.byte	W02
	.byte		        23*song321_mvl/mxv
	.byte	W01
	.byte		        24*song321_mvl/mxv
	.byte	W01
	.byte		        25*song321_mvl/mxv
	.byte	W01
	.byte		        25*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        26*song321_mvl/mxv
	.byte	W01
	.byte		        27*song321_mvl/mxv
	.byte	W01
	.byte		        28*song321_mvl/mxv
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        30*song321_mvl/mxv
	.byte	W01
	.byte		        31*song321_mvl/mxv
	.byte	W01
	.byte		        32*song321_mvl/mxv
	.byte	W01
	.byte		        33*song321_mvl/mxv
	.byte	W02
	.byte		        33*song321_mvl/mxv
	.byte	W01
	.byte		        34*song321_mvl/mxv
	.byte	W01
	.byte		        35*song321_mvl/mxv
	.byte	W01
	.byte		        36*song321_mvl/mxv
	.byte	W02
	.byte		        37*song321_mvl/mxv
	.byte	W01
	.byte		        37*song321_mvl/mxv
	.byte	W01
	.byte		        38*song321_mvl/mxv
	.byte	W01
	.byte		        39*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        40*song321_mvl/mxv
	.byte	W01
	.byte		        40*song321_mvl/mxv
	.byte	W01
	.byte		        41*song321_mvl/mxv
	.byte	W01
	.byte		        42*song321_mvl/mxv
	.byte	W01
	.byte		        43*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        44*song321_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 44*song321_mvl/mxv
	.byte	W01
	.byte		        45*song321_mvl/mxv
	.byte	W01
	.byte		        46*song321_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 47*song321_mvl/mxv
	.byte	W01
	.byte		        48*song321_mvl/mxv
	.byte	W01
	.byte		        48*song321_mvl/mxv
	.byte	W01
	.byte		        49*song321_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W02
	.byte		VOL   , 50*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v-22
	.byte	W02
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , Gn3 
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		N14   , An3 
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		N40   , Fn3 
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		N20   , Dn3 
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		TIE   , En3 
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		VOL   , 49*song321_mvl/mxv
	.byte	W01
	.byte		        48*song321_mvl/mxv
	.byte	W02
	.byte		        48*song321_mvl/mxv
	.byte	W01
	.byte		        47*song321_mvl/mxv
	.byte	W02
	.byte		        46*song321_mvl/mxv
	.byte	W01
	.byte		        45*song321_mvl/mxv
	.byte	W02
	.byte		        44*song321_mvl/mxv
	.byte	W01
	.byte		        44*song321_mvl/mxv
	.byte	W02
	.byte		        43*song321_mvl/mxv
	.byte	W02
	.byte		        42*song321_mvl/mxv
	.byte	W01
	.byte		        41*song321_mvl/mxv
	.byte	W02
	.byte		        40*song321_mvl/mxv
	.byte	W01
	.byte		        40*song321_mvl/mxv
	.byte	W02
	.byte		        39*song321_mvl/mxv
	.byte	W01
	.byte		        38*song321_mvl/mxv
	.byte	W02
	.byte		        37*song321_mvl/mxv
	.byte	W01
	.byte		        37*song321_mvl/mxv
	.byte	W02
	.byte		        36*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        35*song321_mvl/mxv
	.byte	W01
	.byte		        34*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        33*song321_mvl/mxv
	.byte	W01
	.byte		        33*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        32*song321_mvl/mxv
	.byte	W01
	.byte		        31*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        30*song321_mvl/mxv
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W02
	.byte		        28*song321_mvl/mxv
	.byte	W01
	.byte		        27*song321_mvl/mxv
	.byte	W02
	.byte		        26*song321_mvl/mxv
	.byte	W01
	.byte		        25*song321_mvl/mxv
	.byte	W02
	.byte		        25*song321_mvl/mxv
	.byte	W01
	.byte		        24*song321_mvl/mxv
	.byte	W02
	.byte		        23*song321_mvl/mxv
	.byte	W01
	.byte		        22*song321_mvl/mxv
	.byte	W02
	.byte		        22*song321_mvl/mxv
	.byte	W02
	.byte		        21*song321_mvl/mxv
	.byte	W01
	.byte		        20*song321_mvl/mxv
	.byte	W02
	.byte		        19*song321_mvl/mxv
	.byte	W01
	.byte		        18*song321_mvl/mxv
	.byte	W02
	.byte		        18*song321_mvl/mxv
	.byte	W01
	.byte		        17*song321_mvl/mxv
	.byte	W02
	.byte		        16*song321_mvl/mxv
	.byte	W01
	.byte		        15*song321_mvl/mxv
	.byte	W02
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte		        13*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        12*song321_mvl/mxv
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte		        10*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        9*song321_mvl/mxv
	.byte	W01
	.byte		        8*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        7*song321_mvl/mxv
	.byte	W02
	.byte		        7*song321_mvl/mxv
	.byte	W01
	.byte		        6*song321_mvl/mxv
	.byte	W02
	.byte		        5*song321_mvl/mxv
	.byte	W01
	.byte		        4*song321_mvl/mxv
	.byte	W02
	.byte		        3*song321_mvl/mxv
	.byte	W01
	.byte		        3*song321_mvl/mxv
	.byte	W02
	.byte		        2*song321_mvl/mxv
	.byte	W01
	.byte		        1*song321_mvl/mxv
	.byte	W02
	.byte		        0*song321_mvl/mxv
	.byte	W02
	.byte		        0*song321_mvl/mxv
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		EOT
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@**************** Track 04 ****************************@

song321_4:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		PAN   , c_v-17
	.byte		VOL   , 36*song321_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BEND  , c_v+0
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		VOL   , 3*song321_mvl/mxv
	.byte		N80   , Cn2 , v124
	.byte	W01
	.byte		VOL   , 3*song321_mvl/mxv
	.byte	W01
	.byte		        4*song321_mvl/mxv
	.byte	W01
	.byte		        5*song321_mvl/mxv
	.byte	W01
	.byte		        6*song321_mvl/mxv
	.byte	W02
	.byte		        7*song321_mvl/mxv
	.byte	W01
	.byte		        7*song321_mvl/mxv
	.byte	W01
	.byte		        8*song321_mvl/mxv
	.byte	W01
	.byte		        9*song321_mvl/mxv
	.byte	W02
	.byte		        10*song321_mvl/mxv
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte		        12*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        13*song321_mvl/mxv
	.byte	W01
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte		        15*song321_mvl/mxv
	.byte	W02
	.byte		        16*song321_mvl/mxv
	.byte	W01
	.byte		        17*song321_mvl/mxv
	.byte	W01
	.byte		        18*song321_mvl/mxv
	.byte	W01
	.byte		        18*song321_mvl/mxv
	.byte	W01
	.byte		        19*song321_mvl/mxv
	.byte	W02
	.byte		        20*song321_mvl/mxv
	.byte	W01
	.byte		        21*song321_mvl/mxv
	.byte	W01
	.byte		        22*song321_mvl/mxv
	.byte	W01
	.byte		        22*song321_mvl/mxv
	.byte	W02
	.byte		        23*song321_mvl/mxv
	.byte	W01
	.byte		        24*song321_mvl/mxv
	.byte	W01
	.byte		        25*song321_mvl/mxv
	.byte	W01
	.byte		        25*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        26*song321_mvl/mxv
	.byte	W01
	.byte		        27*song321_mvl/mxv
	.byte	W01
	.byte		        28*song321_mvl/mxv
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        30*song321_mvl/mxv
	.byte	W01
	.byte		        31*song321_mvl/mxv
	.byte	W01
	.byte		        32*song321_mvl/mxv
	.byte	W01
	.byte		        33*song321_mvl/mxv
	.byte	W02
	.byte		        33*song321_mvl/mxv
	.byte	W01
	.byte		        34*song321_mvl/mxv
	.byte	W01
	.byte		        35*song321_mvl/mxv
	.byte	W01
	.byte		        36*song321_mvl/mxv
	.byte	W02
	.byte		        37*song321_mvl/mxv
	.byte	W01
	.byte		        37*song321_mvl/mxv
	.byte	W01
	.byte		        38*song321_mvl/mxv
	.byte	W01
	.byte		        39*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        40*song321_mvl/mxv
	.byte	W01
	.byte		        40*song321_mvl/mxv
	.byte	W01
	.byte		        41*song321_mvl/mxv
	.byte	W01
	.byte		        42*song321_mvl/mxv
	.byte	W01
	.byte		        43*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        44*song321_mvl/mxv
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 44*song321_mvl/mxv
	.byte	W01
	.byte		        45*song321_mvl/mxv
	.byte	W01
	.byte		        46*song321_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 47*song321_mvl/mxv
	.byte	W01
	.byte		        48*song321_mvl/mxv
	.byte	W01
	.byte		        48*song321_mvl/mxv
	.byte	W01
	.byte		        49*song321_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W02
	.byte		VOL   , 50*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		BEND  , c_v-22
	.byte	W02
	.byte	W02
	.byte		        c_v+0
	.byte		N24   , Gn1 
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		N14   , An1 
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		N40   , Fn1 
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		N20   , Dn1 
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		TIE   , En1 
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		VOL   , 49*song321_mvl/mxv
	.byte	W01
	.byte		        48*song321_mvl/mxv
	.byte	W02
	.byte		        48*song321_mvl/mxv
	.byte	W01
	.byte		        47*song321_mvl/mxv
	.byte	W02
	.byte		        46*song321_mvl/mxv
	.byte	W01
	.byte		        45*song321_mvl/mxv
	.byte	W02
	.byte		        44*song321_mvl/mxv
	.byte	W01
	.byte		        44*song321_mvl/mxv
	.byte	W02
	.byte		        43*song321_mvl/mxv
	.byte	W02
	.byte		        42*song321_mvl/mxv
	.byte	W01
	.byte		        41*song321_mvl/mxv
	.byte	W02
	.byte		        40*song321_mvl/mxv
	.byte	W01
	.byte		        40*song321_mvl/mxv
	.byte	W02
	.byte		        39*song321_mvl/mxv
	.byte	W01
	.byte		        38*song321_mvl/mxv
	.byte	W02
	.byte		        37*song321_mvl/mxv
	.byte	W01
	.byte		        37*song321_mvl/mxv
	.byte	W02
	.byte		        36*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        35*song321_mvl/mxv
	.byte	W01
	.byte		        34*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        33*song321_mvl/mxv
	.byte	W01
	.byte		        33*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        32*song321_mvl/mxv
	.byte	W01
	.byte		        31*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        30*song321_mvl/mxv
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        29*song321_mvl/mxv
	.byte	W02
	.byte		        28*song321_mvl/mxv
	.byte	W01
	.byte		        27*song321_mvl/mxv
	.byte	W02
	.byte		        26*song321_mvl/mxv
	.byte	W01
	.byte		        25*song321_mvl/mxv
	.byte	W02
	.byte		        25*song321_mvl/mxv
	.byte	W01
	.byte		        24*song321_mvl/mxv
	.byte	W02
	.byte		        23*song321_mvl/mxv
	.byte	W01
	.byte		        22*song321_mvl/mxv
	.byte	W02
	.byte		        22*song321_mvl/mxv
	.byte	W02
	.byte		        21*song321_mvl/mxv
	.byte	W01
	.byte		        20*song321_mvl/mxv
	.byte	W02
	.byte		        19*song321_mvl/mxv
	.byte	W01
	.byte		        18*song321_mvl/mxv
	.byte	W02
	.byte		        18*song321_mvl/mxv
	.byte	W01
	.byte		        17*song321_mvl/mxv
	.byte	W02
	.byte		        16*song321_mvl/mxv
	.byte	W01
	.byte		        15*song321_mvl/mxv
	.byte	W02
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        14*song321_mvl/mxv
	.byte	W01
	.byte		        13*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        12*song321_mvl/mxv
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        11*song321_mvl/mxv
	.byte	W01
	.byte		        10*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        9*song321_mvl/mxv
	.byte	W01
	.byte		        8*song321_mvl/mxv
	.byte	W01
	.byte	W01
	.byte		        7*song321_mvl/mxv
	.byte	W02
	.byte		        7*song321_mvl/mxv
	.byte	W01
	.byte		        6*song321_mvl/mxv
	.byte	W02
	.byte		        5*song321_mvl/mxv
	.byte	W01
	.byte		        4*song321_mvl/mxv
	.byte	W02
	.byte		        3*song321_mvl/mxv
	.byte	W01
	.byte		        3*song321_mvl/mxv
	.byte	W02
	.byte		        2*song321_mvl/mxv
	.byte	W01
	.byte		        1*song321_mvl/mxv
	.byte	W02
	.byte		        0*song321_mvl/mxv
	.byte	W02
	.byte		        0*song321_mvl/mxv
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		EOT
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song321:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song321_pri	@ Priority
	.byte	song321_rev	@ Reverb.

	.word	song321_grp

	.word	song321_0
	.word	song321_1
	.word	song321_2
	.word	song321_3
	.word	song321_4

	.end
