@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song315_grp, group_51
	.equ	song315_pri, 0
	.equ	song315_rev, 178
	.equ	song315_mvl, 127
	.equ	song315_key, 0
	.equ	song315_tbs, 1
	.equ	song315_exg, 1
	.equ	song315_cmp, 1

	.text
	.global	song315
	.align	2

@**************** Track 00 ****************************@

song315_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 84
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 53*song315_mvl/mxv
	.byte		N06   , Dn4 , v088
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N06   , An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		N36   , Fn3 
	.byte	W36
	.byte		VOL   , 50*song315_mvl/mxv
	.byte		N03   , Dn3 
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		PAN   , c_v-62
	.byte	W09
	.byte		VOICE , 82
	.byte		VOL   , 53*song315_mvl/mxv
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
	 .word	song315_0 + 0x3E
	.byte	FINE

@**************** Track 01 ****************************@

song315_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 77*song315_mvl/mxv
	.byte		N06   , Bn4 , v108
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N03   , Gn3 
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		        Dn3 
	.byte	W09
	.byte		VOL   , 46*song315_mvl/mxv
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
	.byte		VOL   , 11*song315_mvl/mxv
	.byte		N96   , Cn5 
	.byte	W15
	.byte		VOL   , 17*song315_mvl/mxv
	.byte	W09
	.byte		MOD   , 5
	.byte		VOL   , 22*song315_mvl/mxv
	.byte	W09
	.byte		        29*song315_mvl/mxv
	.byte	W06
	.byte		        38*song315_mvl/mxv
	.byte	W06
	.byte		        51*song315_mvl/mxv
	.byte	W03
	.byte		        68*song315_mvl/mxv
	.byte	W24
	.byte		        72*song315_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 60*song315_mvl/mxv
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
	 .word	song315_1 + 0x39
	.byte	FINE

@**************** Track 02 ****************************@

song315_2:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 45*song315_mvl/mxv
	.byte		N12   , Dn4 , v096
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Cs4 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Cn4 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+0
	.byte		N03   , Gn3 
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
	.byte		VOL   , 33*song315_mvl/mxv
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
	.byte		VOL   , 55*song315_mvl/mxv
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
	.byte		VOL   , 32*song315_mvl/mxv
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
	 .word	song315_2 + 0x36
	.byte	FINE

@**************** Track 03 ****************************@

song315_3:
	.byte	KEYSH , 0
	.byte		VOICE , 38
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-16
	.byte		VOL   , 79*song315_mvl/mxv
	.byte	W96
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
	 .word	song315_3 + 0xB0
	.byte	PATT
	 .word	song315_3 + 0xC2
	.byte	GOTO
	 .word	song315_3 + 0x16
	.byte	FINE

@**************** Track 04 ****************************@

song315_4:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song315_mvl/mxv
	.byte		N06   , Bn4 , v080
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N03   , Gn3 
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
	 .word	song315_4 + 0x28
	.byte	FINE

@**************** Track 05 ****************************@

song315_5:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		VOL   , 34*song315_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte	W96
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
	 .word	song315_5 + 0x18
	.byte	FINE

@**************** Track 06 ****************************@

song315_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song315_mvl/mxv
	.byte	W96
	.byte		        78*song315_mvl/mxv
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
	.byte		VOL   , 68*song315_mvl/mxv
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
	 .word	song315_6 + 0xFB
	.byte	GOTO
	 .word	song315_6 + 0x1D
	.byte	FINE

@**************** Track 07 ****************************@

song315_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		PAN   , c_v+0
	.byte		VOL   , 47*song315_mvl/mxv
	.byte	W48
	.byte		N03   , Cn5 , v120
	.byte	W18
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		N03
	.byte	W18
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
	 .word	song315_7 + 0xFC
	.byte	PATT
	 .word	song315_7 + 0x119
	.byte	GOTO
	 .word	song315_7 + 0x39
	.byte	FINE

@**************** Track 08 ****************************@

song315_8:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song315_mvl/mxv
	.byte	W84
	.byte		N12   , Gn5 , v120
	.byte	W12
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
	 .word	song315_8 + 0xE
	.byte	FINE

@******************************************************@
	.align	2

song315:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song315_pri	@ Priority
	.byte	song315_rev	@ Reverb.

	.word	song315_grp

	.word	song315_0
	.word	song315_1
	.word	song315_2
	.word	song315_3
	.word	song315_4
	.word	song315_5
	.word	song315_6
	.word	song315_7
	.word	song315_8

	.end
