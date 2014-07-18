@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song342_grp, group_21
	.equ	song342_pri, 0
	.equ	song342_rev, 178
	.equ	song342_mvl, 127
	.equ	song342_key, 0
	.equ	song342_tbs, 1
	.equ	song342_exg, 1
	.equ	song342_cmp, 1

	.text
	.global	song342
	.align	2

@**************** Track 00 ****************************@

song342_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 82
	.byte		VOICE , 48
	.byte		VOL   , 53*song342_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Cs3 , v092
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , Dn3 
	.byte	W06
	.byte		PAN   , c_v-16
	.byte		N06   , Ds3 
	.byte	W06
	.byte		PAN   , c_v-43
	.byte		N06   , En3 
	.byte	W06
	.byte		PAN   , c_v-43
	.byte		N72   , Fn3 , v104
	.byte	W02
	.byte		PAN   , c_v-36
	.byte	W03
	.byte		        c_v-32
	.byte	W01
	.byte		VOL   , 19*song342_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-19
	.byte	W04
	.byte		        c_v-17
	.byte	W02
	.byte		        c_v-11
	.byte	W03
	.byte		        c_v-6
	.byte	W03
	.byte		        c_v+3
	.byte	W04
	.byte		VOL   , 32*song342_mvl/mxv
	.byte		PAN   , c_v+6
	.byte	W02
	.byte		        c_v+14
	.byte	W03
	.byte		        c_v+20
	.byte	W01
	.byte		VOL   , 38*song342_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+26
	.byte	W04
	.byte		MOD   , 5
	.byte		VOL   , 46*song342_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W06
	.byte		VOL   , 53*song342_mvl/mxv
	.byte	W06
	.byte		        60*song342_mvl/mxv
	.byte	W06
	.byte		        66*song342_mvl/mxv
	.byte	W06
	.byte		        73*song342_mvl/mxv
	.byte	W12
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		PAN   , c_v+28
	.byte		VOL   , 41*song342_mvl/mxv
	.byte	W96
	.byte		N21   , Bn3 , v127
	.byte	W21
	.byte		N03   , As3 , v120
	.byte	W03
	.byte		N24   , An3 , v127
	.byte	W24
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		N03   , Fn3 , v088
	.byte	W03
	.byte		        En3 , v092
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		N36   , Cs3 , v127
	.byte	W36
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 , v120
	.byte	W12
	.byte		        En3 , v127
	.byte	W12
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte	GOTO
	 .word	song342_0 + 0x5E
	.byte	FINE

@**************** Track 01 ****************************@

song342_1:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song342_mvl/mxv
	.byte		N06   , En4 , v127
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N72   , Bn3 
	.byte	W36
	.byte		MOD   , 5
	.byte	W18
	.byte		VOL   , 89*song342_mvl/mxv
	.byte	W18
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 48*song342_mvl/mxv
	.byte	W96
	.byte		MOD   , 1
	.byte		N36   , En4 , v127
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N03   , Gs3 , v108
	.byte	W03
	.byte		        An3 , v076
	.byte	W03
	.byte		N06   , Gs3 , v120
	.byte	W06
	.byte		N12   , Fs3 , v127
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		N96   , Fn4 
	.byte	W48
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N96   , En4 
	.byte	W48
	.byte		MOD   , 7
	.byte	W48
	.byte	GOTO
	 .word	song342_1 + 0x26
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song342_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 45*song342_mvl/mxv
	.byte	W36
	.byte		N12   , Bn2 , v080
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , En2 , v080
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N03   , Gs2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N03   , Bn2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , Gn2 
	.byte	W12
	.byte		N06   , Dn3 
	.byte	W06
	.byte		N03   , Bn2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		N06   , Cs3 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte	GOTO
	 .word	song342_2 + 0x38
	.byte	FINE

@**************** Track 03 ****************************@

song342_3:
	.byte	KEYSH , 0
	.byte		VOICE , 35
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song342_mvl/mxv
	.byte		N06   , Bn1 , v120
	.byte	W06
	.byte		N03   , Fn2 
	.byte	W06
	.byte		N06   , Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N48   , Bn1 
	.byte	W06
	.byte		VOL   , 45*song342_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song342_mvl/mxv
	.byte	W12
	.byte		        90*song342_mvl/mxv
	.byte	W12
	.byte		        90*song342_mvl/mxv
	.byte		MOD   , 0
	.byte		N03
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		VOL   , 77*song342_mvl/mxv
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N12   , En1 , v127
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte		N03   , Cs2 , v120
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N03   , Ds2 , v120
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		N03   , En2 , v120
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		N12   , Gn2 , v127
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Cn2 , v120
	.byte	W06
	.byte		N12   , Cs2 , v127
	.byte	W12
	.byte		N03   , Fs1 , v120
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Fs1 , v127
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	GOTO
	 .word	song342_3 + 0x48
	.byte	FINE

@**************** Track 04 ****************************@

song342_4:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song342_mvl/mxv
	.byte		BEND  , c_v+2
	.byte		N06   , En4 , v127
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N72   , Bn3 
	.byte	W36
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte		N12   , En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		MOD   , 1
	.byte		N36   , En5 , v127
	.byte	W36
	.byte		        Ds5 
	.byte	W36
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		N03   , Gs4 , v120
	.byte	W03
	.byte		        An4 , v032
	.byte	W03
	.byte		N06   , Gs4 
	.byte	W06
	.byte		N12   , Fs4 , v127
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N96   , Fn5 
	.byte	W48
	.byte		MOD   , 7
	.byte	W48
	.byte		        0
	.byte		N96   , En5 
	.byte	W48
	.byte		MOD   , 7
	.byte	W48
	.byte	GOTO
	 .word	song342_4 + 0x35
	.byte	FINE

@**************** Track 05 ****************************@

song342_5:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song342_mvl/mxv
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Dn1 
	.byte		N24   , Cs2 , v080
	.byte	W24
	.byte		N06   , Cn1 , v120
	.byte		N48   , Cn3 , v080
	.byte	W12
	.byte		N06   , Dn1 , v120
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v096
	.byte		N48   , En2 , v072
	.byte	W18
	.byte		N06   , Cn1 , v096
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06   , Cn1 , v096
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N03
	.byte	W30
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		        Dn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W18
	.byte		        Dn1 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
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
	.byte	W06
	.byte		        Dn1 
	.byte	W24
	.byte	GOTO
	 .word	song342_5 + 0x3A
	.byte	FINE

@**************** Track 06 ****************************@

song342_6:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 38*song342_mvl/mxv
	.byte	W96
	.byte		N06   , Cn5 , v096
	.byte	W12
	.byte		N03   , Cn5 , v044
	.byte	W12
	.byte		N06   , Cn5 , v096
	.byte	W12
	.byte		N03   , Cn5 , v044
	.byte	W12
	.byte		N06   , Cn5 , v096
	.byte	W12
	.byte		N03   , Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W03
	.byte		        Cn5 , v044
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		N06   , Cn5 , v108
	.byte	W12
	.byte		N03   , Cn5 , v052
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		N06   , Cn5 , v112
	.byte	W12
	.byte		N03   , Cn5 , v060
	.byte	W12
	.byte		        Cn5 , v040
	.byte	W12
	.byte		N06   , Cn5 , v096
	.byte	W12
	.byte		N03   , Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v060
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		N06   , Cn5 , v108
	.byte	W12
	.byte		N03   , Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v052
	.byte	W12
	.byte		N06   , Cn5 , v108
	.byte	W12
	.byte		N03   , Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		N06   , Cn5 , v100
	.byte	W12
	.byte		N03   , Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		N06   , Cn5 , v096
	.byte	W12
	.byte		N03   , Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		N06   , Cn5 , v108
	.byte	W12
	.byte		N03   , Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W03
	.byte		VOICE , 126
	.byte	W03
	.byte		N12   , Gn5 , v104
	.byte	W12
	.byte	GOTO
	 .word	song342_6 + 0x38
	.byte	FINE

@******************************************************@
	.align	2

song342:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song342_pri	@ Priority
	.byte	song342_rev	@ Reverb.

	.word	song342_grp

	.word	song342_0
	.word	song342_1
	.word	song342_2
	.word	song342_3
	.word	song342_4
	.word	song342_5
	.word	song342_6

	.end
