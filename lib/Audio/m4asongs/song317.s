@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song317_grp, group_52
	.equ	song317_pri, 5
	.equ	song317_rev, 178
	.equ	song317_mvl, 127
	.equ	song317_key, 0
	.equ	song317_tbs, 1
	.equ	song317_exg, 1
	.equ	song317_cmp, 1

	.section .rodata
	.global	song317
	.align	2

@**************** Track 00 ****************************@

song317_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 32
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 50*song317_mvl/mxv
	.byte	W12
	.byte	TEMPO , 37
	.byte		N02   , An3 , v127
	.byte	W02
	.byte		        An3 , v064
	.byte	W03
	.byte		        An3 , v127
	.byte	W02
	.byte		        An3 , v068
	.byte	W03
	.byte		        Gn3 , v127
	.byte	W02
	.byte		        Gn3 , v064
	.byte	W03
	.byte		        Gn3 , v127
	.byte	W02
	.byte		        Gn3 , v064
	.byte	W03
	.byte		        Fn3 , v127
	.byte	W02
	.byte		        Fn3 , v064
	.byte	W02
	.byte	W01
	.byte		        En3 , v127
	.byte	W02
	.byte		        En3 , v064
	.byte	W03
	.byte		        Fn3 , v127
	.byte	W02
	.byte		        Fn3 , v064
	.byte	W03
	.byte		        An3 , v127
	.byte	W01
	.byte	W01
	.byte		        An3 , v064
	.byte	W03
	.byte		N05   , Cn4 , v127
	.byte	W05
	.byte		N04   , Cn4 , v064
	.byte	W03
	.byte	W02
	.byte		N05   , En4 , v127
	.byte	W05
	.byte		N04   , En4 , v064
	.byte	W05
	.byte		        Fn3 , v127
	.byte	W05
	.byte		        Fn3 , v064
	.byte	W04
	.byte		N02   , Fn3 , v044
	.byte	W03
	.byte	W12
	.byte	FINE

@**************** Track 01 ****************************@

song317_1:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*song317_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+1
	.byte	W09
	.byte		PAN   , c_v+62
	.byte	W03
	.byte		N05   , Fn5 , v080
	.byte	W04
	.byte		PAN   , c_v-64
	.byte	W01
	.byte		N02   , En5 
	.byte	W05
	.byte		N05   , Dn5 
	.byte	W02
	.byte	W03
	.byte		N02   , Cn5 
	.byte	W05
	.byte		N05   , As4 
	.byte	W04
	.byte	W01
	.byte		        Cn5 
	.byte	W01
	.byte		PAN   , c_v+63
	.byte	W04
	.byte		N05   , Dn5 
	.byte	W05
	.byte		        En5 
	.byte	W01
	.byte		PAN   , c_v-64
	.byte	W04
	.byte		N10   , Fn5 
	.byte	W08
	.byte		PAN   , c_v+63
	.byte	W02
	.byte		N10   , Gn5 
	.byte	W10
	.byte		N09   , Fn5 , v064
	.byte	W09
	.byte		N02   , Fn5 , v028
	.byte	W03
	.byte	W12
	.byte	FINE

@**************** Track 02 ****************************@

song317_2:
	.byte	KEYSH , 0
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 44*song317_mvl/mxv
	.byte	W12
	.byte		N02   , Cn5 , v127
	.byte	W05
	.byte		N05   , Fn4 
	.byte	W05
	.byte		N02   , Cn5 
	.byte	W02
	.byte	W03
	.byte		        As4 
	.byte	W05
	.byte		        An4 
	.byte	W04
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte		        Fn4 
	.byte	W05
	.byte		        En4 
	.byte	W01
	.byte	W12
	.byte	W02
	.byte		        Cn5 
	.byte	W10
	.byte		N05   , Fn4 
	.byte	W12
	.byte	W12
	.byte	FINE

@**************** Track 03 ****************************@

song317_3:
	.byte	KEYSH , 0
	.byte		VOICE , 13
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v-32
	.byte		VOL   , 51*song317_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+32
	.byte	W05
	.byte		        c_v-32
	.byte	W04
	.byte		N02   , Cn5 , v120
	.byte	W01
	.byte		PAN   , c_v+32
	.byte	W04
	.byte		N02   , Fn5 
	.byte	W02
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		N02   , An4 
	.byte	W02
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		N02   , Cn5 
	.byte	W02
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		N02   , Fn4 
	.byte	W01
	.byte		PAN   , c_v+32
	.byte	W03
	.byte	W01
	.byte		N02   , An4 
	.byte	W01
	.byte		PAN   , c_v-33
	.byte	W04
	.byte		N02   , Cn4 
	.byte	W05
	.byte		PAN   , c_v-1
	.byte		N02   , Fn4 , v112
	.byte	W01
	.byte	W04
	.byte		        An4 , v120
	.byte	W08
	.byte	W02
	.byte		        Cn5 
	.byte	W10
	.byte		        Fn5 
	.byte	W02
	.byte		        Fn5 , v064
	.byte	W03
	.byte		        Fn5 , v036
	.byte	W03
	.byte		        Fn5 , v024
	.byte	W04
	.byte	W12
	.byte	FINE

@**************** Track 04 ****************************@

song317_4:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 44*song317_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W12
	.byte		N05   , Fn5 , v080
	.byte	W05
	.byte		N02   , En5 
	.byte	W05
	.byte		N05   , Dn5 
	.byte	W02
	.byte	W03
	.byte		N02   , Cn5 
	.byte	W05
	.byte		N05   , As4 
	.byte	W04
	.byte	W01
	.byte		        Cn5 
	.byte	W05
	.byte		        Dn5 
	.byte	W05
	.byte		        En5 
	.byte	W01
	.byte	W04
	.byte		        Fn5 
	.byte	W08
	.byte	W02
	.byte		        Gn5 
	.byte	W10
	.byte		N09   , Fn5 
	.byte	W09
	.byte		N02   , Fn5 , v044
	.byte	W03
	.byte		        Fn5 , v024
	.byte	W12
	.byte	FINE

@**************** Track 05 ****************************@

song317_5:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+16
	.byte		VOL   , 65*song317_mvl/mxv
	.byte	W12
	.byte		N05   , Fn5 , v127
	.byte	W05
	.byte		N02   , En5 
	.byte	W05
	.byte		N05   , Dn5 
	.byte	W02
	.byte	W03
	.byte		N02   , Cn5 
	.byte	W05
	.byte		N05   , As4 
	.byte	W04
	.byte	W01
	.byte		        Cn5 
	.byte	W05
	.byte		        Dn5 
	.byte	W05
	.byte		        En5 
	.byte	W01
	.byte	W04
	.byte		        Fn5 
	.byte	W08
	.byte	W02
	.byte		        Gn5 
	.byte	W10
	.byte		N09   , Fn5 
	.byte	W09
	.byte		N02   , Fn5 , v064
	.byte	W03
	.byte		        Fn5 , v028
	.byte	W12
	.byte	FINE

@**************** Track 06 ****************************@

song317_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 70*song317_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N04   , Fs2 , v084
	.byte	W04
	.byte		        Fs2 , v064
	.byte	W05
	.byte		        Fs2 , v084
	.byte	W03
	.byte	W02
	.byte		        Fs2 , v064
	.byte	W05
	.byte		        Fs2 , v080
	.byte	W05
	.byte		        Fs2 , v064
	.byte	W04
	.byte		PAN   , c_v+48
	.byte		N04   , Fs2 , v072
	.byte	W05
	.byte		N02   , Fs2 , v044
	.byte	W03
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		N09   , Bn4 
	.byte	W08
	.byte		PAN   , c_v-48
	.byte	W02
	.byte		N09   , Bn4 , v072
	.byte	W10
	.byte		N12   , Bn4 , v044
	.byte	W12
	.byte	W12
	.byte	FINE

@******************************************************@
	.align	2

song317:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song317_pri	@ Priority
	.byte	song317_rev	@ Reverb.

	.word	song317_grp

	.word	song317_0
	.word	song317_1
	.word	song317_2
	.word	song317_3
	.word	song317_4
	.word	song317_5
	.word	song317_6

	.end
