@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song278_grp, group_14
	.equ	song278_pri, 0
	.equ	song278_rev, 178
	.equ	song278_mvl, 127
	.equ	song278_key, 0
	.equ	song278_tbs, 1
	.equ	song278_exg, 1
	.equ	song278_cmp, 1

	.section .rodata
	.global	song278
	.align	2

@**************** Track 00 ****************************@

song278_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 70
	.byte		VOICE , 60
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte		VOL   , 67*song278_mvl/mxv
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N19
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N05   , An3 
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        As3 
	.byte	W08
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		PAN   , c_v+0
	.byte	W48
	.byte	W48
	.byte		        c_v+32
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		        c_v+0
	.byte	W48
	.byte	W60
	.byte		        c_v+32
	.byte	W36
	.byte	W96
	.byte		        c_v+0
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		        c_v+32
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 60
	.byte		VOL   , 55*song278_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N72   , Dn3 , v112
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
	.byte		N48   , Fn3 
	.byte	W48
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N72   , En3 
	.byte	W72
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N48   , Gn3 
	.byte	W48
	.byte		N24   , Cn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		VOICE , 48
	.byte		PAN   , c_v+32
	.byte		N06   , Dn4 , v127
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Cs4 
	.byte	W16
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N16   , En3 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Dn3 
	.byte	W16
	.byte	GOTO
	 .word	song278_0 + 0x3D
	.byte	FINE

@**************** Track 01 ****************************@

song278_1:
	.byte	KEYSH , 0
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song278_mvl/mxv
	.byte		N03   , Gn3 , v127
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W24
	.byte		        Gn4 , v120
	.byte	W36
	.byte		        Gn4 , v127
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N18   , Gn4 , v120
	.byte	W24
	.byte		N05   , Fn4 , v127
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		VOICE , 87
	.byte		VOL   , 45*song278_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 88
	.byte		VOL   , 68*song278_mvl/mxv
	.byte	W24
	.byte	W03
	.byte		N01   , Cs4 , v127
	.byte	W01
	.byte		        Cn4 
	.byte	W02
	.byte		        Bn3 
	.byte	W01
	.byte		        As3 
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		        Gs3 
	.byte	W01
	.byte		        Gn3 
	.byte	W01
	.byte		        Fs3 
	.byte	W02
	.byte		N02   , Fn3 
	.byte	W02
	.byte		N01   , En3 
	.byte	W02
	.byte		        Ds3 
	.byte	W01
	.byte		N24   , Dn3 
	.byte	W28
	.byte		N01   , Cn5 
	.byte		N01   , Cs5 
	.byte	W01
	.byte		        Bn4 
	.byte	W02
	.byte		        As4 
	.byte	W01
	.byte		        Gs4 
	.byte		N01   , An4 
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte		        Fs4 
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte		        En4 
	.byte	W02
	.byte		        Ds4 
	.byte	W01
	.byte		N07   , Dn4 
	.byte	W08
	.byte		N01   , Cs4 
	.byte	W01
	.byte		        Cn4 
	.byte	W02
	.byte		        As3 
	.byte		N01   , Bn3 
	.byte	W01
	.byte	W01
	.byte		        An3 
	.byte	W02
	.byte		        Gn3 
	.byte		N01   , Gs3 
	.byte	W02
	.byte		        Fs3 
	.byte	W02
	.byte		N02   , Fn3 
	.byte	W02
	.byte		N01   , En3 
	.byte	W02
	.byte		        Ds3 
	.byte	W01
	.byte		N16   , Dn3 
	.byte	W84
	.byte	W36
	.byte	W03
	.byte		N01   , Cn5 
	.byte		N01   , Cs5 
	.byte	W01
	.byte		        Bn4 
	.byte	W02
	.byte		        As4 
	.byte	W01
	.byte		        Gs4 
	.byte		N01   , An4 
	.byte	W02
	.byte		        Gn4 
	.byte	W01
	.byte		        Fs4 
	.byte	W01
	.byte		        Fn4 
	.byte	W02
	.byte		        En4 
	.byte	W02
	.byte		        Ds4 
	.byte	W01
	.byte		N28   , Dn4 
	.byte	W30
	.byte		N01   , Cs4 
	.byte	W01
	.byte		        Cn4 
	.byte	W01
	.byte		        Bn3 
	.byte	W01
	.byte		        As3 
	.byte	W02
	.byte		        An3 
	.byte	W01
	.byte		        Gs3 
	.byte	W01
	.byte		        Gn3 
	.byte	W02
	.byte		        Fs3 
	.byte	W01
	.byte		N02   , Fn3 
	.byte	W03
	.byte		N01   , En3 
	.byte	W01
	.byte		        Ds3 
	.byte	W02
	.byte		N36   , Dn3 
	.byte	W92
	.byte	W02
	.byte	GOTO
	 .word	song278_1 + 0x36
	.byte	FINE

@**************** Track 02 ****************************@

song278_2:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		PAN   , c_v+16
	.byte		N06   , Gn1 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N14   , Gn2 
	.byte	W24
	.byte		N09
	.byte	W06
	.byte		VOL   , 56*song278_mvl/mxv
	.byte	W18
	.byte		        90*song278_mvl/mxv
	.byte	W12
	.byte		N02   , Dn2 
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N10   , Gn2 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N14
	.byte	W24
	.byte		N05   , Fn1 
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        Cn2 
	.byte	W08
	.byte		VOICE , 47
	.byte		N12   , Dn2 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W18
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		N03   , Gn1 , v120
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N12   , Gn1 , v127
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W06
	.byte		        Cn2 , v120
	.byte	W06
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N12   , Gn1 , v127
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte	PEND
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        Gn1 , v120
	.byte	W24
	.byte		N03   , Dn2 , v127
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N03   , Dn2 , v127
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , Cn2 
	.byte	W06
	.byte		        Cn2 , v120
	.byte	W06
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte	PATT
	 .word	song278_2 + 0x10A
	.byte		N12   , Gn2 , v127
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W24
	.byte		N03   , Fn2 
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		N12   , An2 , v127
	.byte	W12
	.byte		N03   , Fn2 
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		N12   , As2 , v127
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N03   , Fn2 
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		N12   , As2 , v127
	.byte	W12
	.byte		N03   , Fn2 
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		N12   , As2 , v127
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W24
	.byte		N03   , Fn2 
	.byte	W06
	.byte		        Fn2 , v120
	.byte	W06
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		N03   , Gn2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		N03   , Gn2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		N12   , Cn3 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		N03   , Gn2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn3 
	.byte	W96
	.byte	W48
	.byte		N16   , Cn3 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Cs3 
	.byte	W16
	.byte		N06   , Dn3 
	.byte	W96
	.byte	W48
	.byte		N16   , Cn2 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte	GOTO
	 .word	song278_2 + 0x35
	.byte	FINE

@**************** Track 03 ****************************@

song278_3:
	.byte	KEYSH , 0
	.byte		VOICE , 58
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N06   , Gn1 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N06
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N05   , Fn1 
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        An1 
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N08   , Gs1 
	.byte	W08
	.byte		N12   , Gn1 , v127
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
	.byte		        Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , Cn1 
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte	PATT
	 .word	song278_3 + 0x2E
	.byte		N12   , Fn1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , Cn1 
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W18
	.byte		N06   , Dn1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		N03   , Gn1 
	.byte	W06
	.byte		        Gn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W24
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		N03   , Cn1 
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N12   , Fn1 , v127
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        An1 , v120
	.byte	W06
	.byte		N12   , Bn1 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N06   , Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		N03   , Gn1 
	.byte	W06
	.byte		        Gn1 , v120
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N03   , Dn1 , v127
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		N12   , Gn1 , v127
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W24
	.byte		N03   , Fn1 
	.byte	W06
	.byte		        Fn1 , v120
	.byte	W06
	.byte		N12   , An1 , v127
	.byte	W12
	.byte		N03   , Fn1 
	.byte	W06
	.byte		        Fn1 , v120
	.byte	W06
	.byte		N12   , As1 , v127
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte		        As1 
	.byte	W24
	.byte		        Fn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		        Gn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		N06   , As2 , v056
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		VOICE , 58
	.byte		PAN   , c_v-32
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Cs2 
	.byte	W16
	.byte		N06   , Dn2 
	.byte	W03
	.byte		VOICE , 48
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N06   , Dn3 , v056
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		VOICE , 58
	.byte		PAN   , c_v-32
	.byte		N16   , Cn2 , v127
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Bn1 
	.byte	W16
	.byte	GOTO
	 .word	song278_3 + 0x2E
	.byte	FINE

@**************** Track 04 ****************************@

song278_4:
	.byte	KEYSH , 0
	.byte		VOICE , 56
	.byte		VOL   , 70*song278_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte	W24
	.byte	W96
	.byte	W96
	.byte		VOICE , 60
	.byte		PAN   , c_v+32
	.byte		N36   , Bn2 , v120
	.byte	W36
	.byte		N03   , Dn3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W24
	.byte		MOD   , 5
	.byte		VOL   , 63*song278_mvl/mxv
	.byte	W03
	.byte		        55*song278_mvl/mxv
	.byte	W03
	.byte		        51*song278_mvl/mxv
	.byte	W03
	.byte		        43*song278_mvl/mxv
	.byte	W03
	.byte		        39*song278_mvl/mxv
	.byte	W03
	.byte		        35*song278_mvl/mxv
	.byte	W03
	.byte		        29*song278_mvl/mxv
	.byte	W03
	.byte		        25*song278_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 70*song278_mvl/mxv
	.byte	W44
	.byte	W01
	.byte		N03   , Cs4 , v084
	.byte	W03
	.byte		VOICE , 56
	.byte		N36   , Cn4 , v120
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		N48   , Bn3 
	.byte	W24
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 62*song278_mvl/mxv
	.byte	W03
	.byte		        55*song278_mvl/mxv
	.byte	W03
	.byte		        48*song278_mvl/mxv
	.byte	W03
	.byte		        43*song278_mvl/mxv
	.byte	W03
	.byte		        35*song278_mvl/mxv
	.byte	W03
	.byte		        26*song278_mvl/mxv
	.byte	W03
	.byte		        19*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 60
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		VOL   , 70*song278_mvl/mxv
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N06   , An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N48   , Gn2 
	.byte	W24
	.byte		VOL   , 62*song278_mvl/mxv
	.byte		MOD   , 4
	.byte	W03
	.byte		VOL   , 55*song278_mvl/mxv
	.byte	W03
	.byte		        48*song278_mvl/mxv
	.byte	W03
	.byte		        43*song278_mvl/mxv
	.byte	W03
	.byte		        35*song278_mvl/mxv
	.byte	W03
	.byte		        26*song278_mvl/mxv
	.byte	W03
	.byte		        19*song278_mvl/mxv
	.byte	W03
	.byte		        11*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 70*song278_mvl/mxv
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Bn2 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		VOICE , 48
	.byte		N36   , Bn2 
	.byte	W36
	.byte		N03   , Dn3 
	.byte	W12
	.byte		N12   , Gn3 
	.byte	W12
	.byte		VOICE , 56
	.byte		PAN   , c_v+32
	.byte		N03   , Dn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W36
	.byte		VOICE , 14
	.byte		PAN   , c_v-16
	.byte		N16   , Cn5 , v076
	.byte	W16
	.byte		        Bn4 , v068
	.byte	W16
	.byte		        Cn5 
	.byte	W16
	.byte		N48   , Dn5 
	.byte	W48
	.byte		VOICE , 60
	.byte		PAN   , c_v-32
	.byte		N16   , Dn3 , v064
	.byte	W16
	.byte		        Cn3 
	.byte	W16
	.byte		        An2 
	.byte	W16
	.byte		N03   , Bn2 
	.byte	W12
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N72   , Bn2 
	.byte	W36
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 62*song278_mvl/mxv
	.byte	W03
	.byte		        55*song278_mvl/mxv
	.byte	W03
	.byte		        48*song278_mvl/mxv
	.byte	W03
	.byte		        43*song278_mvl/mxv
	.byte	W03
	.byte		        35*song278_mvl/mxv
	.byte	W03
	.byte		        26*song278_mvl/mxv
	.byte	W03
	.byte		        19*song278_mvl/mxv
	.byte	W03
	.byte		        12*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 56
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		VOL   , 70*song278_mvl/mxv
	.byte		N06   , Gn4 , v120
	.byte	W12
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N03   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N06   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W24
	.byte		        Cn4 
	.byte	W09
	.byte		N03   , Dn4 , v080
	.byte	W03
	.byte		N36   , Cn4 , v120
	.byte	W36
	.byte		N06   , An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N48   , Bn3 
	.byte	W24
	.byte		VOL   , 62*song278_mvl/mxv
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 55*song278_mvl/mxv
	.byte	W03
	.byte		        48*song278_mvl/mxv
	.byte	W03
	.byte		        43*song278_mvl/mxv
	.byte	W03
	.byte		        35*song278_mvl/mxv
	.byte	W03
	.byte		        26*song278_mvl/mxv
	.byte	W03
	.byte		        19*song278_mvl/mxv
	.byte	W03
	.byte		        13*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 60
	.byte		PAN   , c_v-32
	.byte		VOL   , 70*song278_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , An2 , v064
	.byte	W36
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		N48   , Bn2 
	.byte	W24
	.byte		VOL   , 62*song278_mvl/mxv
	.byte		MOD   , 4
	.byte	W03
	.byte		VOL   , 55*song278_mvl/mxv
	.byte	W03
	.byte		        48*song278_mvl/mxv
	.byte	W03
	.byte		        43*song278_mvl/mxv
	.byte	W03
	.byte		        35*song278_mvl/mxv
	.byte	W03
	.byte		        26*song278_mvl/mxv
	.byte	W03
	.byte		        19*song278_mvl/mxv
	.byte	W03
	.byte		        70*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 14
	.byte		PAN   , c_v-16
	.byte		MOD   , 0
	.byte		N16   , Fn5 , v060
	.byte	W16
	.byte		        En5 
	.byte	W16
	.byte		        Fn5 
	.byte	W16
	.byte		N36   , Gn5 , v072
	.byte	W06
	.byte		VOL   , 64*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        49*song278_mvl/mxv
	.byte	W03
	.byte		        44*song278_mvl/mxv
	.byte	W03
	.byte		        39*song278_mvl/mxv
	.byte	W03
	.byte		        33*song278_mvl/mxv
	.byte	W03
	.byte		        29*song278_mvl/mxv
	.byte	W03
	.byte		        22*song278_mvl/mxv
	.byte	W03
	.byte		        19*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 56
	.byte		PAN   , c_v+32
	.byte		VOL   , 70*song278_mvl/mxv
	.byte		N03   , Bn3 , v092
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N12   , Fs4 , v084
	.byte	W12
	.byte		N24   , Fn4 , v088
	.byte	W48
	.byte		VOICE , 60
	.byte		PAN   , c_v-32
	.byte		N16   , Cn4 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N32   , Bn3 
	.byte	W32
	.byte	W01
	.byte		N03   , As3 , v072
	.byte	W03
	.byte		N21   , An3 , v088
	.byte	W21
	.byte		N03   , Gs3 , v068
	.byte	W03
	.byte		N24   , Gn3 , v084
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 14
	.byte	W18
	.byte		N24   , Dn5 , v052
	.byte	W18
	.byte		PAN   , c_v+32
	.byte	W06
	.byte		N24
	.byte	W18
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N24
	.byte	W18
	.byte		PAN   , c_v+31
	.byte	W06
	.byte		N24
	.byte	W06
	.byte	W15
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		N24
	.byte	W18
	.byte		PAN   , c_v+32
	.byte	W06
	.byte		N06
	.byte	W54
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N24
	.byte	W18
	.byte		PAN   , c_v+32
	.byte	W06
	.byte		N24
	.byte	W18
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N24
	.byte	W18
	.byte		PAN   , c_v+32
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N18
	.byte	W15
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		N24
	.byte	W18
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		N06
	.byte	W54
	.byte	GOTO
	 .word	song278_4 + 0xF
	.byte	FINE

@**************** Track 05 ****************************@

song278_5:
	.byte	KEYSH , 0
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		N03   , Gn3 , v127
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W24
	.byte		        Gn4 , v120
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte	W12
	.byte		N03   , Gn4 , v127
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N18   , Gn4 , v120
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N05   , Fn4 , v127
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		N36   , Gn3 , v108
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W24
	.byte		MOD   , 5
	.byte		VOL   , 80*song278_mvl/mxv
	.byte	W03
	.byte		        75*song278_mvl/mxv
	.byte	W03
	.byte		        70*song278_mvl/mxv
	.byte	W03
	.byte		        61*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        46*song278_mvl/mxv
	.byte	W03
	.byte		        42*song278_mvl/mxv
	.byte	W03
	.byte		        34*song278_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		N03   , Cn3 , v112
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W09
	.byte		        Fs4 , v080
	.byte	W03
	.byte		VOICE , 56
	.byte		N36   , Fn4 , v127
	.byte	W36
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W24
	.byte		MOD   , 7
	.byte		VOL   , 79*song278_mvl/mxv
	.byte	W03
	.byte		        75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		N36   , Fn3 , v108
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 7
	.byte		VOL   , 79*song278_mvl/mxv
	.byte	W03
	.byte		        75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		VOL   , 90*song278_mvl/mxv
	.byte	W12
	.byte		N03   , Dn3 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		VOICE , 48
	.byte		N36   , Gn3 , v127
	.byte	W24
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W24
	.byte		VOL   , 79*song278_mvl/mxv
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		        90*song278_mvl/mxv
	.byte		MOD   , 0
	.byte	W44
	.byte	W01
	.byte		N03   , Cs4 , v080
	.byte	W03
	.byte		VOICE , 48
	.byte		N16   , Cn4 , v127
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		N48   , Dn4 
	.byte	W24
	.byte		VOL   , 79*song278_mvl/mxv
	.byte		MOD   , 4
	.byte	W03
	.byte		VOL   , 75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 60
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		MOD   , 0
	.byte		N16   , Fn3 , v112
	.byte	W16
	.byte		        En3 , v108
	.byte	W16
	.byte		        Cn3 
	.byte	W16
	.byte		N03   , Dn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N72   , Dn3 
	.byte	W36
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 79*song278_mvl/mxv
	.byte	W03
	.byte		        75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		N36   , Gn3 , v127
	.byte	W36
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W24
	.byte		VOL   , 79*song278_mvl/mxv
	.byte		MOD   , 4
	.byte	W03
	.byte		VOL   , 75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 60
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		MOD   , 0
	.byte	W44
	.byte	W01
	.byte		N03   , Fs4 , v080
	.byte	W03
	.byte		VOICE , 56
	.byte		N36   , Fn4 , v127
	.byte	W36
	.byte		N06   , En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W24
	.byte		VOL   , 79*song278_mvl/mxv
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 60
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 5
	.byte		VOL   , 79*song278_mvl/mxv
	.byte	W03
	.byte		        75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		N16   , Fn4 , v056
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		VOICE , 56
	.byte		N12   , Gn3 , v127
	.byte	W12
	.byte		N03   , Fs3 , v120
	.byte	W24
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Bn3 , v120
	.byte	W06
	.byte		N48   , Dn4 , v127
	.byte	W24
	.byte		VOL   , 79*song278_mvl/mxv
	.byte		MOD   , 5
	.byte	W03
	.byte		VOL   , 75*song278_mvl/mxv
	.byte	W03
	.byte		        68*song278_mvl/mxv
	.byte	W03
	.byte		        63*song278_mvl/mxv
	.byte	W03
	.byte		        58*song278_mvl/mxv
	.byte	W03
	.byte		        53*song278_mvl/mxv
	.byte	W03
	.byte		        47*song278_mvl/mxv
	.byte	W03
	.byte		        41*song278_mvl/mxv
	.byte	W03
	.byte		VOICE , 60
	.byte		PAN   , c_v-32
	.byte		VOL   , 90*song278_mvl/mxv
	.byte		MOD   , 0
	.byte		N03   , Fn3 , v120
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N24   , An3 
	.byte	W24
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		N16   , Fn4 , v104
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		N36   , Gn4 
	.byte	W36
	.byte		N12   , As4 
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W24
	.byte		VOL   , 85*song278_mvl/mxv
	.byte	W06
	.byte		        80*song278_mvl/mxv
	.byte	W06
	.byte		        72*song278_mvl/mxv
	.byte	W06
	.byte		        64*song278_mvl/mxv
	.byte	W06
	.byte		        90*song278_mvl/mxv
	.byte		N48
	.byte	W06
	.byte		VOL   , 82*song278_mvl/mxv
	.byte	W06
	.byte		        72*song278_mvl/mxv
	.byte	W06
	.byte		        66*song278_mvl/mxv
	.byte	W06
	.byte		        79*song278_mvl/mxv
	.byte	W06
	.byte		        90*song278_mvl/mxv
	.byte	W18
	.byte		        82*song278_mvl/mxv
	.byte		N48   , An4 
	.byte	W06
	.byte		VOL   , 75*song278_mvl/mxv
	.byte	W06
	.byte		        65*song278_mvl/mxv
	.byte	W06
	.byte		        76*song278_mvl/mxv
	.byte	W06
	.byte		        82*song278_mvl/mxv
	.byte	W06
	.byte		        90*song278_mvl/mxv
	.byte	W18
	.byte		N36   , As4 
	.byte	W36
	.byte		N06   , Fn4 
	.byte	W12
	.byte		N48
	.byte	W48
	.byte		VOICE , 60
	.byte	W48
	.byte		        Cn2 
	.byte		N24   , As4 , v127
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N36   , Cn5 
	.byte	W36
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N48
	.byte	W48
	.byte		VOICE , 60
	.byte	W48
	.byte		        Gs2 
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		N06   , Dn5 , v127
	.byte	W18
	.byte		        Dn4 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N16   , Cn5 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Cs5 
	.byte	W16
	.byte	PATT
	 .word	song278_5 + 0x268
	.byte		N06   , Dn4 , v127
	.byte	W18
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N16   , Cn5 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Bn4 
	.byte	W16
	.byte	GOTO
	 .word	song278_5 + 0x40
	.byte	FINE

@**************** Track 06 ****************************@

song278_6:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		VOL   , 45*song278_mvl/mxv
	.byte		PAN   , c_v-62
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		N03   , En3 , v100
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W24
	.byte		N06
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N19
	.byte	W24
	.byte		N05   , Cn4 
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        Cs4 , v096
	.byte	W08
	.byte		VOL   , 56*song278_mvl/mxv
	.byte		N36   , Dn3 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N03   , Bn2 
	.byte	W12
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W36
	.byte		N21   , Fn3 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Cn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N36   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N03   , Fs3 , v080
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		N16   , Cn3 , v120
	.byte	W16
	.byte		        Bn2 
	.byte	W16
	.byte		        Cn3 
	.byte	W16
	.byte		N36   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N03   , Bn2 
	.byte	W12
	.byte		N09   , Dn3 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   , Cn3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N16   , En3 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Cn3 
	.byte	W16
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte	W12
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N06   , An3 
	.byte	W06
	.byte		N60   , Bn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N36
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N03   , Bn2 
	.byte	W12
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N36   , Cn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N36   , Fn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N36   , Cn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N36   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		N12   , Bn2 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N16   , Cn3 
	.byte	W16
	.byte		        Bn2 
	.byte	W16
	.byte		        Cn3 
	.byte	W16
	.byte		N36   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N03   , Bn2 
	.byte	W12
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 3
	.byte	W24
	.byte		        0
	.byte		N36   , Cn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W09
	.byte		        0
	.byte	W03
	.byte		N36
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N24   , En3 
	.byte	W24
	.byte		N36   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		MOD   , 4
	.byte		N36
	.byte	W36
	.byte		MOD   , 0
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N36   , As2 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N09   , Dn3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N24   , En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N48   , En4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		VOL   , 34*song278_mvl/mxv
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Dn2 
	.byte	W54
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W54
	.byte	GOTO
	 .word	song278_6 + 0x32
	.byte	FINE

@**************** Track 07 ****************************@

song278_7:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		PAN   , c_v+63
	.byte		VOL   , 45*song278_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 , v096
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W04
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 , v108
	.byte	W24
	.byte		N03
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N18
	.byte	W24
	.byte		N05   , Fn4 
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		N36   , Bn3 , v120
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N03   , Gn3 
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Bn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		        Fn3 
	.byte	W36
	.byte		N03   , Cn4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , An3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N36   , Bn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N03   , As3 , v080
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		N16   , Gn3 , v120
	.byte	W16
	.byte		        Dn3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		N36   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N03   , Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N36   , An3 
	.byte	W36
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		N48   , Gn2 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N36   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N96   , Gn3 
	.byte	W48
	.byte		MOD   , 4
	.byte	W48
	.byte		        0
	.byte		N36
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N03   , Dn3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		N06   , En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		N48   , Dn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N36   , Bn3 
	.byte	W24
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N16   , Fn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Fn3 
	.byte	W16
	.byte		N36   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N16
	.byte	W16
	.byte		N20   , Fn3 
	.byte	W20
	.byte		N12   , An3 
	.byte	W12
	.byte		N16   , Cn4 
	.byte	W16
	.byte		N17   , Bn3 
	.byte	W17
	.byte		N15   , Cn4 
	.byte	W15
	.byte		N36   , Dn4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N36   , An3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N36   , Dn4 
	.byte	W09
	.byte		MOD   , 4
	.byte	W24
	.byte	W03
	.byte		        0
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W24
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N06   , As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N36   , En4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        En3 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , En4 
	.byte	W24
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		VOL   , 34*song278_mvl/mxv
	.byte		N06   , Bn2 , v056
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Fs2 
	.byte	W54
	.byte		        Fn3 , v120
	.byte	W06
	.byte		        Dn3 , v056
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Dn3 
	.byte	W54
	.byte	GOTO
	 .word	song278_7 + 0x38
	.byte	FINE

@**************** Track 08 ****************************@

song278_8:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 85*song278_mvl/mxv
	.byte	W12
	.byte		N03   , En1 , v127
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , En1 , v127
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte		N05
	.byte	W08
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte		N12   , En1 , v127
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte		N12   , En1 , v127
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte		N12   , En1 , v127
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte		N12   , En1 , v127
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte		N12
	.byte	W12
	.byte		        En1 , v068
	.byte	W24
	.byte		        En1 , v120
	.byte	W24
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W24
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte	PATT
	 .word	song278_8 + 0x33
	.byte	PATT
	 .word	song278_8 + 0x45
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte	PATT
	 .word	song278_8 + 0x45
	.byte	PATT
	 .word	song278_8 + 0x6E
	.byte	PATT
	 .word	song278_8 + 0x33
	.byte	PATT
	 .word	song278_8 + 0x33
	.byte	PATT
	 .word	song278_8 + 0x45
	.byte	PATT
	 .word	song278_8 + 0x11
	.byte		N12   , En1 , v127
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N16
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W24
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N16
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		N16
	.byte	W16
	.byte	GOTO
	 .word	song278_8 + 0x2E
	.byte	FINE

@**************** Track 09 ****************************@

song278_9:
	.byte	KEYSH , 0
	.byte		VOICE , 125
	.byte		PAN   , c_v+0
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 34*song278_mvl/mxv
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		BEND  , c_v-64
	.byte		N54   , Cn3 , v120
	.byte	W03
	.byte		BEND  , c_v-58
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte		        c_v-45
	.byte	W03
	.byte		        c_v-36
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+7
	.byte	W03
	.byte		        c_v+14
	.byte	W03
	.byte		        c_v+23
	.byte	W03
	.byte		        c_v+33
	.byte	W03
	.byte		        c_v+47
	.byte	W03
	.byte		        c_v+53
	.byte	W03
	.byte		        c_v+63
	.byte	W03
	.byte	W96
	.byte		        c_v-64
	.byte		TIE
	.byte	W03
	.byte		BEND  , c_v-59
	.byte	W03
	.byte		        c_v-56
	.byte	W03
	.byte		        c_v-51
	.byte	W03
	.byte		        c_v-46
	.byte	W03
	.byte		        c_v-43
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-36
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v-28
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-7
	.byte	W03
	.byte		        c_v-4
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+5
	.byte	W03
	.byte		        c_v+9
	.byte	W03
	.byte		        c_v+12
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+20
	.byte	W03
	.byte		        c_v+24
	.byte	W03
	.byte		        c_v+28
	.byte	W03
	.byte		        c_v+31
	.byte	W03
	.byte		        c_v+35
	.byte	W03
	.byte		        c_v+38
	.byte	W03
	.byte		        c_v+42
	.byte	W03
	.byte		        c_v+46
	.byte	W03
	.byte		        c_v+50
	.byte	W03
	.byte		        c_v+53
	.byte	W03
	.byte		        c_v+57
	.byte	W03
	.byte		        c_v+63
	.byte	W06
	.byte		EOT
	.byte	W90
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	GOTO
	 .word	song278_9 + 0xF
	.byte	FINE

@******************************************************@
	.align	2

song278:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song278_pri	@ Priority
	.byte	song278_rev	@ Reverb.

	.word	song278_grp

	.word	song278_0
	.word	song278_1
	.word	song278_2
	.word	song278_3
	.word	song278_4
	.word	song278_5
	.word	song278_6
	.word	song278_7
	.word	song278_8
	.word	song278_9

	.end
