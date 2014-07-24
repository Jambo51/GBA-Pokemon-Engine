@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song316_grp, group_51
	.equ	song316_pri, 0
	.equ	song316_rev, 178
	.equ	song316_mvl, 127
	.equ	song316_key, 0
	.equ	song316_tbs, 1
	.equ	song316_exg, 1
	.equ	song316_cmp, 1

	.section .rodata
	.global	song316
	.align	2

@**************** Track 00 ****************************@

song316_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 84
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 60*song316_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		VOL   , 45*song316_mvl/mxv
	.byte		N03   , Dn3 , v072
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		PAN   , c_v-62
	.byte	W09
	.byte		VOICE , 82
	.byte		VOL   , 53*song316_mvl/mxv
	.byte	W03
	.byte		N12   , An3 , v127
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		VOICE , 82
	.byte		PAN   , c_v-64
	.byte		N24   , Bn3 , v127
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N24
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N24   , Gn4 
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		N12
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		VOICE , 80
	.byte		PAN   , c_v-64
	.byte		N12   , Dn4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs4 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , An3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn4 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cn4 , v120
	.byte	W06
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        Dn3 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte	W12
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v-63
	.byte		N12   , Cn4 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fn4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 , v120
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W06
	.byte		N12   , Gn3 , v127
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W36
	.byte		PAN   , c_v+63
	.byte		N24
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N24
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	GOTO
	 .word	song316_0 + 0x26
	.byte	W96
	.byte	FINE

@**************** Track 01 ****************************@

song316_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song316_mvl/mxv
	.byte		N03   , Gn3 , v096
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		        Dn3 
	.byte	W09
	.byte		VOL   , 46*song316_mvl/mxv
	.byte	W03
	.byte		VOICE , 81
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Gn4 , v127
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Fn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W36
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N96   , Dn5 
	.byte	W24
	.byte		MOD   , 5
	.byte	W72
	.byte		N36
	.byte	W36
	.byte		MOD   , 0
	.byte		N24   , Fs5 , v064
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N12   , Dn5 , v127
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		VOL   , 11*song316_mvl/mxv
	.byte		N96   , Cn5 
	.byte	W15
	.byte		VOL   , 17*song316_mvl/mxv
	.byte	W09
	.byte		MOD   , 5
	.byte		VOL   , 22*song316_mvl/mxv
	.byte	W09
	.byte		        29*song316_mvl/mxv
	.byte	W06
	.byte		        38*song316_mvl/mxv
	.byte	W06
	.byte		        51*song316_mvl/mxv
	.byte	W03
	.byte		        68*song316_mvl/mxv
	.byte	W24
	.byte		        72*song316_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 60*song316_mvl/mxv
	.byte		N12   , Cn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N96   , Gn4 
	.byte	W12
	.byte	W24
	.byte		MOD   , 5
	.byte	W60
	.byte		        0
	.byte		N12
	.byte	W12
	.byte		        Gn3 
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N12   , Gn4 , v064
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte	W24
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N04   , Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn3 , v127
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	GOTO
	 .word	song316_1 + 0x21
	.byte	W96
	.byte	FINE

@**************** Track 02 ****************************@

song316_2:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 60*song316_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 , v127
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N03
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+33
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v-32
	.byte		VOL   , 33*song316_mvl/mxv
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N06   , Dn3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N03   , Dn2 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N06   , Dn3 , v127
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gn2 
	.byte	W36
	.byte		PAN   , c_v+32
	.byte		N36   , As2 
	.byte	W12
	.byte		MOD   , 9
	.byte	W03
	.byte		PAN   , c_v+16
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-16
	.byte	W09
	.byte		        c_v-32
	.byte		N12
	.byte	W12
	.byte		MOD   , 0
	.byte		N06   , Bn2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N06   , Cn3 
	.byte	W12
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Ds2 , v120
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Bn2 , v127
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Cn3 
	.byte	W36
	.byte		PAN   , c_v-32
	.byte		N36   , Gn2 
	.byte	W12
	.byte		MOD   , 9
	.byte	W03
	.byte		PAN   , c_v-13
	.byte	W06
	.byte		        c_v-1
	.byte	W03
	.byte		        c_v+12
	.byte	W06
	.byte		        c_v+32
	.byte	W06
	.byte		        c_v+32
	.byte		MOD   , 0
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Fs2 
	.byte	W24
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En2 
	.byte	W12
	.byte		        Cn3 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , En2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		VOL   , 55*song316_mvl/mxv
	.byte		BEND  , c_v+63
	.byte		N48   , En2 , v120
	.byte	W03
	.byte		BEND  , c_v+47
	.byte	W03
	.byte		        c_v+36
	.byte	W03
	.byte		        c_v+19
	.byte	W03
	.byte		MOD   , 9
	.byte		BEND  , c_v+3
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v-19
	.byte	W03
	.byte		        c_v-28
	.byte	W06
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-49
	.byte	W03
	.byte		        c_v-59
	.byte	W03
	.byte		        c_v-64
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		VOL   , 32*song316_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Cn3 , v127
	.byte	W12
	.byte		PAN   , c_v+4
	.byte		N12   , Bn2 
	.byte	W12
	.byte		PAN   , c_v-23
	.byte		N12   , As2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , As2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Gn2 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gn2 
	.byte	W24
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N06   , Dn3 
	.byte	W12
	.byte	GOTO
	 .word	song316_2 + 0x22
	.byte	W96
	.byte	FINE

@**************** Track 03 ****************************@

song316_3:
	.byte	KEYSH , 0
	.byte		VOICE , 38
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-16
	.byte		VOL   , 79*song316_mvl/mxv
	.byte	W60
	.byte		N12   , As1 , v127
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N36   , Gn1 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Dn1 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W36
	.byte		N24   , As1 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N06   , As1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N03   , Gn2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W36
	.byte		N24   , Ds1 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N12   , Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03   , Bn1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N03   , Bn1 
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N24   , Gn1 , v127
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N36   , Fn1 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Fs1 
	.byte	W24
	.byte	PEND
	.byte		N12   , Gn1 , v127
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N03   , Dn2 
	.byte	W12
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song316_3 + 0xAF
	.byte	PATT
	 .word	song316_3 + 0xC1
	.byte	GOTO
	 .word	song316_3 + 0x15
	.byte	W96
	.byte	FINE

@**************** Track 04 ****************************@

song316_4:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song316_mvl/mxv
	.byte		N03   , Gn3 , v080
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W48
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
	.byte	GOTO
	 .word	song316_4 + 0x10
	.byte	W96
	.byte	FINE

@**************** Track 05 ****************************@

song316_5:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		VOL   , 34*song316_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte	W60
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , Gn4 , v127
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N36   , Fn4 
	.byte	W36
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N36   , As4 
	.byte	W36
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N96   , Dn5 
	.byte	W96
	.byte		N36
	.byte	W36
	.byte		N24   , Fs5 , v064
	.byte	W24
	.byte		N12   , Dn5 , v127
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte	W48
	.byte		N48   , Cn5 
	.byte	W48
	.byte		N12   , Cn4 
	.byte	W36
	.byte		N24   , As4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		N96   , Gn4 
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte		        Gn3 
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N12   , Gn4 , v064
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W12
	.byte	W24
	.byte		        Gn5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		N04   , Dn5 
	.byte	W04
	.byte		        Cn5 
	.byte	W04
	.byte		        An4 
	.byte	W04
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn3 , v127
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte	GOTO
	 .word	song316_5 + 0x17
	.byte	W96
	.byte	FINE

@**************** Track 06 ****************************@

song316_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 78*song316_mvl/mxv
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOL   , 68*song316_mvl/mxv
	.byte		N06   , Cn1 , v127
	.byte		N36   , Cs2 
	.byte	W24
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N36   , An2 
	.byte	W24
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Bn1 , v127
	.byte		N36   , An2 
	.byte	W06
	.byte		N06   , An1 , v120
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N06   , Dn1 , v100
	.byte		N36   , Cs2 
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N36   , Cs2 
	.byte	W24
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte		N36   , An2 
	.byte	W24
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn2 , v127
	.byte		N24   , En2 , v120
	.byte	W06
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		        Gn1 , v124
	.byte	W06
	.byte		        Fn1 , v127
	.byte	W06
	.byte		        Dn1 , v100
	.byte		N12   , Cs2 , v080
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte		N36   , An2 
	.byte	W24
	.byte		N06   , Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W36
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Bn0 , v104
	.byte	W06
	.byte		        Bn0 , v072
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cn1 , v127
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v124
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v072
	.byte	W06
	.byte		        Dn1 , v100
	.byte		N36   , En2 , v120
	.byte	W36
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 , v100
	.byte		N06   , Ds1 , v120
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W24
	.byte	PEND
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Bn0 
	.byte	W06
	.byte	PATT
	 .word	song316_6 + 0xF9
	.byte	GOTO
	 .word	song316_6 + 0x1B
	.byte	W96
	.byte	FINE

@**************** Track 07 ****************************@

song316_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 47*song316_mvl/mxv
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v040
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v040
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v040
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W24
	.byte		        Cn5 , v048
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v040
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W24
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W24
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W18
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W18
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v040
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v076
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v076
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte	W96
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte	PEND
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song316_7 + 0xF0
	.byte	PATT
	 .word	song316_7 + 0x10D
	.byte	GOTO
	 .word	song316_7 + 0x2D
	.byte	W96
	.byte	FINE

@**************** Track 08 ****************************@

song316_8:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song316_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N12   , Gn5 , v100
	.byte	W24
	.byte		        Gn5 , v108
	.byte	W24
	.byte		        Gn5 , v120
	.byte	W12
	.byte	W96
	.byte	W36
	.byte		N12
	.byte	W48
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W72
	.byte		N12
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	GOTO
	 .word	song316_8 + 0x9
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

song316:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song316_pri	@ Priority
	.byte	song316_rev	@ Reverb.

	.word	song316_grp

	.word	song316_0
	.word	song316_1
	.word	song316_2
	.word	song316_3
	.word	song316_4
	.word	song316_5
	.word	song316_6
	.word	song316_7
	.word	song316_8

	.end
