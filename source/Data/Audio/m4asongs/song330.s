@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song330_grp, group_9
	.equ	song330_pri, 0
	.equ	song330_rev, 178
	.equ	song330_mvl, 127
	.equ	song330_key, 0
	.equ	song330_tbs, 1
	.equ	song330_exg, 1
	.equ	song330_cmp, 1

	.section .rodata
	.global	song330
	.align	2

@**************** Track 00 ****************************@

song330_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 74
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+32
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N36   , Bn3 , v080
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        50*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N12   , As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W96
	.byte		N24   , Ds3 , v072
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        49*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N12
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N36   , As3 , v072
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Gs3 
	.byte	W24
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        51*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N48   , Fn3 
	.byte	W24
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        51*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N24
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        51*song330_mvl/mxv
	.byte	W12
	.byte		        45*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N36   , Fn4 
	.byte	W15
	.byte		MOD   , 7
	.byte	W21
	.byte		        0
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , As3 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N12   , As3 
	.byte	W12
	.byte		N48   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        50*song330_mvl/mxv
	.byte	W12
	.byte		        45*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        As2 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Bn3 
	.byte	W12
	.byte		N48   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        48*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N12
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte	PATT
	 .word	song330_0 + 0x5C
	.byte		MOD   , 0
	.byte		N48   , Gs3 , v072
	.byte	W24
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        48*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        50*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24
	.byte	W24
	.byte		N24
	.byte	W12
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N60   , Fn3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        49*song330_mvl/mxv
	.byte	W12
	.byte		        44*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 38*song330_mvl/mxv
	.byte	W12
	.byte		        63*song330_mvl/mxv
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N48   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        50*song330_mvl/mxv
	.byte	W12
	.byte		        45*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		N18   , Fs3 
	.byte	W18
	.byte		N06   , Fn3 
	.byte	W06
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N60   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        49*song330_mvl/mxv
	.byte	W12
	.byte		        45*song330_mvl/mxv
	.byte	W12
	.byte		        63*song330_mvl/mxv
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		N60   , Fn3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        49*song330_mvl/mxv
	.byte	W12
	.byte		        45*song330_mvl/mxv
	.byte	W12
	.byte		        63*song330_mvl/mxv
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W03
	.byte		MOD   , 0
	.byte	W09
	.byte		N12   , Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N48   , Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        49*song330_mvl/mxv
	.byte	W12
	.byte		        45*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		N12   , As3 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N48   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W12
	.byte		        49*song330_mvl/mxv
	.byte	W12
	.byte		        45*song330_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song330_0 + 0x18
	.byte		MOD   , 0
	.byte		VOL   , 63*song330_mvl/mxv
	.byte	FINE

@**************** Track 01 ****************************@

song330_1:
	.byte	KEYSH , 0
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N06   , Fs3 , v120
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N36   , Ds4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 79*song330_mvl/mxv
	.byte	W12
	.byte		        68*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W60
	.byte		N06   , Cs3 , v120
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N24   , Fs3 , v127
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Fs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Ds4 , v127
	.byte	W12
	.byte		N84   , Cs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 85*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        72*song330_mvl/mxv
	.byte	W12
	.byte		        68*song330_mvl/mxv
	.byte	W12
	.byte		        62*song330_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N36   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		MOD   , 0
	.byte		N96   , Bn3 , v127
	.byte	W24
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 85*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        72*song330_mvl/mxv
	.byte	W12
	.byte		        68*song330_mvl/mxv
	.byte	W12
	.byte		        62*song330_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		MOD   , 0
	.byte		N12   , Fn4 , v127
	.byte	W12
	.byte		N84   , Ds4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 85*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        72*song330_mvl/mxv
	.byte	W12
	.byte		        68*song330_mvl/mxv
	.byte	W12
	.byte		        62*song330_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		        90*song330_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Gs4 
	.byte	W12
	.byte		VOL   , 79*song330_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 68*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		MOD   , 0
	.byte		N96   , Cs4 
	.byte	W24
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 85*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        72*song330_mvl/mxv
	.byte	W12
	.byte		        68*song330_mvl/mxv
	.byte	W12
	.byte		        62*song330_mvl/mxv
	.byte	W12
	.byte		        90*song330_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Fs3 
	.byte	W24
	.byte		        Cs3 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        Fs3 
	.byte	W24
	.byte	PATT
	 .word	song330_1 + 0x47
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Fs4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte	PATT
	 .word	song330_1 + 0x75
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Gs3 , v127
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte	PATT
	 .word	song330_1 + 0x97
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Gs4 , v127
	.byte	W12
	.byte		VOL   , 79*song330_mvl/mxv
	.byte	W03
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 68*song330_mvl/mxv
	.byte	W12
	.byte		        90*song330_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N60   , Fn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 83*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        73*song330_mvl/mxv
	.byte	W12
	.byte		        68*song330_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N60   , Fs4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 83*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        73*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song330_mvl/mxv
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PEND
	.byte		N24   , Gs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		N18   , As4 , v120
	.byte	W18
	.byte		N06   , Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N03   , Bn4 , v092
	.byte	W03
	.byte		        As4 , v080
	.byte	W03
	.byte		N12   , Gs4 , v127
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N60   , Fn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 83*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        73*song330_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 68*song330_mvl/mxv
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Ds4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte	PATT
	 .word	song330_1 + 0x16D
	.byte		N24   , Gs4 , v127
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		N96   , Cs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 83*song330_mvl/mxv
	.byte	W12
	.byte		        79*song330_mvl/mxv
	.byte	W12
	.byte		        72*song330_mvl/mxv
	.byte	W12
	.byte		        68*song330_mvl/mxv
	.byte	W12
	.byte		        61*song330_mvl/mxv
	.byte	W12
	.byte		        56*song330_mvl/mxv
	.byte	W12
	.byte	GOTO
	 .word	song330_1 + 0x14
	.byte		MOD   , 0
	.byte		VOL   , 90*song330_mvl/mxv
	.byte	FINE

@**************** Track 02 ****************************@

song330_2:
	.byte	KEYSH , 0
	.byte		VOICE , 87
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-64
	.byte		VOL   , 44*song330_mvl/mxv
	.byte		N06   , Ds2 , v120
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N36   , Ds3 , v127
	.byte	W36
	.byte		N12   , Cs3 , v120
	.byte	W12
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        As2 , v127
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N12   , Cs3 
	.byte	W48
	.byte		VOICE , 80
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		VOL   , 28*song330_mvl/mxv
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , As2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , As2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , As2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cs3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        Ds2 , v120
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , As2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , As2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song330_2 + 0x56
	.byte	PATT
	 .word	song330_2 + 0x77
	.byte	PATT
	 .word	song330_2 + 0x98
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Ds2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte	W12
	.byte		N06   , Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Cs3 
	.byte	W12
	.byte	PATT
	 .word	song330_2 + 0xB9
	.byte	PATT
	 .word	song330_2 + 0x13A
	.byte	PATT
	 .word	song330_2 + 0xFA
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , As2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , As2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte	PATT
	 .word	song330_2 + 0xB9
	.byte	PATT
	 .word	song330_2 + 0x13A
	.byte	PATT
	 .word	song330_2 + 0xFA
	.byte	PATT
	 .word	song330_2 + 0x56
	.byte	GOTO
	 .word	song330_2 + 0x16
	.byte	FINE

@**************** Track 03 ****************************@

song330_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 56*song330_mvl/mxv
	.byte	W24
	.byte		N36   , Ds2 , v120
	.byte	W36
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W60
	.byte		N06   , Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte	PEND
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N06   , Cn3 , v096
	.byte	W06
	.byte		        Cn3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v100
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Gs3 , v096
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte	PEND
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte	PATT
	 .word	song330_3 + 0x27
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte	PATT
	 .word	song330_3 + 0xAC
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Dn3 , v096
	.byte	W06
	.byte		        Dn3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		N06   , Bn3 , v088
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , As2 , v096
	.byte	W06
	.byte		        As2 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Bn1 , v120
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N06   , Gs3 , v096
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N06   , As3 , v096
	.byte	W06
	.byte		        As3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , As1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , En3 , v096
	.byte	W06
	.byte		        En3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Bn3 , v096
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , As3 , v096
	.byte	W06
	.byte		        As3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Cs4 , v072
	.byte	W06
	.byte		        Cs4 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Bn2 , v096
	.byte	W06
	.byte		        Bn2 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Ds3 , v096
	.byte	W06
	.byte		        Ds3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte		N12   , Fn1 , v120
	.byte	W12
	.byte		N06   , Gs3 , v096
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Fn3 , v096
	.byte	W06
	.byte		        Fn3 , v032
	.byte	W06
	.byte		N12   , Ds1 , v120
	.byte	W12
	.byte		N06   , Bn3 , v096
	.byte	W06
	.byte		        Bn3 , v032
	.byte	W06
	.byte		N12   , En1 , v120
	.byte	W12
	.byte		N06   , Gs3 , v096
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , As3 , v096
	.byte	W06
	.byte		        As3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Gs3 , v096
	.byte	W06
	.byte		        Gs3 , v032
	.byte	W06
	.byte		N12   , Fs1 , v120
	.byte	W12
	.byte		N06   , Fs3 , v096
	.byte	W06
	.byte		        Fs3 , v032
	.byte	W06
	.byte		N12   , Cs1 , v120
	.byte	W12
	.byte		N06   , Cs3 , v096
	.byte	W06
	.byte		        Cs3 , v032
	.byte	W06
	.byte	GOTO
	 .word	song330_3 + 0xD
	.byte	FINE

@**************** Track 04 ****************************@

song330_4:
	.byte	KEYSH , 0
	.byte		VOICE , 73
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 50*song330_mvl/mxv
	.byte	W24
	.byte		VOICE , 73
	.byte	W96
	.byte	W12
	.byte		N06   , Cs5 , v127
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N03   , Cs5 
	.byte	W03
	.byte		        Ds5 , v120
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 
	.byte	W03
	.byte		        Cs5 , v096
	.byte	W03
	.byte		        Ds5 , v076
	.byte	W03
	.byte		        Cs5 , v068
	.byte	W03
	.byte		        Ds5 , v060
	.byte	W03
	.byte		        Cs5 
	.byte	W03
	.byte		        Ds5 , v032
	.byte	W03
	.byte	W96
	.byte		VOL   , 40*song330_mvl/mxv
	.byte		N06   , Cs5 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte	W96
	.byte	W12
	.byte		N06   , Cs6 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		N03   , Cs6 
	.byte	W03
	.byte		        Dn6 , v060
	.byte	W03
	.byte		        Cs6 , v120
	.byte	W03
	.byte		        Dn6 , v064
	.byte	W03
	.byte		        Cs6 , v120
	.byte	W03
	.byte		        Dn6 , v060
	.byte	W03
	.byte		        Cs6 , v120
	.byte	W03
	.byte		        Dn6 , v060
	.byte	W03
	.byte		        Cs6 , v092
	.byte	W03
	.byte		        Dn6 , v040
	.byte	W03
	.byte		        Cs6 , v064
	.byte	W03
	.byte		        Dn6 , v028
	.byte	W03
	.byte		        Cs6 , v064
	.byte	W03
	.byte		        Dn6 , v028
	.byte	W03
	.byte		        Cs6 , v060
	.byte	W03
	.byte		        Dn6 , v032
	.byte	W03
	.byte	W96
	.byte		N06   , As5 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Fs5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte	W96
	.byte		VOICE , 73
	.byte		N06   , Cs6 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Cn6 
	.byte	W06
	.byte		        Cs6 
	.byte	W06
	.byte		        Ds6 
	.byte	W06
	.byte		N12   , Cs6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte	W96
	.byte		VOICE , 14
	.byte		VOL   , 50*song330_mvl/mxv
	.byte	W24
	.byte		N24   , Fn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte	W96
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Gs5 
	.byte	W96
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        Gs5 
	.byte	W48
	.byte		        Cs5 
	.byte	W48
	.byte		VOICE , 14
	.byte		N24   , Fs5 
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Fs5 
	.byte	W48
	.byte		VOICE , 73
	.byte		VOL   , 38*song330_mvl/mxv
	.byte		N03   , Gn5 
	.byte	W03
	.byte		N09   , Fs5 
	.byte	W09
	.byte		N12   , Fn5 
	.byte	W12
	.byte		N06   , Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        Cs5 
	.byte	W12
	.byte		N06   , As5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Ds5 
	.byte	W06
	.byte		        Cs5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Ds5 
	.byte	W24
	.byte		N06   , Fs5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		N03   , Fs5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        Fs5 , v096
	.byte	W03
	.byte		        Gs5 , v076
	.byte	W03
	.byte		        Fs5 , v088
	.byte	W03
	.byte		        Gs5 , v064
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        Gs5 , v048
	.byte	W03
	.byte		        Fs5 , v056
	.byte	W03
	.byte		        Gs5 , v032
	.byte	W03
	.byte		VOICE , 14
	.byte		N24   , Fn5 , v120
	.byte	W48
	.byte		        Cs5 
	.byte	W48
	.byte		VOL   , 48*song330_mvl/mxv
	.byte		N24   , Fs5 
	.byte	W48
	.byte		        Cs5 
	.byte	W48
	.byte		        Gs5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		        Bn5 
	.byte	W24
	.byte		        Gs5 
	.byte	W24
	.byte		        Cs6 
	.byte	W96
	.byte	GOTO
	 .word	song330_4 + 0xD
	.byte	FINE

@**************** Track 05 ****************************@

song330_5:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 49*song330_mvl/mxv
	.byte		PAN   , c_v+32
	.byte	W24
	.byte		N12   , Ds2 , v120
	.byte	W24
	.byte		PAN   , c_v-32
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gs1 , v080
	.byte	W06
	.byte		N12   , Gs1 , v120
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Gs2 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cs3 
	.byte	W12
	.byte		N24   , Cs2 
	.byte	W96
	.byte		        Fs1 
	.byte	W96
	.byte		PAN   , c_v+32
	.byte	W24
	.byte		N12   , Cs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , As1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Gs1 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Fs1 
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		N12   , Gs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Cs2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Gs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Cs2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gs1 
	.byte	W96
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte		N24
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Gs1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Cs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Gs1 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Fs1 
	.byte	W72
	.byte		PAN   , c_v-32
	.byte		N12
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Cs2 
	.byte	W96
	.byte		N24
	.byte	W48
	.byte		PAN   , c_v-32
	.byte		N24   , Fs1 
	.byte	W48
	.byte		PAN   , c_v+32
	.byte		N24   , Bn1 
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-32
	.byte		N24
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+32
	.byte		N24   , Fs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Cs2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Fs2 
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N12
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Cs2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N12   , Fs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Cs2 
	.byte	W24
	.byte	W48
	.byte		N12
	.byte	W48
	.byte	W48
	.byte		        Fs1 
	.byte	W48
	.byte	W48
	.byte		PAN   , c_v+32
	.byte		N12   , Gs2 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Cs2 
	.byte	W24
	.byte	W96
	.byte	GOTO
	 .word	song330_5 + 0xD
	.byte	FINE

@**************** Track 06 ****************************@

song330_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 74*song330_mvl/mxv
	.byte	W24
	.byte		N48   , Cs2 , v120
	.byte	W48
	.byte		        An2 
	.byte	W48
	.byte		        Gn2 
	.byte	W96
	.byte		        An2 
	.byte	W96
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte		N12
	.byte	W96
	.byte		N48   , An2 
	.byte	W96
	.byte	W96
	.byte		N48
	.byte	W96
	.byte	W96
	.byte		        Gn2 
	.byte	W96
	.byte		N24   , An2 
	.byte	W96
	.byte		        Gn2 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte		        Bn2 
	.byte	W96
	.byte		N48   , Cs2 
	.byte	W96
	.byte		N24   , An2 
	.byte	W96
	.byte		N48   , Bn2 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte	W72
	.byte		N24   , An2 
	.byte	W24
	.byte		N48   , Cs2 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        An2 
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte		        Bn2 
	.byte	W96
	.byte		        Cs2 
	.byte	W96
	.byte	GOTO
	 .word	song330_6 + 0x7
	.byte	FINE

@**************** Track 07 ****************************@

song330_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 41*song330_mvl/mxv
	.byte	W24
	.byte		N01   , Gn3 , v120
	.byte	W36
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W60
	.byte		        Gn3 , v064
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		        Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01   , Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v112
	.byte	W12
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v052
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte	PEND
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v044
	.byte	W03
	.byte		        Gn3 , v100
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song330_7 + 0x45
	.byte		N01   , Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song330_7 + 0x45
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v040
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PATT
	 .word	song330_7 + 0x45
	.byte	PATT
	 .word	song330_7 + 0xA7
	.byte		N01   , Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte	PEND
	.byte		N01   , Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v064
	.byte	W12
	.byte	PEND
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		        Gn3 , v056
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W12
	.byte		        Gn3 , v084
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte	PEND
	.byte		N01
	.byte	W12
	.byte		        Gn3 , v048
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v108
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PATT
	 .word	song330_7 + 0x45
	.byte	PATT
	 .word	song330_7 + 0xA7
	.byte	PATT
	 .word	song330_7 + 0x45
	.byte		N01   , Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v096
	.byte	W06
	.byte		        Gn3 , v064
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W12
	.byte		N01
	.byte	W12
	.byte		N01
	.byte	W06
	.byte		N01
	.byte	W03
	.byte		        Gn3 , v048
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte		N01
	.byte	W03
	.byte	PATT
	 .word	song330_7 + 0x45
	.byte	PATT
	 .word	song330_7 + 0x6E
	.byte	PATT
	 .word	song330_7 + 0x45
	.byte	PATT
	 .word	song330_7 + 0xA7
	.byte	PATT
	 .word	song330_7 + 0xA7
	.byte	PATT
	 .word	song330_7 + 0x111
	.byte	PATT
	 .word	song330_7 + 0x138
	.byte	PATT
	 .word	song330_7 + 0x161
	.byte	GOTO
	 .word	song330_7 + 0x12
	.byte	FINE

@******************************************************@
	.align	2

song330:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song330_pri	@ Priority
	.byte	song330_rev	@ Reverb.

	.word	song330_grp

	.word	song330_0
	.word	song330_1
	.word	song330_2
	.word	song330_3
	.word	song330_4
	.word	song330_5
	.word	song330_6
	.word	song330_7

	.end
