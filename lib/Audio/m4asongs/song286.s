@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song286_grp, group_22
	.equ	song286_pri, 0
	.equ	song286_rev, 178
	.equ	song286_mvl, 127
	.equ	song286_key, 0
	.equ	song286_tbs, 1
	.equ	song286_exg, 1
	.equ	song286_cmp, 1

	.section .rodata
	.global	song286
	.align	2

@**************** Track 00 ****************************@

song286_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 76
	.byte		VOICE , 17
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 51*song286_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N06   , Dn4 , v127
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N96   , Cn5 
	.byte	W96
	.byte		        En5 
	.byte	W96
	.byte		        Fs5 
	.byte	W96
	.byte		        Fn5 
	.byte	W96
	.byte		        Cn5 
	.byte	W96
	.byte		        En5 
	.byte	W96
	.byte		        Fs5 
	.byte	W96
	.byte		N72   , Fn5 
	.byte	W72
	.byte		N06   , Bn4 , v120
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		N92   , Bn5 , v127
	.byte	W92
	.byte	W01
	.byte		N03   , As5 , v120
	.byte	W03
	.byte		N90   , An5 , v127
	.byte	W90
	.byte		N03   , As5 , v120
	.byte	W03
	.byte		        Bn5 
	.byte	W03
	.byte		N90   , Cn6 , v127
	.byte	W90
	.byte		N03   , Cs6 , v120
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		N36   , Ds6 , v127
	.byte	W36
	.byte		N32   , Dn6 , v120
	.byte	W32
	.byte	W01
	.byte		N03   , Cs6 , v108
	.byte	W03
	.byte		N24   , Cn6 , v120
	.byte	W24
	.byte	W96
	.byte	GOTO
	 .word	song286_0 + 0xF
	.byte	FINE

@**************** Track 01 ****************************@

song286_1:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 79*song286_mvl/mxv
	.byte	W84
	.byte		N06   , Fn3 , v064
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		VOL   , 79*song286_mvl/mxv
	.byte		N12   , Gn3 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N30   , An3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W18
	.byte		        0
	.byte		N03   , Dn4 , v088
	.byte	W06
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N06   , En3 , v092
	.byte	W06
	.byte		N03   , Fs3 , v108
	.byte	W06
	.byte		N12   , Gn3 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N03   , Gn4 , v092
	.byte	W06
	.byte		N06   , An3 , v127
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An3 , v120
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		N03   , Dn4 , v088
	.byte	W06
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , Fn3 
	.byte	W06
	.byte		        Fn3 , v092
	.byte	W06
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fn3 , v127
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N60   , An3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N54   , An3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W42
	.byte		N03   , Gn4 , v072
	.byte	W06
	.byte		MOD   , 0
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , An3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N60   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W60
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N03   , Gn4 , v044
	.byte	W12
	.byte		        Gn4 , v056
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		        Gn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte		N24
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		        7
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		N03   , Dn4 , v120
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , Bn4 
	.byte	W06
	.byte		N06   , Dn4 
	.byte	W18
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W06
	.byte	GOTO
	 .word	song286_1 + 0x12
	.byte	FINE

@**************** Track 02 ****************************@

song286_2:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 50*song286_mvl/mxv
	.byte		MOD   , 1
	.byte		BEND  , c_v+0
	.byte	W24
	.byte		PAN   , c_v+63
	.byte	W24
	.byte		        c_v-64
	.byte	W24
	.byte		        c_v+63
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte	PATT
	 .word	song286_2 + 0x18
	.byte		PAN   , c_v-64
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Dn2 , v120
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        Bn2 , v120
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		        Bn2 , v120
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        Fn2 , v120
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		        Gn2 , v120
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cn3 , v120
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N03   , Cn3 , v127
	.byte	W06
	.byte		        Cn3 , v052
	.byte	W06
	.byte		        Gn2 , v127
	.byte	W06
	.byte		        Gn2 , v048
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		        Cn3 , v048
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W06
	.byte		        Ds3 , v048
	.byte	W06
	.byte		N12   , Fs3 , v120
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte	W96
	.byte	GOTO
	 .word	song286_2 + 0x18
	.byte	FINE

@**************** Track 03 ****************************@

song286_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song286_mvl/mxv
	.byte	W72
	.byte		BEND  , c_v+63
	.byte		N24   , Dn2 , v120
	.byte	W03
	.byte		BEND  , c_v+48
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-64
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , Gn1 , v116
	.byte	W06
	.byte		N06   , Gn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , Gn1 , v116
	.byte	W06
	.byte		N06   , Gn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , Gn1 , v116
	.byte	W06
	.byte		N06   , Gn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song286_3 + 0x3F
	.byte		N03   , Gn1 , v124
	.byte	W18
	.byte		        Gn1 , v116
	.byte	W06
	.byte		N06   , Gn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte	PATT
	 .word	song286_3 + 0x3F
	.byte	PATT
	 .word	song286_3 + 0x56
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , Gn1 , v116
	.byte	W06
	.byte		N06   , Gn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , An2 , v116
	.byte	W06
	.byte		N12   , An2 , v120
	.byte	W18
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N03   , Dn1 , v096
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , Gn2 , v116
	.byte	W06
	.byte		N12   , Gn2 , v120
	.byte	W18
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , An2 , v116
	.byte	W06
	.byte		N12   , An2 , v120
	.byte	W18
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v096
	.byte	W06
	.byte		N12   , An1 , v120
	.byte	W12
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , An2 , v116
	.byte	W06
	.byte		N12   , An2 , v120
	.byte	W18
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N03   , An2 
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Gn1 , v084
	.byte	W12
	.byte		        Gn1 , v060
	.byte	W12
	.byte		        Gn1 , v040
	.byte	W12
	.byte		N24   , Fn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Fn1 , v084
	.byte	W12
	.byte		        Fn1 , v060
	.byte	W12
	.byte		        Fn1 , v040
	.byte	W12
	.byte		N24   , En1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En1 , v084
	.byte	W12
	.byte		        En1 , v060
	.byte	W12
	.byte		        En1 , v040
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N06   , Ds1 , v052
	.byte	W12
	.byte		        Ds1 , v056
	.byte	W12
	.byte		        Ds1 , v096
	.byte	W12
	.byte		        Ds1 , v120
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W24
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N09   , Gn1 , v124
	.byte	W18
	.byte		N03   , Gn1 , v116
	.byte	W06
	.byte		N06   , Gn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+63
	.byte		N24   , Dn3 
	.byte	W03
	.byte		BEND  , c_v+48
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-64
	.byte	W06
	.byte		        c_v+63
	.byte		N24   , Dn2 , v127
	.byte	W03
	.byte		BEND  , c_v+48
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-64
	.byte	W06
	.byte	GOTO
	 .word	song286_3 + 0x20
	.byte	FINE

@**************** Track 04 ****************************@

song286_4:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte		VOL   , 62*song286_mvl/mxv
	.byte	W84
	.byte		N06   , Gn2 , v064
	.byte	W06
	.byte		        An2 , v096
	.byte	W06
	.byte		VOL   , 56*song286_mvl/mxv
	.byte		N12   , Bn2 , v120
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N30   , Dn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W18
	.byte		        0
	.byte		N03   , Gn3 , v088
	.byte	W06
	.byte		N12   , Gn2 , v120
	.byte	W12
	.byte		N06   , Bn2 , v092
	.byte	W06
	.byte		N03   , Cn3 , v108
	.byte	W06
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N03   , An3 , v092
	.byte	W06
	.byte		N06   , Bn2 , v120
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N03   , An3 , v088
	.byte	W06
	.byte		N12   , Cn3 , v120
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , En3 
	.byte	W12
	.byte		N03   , Cn3 
	.byte	W06
	.byte		        Cn3 , v092
	.byte	W06
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cn3 , v120
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn4 , v096
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N12   , Dn4 , v120
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N03   , Cn4 , v096
	.byte	W03
	.byte		        Cs4 , v092
	.byte	W03
	.byte		N12   , Dn4 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , Dn3 
	.byte	W18
	.byte		N03   , Cn4 , v096
	.byte	W03
	.byte		        Cs4 
	.byte	W03
	.byte		N12   , Dn4 , v120
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N06   , Cs4 , v100
	.byte	W06
	.byte		N03   , Dn4 , v072
	.byte	W06
	.byte		N06   , Fn3 , v120
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W30
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W06
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		VOL   , 53*song286_mvl/mxv
	.byte		N12   , An3 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , An3 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N03   , En4 
	.byte	W06
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , An3 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , En4 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , An3 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N15   , Gn3 
	.byte	W24
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		VOL   , 60*song286_mvl/mxv
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N60   , Dn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N60   , En4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N03   , Ds4 , v044
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W12
	.byte		        Ds4 , v064
	.byte	W12
	.byte		        Cn4 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N06   , An3 
	.byte	W18
	.byte		        As3 
	.byte	W06
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , Gn2 , v096
	.byte	W06
	.byte		        An2 , v120
	.byte	W06
	.byte	GOTO
	 .word	song286_4 + 0x14
	.byte	FINE

@**************** Track 05 ****************************@

song286_5:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 34*song286_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte	W84
	.byte		N06   , Fn3 , v064
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		N12   , Gn3 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N30   , An3 
	.byte	W30
	.byte		N03   , Dn4 , v088
	.byte	W06
	.byte		N12   , Dn3 , v120
	.byte	W12
	.byte		N06   , En3 , v092
	.byte	W06
	.byte		N03   , Fs3 , v108
	.byte	W06
	.byte		N12   , Gn3 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N03   , Gn4 , v092
	.byte	W06
	.byte		N06   , An3 , v127
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , An3 , v120
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		N03   , Dn4 , v088
	.byte	W06
	.byte		N12   , Fn3 , v127
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		N03   , Fn3 
	.byte	W06
	.byte		        Fn3 , v092
	.byte	W06
	.byte		N06   , En3 
	.byte	W06
	.byte		        Fn3 , v127
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N60   , An3 
	.byte	W60
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N54   , An3 
	.byte	W60
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N03   , Fn4 , v084
	.byte	W03
	.byte		        Fs4 , v096
	.byte	W03
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N60   , An4 
	.byte	W60
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N03   , Dn4 , v120
	.byte	W06
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W60
	.byte	PEND
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N24   , As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N12   , Fn4 
	.byte	W12
	.byte	PATT
	 .word	song286_5 + 0xD7
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W60
	.byte		N03   , Gn4 , v044
	.byte	W12
	.byte		        Ds4 , v056
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		        Gn4 , v127
	.byte	W09
	.byte		N24
	.byte	W24
	.byte	W03
	.byte		        An4 
	.byte	W24
	.byte		N03   , Dn4 , v120
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03   , Bn4 
	.byte	W06
	.byte		N06   , Dn4 
	.byte	W18
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , Dn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W06
	.byte	GOTO
	 .word	song286_5 + 0x16
	.byte	FINE

@**************** Track 06 ****************************@

song286_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 73*song286_mvl/mxv
	.byte		N06   , Cn2 , v120
	.byte		N48   , Cs2 
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N03   , Fn1 
	.byte		N24   , An2 
	.byte	W03
	.byte		N03   , Fn1 
	.byte	W03
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte		N24   , Gn2 
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N18   , Cn1 , v120
	.byte		N48   , Bn2 
	.byte	W18
	.byte		N03   , Cn1 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N18
	.byte	W18
	.byte	PEND
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N03   , Cs1 , v064
	.byte	W03
	.byte		        Cs1 , v056
	.byte	W03
	.byte		N06   , Cs1 , v088
	.byte	W06
	.byte		        Cs1 , v104
	.byte	W06
	.byte	PATT
	 .word	song286_6 + 0x5F
	.byte	PATT
	 .word	song286_6 + 0x4C
	.byte	PATT
	 .word	song286_6 + 0x5F
	.byte	PATT
	 .word	song286_6 + 0x4C
	.byte		N18   , Cn1 , v120
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N15
	.byte	W18
	.byte	PATT
	 .word	song286_6 + 0x4C
	.byte	PATT
	 .word	song286_6 + 0x5F
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N03   , Gn1 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N03   , Fn1 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N36
	.byte		N48   , Cs2 
	.byte	W36
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs1 , v064
	.byte	W12
	.byte		        Cs1 , v040
	.byte	W12
	.byte		        Cs1 , v016
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		N24   , Cn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cs1 , v064
	.byte	W12
	.byte		        Cs1 , v040
	.byte	W12
	.byte		        Cs1 , v016
	.byte	W12
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		N03   , Bn1 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N12   , Cs1 
	.byte		N48   , An2 
	.byte	W12
	.byte		N12   , Cs1 , v064
	.byte	W12
	.byte		        Cs1 , v040
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte		N12   , Cs1 , v016
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Cs1 , v032
	.byte	W12
	.byte		        Cs1 , v052
	.byte	W12
	.byte		        Cs1 , v064
	.byte	W12
	.byte		        Cs1 , v120
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cs1 , v060
	.byte	W06
	.byte		        Gn1 , v120
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn2 
	.byte		N48   , Cs2 
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N03   , Fn1 
	.byte		N48   , Bn2 
	.byte	W03
	.byte		N03   , Fn1 
	.byte	W03
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N03   , En1 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fn1 
	.byte	W06
	.byte	GOTO
	 .word	song286_6 + 0x37
	.byte	FINE

@**************** Track 07 ****************************@

song286_7:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 56*song286_mvl/mxv
	.byte	W96
	.byte		N01   , Cn5 , v120
	.byte	W24
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte		N01   , Cn5 , v120
	.byte	W24
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N01
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W18
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte	PATT
	 .word	song286_7 + 0x10
	.byte		N03   , Cn5 , v120
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v056
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v052
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte	W96
	.byte	GOTO
	 .word	song286_7 + 0x10
	.byte	FINE

@**************** Track 08 ****************************@

song286_8:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song286_mvl/mxv
	.byte	W96
	.byte	W12
	.byte		N12   , Gn5 , v120
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	W12
	.byte		N12   , Gn5 , v120
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Gn5 , v108
	.byte	W12
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	PATT
	 .word	song286_8 + 0xB
	.byte	W84
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N24
	.byte	W48
	.byte	W96
	.byte	GOTO
	 .word	song286_8 + 0xB
	.byte	FINE

@******************************************************@
	.align	2

song286:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song286_pri	@ Priority
	.byte	song286_rev	@ Reverb.

	.word	song286_grp

	.word	song286_0
	.word	song286_1
	.word	song286_2
	.word	song286_3
	.word	song286_4
	.word	song286_5
	.word	song286_6
	.word	song286_7
	.word	song286_8

	.end
