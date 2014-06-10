@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song285_grp, group_21
	.equ	song285_pri, 0
	.equ	song285_rev, 178
	.equ	song285_mvl, 127
	.equ	song285_key, 0
	.equ	song285_tbs, 1
	.equ	song285_exg, 1
	.equ	song285_cmp, 1

	.section .rodata
	.global	song285
	.align	2

@**************** Track 00 ****************************@

song285_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 77
	.byte		VOICE , 18
	.byte		VOL   , 53*song285_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N06   , Cs4 , v127
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N72   , Fn4 
	.byte	W06
	.byte		VOL   , 19*song285_mvl/mxv
	.byte	W18
	.byte		        32*song285_mvl/mxv
	.byte	W06
	.byte		        38*song285_mvl/mxv
	.byte	W06
	.byte		        46*song285_mvl/mxv
	.byte		MOD   , 5
	.byte	W06
	.byte		VOL   , 53*song285_mvl/mxv
	.byte	W06
	.byte		        60*song285_mvl/mxv
	.byte	W06
	.byte		        66*song285_mvl/mxv
	.byte	W06
	.byte		        73*song285_mvl/mxv
	.byte	W12
	.byte		VOICE , 17
	.byte		MOD   , 0
	.byte		VOL   , 63*song285_mvl/mxv
	.byte		PAN   , c_v+28
	.byte	W60
	.byte		N06   , En3 , v120
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N21   , Bn4 , v127
	.byte	W21
	.byte		N03   , As4 , v120
	.byte	W03
	.byte		N24   , An4 , v127
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N03   , Fn4 , v088
	.byte	W03
	.byte		        En4 , v092
	.byte	W03
	.byte		        Ds4 
	.byte	W03
	.byte		        Dn4 
	.byte	W03
	.byte		N36   , Cs4 , v127
	.byte	W36
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 , v120
	.byte	W12
	.byte		        En4 , v127
	.byte	W12
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Dn5 
	.byte	W48
	.byte		        Fs4 
	.byte	W48
	.byte		        Cs5 
	.byte	W48
	.byte	GOTO
	 .word	song285_0 + 0x3C
	.byte	FINE

@**************** Track 01 ****************************@

song285_1:
	.byte	KEYSH , 0
	.byte		VOICE , 18
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song285_mvl/mxv
	.byte		N06   , En5 , v127
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		N72   , Bn4 
	.byte	W06
	.byte		VOL   , 34*song285_mvl/mxv
	.byte	W12
	.byte		        56*song285_mvl/mxv
	.byte	W06
	.byte		        60*song285_mvl/mxv
	.byte	W06
	.byte		        65*song285_mvl/mxv
	.byte	W06
	.byte		        73*song285_mvl/mxv
	.byte		MOD   , 5
	.byte	W06
	.byte		VOL   , 82*song285_mvl/mxv
	.byte	W06
	.byte		        86*song285_mvl/mxv
	.byte	W06
	.byte		        89*song285_mvl/mxv
	.byte	W18
	.byte		VOICE , 17
	.byte		MOD   , 0
	.byte		VOL   , 90*song285_mvl/mxv
	.byte	W12
	.byte		N06   , En4 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        En3 , v120
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
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
	.byte		N03   , Gs4 , v108
	.byte	W03
	.byte		        An4 , v076
	.byte	W03
	.byte		N06   , Gs4 , v120
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
	 .word	song285_1 + 0x40
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song285_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+63
	.byte		VOL   , 45*song285_mvl/mxv
	.byte	W36
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N12   , En2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v-62
	.byte		N12   , En2 , v127
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
	.byte		N03   , Gs2 , v120
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N12   , En2 , v127
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
	.byte		N03   , Bn2 , v120
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 , v127
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
	.byte		N03   , Bn2 , v120
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		PAN   , c_v+63
	.byte		N12   , Gn2 , v127
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
	.byte		        An2 , v120
	.byte	W06
	.byte		PAN   , c_v-62
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		        Cs3 , v120
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Fs2 , v127
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte	GOTO
	 .word	song285_2 + 0x33
	.byte	FINE

@**************** Track 03 ****************************@

song285_3:
	.byte	KEYSH , 0
	.byte		VOICE , 38
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song285_mvl/mxv
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
	.byte		VOL   , 45*song285_mvl/mxv
	.byte	W03
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song285_mvl/mxv
	.byte	W12
	.byte		        90*song285_mvl/mxv
	.byte	W12
	.byte		        90*song285_mvl/mxv
	.byte		MOD   , 0
	.byte		N03
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N06   , En1 
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		        Cs1 
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N06   , En1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N15   , En1 , v120
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W30
	.byte		N06   , As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N15   , Fs1 
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W12
	.byte		        Cs2 
	.byte	W06
	.byte		N09   , Fs1 
	.byte	W12
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W18
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs2 
	.byte	W06
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N06   , As1 
	.byte	W06
	.byte		N03   , Bn1 
	.byte	W06
	.byte		N06   , Fs1 
	.byte	W06
	.byte		N03   , Gn1 
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte		N03   , Dn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N24   , En2 
	.byte	W03
	.byte		BEND  , c_v-12
	.byte	W03
	.byte		        c_v-19
	.byte	W03
	.byte		        c_v-26
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v-40
	.byte	W03
	.byte		        c_v-47
	.byte	W03
	.byte		        c_v-54
	.byte	W03
	.byte	GOTO
	 .word	song285_3 + 0x46
	.byte		BEND  , c_v-63
	.byte	FINE

@**************** Track 04 ****************************@

song285_4:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 45*song285_mvl/mxv
	.byte		PAN   , c_v-29
	.byte		N06   , En6 , v127
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		        Dn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		N48   , Bn5 
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song285_4 + 0x1A
	.byte	FINE

@**************** Track 05 ****************************@

song285_5:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song285_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W60
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte	W12
	.byte		N06   , En4 , v127
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        En3 , v120
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
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
	 .word	song285_5 + 0x26
	.byte	FINE

@**************** Track 06 ****************************@

song285_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 79*song285_mvl/mxv
	.byte	W72
	.byte		N24   , Cn3 , v120
	.byte	W24
	.byte		N06   , Cn1 , v092
	.byte	W18
	.byte		        Cn1 , v056
	.byte	W18
	.byte		        Cs1 , v084
	.byte	W06
	.byte		        Cs1 , v064
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W12
	.byte		N03   , Cn1 , v056
	.byte	W12
	.byte		N06   , Cn1 , v088
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06   , Cn1 , v092
	.byte	W12
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        Cn1 , v056
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Cs1 , v076
	.byte	W06
	.byte		        Dn3 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		N03   , Cn1 , v056
	.byte	W06
	.byte		N06   , Dn3 , v112
	.byte	W06
	.byte		        Dn3 , v056
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Dn3 , v052
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        En3 , v076
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        Cn1 , v056
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Dn3 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W06
	.byte		        Cn1 , v048
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        Cn1 , v056
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Cs1 , v076
	.byte	W06
	.byte		        Cs1 , v068
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        Cs1 , v076
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Cs1 , v076
	.byte	W06
	.byte		        Cn1 , v052
	.byte	W06
	.byte		        Cn1 , v092
	.byte	W12
	.byte		        Cn1 , v112
	.byte	W06
	.byte		        Dn3 , v056
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Cs1 , v076
	.byte	W06
	.byte		        Dn3 , v052
	.byte	W06
	.byte		        Cn1 , v100
	.byte	W06
	.byte		        Cn1 , v076
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W06
	.byte		        Cn1 , v056
	.byte	W06
	.byte		        Dn3 , v112
	.byte	W12
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Cn1 , v052
	.byte	W06
	.byte		        Cs1 , v076
	.byte	W12
	.byte		        Cn1 , v112
	.byte	W06
	.byte		        Cn1 , v056
	.byte	W06
	.byte		        Cs1 , v080
	.byte	W12
	.byte		        Cs1 , v076
	.byte	W06
	.byte		        Dn3 , v052
	.byte	W06
	.byte	GOTO
	 .word	song285_6 + 0x27
	.byte	FINE

@**************** Track 07 ****************************@

song285_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 38*song285_mvl/mxv
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
	 .word	song285_7 + 0x38
	.byte	FINE

@******************************************************@
	.align	2

song285:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song285_pri	@ Priority
	.byte	song285_rev	@ Reverb.

	.word	song285_grp

	.word	song285_0
	.word	song285_1
	.word	song285_2
	.word	song285_3
	.word	song285_4
	.word	song285_5
	.word	song285_6
	.word	song285_7

	.end
