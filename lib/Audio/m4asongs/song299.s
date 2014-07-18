@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song299_grp, group_35
	.equ	song299_pri, 0
	.equ	song299_rev, 178
	.equ	song299_mvl, 127
	.equ	song299_key, 0
	.equ	song299_tbs, 1
	.equ	song299_exg, 1
	.equ	song299_cmp, 1

	.text
	.global	song299
	.align	2

@**************** Track 00 ****************************@

song299_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 86
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song299_mvl/mxv
	.byte		N06   , Gs3 , v096
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		VOL   , 69*song299_mvl/mxv
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		VOL   , 45*song299_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N42   , Fs3 , v127
	.byte	W18
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N03   , An3 
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		BEND  , c_v+0
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N03   , An3 
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N03   , As3 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		MOD   , 5
	.byte		N24   , Fn3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N03   , Fs3 , v127
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte	PEND
	.byte		        0
	.byte		N03   , An3 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte	PATT
	 .word	song299_0 + 0xA7
	.byte		MOD   , 0
	.byte		N03   , An3 , v127
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N03   , As3 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Fs3 , v127
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Cs4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Fn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		N24   , En3 , v127
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		        0
	.byte		N24   , Gs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte	PEND
	.byte		        0
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N18   , Gs3 
	.byte	W18
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		N03   , Bn3 , v120
	.byte	W03
	.byte		        Cn4 
	.byte	W03
	.byte		N06   , Cs4 , v127
	.byte	W12
	.byte		        Cn4 
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		VOL   , 45*song299_mvl/mxv
	.byte		N36   , Cs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte		N36   , En3 
	.byte	W09
	.byte		MOD   , 4
	.byte	W24
	.byte		        0
	.byte	W03
	.byte		N24   , Gs3 
	.byte	W24
	.byte	PATT
	 .word	song299_0 + 0xF4
	.byte	PATT
	 .word	song299_0 + 0x113
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v127
	.byte	W24
	.byte		N72   , Gs3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W60
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N72   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W60
	.byte		        0
	.byte		BEND  , c_v+2
	.byte		N15   , Fs3 
	.byte	W18
	.byte		N15
	.byte	W18
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03
	.byte	W06
	.byte		N42
	.byte	W18
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N03
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En3 
	.byte	W24
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En3 
	.byte	W24
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N36
	.byte	W42
	.byte		BEND  , c_v+1
	.byte		N12
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N06   , Cs4 
	.byte	W06
	.byte		N18   , Bn3 
	.byte	W06
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W06
	.byte		N18   , En3 
	.byte	W18
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Gn3 
	.byte	W12
	.byte		N06   , Dn4 
	.byte	W06
	.byte		N18   , Cs4 
	.byte	W06
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N18   , Dn4 
	.byte	W06
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W06
	.byte	W12
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W18
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte	W18
	.byte		PAN   , c_v+0
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N96   , Ds4 
	.byte	W09
	.byte		MOD   , 5
	.byte	W84
	.byte	W03
	.byte		        0
	.byte		N96   , Cn3 
	.byte	W09
	.byte		MOD   , 5
	.byte	W84
	.byte	W03
	.byte		        0
	.byte		N90   , Bn3 
	.byte	W09
	.byte		MOD   , 5
	.byte	W80
	.byte	W01
	.byte		        0
	.byte		N06   , As3 , v120
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , An3 , v127
	.byte	W24
	.byte		N66   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W54
	.byte		N06   , Cn4 , v120
	.byte	W06
	.byte		MOD   , 0
	.byte		N96   , Bn3 , v127
	.byte	W12
	.byte		MOD   , 4
	.byte	W84
	.byte		        0
	.byte		N84   , Fs3 
	.byte	W15
	.byte		MOD   , 4
	.byte	W68
	.byte	W01
	.byte		        0
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N96   , Cn4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W84
	.byte		        0
	.byte		N48   , Gn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W36
	.byte		        0
	.byte		N36   , Cn4 
	.byte	W36
	.byte		N06   , Cs4 , v120
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N24   , Ds4 , v127
	.byte	W24
	.byte		N72   , Fs4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W60
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N72   , Ds4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W60
	.byte		        0
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N03   , Cn4 , v120
	.byte	W03
	.byte		        Bn3 
	.byte	W03
	.byte		N12   , An3 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N03   , Bn3 
	.byte	W03
	.byte		        Cs4 , v120
	.byte	W03
	.byte		N06   , Bn3 
	.byte	W06
	.byte		N12   , En4 , v127
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PATT
	 .word	song299_0 + 0xF4
	.byte	PATT
	 .word	song299_0 + 0x113
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v127
	.byte	W24
	.byte		N72   , Gs3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W60
	.byte		        0
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte		N48   , Gs3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte	PATT
	 .word	song299_0 + 0xF4
	.byte	PATT
	 .word	song299_0 + 0x113
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v127
	.byte	W24
	.byte		N72   , Gs3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W60
	.byte		        0
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W36
	.byte		        0
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W36
	.byte		        0
	.byte		N96   , Cs4 
	.byte	W24
	.byte		MOD   , 5
	.byte	W72
	.byte		        0
	.byte		N96   , Fs4 
	.byte	W24
	.byte		MOD   , 5
	.byte	W72
	.byte	GOTO
	 .word	song299_0 + 0xF4
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 01 ****************************@

song299_1:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-62
	.byte		VOL   , 45*song299_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N24   , Fs2 , v088
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Gn2 , v092
	.byte	W24
	.byte		PAN   , c_v-62
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        An2 , v104
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , En3 
	.byte	W24
	.byte		        As2 , v120
	.byte	W24
	.byte		PAN   , c_v-62
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		N06
	.byte	W42
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W42
	.byte		PAN   , c_v-62
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W42
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N24   , Fn2 
	.byte	W24
	.byte		PAN   , c_v-62
	.byte		N06   , Fs2 , v120
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W18
	.byte		PAN   , c_v+63
	.byte		N24   , Cs3 , v120
	.byte	W24
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W18
	.byte		PAN   , c_v-62
	.byte		N24   , Dn3 , v120
	.byte	W24
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W18
	.byte		PAN   , c_v+63
	.byte		N24   , En3 , v120
	.byte	W24
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fs2 , v127
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N24   , Dn3 , v120
	.byte	W24
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		PAN   , c_v+63
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		PAN   , c_v-62
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		PAN   , c_v+63
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , En3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		N24   , Cs3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		PAN   , c_v+63
	.byte		N24   , Dn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		PAN   , c_v-64
	.byte		N24   , En3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		        Fs1 
	.byte	W18
	.byte		N24   , Gs2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W18
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		N24   , Fs2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W18
	.byte		N24   , Gs2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W18
	.byte		N24   , Gs2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W18
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		N24   , Fs2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W18
	.byte		N24   , Gs2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N06   , Cs3 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song299_1 + 0x1BC
	.byte		N06   , Fs2 , v127
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N36   , Cs2 
	.byte	W36
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N36   , Cs2 
	.byte	W36
	.byte		PAN   , c_v-64
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 , v120
	.byte	W06
	.byte		PAN   , c_v+62
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Ds3 , v120
	.byte	W06
	.byte		N12   , Gs2 , v127
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Gs2 
	.byte	W18
	.byte		N06   , Ds3 
	.byte	W06
	.byte		N12   , Fs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+62
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W06
	.byte		N03   , Fs3 , v120
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		N12   , Ds3 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , As2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , Fn3 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N24   , En3 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , Cs3 
	.byte	W24
	.byte	GOTO
	 .word	song299_1 + 0xF7
	.byte	FINE

@**************** Track 02 ****************************@

song299_2:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte		VOL   , 70*song299_mvl/mxv
	.byte		N24   , Fs2 , v096
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		N24   , Fs3 , v064
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		        0
	.byte		N24   , Gn2 , v108
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		N24   , Fn3 , v080
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		        0
	.byte		N24   , An2 , v116
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		N24   , En3 , v096
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , As2 , v127
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		N24   , Cs3 , v120
	.byte	W06
	.byte		MOD   , 10
	.byte	W18
	.byte		VOL   , 70*song299_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Cs2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 55*song299_mvl/mxv
	.byte	W12
	.byte		        45*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v-32
	.byte		VOL   , 70*song299_mvl/mxv
	.byte		N48   , Dn2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 55*song299_mvl/mxv
	.byte	W12
	.byte		        45*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v+32
	.byte		VOL   , 70*song299_mvl/mxv
	.byte		N48   , En2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 55*song299_mvl/mxv
	.byte	W12
	.byte		        45*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v-32
	.byte		VOL   , 70*song299_mvl/mxv
	.byte		N48   , Dn2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 55*song299_mvl/mxv
	.byte	W12
	.byte		        45*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v+0
	.byte	W96
	.byte		VOICE , 31
	.byte	W24
	.byte		N24   , Fs4 , v052
	.byte	W72
	.byte		VOICE , 53
	.byte		PAN   , c_v+31
	.byte		VOL   , 75*song299_mvl/mxv
	.byte		N24   , Fs2 , v056
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Fs3 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 77*song299_mvl/mxv
	.byte		N24   , Fs2 , v072
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Gn3 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		N24   , Fs2 , v076
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , An3 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 81*song299_mvl/mxv
	.byte		N24   , Fs2 , v092
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Gn3 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 76*song299_mvl/mxv
	.byte		N24   , Fs2 , v060
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Fs3 
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 77*song299_mvl/mxv
	.byte		N24   , Fs2 , v072
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Gn3 , v076
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		VOL   , 77*song299_mvl/mxv
	.byte		N24   , Fs2 , v092
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , An3 , v096
	.byte	W24
	.byte		PAN   , c_v+31
	.byte		N24   , Fs2 , v120
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , As3 
	.byte	W24
	.byte		VOICE , 53
	.byte		PAN   , c_v-32
	.byte		VOL   , 71*song299_mvl/mxv
	.byte		MOD   , 0
	.byte		BEND  , c_v+0
	.byte		N48   , Fs3 , v072
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 64*song299_mvl/mxv
	.byte	W06
	.byte		        60*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        49*song299_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		VOL   , 71*song299_mvl/mxv
	.byte		N48   , Fn3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 64*song299_mvl/mxv
	.byte	W06
	.byte		        60*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        49*song299_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		VOL   , 71*song299_mvl/mxv
	.byte		N48   , En3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 64*song299_mvl/mxv
	.byte	W06
	.byte		        60*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        49*song299_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		MOD   , 0
	.byte		VOL   , 71*song299_mvl/mxv
	.byte		N48   , Cs3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 64*song299_mvl/mxv
	.byte	W06
	.byte		        60*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        49*song299_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		MOD   , 0
	.byte		VOL   , 71*song299_mvl/mxv
	.byte		N24   , Cn3 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		MOD   , 0
	.byte		VOL   , 71*song299_mvl/mxv
	.byte		N72   , Cs3 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 64*song299_mvl/mxv
	.byte	W06
	.byte		        60*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        49*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 70*song299_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 56
	.byte		VOL   , 83*song299_mvl/mxv
	.byte		PAN   , c_v-16
	.byte		N03   , Cs4 , v116
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		VOICE , 60
	.byte		PAN   , c_v+16
	.byte		N24   , Bn2 , v096
	.byte	W24
	.byte		VOICE , 56
	.byte		N03   , Cs4 , v116
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		VOICE , 60
	.byte		PAN   , c_v-17
	.byte		N24   , Dn3 , v096
	.byte	W24
	.byte		VOICE , 56
	.byte		N03   , Cs4 , v116
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		VOICE , 60
	.byte		PAN   , c_v+16
	.byte		N24   , Bn2 , v096
	.byte	W24
	.byte		VOICE , 56
	.byte		N03   , Cs4 , v112
	.byte	W06
	.byte		N06   , Cs4 , v108
	.byte	W06
	.byte		VOICE , 60
	.byte		PAN   , c_v-16
	.byte		N24   , Gs2 , v120
	.byte	W24
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		PAN   , c_v-1
	.byte	W96
	.byte		VOICE , 31
	.byte		VOL   , 72*song299_mvl/mxv
	.byte	W48
	.byte		PAN   , c_v-16
	.byte	W12
	.byte		N36   , Cs3 , v084
	.byte	W36
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v-16
	.byte	W24
	.byte		N21   , Dn3 , v048
	.byte	W36
	.byte		N21
	.byte	W36
	.byte	W96
	.byte	W60
	.byte		        Ds3 
	.byte	W36
	.byte	W60
	.byte		N24
	.byte	W36
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
	.byte	W72
	.byte		VOICE , 31
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
	.byte	GOTO
	 .word	song299_2 + 0x112
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 03 ****************************@

song299_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 56*song299_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , Fs1 , v120
	.byte	W48
	.byte		VOL   , 59*song299_mvl/mxv
	.byte		N48   , Gn1 
	.byte	W48
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		N48   , Gs1 
	.byte	W48
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		N48   , An1 
	.byte	W48
	.byte		VOL   , 56*song299_mvl/mxv
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N36
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N42
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N36
	.byte	W42
	.byte		N03
	.byte	W06
	.byte		N36
	.byte	W42
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , As2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N06   , Fs2 , v120
	.byte	W06
	.byte		N18   , Fs1 
	.byte	W42
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N18   , Fn1 
	.byte	W42
	.byte		N06   , En2 
	.byte	W06
	.byte		N18   , En1 
	.byte	W42
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N09   , Cs1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W18
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W18
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   , En2 
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N09   , Cs1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W18
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W18
	.byte		N03   , An1 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W18
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W18
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , An1 
	.byte	W18
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En1 
	.byte	W24
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En1 
	.byte	W24
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N36   , Cs1 
	.byte	W36
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N03   , An1 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06   , An1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N15
	.byte	W18
	.byte		N03   , En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An1 
	.byte	W06
	.byte		N03   , As1 
	.byte	W06
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N03   , An1 
	.byte	W06
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Bn1 
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N03   , As1 
	.byte	W06
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03   , Gs1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Bn1 
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N03   , Gs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N15   , Gs1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N15   , Cn2 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		N15   , An1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N09
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		N21   , An1 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N15   , Fs1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N15   , Bn1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		N15   , Ds1 
	.byte	W18
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N24   , Cs1 
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N36   , En1 
	.byte	W36
	.byte		N03   , Gn1 
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N24   , Gn1 
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N15   , Ds1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N15   , Ds1 
	.byte	W18
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N15   , Fs1 
	.byte	W18
	.byte		N03   , Fn1 
	.byte	W06
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N06   , Fn1 
	.byte	W06
	.byte		N15   , Ds1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N12   , An1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06   , En1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , En2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Ds2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N48   , An1 
	.byte	W48
	.byte		        Gs1 
	.byte	W48
	.byte		        Gn1 
	.byte	W48
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N36   , Fs1 
	.byte	W36
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N60   , Gs1 
	.byte	W60
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		N24   , Cs2 
	.byte	W24
	.byte		        Bn1 
	.byte	W24
	.byte		        An1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N12   , Fs1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		        En2 
	.byte	W18
	.byte		N06   , Ds2 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		        Fs2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		        An2 
	.byte	W18
	.byte		N06   , Gs2 
	.byte	W06
	.byte	GOTO
	 .word	song299_3 + 0xDC
	.byte	FINE

@**************** Track 04 ****************************@

song299_4:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N06   , Dn5 , v108
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fs3 , v120
	.byte		N06   , Dn5 , v108
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N06   , As3 , v120
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Ds3 , v127
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		VOICE , 60
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Fs4 , v108
	.byte	W06
	.byte		N36
	.byte	W12
	.byte		VOL   , 85*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 5
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        73*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		N36
	.byte	W12
	.byte		VOL   , 85*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 5
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        73*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		N36
	.byte	W12
	.byte		VOL   , 85*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 5
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        73*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		N30
	.byte	W12
	.byte		VOL   , 85*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 5
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        73*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 29
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Cs3 , v056
	.byte	W03
	.byte		        Dn3 , v068
	.byte	W03
	.byte		        En3 , v076
	.byte	W03
	.byte		        Fn3 , v088
	.byte	W03
	.byte		VOICE , 29
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Fs3 , v096
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Fs4 
	.byte	W06
	.byte		VOL   , 45*song299_mvl/mxv
	.byte	W18
	.byte		VOICE , 29
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Fs4 
	.byte	W06
	.byte		VOL   , 45*song299_mvl/mxv
	.byte	W18
	.byte		VOICE , 29
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Fs4 
	.byte	W06
	.byte		VOL   , 44*song299_mvl/mxv
	.byte	W18
	.byte		VOICE , 29
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Fs3 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Fn3 
	.byte	W06
	.byte		VOL   , 45*song299_mvl/mxv
	.byte	W18
	.byte		VOICE , 4
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N03   , Fs4 , v044
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N03   , Fs4 , v044
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song299_4 + 0x13A
	.byte		N03   , Fs4 , v044
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		VOICE , 62
	.byte		N03   , Fs3 , v116
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		BEND  , c_v+0
	.byte		N06   , As2 , v124
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N48   , Fs4 , v100
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		        74*song299_mvl/mxv
	.byte	W06
	.byte		        70*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        63*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , Fn4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		        74*song299_mvl/mxv
	.byte	W06
	.byte		        70*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        63*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , En4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		        74*song299_mvl/mxv
	.byte	W06
	.byte		        70*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        63*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		        74*song299_mvl/mxv
	.byte	W06
	.byte		        70*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        63*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N72   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		        74*song299_mvl/mxv
	.byte	W06
	.byte		        70*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        63*song299_mvl/mxv
	.byte	W30
	.byte		VOICE , 62
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N12   , Gn3 , v096
	.byte	W12
	.byte		N18   , Gs3 
	.byte	W18
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		VOICE , 29
	.byte		N32   , Fs3 
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Fs3 , v080
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		MOD   , 0
	.byte		N36   , Fn3 , v096
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte	W15
	.byte		VOL   , 90*song299_mvl/mxv
	.byte	W03
	.byte		N03   , Fn3 , v080
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , En3 , v092
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , En3 , v080
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		MOD   , 0
	.byte		N32   , Cs3 , v096
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Cs3 , v080
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , Cn3 , v096
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N03   , Dn3 , v080
	.byte	W03
	.byte		N06   , Cs3 
	.byte	W09
	.byte		N09
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		VOICE , 60
	.byte		N24   , Fn4 , v096
	.byte	W24
	.byte		N72   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 85*song299_mvl/mxv
	.byte	W06
	.byte		        79*song299_mvl/mxv
	.byte	W06
	.byte		        73*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        63*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        51*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N36   , Cs4 , v104
	.byte	W36
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N03   , En4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , Gn4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En4 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fn4 
	.byte	W06
	.byte		VOICE , 56
	.byte		PAN   , c_v-32
	.byte		N03   , Fs4 , v116
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		VOICE , 60
	.byte		PAN   , c_v+32
	.byte		N24   , En3 , v072
	.byte	W24
	.byte		VOICE , 56
	.byte		N03   , Fs4 , v116
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		VOICE , 60
	.byte		PAN   , c_v-33
	.byte		N24   , Gn3 , v072
	.byte	W24
	.byte		VOICE , 56
	.byte		N03   , Fs4 , v116
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		VOICE , 60
	.byte		PAN   , c_v+32
	.byte		N24   , En3 , v072
	.byte	W24
	.byte		VOICE , 56
	.byte		N03   , Fs4 , v112
	.byte	W06
	.byte		N06   , Fs4 , v108
	.byte	W06
	.byte		VOICE , 60
	.byte		PAN   , c_v-33
	.byte		N24   , Cs3 , v076
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+12
	.byte		N06   , Fs3 , v108
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 , v112
	.byte	W06
	.byte		        Fs3 , v080
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 , v112
	.byte	W06
	.byte		        En3 , v080
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v076
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        En3 , v096
	.byte	W06
	.byte		        Ds3 , v076
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 , v096
	.byte	W06
	.byte		N03   , Fs3 , v076
	.byte	W03
	.byte		VOICE , 62
	.byte	W03
	.byte		N24   , Cs3 , v120
	.byte	W24
	.byte		N12   , En3 
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v-10
	.byte		N24   , Fs4 , v064
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N72   , Gs4 
	.byte	W36
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W06
	.byte		        22*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 62
	.byte		PAN   , c_v-32
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Cs3 , v100
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		PAN   , c_v-11
	.byte		N24   , Gn4 , v112
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N60   , An4 
	.byte	W24
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W06
	.byte		        22*song299_mvl/mxv
	.byte	W06
	.byte		        90*song299_mvl/mxv
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N03   , Dn3 , v100
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		VOICE , 30
	.byte		PAN   , c_v-11
	.byte		N24   , Gs4 , v076
	.byte	W24
	.byte		N12   , An4 
	.byte	W12
	.byte		N72   , As4 
	.byte	W36
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W06
	.byte		        22*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 62
	.byte		PAN   , c_v-32
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Ds3 , v092
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N21
	.byte	W12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N24
	.byte	W24
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		N06   , Fs4 , v127
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		PAN   , c_v+26
	.byte		N96   , Gs4 
	.byte	W42
	.byte		VOL   , 85*song299_mvl/mxv
	.byte	W06
	.byte		        79*song299_mvl/mxv
	.byte	W06
	.byte		        75*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        62*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        50*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		N96   , Gs3 , v096
	.byte	W03
	.byte		VOL   , 40*song299_mvl/mxv
	.byte	W03
	.byte		        51*song299_mvl/mxv
	.byte	W03
	.byte		        59*song299_mvl/mxv
	.byte	W03
	.byte		        67*song299_mvl/mxv
	.byte	W03
	.byte		        74*song299_mvl/mxv
	.byte	W03
	.byte		        80*song299_mvl/mxv
	.byte	W03
	.byte		        88*song299_mvl/mxv
	.byte	W72
	.byte	W03
	.byte		N24   , Ds4 
	.byte	W24
	.byte		TIE   , En4 
	.byte	W72
	.byte	W96
	.byte		EOT
	.byte		N96   , Fs4 
	.byte	W96
	.byte		        Bn3 
	.byte	W96
	.byte		N68   , Gn4 
	.byte	W68
	.byte	W01
	.byte		N03   , Gs4 
	.byte	W03
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		N48   , Dn5 
	.byte	W48
	.byte		        Cn5 
	.byte	W48
	.byte		TIE   , Bn4 
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte		VOICE , 60
	.byte		N12   , En4 , v088
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		VOICE , 29
	.byte		N12   , En4 , v064
	.byte	W12
	.byte		N06   , Ds4 
	.byte	W06
	.byte		N03   , En4 
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v+3
	.byte		N12   , Fs3 
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v+0
	.byte		N06   , Fs2 , v088
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+3
	.byte		N12   , Fn3 , v064
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v+0
	.byte		N06   , Fn2 , v088
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+3
	.byte		N12   , En3 , v064
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v+0
	.byte		N06   , En2 , v088
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+2
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v+0
	.byte		N09   , Cs2 , v092
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		VOICE , 30
	.byte		N12   , Cn4 , v080
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        55*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		VOL   , 56*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		N06   , Cn4 
	.byte	W06
	.byte		VOL   , 78*song299_mvl/mxv
	.byte		N06   , Cs4 
	.byte	W06
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , En4 , v096
	.byte	W12
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 3
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 30
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , Fs3 
	.byte	W24
	.byte		VOL   , 67*song299_mvl/mxv
	.byte	W24
	.byte		        90*song299_mvl/mxv
	.byte		N48   , Fn3 
	.byte	W24
	.byte		VOL   , 68*song299_mvl/mxv
	.byte	W24
	.byte		        90*song299_mvl/mxv
	.byte		N48   , En3 
	.byte	W24
	.byte		VOL   , 67*song299_mvl/mxv
	.byte	W24
	.byte		        90*song299_mvl/mxv
	.byte		N48   , Cs3 
	.byte	W24
	.byte		VOL   , 68*song299_mvl/mxv
	.byte	W24
	.byte		        90*song299_mvl/mxv
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N72   , Cs3 
	.byte	W24
	.byte		VOL   , 67*song299_mvl/mxv
	.byte	W48
	.byte		        90*song299_mvl/mxv
	.byte		N48   , En3 
	.byte	W24
	.byte		VOL   , 67*song299_mvl/mxv
	.byte	W24
	.byte		        90*song299_mvl/mxv
	.byte		N48   , Gn3 
	.byte	W24
	.byte		VOL   , 68*song299_mvl/mxv
	.byte	W24
	.byte		VOICE , 60
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N96   , Fs3 , v088
	.byte	W36
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		        68*song299_mvl/mxv
	.byte	W12
	.byte		        56*song299_mvl/mxv
	.byte	W12
	.byte		        44*song299_mvl/mxv
	.byte	W12
	.byte		        90*song299_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N72   , Cs4 
	.byte	W12
	.byte		MOD   , 4
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W12
	.byte		        68*song299_mvl/mxv
	.byte	W12
	.byte		        56*song299_mvl/mxv
	.byte	W12
	.byte		        45*song299_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song299_4 + 0x189
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 05 ****************************@

song299_5:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song299_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N06   , Dn5 , v096
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		PAN   , c_v-8
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v+7
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v-33
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		BEND  , c_v+1
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		PAN   , c_v+23
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , En4 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+1
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		PAN   , c_v-41
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		PAN   , c_v+41
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		BEND  , c_v+2
	.byte		N06   , As3 , v108
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		PAN   , c_v-56
	.byte		N06   , An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+56
	.byte		N06   , Gn3 , v120
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		VOICE , 47
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		BEND  , c_v+0
	.byte		N06   , Fs2 , v096
	.byte	W06
	.byte		N36   , Fs1 , v127
	.byte	W42
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N42   , Fs1 
	.byte	W42
	.byte		PAN   , c_v-32
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N36   , Fs1 
	.byte	W42
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N42   , Fs1 
	.byte	W42
	.byte		VOICE , 62
	.byte		PAN   , c_v-32
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+10
	.byte		N24   , Cs3 , v096
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-9
	.byte		N24   , Dn3 , v096
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+7
	.byte		N24   , En3 , v096
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v-10
	.byte		N12   , Dn3 , v096
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		BEND  , c_v+2
	.byte	W48
	.byte		VOICE , 47
	.byte		PAN   , c_v+32
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Fs2 , v120
	.byte	W06
	.byte		N18   , Fs1 
	.byte	W18
	.byte		N24   , Gs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N06   , Fn2 
	.byte	W06
	.byte		N18   , Fn1 
	.byte	W18
	.byte		        Gn2 
	.byte	W18
	.byte		N03   , Gs1 , v076
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N06   , En2 , v120
	.byte	W06
	.byte		N18   , En1 
	.byte	W18
	.byte		N24   , Fs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N06   , Gs2 
	.byte	W06
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N24   , Gs2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N12
	.byte	W12
	.byte	W96
	.byte		VOICE , 62
	.byte		VOL   , 83*song299_mvl/mxv
	.byte		PAN   , c_v-22
	.byte		N05   , Cs3 , v108
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		PAN   , c_v+20
	.byte		N12   , Cn3 
	.byte	W12
	.byte		MOD   , 8
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		MOD   , 0
	.byte		N05   , Bn2 
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		PAN   , c_v-25
	.byte		N24   , Gs2 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		MOD   , 0
	.byte		N24   , Gn2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte		N03   , An2 
	.byte	W03
	.byte		N06   , Gs2 
	.byte	W09
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		VOICE , 48
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N24   , Cn3 , v072
	.byte	W24
	.byte		N72   , Cs3 
	.byte	W24
	.byte		VOL   , 68*song299_mvl/mxv
	.byte	W06
	.byte		        61*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        51*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        38*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W04
	.byte		        26*song299_mvl/mxv
	.byte	W08
	.byte	W96
	.byte	W96
	.byte		VOICE , 47
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N03   , Fs2 , v120
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Gn1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N36   , Cs1 
	.byte	W36
	.byte		VOICE , 62
	.byte		N06   , Fs2 , v084
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 , v084
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 , v084
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 , v084
	.byte	W06
	.byte		        En2 , v064
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 , v084
	.byte	W06
	.byte		        Fs2 , v064
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        En2 , v084
	.byte	W06
	.byte		        Ds2 , v064
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 , v084
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N24   , Gs2 , v096
	.byte	W24
	.byte		N12   , Bn2 , v092
	.byte	W12
	.byte		VOICE , 24
	.byte		PAN   , c_v-48
	.byte		N12   , Fs4 , v052
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N12   , Fs4 
	.byte	W12
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N18   , Bn4 
	.byte	W06
	.byte	W96
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		N06   , Dn5 
	.byte	W06
	.byte		N18   , Cs5 
	.byte	W06
	.byte	W96
	.byte		PAN   , c_v-48
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N06   , Ds5 
	.byte	W06
	.byte		N18   , Dn5 
	.byte	W06
	.byte	W96
	.byte	W84
	.byte		VOICE , 60
	.byte		N06   , As3 , v072
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		PAN   , c_v-26
	.byte		N72   , Cn4 
	.byte	W30
	.byte		VOL   , 84*song299_mvl/mxv
	.byte	W06
	.byte		        79*song299_mvl/mxv
	.byte	W06
	.byte		        72*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        61*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        50*song299_mvl/mxv
	.byte	W06
	.byte		        90*song299_mvl/mxv
	.byte		N06   , As3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		VOL   , 46*song299_mvl/mxv
	.byte		N48   , Ds3 
	.byte	W03
	.byte		VOL   , 50*song299_mvl/mxv
	.byte	W03
	.byte		        58*song299_mvl/mxv
	.byte	W03
	.byte		        67*song299_mvl/mxv
	.byte	W03
	.byte		        74*song299_mvl/mxv
	.byte	W03
	.byte		        79*song299_mvl/mxv
	.byte	W03
	.byte		        90*song299_mvl/mxv
	.byte	W30
	.byte		VOICE , 48
	.byte		N24   , Cn4 , v064
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		VOICE , 4
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N06   , En4 , v040
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , Cs5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , En5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v-23
	.byte		N06   , An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , Ds5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , En5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v+39
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+23
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v-39
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , Fn5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v+40
	.byte		N06   , Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		PAN   , c_v+24
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Gn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		PAN   , c_v-39
	.byte		N06   , En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte		N06   , Cn5 
	.byte	W06
	.byte		PAN   , c_v-15
	.byte		N06   , Ds5 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , En5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v+39
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W03
	.byte		PAN   , c_v+23
	.byte	W03
	.byte		N06   , An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Fs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Fs3 
	.byte	W06
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N12   , An2 , v060
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		VOICE , 29
	.byte		N12   , Cs3 , v044
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		N03   , Bn2 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v+21
	.byte		N12   , Cs3 , v064
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v-32
	.byte		N06   , Cs2 , v076
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+20
	.byte		N12   , Cn3 , v064
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v-32
	.byte		N06   , Cn2 , v080
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+20
	.byte		N12   , Bn2 , v064
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v-32
	.byte		N06   , Bn1 , v080
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+20
	.byte		N12   , Gs2 , v064
	.byte	W12
	.byte		VOICE , 30
	.byte		PAN   , c_v-32
	.byte		N09   , Gs1 , v076
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		VOICE , 30
	.byte		N12   , Gn3 , v056
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N48   , Gs3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        55*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		VOL   , 56*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		N06   , Gn3 
	.byte	W06
	.byte		VOL   , 78*song299_mvl/mxv
	.byte		N06   , Gs3 
	.byte	W06
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , Bn3 , v068
	.byte	W24
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        90*song299_mvl/mxv
	.byte		N48   , Gs3 
	.byte	W24
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 29
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N12   , Fs2 , v044
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs2 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N03   , Cs2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N03   , Gs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N03   , Cs2 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		VOICE , 47
	.byte		PAN   , c_v-48
	.byte		N06   , Fs2 , v064
	.byte	W06
	.byte		N42   , Fs1 
	.byte	W42
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 , v092
	.byte	W06
	.byte		N42   , Fs1 
	.byte	W42
	.byte		PAN   , c_v-48
	.byte		N06   , Fs2 , v116
	.byte	W06
	.byte		N42   , Fs1 , v120
	.byte	W42
	.byte		PAN   , c_v+32
	.byte		N06   , Fs2 
	.byte	W06
	.byte		N42   , Fs1 , v127
	.byte	W42
	.byte	GOTO
	 .word	song299_5 + 0x107
	.byte	FINE

@**************** Track 06 ****************************@

song299_6:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-61
	.byte		N03   , Fs4 , v048
	.byte	W06
	.byte		N06
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fs5 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn4 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fs5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v+61
	.byte		N06   , Gn4 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song299_6 + 0x17
	.byte	PATT
	 .word	song299_6 + 0x17
	.byte		PAN   , c_v-61
	.byte		N03   , Fs4 , v048
	.byte	W06
	.byte		N06
	.byte	W03
	.byte		PAN   , c_v-32
	.byte	W03
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fs5 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , An4 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N03   , Fs4 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		PAN   , c_v+32
	.byte		N24   , As3 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		VOL   , 90*song299_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		PAN   , c_v-33
	.byte	W18
	.byte		VOICE , 56
	.byte		N03   , Fs4 , v084
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gn4 , v084
	.byte	W06
	.byte		N03   , Gs4 
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Bn4 
	.byte	W06
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Gs4 , v032
	.byte	W06
	.byte		        Gs4 , v084
	.byte	W06
	.byte		VOICE , 24
	.byte		PAN   , c_v-32
	.byte		N12   , Gn4 , v088
	.byte	W12
	.byte		N18   , Gs4 
	.byte	W12
	.byte		PAN   , c_v+31
	.byte	W06
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06   , Dn5 
	.byte	W06
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W06
	.byte		PAN   , c_v+31
	.byte		N06   , Cs5 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 47
	.byte	W48
	.byte		PAN   , c_v+37
	.byte		N03   , Fs2 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-50
	.byte		N24   , Fs1 
	.byte	W24
	.byte		VOICE , 24
	.byte		PAN   , c_v-32
	.byte		N15   , Fs4 , v080
	.byte	W15
	.byte		PAN   , c_v+32
	.byte	W03
	.byte		N15
	.byte	W18
	.byte		PAN   , c_v-32
	.byte		N09
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Cs5 , v064
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v-48
	.byte		N06   , Cs5 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		PAN   , c_v+48
	.byte		N06   , Cs5 
	.byte	W06
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , Gn1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N18
	.byte	W18
	.byte		N24   , En1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N03   , Fs2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N36   , Cs1 
	.byte	W36
	.byte	W96
	.byte	W96
	.byte		VOICE , 29
	.byte		PAN   , c_v+10
	.byte		N24   , Cs4 , v048
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		N72   , Ds4 
	.byte	W36
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 62
	.byte		VOL   , 34*song299_mvl/mxv
	.byte	W06
	.byte		        22*song299_mvl/mxv
	.byte	W06
	.byte		        90*song299_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N03   , Fs2 , v064
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N09
	.byte	W12
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		VOICE , 62
	.byte		PAN   , c_v+10
	.byte		N24   , Dn4 , v056
	.byte	W24
	.byte		N12   , Ds4 
	.byte	W12
	.byte		N60   , En4 
	.byte	W24
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W06
	.byte		        22*song299_mvl/mxv
	.byte	W06
	.byte		        90*song299_mvl/mxv
	.byte	W12
	.byte		VOICE , 62
	.byte		PAN   , c_v+32
	.byte		N03   , Gn2 , v064
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		VOICE , 30
	.byte		PAN   , c_v+10
	.byte		N24   , Ds4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		N72   , Fn4 
	.byte	W36
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        56*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte	W06
	.byte		        22*song299_mvl/mxv
	.byte	W06
	.byte		VOICE , 62
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N03   , Gs2 
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N21
	.byte	W12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N21
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		N24
	.byte	W36
	.byte	W96
	.byte	W96
	.byte		VOICE , 14
	.byte		PAN   , c_v-26
	.byte		N48   , En5 , v044
	.byte	W60
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		PAN   , c_v+27
	.byte		N24   , Fs5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        En5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		PAN   , c_v-26
	.byte		N48   , Fs5 
	.byte	W48
	.byte		        Ds5 
	.byte	W48
	.byte		PAN   , c_v+23
	.byte		N48   , As5 
	.byte	W48
	.byte		        Bn5 
	.byte	W48
	.byte		PAN   , c_v-26
	.byte		N24   , Cn6 
	.byte	W24
	.byte		        Gn5 
	.byte	W24
	.byte		        Bn5 
	.byte	W24
	.byte		        Cn6 
	.byte	W24
	.byte		PAN   , c_v+26
	.byte		N60   , Dn6 
	.byte	W60
	.byte		N12   , An5 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		PAN   , c_v-27
	.byte		N24   , Bn5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        An5 
	.byte	W24
	.byte		        As5 
	.byte	W24
	.byte		PAN   , c_v+24
	.byte		N24   , Bn5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        Ds6 
	.byte	W24
	.byte		        Bn5 
	.byte	W24
	.byte		PAN   , c_v-1
	.byte	W96
	.byte		VOICE , 24
	.byte		PAN   , c_v+32
	.byte		N12   , Cs5 , v048
	.byte	W12
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N03   , Cn5 
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		N12   , An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		N06   , Bn4 
	.byte	W06
	.byte		N12   , En5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		VOICE , 29
	.byte		PAN   , c_v+48
	.byte	W12
	.byte		N12   , Fs3 , v024
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , En2 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N03   , Cn2 , v052
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N48   , Cs2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte	W06
	.byte		        68*song299_mvl/mxv
	.byte	W06
	.byte		        55*song299_mvl/mxv
	.byte	W06
	.byte		        45*song299_mvl/mxv
	.byte	W06
	.byte		        34*song299_mvl/mxv
	.byte		N03   , Cs2 , v056
	.byte	W06
	.byte		VOL   , 56*song299_mvl/mxv
	.byte		N03
	.byte	W06
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		N06   , Cn2 
	.byte	W06
	.byte		VOL   , 78*song299_mvl/mxv
	.byte		N06   , Cs2 
	.byte	W06
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte		VOICE , 29
	.byte		PAN   , c_v-32
	.byte		N12   , Cs2 , v044
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09   , Gs1 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N03   , Ds2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Gs1 
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N03   , Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N09   , Gs1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , Gs2 
	.byte	W24
	.byte		N03   , Ds1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N12   , Gs2 
	.byte	W12
	.byte		N03   , Gs1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		VOICE , 53
	.byte		VOL   , 90*song299_mvl/mxv
	.byte		N48   , Cs3 , v056
	.byte	W12
	.byte		MOD   , 6
	.byte	W36
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v+32
	.byte		N48   , Fs3 
	.byte	W12
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 56*song299_mvl/mxv
	.byte	W12
	.byte		        44*song299_mvl/mxv
	.byte	W12
	.byte		        90*song299_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v-32
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song299_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v+32
	.byte		N48   , Cs4 
	.byte	W12
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 56*song299_mvl/mxv
	.byte	W12
	.byte		        45*song299_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song299_6 + 0xA1
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 07 ****************************@

song299_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 75*song299_mvl/mxv
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v124
	.byte	W06
	.byte		        Cn1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn2 , v120
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N48   , Cs2 
	.byte	W48
	.byte		        Bn2 
	.byte	W48
	.byte		        En2 
	.byte	W48
	.byte		        An2 
	.byte	W48
	.byte		N06   , Cn1 
	.byte		N48   , Cs2 
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte		N24   , Bn2 
	.byte	W06
	.byte		N06   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v084
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v088
	.byte	W06
	.byte		        Dn1 , v120
	.byte	W06
	.byte		        Dn1 , v084
	.byte	W06
	.byte	W06
	.byte		N48   , Cs2 , v120
	.byte	W48
	.byte		N42   , Bn2 
	.byte	W42
	.byte	W06
	.byte		N48   , An2 
	.byte	W48
	.byte		N42   , En2 
	.byte	W42
	.byte		N48   , Cs2 
	.byte	W96
	.byte		N12   , Dn1 
	.byte		N48   , An2 
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N06
	.byte		N03   , Gs4 , v048
	.byte	W06
	.byte		N06   , Bn1 , v120
	.byte		N12   , An4 , v060
	.byte	W06
	.byte		N06   , Gn1 , v120
	.byte	W06
	.byte		        Fn1 
	.byte		N03   , Gs4 , v056
	.byte	W06
	.byte		N06   , An1 , v120
	.byte		N03   , Gs4 , v048
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte		N03   , Gs4 , v048
	.byte	W06
	.byte		N06   , Fn1 , v120
	.byte		N12   , An4 , v060
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	W96
	.byte	W60
	.byte		N36   , An2 
	.byte	W36
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte	PEND
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte		N24   , Cs2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song299_7 + 0x215
	.byte		N06   , Dn1 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song299_7 + 0x215
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v124
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W18
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N18   , Dn2 , v120
	.byte	W18
	.byte		N06   , Bn1 , v092
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
	.byte		N06   , Cn1 , v120
	.byte	W18
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N18   , An1 , v120
	.byte	W18
	.byte		N06   , Fn1 , v092
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song299_7 + 0x2C1
	.byte	PATT
	 .word	song299_7 + 0x2E1
	.byte	PATT
	 .word	song299_7 + 0x2C1
	.byte	PATT
	 .word	song299_7 + 0x2E1
	.byte	PATT
	 .word	song299_7 + 0x2C1
	.byte	PATT
	 .word	song299_7 + 0x2E1
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v100
	.byte	W06
	.byte		        Dn1 , v127
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Dn1 , v016
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Dn1 , v127
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v127
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte		        Dn1 , v124
	.byte	W06
	.byte		        Dn1 , v064
	.byte	W06
	.byte		        Dn1 , v048
	.byte	W06
	.byte		        Dn1 , v032
	.byte	W06
	.byte		        Fn1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Dn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N03
	.byte	W09
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N03   , Bn1 
	.byte	W03
	.byte		N03
	.byte	W09
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N03   , An1 
	.byte	W03
	.byte		N03
	.byte	W09
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N03   , Gn1 
	.byte	W03
	.byte		N03
	.byte	W09
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N15   , Dn1 
	.byte	W18
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N48   , An2 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte		        Bn2 
	.byte	W48
	.byte		        En2 
	.byte	W48
	.byte	GOTO
	 .word	song299_7 + 0x114
	.byte	FINE

@**************** Track 08 ****************************@

song299_8:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 51*song299_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v064
	.byte	W24
	.byte		VOL   , 63*song299_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		N48   , Cn3 , v120
	.byte	W03
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		        c_v-48
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+39
	.byte	W03
	.byte		        c_v+48
	.byte	W03
	.byte		        c_v+56
	.byte	W03
	.byte		        c_v+63
	.byte	W06
	.byte		VOL   , 51*song299_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn5 
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v044
	.byte	W15
	.byte		        Cn5 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte	W96
	.byte	W48
	.byte		VOL   , 68*song299_mvl/mxv
	.byte		BEND  , c_v-64
	.byte		N48   , Cn3 , v120
	.byte	W03
	.byte		BEND  , c_v-54
	.byte	W03
	.byte		        c_v-48
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-8
	.byte	W03
	.byte		        c_v+0
	.byte	W03
	.byte		        c_v+16
	.byte	W03
	.byte		        c_v+32
	.byte	W03
	.byte		        c_v+39
	.byte	W03
	.byte		        c_v+48
	.byte	W03
	.byte		        c_v+56
	.byte	W03
	.byte		        c_v+63
	.byte	W06
	.byte		VOL   , 50*song299_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W42
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W42
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v116
	.byte	W03
	.byte		        Cn5 , v064
	.byte	W03
	.byte		        Cn5 , v052
	.byte	W03
	.byte		        Cn5 , v064
	.byte	W03
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x199
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x1F5
	.byte		N03   , Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x216
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03   , Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte	PEND
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v112
	.byte	W06
	.byte	PATT
	 .word	song299_8 + 0x26C
	.byte		N03   , Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W30
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v112
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x26C
	.byte	PATT
	 .word	song299_8 + 0x2AF
	.byte	W24
	.byte		N03   , Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W30
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v124
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x2ED
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x317
	.byte	PATT
	 .word	song299_8 + 0x317
	.byte	PATT
	 .word	song299_8 + 0x317
	.byte	PATT
	 .word	song299_8 + 0x317
	.byte	PATT
	 .word	song299_8 + 0x317
	.byte	PATT
	 .word	song299_8 + 0x317
	.byte	PATT
	 .word	song299_8 + 0x317
	.byte	W96
	.byte	W96
	.byte		N03   , Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte	PEND
	.byte		N03   , Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x362
	.byte		N03   , Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v060
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v060
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W48
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W24
	.byte		        Cn5 , v120
	.byte	W24
	.byte		        Cn5 , v044
	.byte	W15
	.byte		        Cn5 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song299_8 + 0x393
	.byte	PATT
	 .word	song299_8 + 0x2ED
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v068
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v124
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PATT
	 .word	song299_8 + 0x362
	.byte	PATT
	 .word	song299_8 + 0x373
	.byte	GOTO
	 .word	song299_8 + 0x118
	.byte	FINE

@**************** Track 09 ****************************@

song299_9:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 51*song299_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v064
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W60
	.byte	W72
	.byte		N24   , Gn5 , v120
	.byte	W24
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	W96
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
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
	.byte	W24
	.byte		N12
	.byte	W48
	.byte		N12
	.byte	W24
	.byte	PATT
	 .word	song299_9 + 0x4F
	.byte	W12
	.byte		N12   , Gn5 , v092
	.byte	W12
	.byte		        Gn5 , v120
	.byte	W48
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song299_9 + 0x4F
	.byte	PATT
	 .word	song299_9 + 0x65
	.byte		N12   , Gn5 , v120
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N12
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
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		N24
	.byte	W24
	.byte	GOTO
	 .word	song299_9 + 0x35
	.byte	FINE

@******************************************************@
	.align	2

song299:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song299_pri	@ Priority
	.byte	song299_rev	@ Reverb.

	.word	song299_grp

	.word	song299_0
	.word	song299_1
	.word	song299_2
	.word	song299_3
	.word	song299_4
	.word	song299_5
	.word	song299_6
	.word	song299_7
	.word	song299_8
	.word	song299_9

	.end
