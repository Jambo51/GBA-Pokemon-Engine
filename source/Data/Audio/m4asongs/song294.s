@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song294_grp, group_30
	.equ	song294_pri, 0
	.equ	song294_rev, 178
	.equ	song294_mvl, 127
	.equ	song294_key, 0
	.equ	song294_tbs, 1
	.equ	song294_exg, 1
	.equ	song294_cmp, 1

	.section .rodata
	.global	song294
	.align	2

@**************** Track 00 ****************************@

song294_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 62
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 36*song294_mvl/mxv
	.byte		N09   , An2 , v127
	.byte	W18
	.byte		N03   , Fn2 , v120
	.byte	W06
	.byte		N24   , Cn3 , v096
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , As2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , An2 
	.byte	W24
	.byte		VOICE , 60
	.byte		N09   , Gn2 , v127
	.byte	W18
	.byte		N03   , Cn2 , v120
	.byte	W06
	.byte		N24   , An2 , v096
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Cn3 
	.byte	W24
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		N06   , Cn3 , v127
	.byte	W06
	.byte		        Fn3 , v096
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N36   , Cn4 , v127
	.byte	W36
	.byte		N06   , Fn3 , v096
	.byte	W12
	.byte		N24
	.byte	W24
	.byte		        Fn4 , v127
	.byte	W24
	.byte		        Ds4 , v100
	.byte	W24
	.byte		        Dn4 , v096
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N06   , An3 , v127
	.byte	W18
	.byte		        Fn3 , v096
	.byte	W06
	.byte		N72   , Gn3 , v108
	.byte	W72
	.byte		VOL   , 47*song294_mvl/mxv
	.byte		PAN   , c_v-43
	.byte		N09   , Fn2 , v127
	.byte	W18
	.byte		N03   , Dn2 , v120
	.byte	W06
	.byte		N24   , Fn2 
	.byte	W24
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		        En2 , v124
	.byte	W06
	.byte		N03   , Gn2 , v112
	.byte	W03
	.byte		        An2 , v108
	.byte	W03
	.byte		N24   , As2 , v124
	.byte	W12
	.byte		VOL   , 34*song294_mvl/mxv
	.byte	W06
	.byte		        24*song294_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		VOL   , 36*song294_mvl/mxv
	.byte		N36   , Cn4 , v127
	.byte	W36
	.byte		N03   , Fn3 
	.byte	W06
	.byte		        Fn3 , v120
	.byte	W06
	.byte		N24   , Fn3 , v127
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N06   , En4 
	.byte	W06
	.byte		N72   , Fn4 
	.byte	W72
	.byte		N18   , Cn4 
	.byte	W18
	.byte		N06   , As3 
	.byte	W06
	.byte		N48   , An3 
	.byte	W48
	.byte		N24   , Fn4 
	.byte	W24
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		N03   , En4 , v120
	.byte	W03
	.byte		N09   , Ds4 , v127
	.byte	W09
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N03   , En3 , v120
	.byte	W03
	.byte		N09   , Ds3 , v127
	.byte	W09
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N03   , Fs4 , v120
	.byte	W03
	.byte		N09   , Fn4 , v127
	.byte	W09
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N16   , As3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		N16
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		        As3 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N16   , Cn4 
	.byte	W16
	.byte		        Dn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte	GOTO
	 .word	song294_0 + 0x46
	.byte	FINE

@**************** Track 01 ****************************@

song294_1:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		N09   , Fn3 , v108
	.byte	W18
	.byte		N03   , Gn3 
	.byte	W06
	.byte		N72   , Fn3 
	.byte	W15
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        21*song294_mvl/mxv
	.byte	W06
	.byte		        11*song294_mvl/mxv
	.byte	W06
	.byte		        5*song294_mvl/mxv
	.byte	W12
	.byte		VOICE , 60
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N09   , Cn3 
	.byte	W18
	.byte		N03   , Cs3 
	.byte	W06
	.byte		N48   , Cn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W06
	.byte		VOICE , 56
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Fn3 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		N36   , Fn4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N06   , Cn4 
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        An4 
	.byte	W18
	.byte		        Fn4 
	.byte	W06
	.byte		N72   , Cn4 , v120
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W06
	.byte		        72*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        63*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        50*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W12
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		N09   , Cn3 , v127
	.byte	W18
	.byte		N03   , Cs3 , v100
	.byte	W06
	.byte		N24   , Cn3 , v112
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+16
	.byte		N06   , En3 , v096
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		N03   , En3 , v080
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		MOD   , 0
	.byte		N24   , Gn3 , v096
	.byte	W06
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W03
	.byte		        72*song294_mvl/mxv
	.byte	W03
	.byte		        66*song294_mvl/mxv
	.byte	W03
	.byte		        58*song294_mvl/mxv
	.byte	W03
	.byte		        45*song294_mvl/mxv
	.byte	W03
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N36   , Fn4 , v088
	.byte	W12
	.byte		MOD   , 6
	.byte	W06
	.byte		VOL   , 86*song294_mvl/mxv
	.byte	W06
	.byte		        79*song294_mvl/mxv
	.byte	W06
	.byte		        74*song294_mvl/mxv
	.byte	W06
	.byte		        90*song294_mvl/mxv
	.byte		N06   , Cn4 , v084
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		N06   , Fn4 , v064
	.byte	W12
	.byte		        Cn4 , v092
	.byte	W06
	.byte		N03   , Fn4 , v052
	.byte	W03
	.byte		        An4 , v088
	.byte	W03
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , As4 
	.byte	W06
	.byte		        Dn5 , v068
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N18   , Cn5 , v096
	.byte	W18
	.byte		N06   , As4 , v076
	.byte	W06
	.byte		TIE   , An4 , v084
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W09
	.byte		        34*song294_mvl/mxv
	.byte	W09
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        17*song294_mvl/mxv
	.byte	W06
	.byte		        11*song294_mvl/mxv
	.byte	W12
	.byte	W54
	.byte		        15*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W03
	.byte		        52*song294_mvl/mxv
	.byte	W03
	.byte		        61*song294_mvl/mxv
	.byte	W03
	.byte		        71*song294_mvl/mxv
	.byte	W03
	.byte		        79*song294_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte		MOD   , 0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		N16   , As4 , v092
	.byte	W16
	.byte		        An4 
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte		N03   , Gs4 , v072
	.byte	W03
	.byte		N44   , Gn4 , v092
	.byte	W09
	.byte		MOD   , 6
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W12
	.byte		        68*song294_mvl/mxv
	.byte	W12
	.byte		        56*song294_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte	W72
	.byte		VOICE , 73
	.byte		N24   , Gn5 , v080
	.byte	W24
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		N16   , An5 , v072
	.byte	W16
	.byte		        Gn5 
	.byte	W16
	.byte		N13   , Fn5 
	.byte	W16
	.byte		N03   , Fs5 , v060
	.byte	W03
	.byte		N44   , Fn5 , v076
	.byte	W09
	.byte		MOD   , 6
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W12
	.byte		        68*song294_mvl/mxv
	.byte	W12
	.byte		        56*song294_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte	W72
	.byte		VOICE , 56
	.byte		N24   , Fn4 , v127
	.byte	W24
	.byte		N16   , Gn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        Cn4 
	.byte	W16
	.byte		TIE   , Cn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W18
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		N48   , As4 
	.byte	W01
	.byte		EOT   , Cn5 
	.byte	W11
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W06
	.byte		        73*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        62*song294_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 90*song294_mvl/mxv
	.byte		N06   , An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		TIE   , Fn4 , v120
	.byte	W24
	.byte		MOD   , 6
	.byte		VOL   , 79*song294_mvl/mxv
	.byte	W06
	.byte		        72*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        61*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        50*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W06
	.byte		        38*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        27*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        15*song294_mvl/mxv
	.byte	W09
	.byte		        11*song294_mvl/mxv
	.byte	W36
	.byte	W03
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte	W06
	.byte		        56*song294_mvl/mxv
	.byte	W06
	.byte		        68*song294_mvl/mxv
	.byte	W06
	.byte		        79*song294_mvl/mxv
	.byte	W12
	.byte		EOT
	.byte	GOTO
	 .word	song294_1 + 0x55
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song294_2:
	.byte	KEYSH , 0
	.byte		VOICE , 14
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-1
	.byte		VOL   , 68*song294_mvl/mxv
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
	.byte		PAN   , c_v-32
	.byte		N48   , Ds5 , v072
	.byte	W48
	.byte		PAN   , c_v+44
	.byte		N48   , As4 
	.byte	W48
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		N48   , Fn5 
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N48   , Cn5 
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song294_2 + 0xE
	.byte	FINE

@**************** Track 03 ****************************@

song294_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 49*song294_mvl/mxv
	.byte		N06   , Fn1 , v127
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fn1 , v127
	.byte	W12
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		N06   , Fn1 , v127
	.byte	W12
	.byte		N24   , Cn1 , v120
	.byte	W24
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N06   , As1 
	.byte	W06
	.byte		        As1 , v120
	.byte	W06
	.byte		        An1 , v127
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N36   , Fn1 , v127
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Cn2 
	.byte	W24
	.byte		N06   , Fn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        As1 
	.byte	W12
	.byte		        Cn2 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N03   , Bn1 , v120
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte		N06   , Fn1 , v127
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W24
	.byte		        An1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Fn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N12   , Fn1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W24
	.byte		        Bn1 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , En1 
	.byte	W24
	.byte		        Gs1 
	.byte	W12
	.byte		N06   , An1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Fn1 
	.byte	W24
	.byte		        En2 
	.byte	W12
	.byte		N06   , Fn2 
	.byte	W24
	.byte		        Fn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		N03   , Fn1 
	.byte	W03
	.byte		        Fn1 , v120
	.byte	W03
	.byte		N06
	.byte	W06
	.byte		N03   , Fn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte	GOTO
	 .word	song294_3 + 0x2A
	.byte	FINE

@**************** Track 04 ****************************@

song294_4:
	.byte	KEYSH , 0
	.byte		VOICE , 46
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 34*song294_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 46
	.byte		VOL   , 45*song294_mvl/mxv
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N03   , Fn4 , v120
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , Cn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N03   , En5 
	.byte	W03
	.byte		        Fn5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		PAN   , c_v-32
	.byte		N03   , Fn5 
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		N24   , Cn6 
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 60
	.byte	W48
	.byte		PAN   , c_v+0
	.byte		N06   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N24   , Cn4 
	.byte	W12
	.byte		MOD   , 6
	.byte		VOL   , 35*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		VOICE , 56
	.byte		PAN   , c_v+32
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N03   , As3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N24   , Ds4 
	.byte	W06
	.byte		MOD   , 5
	.byte	W18
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		PAN   , c_v+31
	.byte		N16   , Gn3 , v100
	.byte	W16
	.byte		        Fn3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		N48   , As3 
	.byte	W12
	.byte		VOL   , 34*song294_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 28*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        16*song294_mvl/mxv
	.byte	W06
	.byte		        11*song294_mvl/mxv
	.byte	W12
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		PAN   , c_v-32
	.byte		VOL   , 51*song294_mvl/mxv
	.byte		N03   , An3 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		PAN   , c_v+31
	.byte		N24   , Fn4 
	.byte	W06
	.byte		MOD   , 5
	.byte	W18
	.byte		VOICE , 60
	.byte		MOD   , 0
	.byte		PAN   , c_v+31
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		N03   , Fs3 , v092
	.byte	W03
	.byte		N13   , Fn3 , v100
	.byte	W13
	.byte		N16   , En3 
	.byte	W16
	.byte		        Fn3 
	.byte	W16
	.byte		N48   , An3 
	.byte	W12
	.byte		VOL   , 34*song294_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 28*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        16*song294_mvl/mxv
	.byte	W06
	.byte		        11*song294_mvl/mxv
	.byte	W12
	.byte		VOICE , 56
	.byte		MOD   , 0
	.byte		PAN   , c_v-33
	.byte		VOL   , 51*song294_mvl/mxv
	.byte		N03   , En3 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W21
	.byte		N03
	.byte	W06
	.byte		        Gn3 
	.byte	W09
	.byte		VOICE , 60
	.byte		PAN   , c_v+31
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		N16   , Cn4 , v100
	.byte	W16
	.byte		        As3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
	.byte		VOICE , 60
	.byte		N16
	.byte	W16
	.byte		        Fn3 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		N48   , Gn4 
	.byte	W12
	.byte		VOL   , 34*song294_mvl/mxv
	.byte	W03
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 28*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        16*song294_mvl/mxv
	.byte	W06
	.byte		        11*song294_mvl/mxv
	.byte	W12
	.byte		        45*song294_mvl/mxv
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song294_4 + 0xE
	.byte	FINE

@**************** Track 05 ****************************@

song294_5:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-33
	.byte		VOL   , 68*song294_mvl/mxv
	.byte	W96
	.byte	W72
	.byte		PAN   , c_v+32
	.byte		N06   , Fn1 , v127
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		PAN   , c_v-39
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Fn2 
	.byte	W24
	.byte		PAN   , c_v-42
	.byte		N12   , Cn2 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		VOL   , 79*song294_mvl/mxv
	.byte		N24   , Gn2 
	.byte	W60
	.byte		PAN   , c_v-39
	.byte		N24   , Gn1 , v120
	.byte	W24
	.byte		N06   , As1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		VOICE , 47
	.byte		PAN   , c_v+32
	.byte		N18   , Fn2 
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N06   , Fn2 , v120
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W36
	.byte		PAN   , c_v+32
	.byte	W48
	.byte		VOICE , 47
	.byte		N12   , Fn2 , v127
	.byte	W12
	.byte		PAN   , c_v-40
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N24   , Fn2 
	.byte	W36
	.byte		PAN   , c_v-40
	.byte		N03   , Cn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N06   , Fn2 
	.byte	W12
	.byte		PAN   , c_v-40
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N24   , Fn2 
	.byte	W24
	.byte		PAN   , c_v-40
	.byte		N24   , Gn1 
	.byte	W60
	.byte		N24
	.byte	W24
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N15   , Fn2 
	.byte	W12
	.byte		PAN   , c_v-40
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N24   , Fn2 
	.byte	W36
	.byte		PAN   , c_v-39
	.byte		N24   , Fn1 
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N03   , Cn2 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		PAN   , c_v+32
	.byte		N24   , Fn2 
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N06   , Cn2 , v120
	.byte	W12
	.byte		N24   , Fn1 
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N06   , An1 , v127
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N24   , Fn1 
	.byte	W36
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		N12   , Cn2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Fn1 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N12   , Cn1 
	.byte	W12
	.byte	GOTO
	 .word	song294_5 + 0x20
	.byte	FINE

@**************** Track 06 ****************************@

song294_6:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		BEND  , c_v+1
	.byte	W36
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 29*song294_mvl/mxv
	.byte	W06
	.byte		        26*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        18*song294_mvl/mxv
	.byte	W06
	.byte		        16*song294_mvl/mxv
	.byte	W06
	.byte		        11*song294_mvl/mxv
	.byte	W06
	.byte		        7*song294_mvl/mxv
	.byte	W06
	.byte		        3*song294_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N09   , Cn2 , v080
	.byte	W18
	.byte		N03   , Cs2 
	.byte	W06
	.byte		N48   , Cn2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 28*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        17*song294_mvl/mxv
	.byte	W06
	.byte		        11*song294_mvl/mxv
	.byte	W06
	.byte		        45*song294_mvl/mxv
	.byte		PAN   , c_v-62
	.byte		MOD   , 0
	.byte		N06   , Fn2 , v127
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		VOICE , 80
	.byte		PAN   , c_v-64
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , An1 , v120
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Ds2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Ds3 
	.byte	W12
	.byte		N03   , As2 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N06   , Gn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N18   , An3 
	.byte	W18
	.byte		N06   , Cn4 
	.byte	W06
	.byte		N48   , Fn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 34*song294_mvl/mxv
	.byte	W06
	.byte		        28*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		        16*song294_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Gn3 
	.byte	W12
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N06   , Gn3 
	.byte	W06
	.byte		N48   , An3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 39*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        27*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , En3 , v092
	.byte	W12
	.byte		        Cn3 
	.byte	W06
	.byte		N03   , En3 , v072
	.byte	W03
	.byte		        Fn3 
	.byte	W03
	.byte		N24   , Gn3 , v096
	.byte	W06
	.byte		MOD   , 7
	.byte	W18
	.byte		        0
	.byte		N06   , An2 , v120
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W09
	.byte		        An1 
	.byte	W09
	.byte		        Fn1 
	.byte	W06
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		PAN   , c_v+0
	.byte		N03   , As2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , Fn3 
	.byte	W03
	.byte		        En3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N24   , Gn2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N24   , An2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N24   , As2 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N18   , Fn2 
	.byte	W18
	.byte		N06   , An2 
	.byte	W06
	.byte		N48   , Cn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 39*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        27*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , An2 
	.byte	W12
	.byte		        Fn2 
	.byte	W06
	.byte		N03   , An2 
	.byte	W03
	.byte		        Cn3 
	.byte	W03
	.byte		N48   , Fn3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 39*song294_mvl/mxv
	.byte	W06
	.byte		        34*song294_mvl/mxv
	.byte	W06
	.byte		        27*song294_mvl/mxv
	.byte	W06
	.byte		        22*song294_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		VOL   , 45*song294_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		N03   , An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N24   , Cn4 
	.byte	W24
	.byte		VOICE , 83
	.byte		N06   , As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Ds3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , As1 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Ds2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , An2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , En2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An1 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte	W06
	.byte		N06   , An2 
	.byte	W06
	.byte		VOICE , 80
	.byte		PAN   , c_v+63
	.byte		N03   , Cn3 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N03   , Fn2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N03   , As2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		PAN   , c_v-64
	.byte		N03   , En2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		        As1 
	.byte	W03
	.byte	GOTO
	 .word	song294_6 + 0x56
	.byte	FINE

@**************** Track 07 ****************************@

song294_7:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 29*song294_mvl/mxv
	.byte	W36
	.byte		MOD   , 5
	.byte	W60
	.byte		        0
	.byte		N09   , Fn2 , v120
	.byte	W18
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N48   , Fn2 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte	W24
	.byte		N36   , An4 , v120
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N06   , Ds4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		N18   , Fn4 
	.byte	W18
	.byte		N06   , As3 
	.byte	W06
	.byte		N72   , Cn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W60
	.byte		        0
	.byte		N09   , Bn2 
	.byte	W18
	.byte		N03   , Cn3 
	.byte	W03
	.byte		N36   , Bn2 
	.byte	W15
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N06   , An2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N24   , Dn2 
	.byte	W24
	.byte		N36   , An4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N06   , Fn4 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        An4 
	.byte	W12
	.byte		        Fn4 
	.byte	W06
	.byte		N03   , An4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Cn5 
	.byte	W24
	.byte		N06   , Fn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W03
	.byte		        Fn4 
	.byte	W09
	.byte		N18   , An4 
	.byte	W18
	.byte		N06   , Gn4 
	.byte	W06
	.byte		N30   , Fn4 
	.byte	W30
	.byte		N03   , Gn4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		        Cn5 
	.byte	W03
	.byte		        Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		N96   , Fn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte	W72
	.byte		        0
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N16   , Gn4 , v127
	.byte	W16
	.byte		        Fn4 
	.byte	W16
	.byte		        Ds4 
	.byte	W16
	.byte		N03   , En4 , v080
	.byte	W03
	.byte		N44   , Ds4 , v120
	.byte	W09
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte	W72
	.byte		N24   , As3 
	.byte	W24
	.byte		N16   , Cn4 , v127
	.byte	W16
	.byte		        As3 
	.byte	W16
	.byte		N13   , An3 
	.byte	W16
	.byte		N03   , As3 , v076
	.byte	W03
	.byte		N44   , An3 , v120
	.byte	W09
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte	W72
	.byte		N24   , An4 
	.byte	W24
	.byte		N16   , As4 , v127
	.byte	W16
	.byte		        Gn4 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		TIE   , En5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte	W48
	.byte		        0
	.byte		N48   , Dn5 
	.byte	W01
	.byte		EOT   , En5 
	.byte	W11
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte		N06   , Cn5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N24   , Fn5 , v120
	.byte	W24
	.byte		N06   , En5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		N42   , Cn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W30
	.byte		N03   , Dn5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N44   , Fn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W32
	.byte	W01
	.byte		N03   , Fs5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N48   , Gn5 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte	GOTO
	 .word	song294_7 + 0x25
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 08 ****************************@

song294_8:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 70*song294_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W48
	.byte		PAN   , c_v+32
	.byte		N48   , Cn3 , v120
	.byte	W06
	.byte		PAN   , c_v+24
	.byte	W06
	.byte		        c_v+16
	.byte	W12
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-24
	.byte	W06
	.byte		        c_v-32
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song294_mvl/mxv
	.byte		N48   , Gn2 , v127
	.byte	W48
	.byte		VOL   , 70*song294_mvl/mxv
	.byte	W24
	.byte		N24   , Cs2 , v120
	.byte	W24
	.byte		N48   , Bn2 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        Gn2 
	.byte	W72
	.byte		N24   , Cs2 
	.byte	W24
	.byte		N48   , Bn2 
	.byte	W96
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N48   , Cn3 
	.byte	W06
	.byte		PAN   , c_v-24
	.byte	W06
	.byte		        c_v-16
	.byte	W12
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+24
	.byte	W06
	.byte		        c_v+32
	.byte	W12
	.byte		        c_v+0
	.byte		N48   , Cs2 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	song294_8 + 0x9
	.byte	GOTO
	 .word	song294_8 + 0x1C
	.byte		PAN   , c_v+1
	.byte	FINE

@**************** Track 09 ****************************@

song294_9:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 45*song294_mvl/mxv
	.byte	W96
	.byte	W72
	.byte		        49*song294_mvl/mxv
	.byte		N01   , An3 , v112
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		VOL   , 39*song294_mvl/mxv
	.byte		N12   , Gn3 , v127
	.byte	W24
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 , v127
	.byte	W24
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 , v127
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte		N06   , Gn3 , v127
	.byte	W24
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N07   , An3 , v096
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte	PEND
	.byte		N06   , Gn3 , v127
	.byte	W24
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song294_9 + 0x74
	.byte	PATT
	 .word	song294_9 + 0x3E
	.byte	PATT
	 .word	song294_9 + 0x57
	.byte	PATT
	 .word	song294_9 + 0x74
	.byte	PATT
	 .word	song294_9 + 0x74
	.byte	PATT
	 .word	song294_9 + 0x3E
	.byte	PATT
	 .word	song294_9 + 0x57
	.byte		N06   , Gn3 , v127
	.byte	W24
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte	PATT
	 .word	song294_9 + 0x74
	.byte	PATT
	 .word	song294_9 + 0x3E
	.byte	PATT
	 .word	song294_9 + 0x57
	.byte		N06   , Gn3 , v127
	.byte	W24
	.byte		N01   , An3 , v096
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte	GOTO
	 .word	song294_9 + 0x1E
	.byte	FINE

@******************************************************@
	.align	2

song294:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song294_pri	@ Priority
	.byte	song294_rev	@ Reverb.

	.word	song294_grp

	.word	song294_0
	.word	song294_1
	.word	song294_2
	.word	song294_3
	.word	song294_4
	.word	song294_5
	.word	song294_6
	.word	song294_7
	.word	song294_8
	.word	song294_9

	.end
