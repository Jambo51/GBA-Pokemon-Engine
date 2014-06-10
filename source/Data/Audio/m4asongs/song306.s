@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song306_grp, group_42
	.equ	song306_pri, 0
	.equ	song306_rev, 178
	.equ	song306_mvl, 127
	.equ	song306_key, 0
	.equ	song306_tbs, 1
	.equ	song306_exg, 1
	.equ	song306_cmp, 1

	.section .rodata
	.global	song306
	.align	2

@**************** Track 00 ****************************@

song306_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 67
	.byte		VOICE , 17
	.byte		PAN   , c_v+32
	.byte		VOL   , 68*song306_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte	W24
	.byte		N72   , Cn6 , v080
	.byte	W72
	.byte		VOICE , 1
	.byte		VOL   , 45*song306_mvl/mxv
	.byte		N06   , Gs4 , v127
	.byte	W44
	.byte	W02
	.byte		N06
	.byte	W48
	.byte		        Cn4 
	.byte	W02
	.byte		VOICE , 1
	.byte		VOL   , 39*song306_mvl/mxv
	.byte	W44
	.byte	W02
	.byte		N06   , Cs4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		N06
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N06
	.byte	W48
	.byte		        Cs4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		        Gn4 
	.byte	W48
	.byte		        Cs4 
	.byte	W02
	.byte	W04
	.byte		        Cn4 
	.byte	W06
	.byte		        Gs3 
	.byte	W36
	.byte		        Fn3 
	.byte	W48
	.byte		N06
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		        Gn3 
	.byte	W48
	.byte		        Fn3 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		        Gs3 
	.byte	W48
	.byte		N06
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N06   , Gn3 , v127
	.byte	W48
	.byte		N06
	.byte	W02
	.byte	PEND
	.byte	W44
	.byte	W02
	.byte		        Gs3 
	.byte	W48
	.byte		        Fn3 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		        Ds3 
	.byte	W48
	.byte		        Fn3 
	.byte	W02
	.byte	PATT
	 .word	song306_0 + 0x4E
	.byte	W44
	.byte	W02
	.byte		N06   , Gn3 , v127
	.byte	W48
	.byte		        Cn4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N06
	.byte	W44
	.byte	W01
	.byte		N06
	.byte	W05
	.byte	W42
	.byte	W01
	.byte		N06
	.byte	W48
	.byte	W03
	.byte		        Dn4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N06
	.byte	W48
	.byte		        Cs4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Ds4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N06
	.byte	W48
	.byte		        As3 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N06
	.byte	W48
	.byte		N48   , Cn4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N48
	.byte	W48
	.byte		        Cs4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N48
	.byte	W48
	.byte		        Dn4 
	.byte	W02
	.byte	W44
	.byte	W02
	.byte		N48
	.byte	W48
	.byte		N96   , Ds4 
	.byte	W02
	.byte	W96
	.byte		VOICE , 58
	.byte		MOD   , 10
	.byte		PAN   , c_v-30
	.byte		BEND  , c_v+1
	.byte		N06   , Gn4 , v068
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Gs4 , v080
	.byte	W24
	.byte		        Gn4 , v084
	.byte	W24
	.byte		        Gn4 , v100
	.byte	W96
	.byte		MOD   , 13
	.byte		PAN   , c_v+32
	.byte		BEND  , c_v+1
	.byte		N06   , Gn4 , v088
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Gs4 , v100
	.byte	W24
	.byte		        Gn4 , v104
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N06   , Gn4 , v112
	.byte	W96
	.byte		VOICE , 1
	.byte		MOD   , 0
	.byte		N24   , Cn5 , v100
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		N24   , Cn5 , v100
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song306_0 + 0xEA
	.byte		N24   , Cn5 , v100
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		TIE   , Cs5 
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte	GOTO
	 .word	song306_0 + 0x13
	.byte	FINE

@**************** Track 01 ****************************@

song306_1:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		N72   , Cs6 , v080
	.byte	W24
	.byte		VOL   , 85*song306_mvl/mxv
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        74*song306_mvl/mxv
	.byte	W12
	.byte		        70*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Fn5 
	.byte	W24
	.byte		VOICE , 24
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N12   , Cs5 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W06
	.byte		        79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn5 , v088
	.byte	W06
	.byte		MOD   , 6
	.byte	W18
	.byte		VOICE , 24
	.byte		MOD   , 0
	.byte		N06   , Gs3 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		VOICE , 75
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		N48   , Gs3 , v092
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W06
	.byte		        79*song306_mvl/mxv
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Cs4 , v096
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W06
	.byte		        79*song306_mvl/mxv
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Fn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		BEND  , c_v+5
	.byte		N96   , Cs4 
	.byte	W03
	.byte		BEND  , c_v+0
	.byte	W15
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		VOICE , 24
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , Gs3 , v127
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fn3 
	.byte	W12
	.byte		VOICE , 17
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		N24   , Gs4 , v092
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cs5 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N96   , Cs5 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		TIE   , Fn5 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		MOD   , 0
	.byte	W18
	.byte		EOT
	.byte		VOICE , 75
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		BEND  , c_v-9
	.byte		N30   , Cs4 , v096
	.byte	W03
	.byte		BEND  , c_v-5
	.byte	W03
	.byte		        c_v+0
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Fn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N72   , Gn3 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W36
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Gs3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Gn3 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cn4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Fn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Cn4 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		VOICE , 17
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cs6 , v068
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs5 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gn5 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Fn5 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Cs6 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		VOICE , 48
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Ds5 , v060
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , As4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , An4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Ds5 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		VOICE , 75
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Fn4 , v096
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cn4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , As3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Fs4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cs4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , An3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Ds4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Cs4 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Bn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , An3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Gn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Fn3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		N24   , Ds3 
	.byte	W12
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		TIE   , Cs3 
	.byte	W24
	.byte		VOL   , 79*song306_mvl/mxv
	.byte		MOD   , 7
	.byte	W24
	.byte		VOL   , 72*song306_mvl/mxv
	.byte	W24
	.byte		        68*song306_mvl/mxv
	.byte	W24
	.byte		VOL   , 62*song306_mvl/mxv
	.byte	W24
	.byte		        56*song306_mvl/mxv
	.byte	W24
	.byte		        50*song306_mvl/mxv
	.byte	W24
	.byte		        45*song306_mvl/mxv
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		MOD   , 0
	.byte	W96
	.byte		VOICE , 78
	.byte		VOL   , 90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Gs3 , v032
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Cs4 
	.byte	W18
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W03
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W60
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Cn4 
	.byte	W15
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W06
	.byte		        79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Gs3 
	.byte	W15
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W06
	.byte		        79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Fn3 
	.byte	W15
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W06
	.byte		        79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Gs3 
	.byte	W15
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 85*song306_mvl/mxv
	.byte	W06
	.byte		        79*song306_mvl/mxv
	.byte	W06
	.byte		        73*song306_mvl/mxv
	.byte	W06
	.byte		        68*song306_mvl/mxv
	.byte	W12
	.byte		        90*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		TIE   , Cs4 
	.byte	W24
	.byte		VOL   , 79*song306_mvl/mxv
	.byte		MOD   , 11
	.byte	W24
	.byte		VOL   , 72*song306_mvl/mxv
	.byte	W24
	.byte		        68*song306_mvl/mxv
	.byte	W24
	.byte	PATT
	 .word	song306_1 + 0x29D
	.byte		EOT   , Cs4 
	.byte	GOTO
	 .word	song306_1 + 0x22
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song306_2:
	.byte	KEYSH , 0
	.byte		VOICE , 17
	.byte		PAN   , c_v-32
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 63*song306_mvl/mxv
	.byte	W48
	.byte		N48   , Gs5 , v080
	.byte	W48
	.byte		VOICE , 24
	.byte		VOL   , 53*song306_mvl/mxv
	.byte		N06   , Fn4 , v127
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		VOICE , 24
	.byte		VOL   , 48*song306_mvl/mxv
	.byte		N06
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Fn4 
	.byte	W48
	.byte		        Gs4 
	.byte	W48
	.byte		        Fn4 
	.byte	W48
	.byte		        Cs5 
	.byte	W48
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Cn4 
	.byte	W36
	.byte		N06
	.byte	W48
	.byte		N06   , Cn4 , v127
	.byte	W48
	.byte		N06
	.byte	W48
	.byte	PEND
	.byte		N06   , Cs4 , v127
	.byte	W48
	.byte		N06
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	song306_2 + 0x42
	.byte	PATT
	 .word	song306_2 + 0x3B
	.byte	PATT
	 .word	song306_2 + 0x3B
	.byte		N06   , Cs4 , v127
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte		N06   , Fn4 , v127
	.byte	W48
	.byte		N06
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	song306_2 + 0x62
	.byte	PATT
	 .word	song306_2 + 0x62
	.byte		N06   , Fn4 , v127
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		N06   , Gn4 , v127
	.byte	W48
	.byte		N06
	.byte	W48
	.byte	PEND
	.byte		        Ds4 
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PATT
	 .word	song306_2 + 0x62
	.byte		N06   , Fs4 , v127
	.byte	W48
	.byte		N06
	.byte	W48
	.byte	PATT
	 .word	song306_2 + 0x7B
	.byte		N06   , Gs4 , v127
	.byte	W96
	.byte		N06   , Gn3 , v127
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte	PEND
	.byte		N06
	.byte	W96
	.byte	PATT
	 .word	song306_2 + 0x9E
	.byte		N06   , Gn3 , v127
	.byte	W48
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		VOICE , 14
	.byte		N48   , Fn4 , v076
	.byte	W48
	.byte		        Fn4 , v028
	.byte	W48
	.byte		N48   , Fn4 , v076
	.byte	W48
	.byte		        Fn4 , v028
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	song306_2 + 0xC5
	.byte	PATT
	 .word	song306_2 + 0xC5
	.byte		N48   , Fn4 , v076
	.byte	W48
	.byte		        Fn4 , v032
	.byte	W48
	.byte		        Fn4 , v076
	.byte	W48
	.byte		VOICE , 24
	.byte		N06   , Fn4 , v127
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	GOTO
	 .word	song306_2 + 0x11
	.byte	FINE

@**************** Track 03 ****************************@

song306_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 34*song306_mvl/mxv
	.byte	W96
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Fn1 , v096
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N24   , Gs1 
	.byte	W06
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		N06   , Fn1 
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N24   , Cn1 
	.byte	W06
	.byte		MOD   , 11
	.byte	W03
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Gs1 
	.byte	W36
	.byte		        Fn1 
	.byte	W24
	.byte		N24   , Gs1 
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , Fn1 
	.byte	W48
	.byte		        Gn1 
	.byte	W48
	.byte		        Gs1 
	.byte	W48
	.byte		        Fn1 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte		        Gs1 
	.byte	W24
	.byte		N24   , Fn1 
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , Gn1 
	.byte	W48
	.byte		        Gs1 
	.byte	W24
	.byte		N24
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , Fn1 , v127
	.byte	W48
	.byte		        Ds1 
	.byte	W48
	.byte		        Fn1 
	.byte	W48
	.byte		        Gs1 
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		        Gn1 
	.byte	W24
	.byte		N24   , Cn1 , v096
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , Cn2 , v127
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N24   , Fn1 , v096
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , Cn2 , v127
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N24   , Fn1 , v120
	.byte	W24
	.byte		N06   , Dn2 , v127
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N24   , Fn1 , v120
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , Cs2 , v127
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N24   , Cs1 , v096
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , Ds2 , v127
	.byte	W48
	.byte		N06
	.byte	W24
	.byte		N24   , Ds1 , v096
	.byte	W09
	.byte		VOL   , 28*song306_mvl/mxv
	.byte	W03
	.byte		        22*song306_mvl/mxv
	.byte	W03
	.byte		        18*song306_mvl/mxv
	.byte	W03
	.byte		        13*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N06   , As1 , v127
	.byte	W48
	.byte		N06
	.byte	W48
	.byte		N48   , Cn2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W12
	.byte		        11*song306_mvl/mxv
	.byte		MOD   , 16
	.byte	W12
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W12
	.byte		        11*song306_mvl/mxv
	.byte		MOD   , 16
	.byte	W12
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Cs2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W12
	.byte		        11*song306_mvl/mxv
	.byte		MOD   , 16
	.byte	W12
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W12
	.byte		        11*song306_mvl/mxv
	.byte		MOD   , 16
	.byte	W12
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Dn2 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W12
	.byte		        11*song306_mvl/mxv
	.byte		MOD   , 16
	.byte	W12
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N48
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W12
	.byte		        11*song306_mvl/mxv
	.byte		MOD   , 16
	.byte	W12
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Ds2 
	.byte	W12
	.byte		MOD   , 6
	.byte		BEND  , c_v-5
	.byte	W06
	.byte		        c_v-9
	.byte	W06
	.byte		VOL   , 22*song306_mvl/mxv
	.byte		BEND  , c_v-16
	.byte	W06
	.byte		        c_v-21
	.byte	W06
	.byte		VOL   , 17*song306_mvl/mxv
	.byte		MOD   , 16
	.byte		BEND  , c_v-25
	.byte	W06
	.byte		        c_v-28
	.byte	W06
	.byte		VOL   , 11*song306_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W06
	.byte		        c_v-36
	.byte	W06
	.byte		        c_v-43
	.byte	W06
	.byte		        c_v-48
	.byte	W06
	.byte		        c_v-55
	.byte	W06
	.byte		        c_v-60
	.byte	W06
	.byte		        c_v-64
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOL   , 34*song306_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N24   , Cn5 , v064
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N24   , Fn5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N24   , Ds5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N24   , Cs5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N24   , Fn5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N24   , Ds5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N24   , Cs5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N24   , Fn5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N24   , Ds5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N24   , Cs5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		N24   , Cn5 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N24   , Gs4 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N24   , Gn4 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N24   , Fn4 
	.byte	W12
	.byte		VOL   , 22*song306_mvl/mxv
	.byte	W06
	.byte		        11*song306_mvl/mxv
	.byte	W06
	.byte		        34*song306_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Cs5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 27*song306_mvl/mxv
	.byte	W24
	.byte		        22*song306_mvl/mxv
	.byte	W24
	.byte		        17*song306_mvl/mxv
	.byte	W24
	.byte		        11*song306_mvl/mxv
	.byte	W96
	.byte		EOT
	.byte	GOTO
	 .word	song306_3 + 0xD
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 04 ****************************@

song306_4:
	.byte	KEYSH , 0
	.byte		VOL   , 55*song306_mvl/mxv
	.byte		PAN   , c_v+18
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
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N06   , Fn5 , v060
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 73
	.byte	W96
	.byte	W48
	.byte		MOD   , 8
	.byte		N06   , Fn4 , v080
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	GOTO
	 .word	song306_4 + 0x7
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 05 ****************************@

song306_5:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 78*song306_mvl/mxv
	.byte	W96
	.byte		N24   , Ds5 , v120
	.byte	W48
	.byte		        Ds5 , v096
	.byte	W24
	.byte		        Ds3 , v124
	.byte	W24
	.byte		N24   , Ds5 , v120
	.byte	W24
	.byte		        Cs3 , v096
	.byte	W24
	.byte		        Ds5 , v120
	.byte	W48
	.byte	PEND
	.byte		N24   , Ds5 , v120
	.byte	W48
	.byte		N24
	.byte	W24
	.byte		        Cs3 , v096
	.byte	W24
	.byte	PEND
	.byte		N24   , Ds5 , v120
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        Dn5 , v080
	.byte	W24
	.byte		        Ds3 , v096
	.byte	W24
	.byte	PEND
	.byte		N24   , Ds5 , v120
	.byte	W48
	.byte		N24
	.byte	W24
	.byte		        Ds3 , v096
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song306_5 + 0x13
	.byte	PATT
	 .word	song306_5 + 0x1E
	.byte	PATT
	 .word	song306_5 + 0x28
	.byte	PATT
	 .word	song306_5 + 0x35
	.byte	PATT
	 .word	song306_5 + 0x13
	.byte	PATT
	 .word	song306_5 + 0x1E
	.byte	PATT
	 .word	song306_5 + 0x28
	.byte	PATT
	 .word	song306_5 + 0x35
	.byte	PATT
	 .word	song306_5 + 0x13
	.byte	PATT
	 .word	song306_5 + 0x1E
	.byte	PATT
	 .word	song306_5 + 0x28
	.byte	PATT
	 .word	song306_5 + 0x28
	.byte	PATT
	 .word	song306_5 + 0x35
	.byte	PATT
	 .word	song306_5 + 0x13
	.byte	PATT
	 .word	song306_5 + 0x1E
	.byte		N24   , Ds5 , v120
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		        Dn5 , v080
	.byte	W24
	.byte		        Ds3 , v100
	.byte	W24
	.byte	PATT
	 .word	song306_5 + 0x28
	.byte	PATT
	 .word	song306_5 + 0x35
	.byte	PATT
	 .word	song306_5 + 0x13
	.byte	PATT
	 .word	song306_5 + 0x1E
	.byte	PATT
	 .word	song306_5 + 0x28
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song306_5 + 0x9
	.byte	FINE

@******************************************************@
	.align	2

song306:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song306_pri	@ Priority
	.byte	song306_rev	@ Reverb.

	.word	song306_grp

	.word	song306_0
	.word	song306_1
	.word	song306_2
	.word	song306_3
	.word	song306_4
	.word	song306_5

	.end
