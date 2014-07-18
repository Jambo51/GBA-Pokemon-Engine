@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song284_grp, group_20
	.equ	song284_pri, 0
	.equ	song284_rev, 178
	.equ	song284_mvl, 127
	.equ	song284_key, 0
	.equ	song284_tbs, 1
	.equ	song284_exg, 1
	.equ	song284_cmp, 1

	.text
	.global	song284
	.align	2

@**************** Track 00 ****************************@

song284_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 87
	.byte		VOICE , 1
	.byte		VOL   , 51*song284_mvl/mxv
	.byte		PAN   , c_v-29
	.byte		N18   , En4 , v104
	.byte	W12
	.byte	W24
	.byte		N03   , Cn4 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N12   , Gs3 
	.byte	W12
	.byte		N03   , Gn3 , v127
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte		N03   , Fs3 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06   , An3 , v120
	.byte	W12
	.byte	PATT
	 .word	song284_0 + 0x1A
	.byte		N03   , Fn3 , v127
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N12
	.byte	W24
	.byte	GOTO
	 .word	song284_0 + 0x1A
	.byte	FINE

@**************** Track 01 ****************************@

song284_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 49*song284_mvl/mxv
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N72   , Gn5 
	.byte	W72
	.byte		VOICE , 24
	.byte		N12   , Gn4 , v127
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N01   , Cn4 , v096
	.byte	W09
	.byte		N01
	.byte	W03
	.byte		N24   , Bn4 , v127
	.byte	W06
	.byte		MOD   , 2
	.byte	W18
	.byte		        0
	.byte		N12   , Cn5 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N01   , Cn4 , v096
	.byte	W12
	.byte		N12   , Bn4 , v127
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N01   , Gn4 , v096
	.byte	W12
	.byte		N12   , An4 , v127
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , Gn4 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , En4 
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , En4 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , An4 
	.byte	W12
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N01   , Cn4 , v096
	.byte	W09
	.byte		N01
	.byte	W03
	.byte		N24   , An4 , v127
	.byte	W06
	.byte		MOD   , 2
	.byte	W18
	.byte		        0
	.byte		N12   , Gn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N01   , Cn4 , v096
	.byte	W12
	.byte		N12   , Fn4 , v127
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N01   , En4 , v120
	.byte	W12
	.byte		N12   , En4 , v127
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , Bn3 
	.byte	W12
	.byte		N12   , Cn4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , Dn4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 3
	.byte	W06
	.byte		        0
	.byte		N03   , Fn4 
	.byte	W12
	.byte	GOTO
	 .word	song284_1 + 0x13
	.byte	FINE

@**************** Track 02 ****************************@

song284_2:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 39*song284_mvl/mxv
	.byte		PAN   , c_v-40
	.byte	W12
	.byte	W36
	.byte		N03   , An4 , v104
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N12   , Fn4 
	.byte	W12
	.byte		VOL   , 39*song284_mvl/mxv
	.byte		N84   , En4 , v120
	.byte	W09
	.byte		VOL   , 11*song284_mvl/mxv
	.byte	W06
	.byte		        16*song284_mvl/mxv
	.byte	W09
	.byte		        22*song284_mvl/mxv
	.byte	W12
	.byte		        28*song284_mvl/mxv
	.byte	W12
	.byte		        34*song284_mvl/mxv
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song284_mvl/mxv
	.byte	W12
	.byte		        45*song284_mvl/mxv
	.byte	W12
	.byte		        39*song284_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , An4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		VOL   , 39*song284_mvl/mxv
	.byte		N84   , Ds4 
	.byte	W09
	.byte		VOL   , 11*song284_mvl/mxv
	.byte	W06
	.byte		        16*song284_mvl/mxv
	.byte	W09
	.byte		        22*song284_mvl/mxv
	.byte	W12
	.byte		        28*song284_mvl/mxv
	.byte	W12
	.byte		        34*song284_mvl/mxv
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song284_mvl/mxv
	.byte	W12
	.byte		        45*song284_mvl/mxv
	.byte	W12
	.byte		        39*song284_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		VOL   , 39*song284_mvl/mxv
	.byte		N84   , En4 
	.byte	W09
	.byte		VOL   , 11*song284_mvl/mxv
	.byte	W06
	.byte		        16*song284_mvl/mxv
	.byte	W09
	.byte		        22*song284_mvl/mxv
	.byte	W12
	.byte		        28*song284_mvl/mxv
	.byte	W12
	.byte		        34*song284_mvl/mxv
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song284_mvl/mxv
	.byte	W12
	.byte		        45*song284_mvl/mxv
	.byte	W12
	.byte		        39*song284_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		VOL   , 39*song284_mvl/mxv
	.byte		N84   , Dn4 
	.byte	W09
	.byte		VOL   , 11*song284_mvl/mxv
	.byte	W06
	.byte		        16*song284_mvl/mxv
	.byte	W09
	.byte		        22*song284_mvl/mxv
	.byte	W12
	.byte		        28*song284_mvl/mxv
	.byte	W12
	.byte		        34*song284_mvl/mxv
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 39*song284_mvl/mxv
	.byte	W12
	.byte		        45*song284_mvl/mxv
	.byte	W12
	.byte		        39*song284_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	GOTO
	 .word	song284_2 + 0x17
	.byte	FINE

@**************** Track 03 ****************************@

song284_3:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 45*song284_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W12
	.byte	W72
	.byte		N06   , Cn2 , v127
	.byte	W24
	.byte		N24   , En1 , v120
	.byte	W24
	.byte		N06   , Cn2 , v127
	.byte	W24
	.byte		N12   , En1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N24   , Ds1 
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N12   , Ds1 
	.byte	W12
	.byte		N15   , Gn1 , v120
	.byte	W12
	.byte		N06   , Cn2 , v127
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N24   , En1 
	.byte	W24
	.byte		N06   , Cn2 , v120
	.byte	W24
	.byte		N24   , Dn1 , v127
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte	GOTO
	 .word	song284_3 + 0x12
	.byte	FINE

@**************** Track 04 ****************************@

song284_4:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 46*song284_mvl/mxv
	.byte		PAN   , c_v+47
	.byte		BEND  , c_v+1
	.byte		N12   , Gn4 , v104
	.byte	W12
	.byte		N72   , Gn5 
	.byte	W72
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+0
	.byte		N03   , Cn3 , v120
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03   , Cn3 , v127
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N03
	.byte	W24
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song284_4 + 0x2B
	.byte	GOTO
	 .word	song284_4 + 0x15
	.byte	FINE

@**************** Track 05 ****************************@

song284_5:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song284_mvl/mxv
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		N72   , Gn5 
	.byte	W24
	.byte		VOL   , 41*song284_mvl/mxv
	.byte	W03
	.byte		        38*song284_mvl/mxv
	.byte	W03
	.byte		        36*song284_mvl/mxv
	.byte	W03
	.byte		        34*song284_mvl/mxv
	.byte	W03
	.byte		        31*song284_mvl/mxv
	.byte	W03
	.byte		        29*song284_mvl/mxv
	.byte	W03
	.byte		        25*song284_mvl/mxv
	.byte	W03
	.byte		        22*song284_mvl/mxv
	.byte	W03
	.byte		        20*song284_mvl/mxv
	.byte	W03
	.byte		        17*song284_mvl/mxv
	.byte	W03
	.byte		        14*song284_mvl/mxv
	.byte	W03
	.byte		        12*song284_mvl/mxv
	.byte	W03
	.byte		        9*song284_mvl/mxv
	.byte	W03
	.byte		        7*song284_mvl/mxv
	.byte	W03
	.byte		        5*song284_mvl/mxv
	.byte	W03
	.byte		        2*song284_mvl/mxv
	.byte	W03
	.byte		VOL   , 0*song284_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song284_5 + 0x34
	.byte	FINE

@**************** Track 06 ****************************@

song284_6:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 28*song284_mvl/mxv
	.byte	W12
	.byte	W72
	.byte		N12   , Cn4 , v120
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W06
	.byte		MOD   , 5
	.byte	W18
	.byte		        0
	.byte		N12   , En4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte	W12
	.byte	PEND
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Cn4 
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Cn4 
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Gn3 
	.byte	W12
	.byte		N12   , Ds4 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Cn4 
	.byte	W12
	.byte	PATT
	 .word	song284_6 + 0x13
	.byte		N12   , Cn4 , v120
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Bn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Gn3 
	.byte	W12
	.byte		N12   , Fn3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Gn3 
	.byte	W12
	.byte		N12   , An3 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		        0
	.byte		N01   , Bn3 
	.byte	W12
	.byte	GOTO
	 .word	song284_6 + 0x13
	.byte	FINE

@**************** Track 07 ****************************@

song284_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v-1
	.byte		VOL   , 51*song284_mvl/mxv
	.byte	W12
	.byte	W72
	.byte		N03   , Cn5 , v104
	.byte	W24
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W36
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte	PEND
	.byte		        Cn5 , v112
	.byte	W24
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v076
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v052
	.byte	W06
	.byte		        Cn5 , v100
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte	PATT
	 .word	song284_7 + 0x13
	.byte		N03   , Cn5 , v112
	.byte	W24
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W06
	.byte	GOTO
	 .word	song284_7 + 0x13
	.byte	FINE

@**************** Track 08 ****************************@

song284_8:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+2
	.byte		VOL   , 38*song284_mvl/mxv
	.byte	W12
	.byte	W72
	.byte	W48
	.byte		N24   , Ds5 , v096
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N24
	.byte	W48
	.byte	W96
	.byte	GOTO
	 .word	song284_8 + 0xE
	.byte	FINE

@******************************************************@
	.align	2

song284:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song284_pri	@ Priority
	.byte	song284_rev	@ Reverb.

	.word	song284_grp

	.word	song284_0
	.word	song284_1
	.word	song284_2
	.word	song284_3
	.word	song284_4
	.word	song284_5
	.word	song284_6
	.word	song284_7
	.word	song284_8

	.end
