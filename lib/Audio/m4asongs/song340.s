@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song340_grp, group_34
	.equ	song340_pri, 0
	.equ	song340_rev, 178
	.equ	song340_mvl, 127
	.equ	song340_key, 0
	.equ	song340_tbs, 1
	.equ	song340_exg, 1
	.equ	song340_cmp, 1

	.section .rodata
	.global	song340
	.align	2

@**************** Track 00 ****************************@

song340_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 91
	.byte		VOICE , 87
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song340_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		N06   , Ds4 , v080
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		VOICE , 84
	.byte		VOL   , 79*song340_mvl/mxv
	.byte		N06   , As3 
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		        Fs3 
	.byte	W24
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte	W36
	.byte		N06   , Gn3 , v080
	.byte	W36
	.byte		        Fs3 
	.byte	W24
	.byte	PEND
	.byte	W36
	.byte		VOL   , 57*song340_mvl/mxv
	.byte		N60   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		VOL   , 89*song340_mvl/mxv
	.byte	W24
	.byte		        79*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , As3 
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		        Fs3 
	.byte	W24
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte	PATT
	 .word	song340_0 + 0x5E
	.byte	W36
	.byte		N60   , En3 , v080
	.byte	W12
	.byte		MOD   , 7
	.byte	W48
	.byte		VOL   , 89*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   , En3 , v080
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		N06   , En3 , v080
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte	PEND
	.byte		N06   , En3 , v080
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte	PEND
	.byte		        Cn4 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N06   , Fs3 , v080
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PEND
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	PATT
	 .word	song340_0 + 0x138
	.byte	PATT
	 .word	song340_0 + 0xD2
	.byte	PATT
	 .word	song340_0 + 0xD2
	.byte	PATT
	 .word	song340_0 + 0xD2
	.byte	PATT
	 .word	song340_0 + 0xF5
	.byte		N24   , Fn3 , v080
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N36   , Gn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Fn3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Gs3 
	.byte	W24
	.byte		N72   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 67*song340_mvl/mxv
	.byte	W48
	.byte		        90*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N96   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song340_mvl/mxv
	.byte	W72
	.byte		        90*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Fn3 
	.byte	W24
	.byte		        Ds3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
	.byte		N36   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Dn4 
	.byte	W24
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N96   , Ds4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W60
	.byte		VOL   , 90*song340_mvl/mxv
	.byte	W24
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , As4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W60
	.byte		VOL   , 90*song340_mvl/mxv
	.byte	W24
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N72   , Ds3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W60
	.byte		VOL   , 90*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N12
	.byte	W24
	.byte		        Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W84
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N72   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W60
	.byte		VOL   , 90*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N12
	.byte	W24
	.byte		        Gs3 
	.byte	W12
	.byte		        Fs3 
	.byte	W36
	.byte		N48   , En3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	GOTO
	 .word	song340_0 + 0x8C
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 01 ****************************@

song340_1:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song340_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BEND  , c_v+1
	.byte		N06   , As4 , v064
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		VOICE , 4
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N12   , As4 
	.byte	W36
	.byte		        As3 , v096
	.byte	W36
	.byte		N12
	.byte	W24
	.byte	W48
	.byte		N12
	.byte	W48
	.byte	W36
	.byte		N12   , As3 , v096
	.byte	W36
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	W36
	.byte		N60   , An3 
	.byte	W06
	.byte		VOL   , 23*song340_mvl/mxv
	.byte	W06
	.byte		        33*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 41*song340_mvl/mxv
	.byte	W07
	.byte		        51*song340_mvl/mxv
	.byte	W05
	.byte		        64*song340_mvl/mxv
	.byte	W07
	.byte		        72*song340_mvl/mxv
	.byte	W24
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , As3 
	.byte	W36
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte	W48
	.byte		N12
	.byte	W48
	.byte	PATT
	 .word	song340_1 + 0x5F
	.byte	W36
	.byte		N60   , As3 , v096
	.byte	W12
	.byte		VOL   , 34*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 39*song340_mvl/mxv
	.byte	W05
	.byte		        55*song340_mvl/mxv
	.byte	W06
	.byte		        68*song340_mvl/mxv
	.byte	W06
	.byte		        78*song340_mvl/mxv
	.byte	W06
	.byte		        86*song340_mvl/mxv
	.byte	W19
	.byte		VOICE , 81
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , As3 , v096
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N36   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , As3 
	.byte	W24
	.byte		N72   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W60
	.byte		        0
	.byte		N12   , As4 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
	.byte		        As4 
	.byte	W36
	.byte		N48   , En5 
	.byte	W06
	.byte		VOL   , 34*song340_mvl/mxv
	.byte	W06
	.byte		        36*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 44*song340_mvl/mxv
	.byte	W06
	.byte		        54*song340_mvl/mxv
	.byte	W06
	.byte		        70*song340_mvl/mxv
	.byte	W06
	.byte		        78*song340_mvl/mxv
	.byte	W01
	.byte		        87*song340_mvl/mxv
	.byte	W12
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Ds4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Cs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , En4 
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N36   , Gs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		VOL   , 78*song340_mvl/mxv
	.byte		TIE   , Bn4 , v116
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 21*song340_mvl/mxv
	.byte	W72
	.byte	W03
	.byte		        27*song340_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 34*song340_mvl/mxv
	.byte	W06
	.byte		        38*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte		VOL   , 45*song340_mvl/mxv
	.byte	W06
	.byte		        50*song340_mvl/mxv
	.byte	W06
	.byte		        56*song340_mvl/mxv
	.byte	W06
	.byte		        61*song340_mvl/mxv
	.byte	W06
	.byte		        67*song340_mvl/mxv
	.byte	W06
	.byte		        74*song340_mvl/mxv
	.byte	W06
	.byte		        79*song340_mvl/mxv
	.byte	W12
	.byte		        85*song340_mvl/mxv
	.byte	W36
	.byte		EOT
	.byte		MOD   , 0
	.byte		VOL   , 44*song340_mvl/mxv
	.byte		TIE   , As4 , v108
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 22*song340_mvl/mxv
	.byte	W66
	.byte		        25*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 34*song340_mvl/mxv
	.byte	W06
	.byte		        38*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte		VOL   , 44*song340_mvl/mxv
	.byte	W06
	.byte		        50*song340_mvl/mxv
	.byte	W06
	.byte		        56*song340_mvl/mxv
	.byte	W06
	.byte		        60*song340_mvl/mxv
	.byte	W06
	.byte		        67*song340_mvl/mxv
	.byte	W06
	.byte		        74*song340_mvl/mxv
	.byte	W06
	.byte		        79*song340_mvl/mxv
	.byte	W12
	.byte		        84*song340_mvl/mxv
	.byte	W12
	.byte		        90*song340_mvl/mxv
	.byte	W24
	.byte		EOT
	.byte		VOICE , 92
	.byte		VOL   , 67*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N48   , Gs3 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		MOD   , 0
	.byte		N48   , Fn4 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N96   , Gn4 
	.byte	W06
	.byte		VOL   , 22*song340_mvl/mxv
	.byte	W06
	.byte		        29*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 31*song340_mvl/mxv
	.byte	W07
	.byte		        35*song340_mvl/mxv
	.byte	W05
	.byte		        40*song340_mvl/mxv
	.byte	W07
	.byte		        47*song340_mvl/mxv
	.byte	W05
	.byte		        52*song340_mvl/mxv
	.byte	W07
	.byte		        57*song340_mvl/mxv
	.byte	W05
	.byte		        63*song340_mvl/mxv
	.byte	W07
	.byte		        68*song340_mvl/mxv
	.byte	W05
	.byte		        72*song340_mvl/mxv
	.byte	W07
	.byte		        76*song340_mvl/mxv
	.byte	W24
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N96
	.byte	W06
	.byte		VOL   , 22*song340_mvl/mxv
	.byte	W06
	.byte		        28*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 31*song340_mvl/mxv
	.byte	W07
	.byte		        36*song340_mvl/mxv
	.byte	W05
	.byte		        41*song340_mvl/mxv
	.byte	W07
	.byte		        46*song340_mvl/mxv
	.byte	W05
	.byte		        53*song340_mvl/mxv
	.byte	W07
	.byte		        56*song340_mvl/mxv
	.byte	W05
	.byte		        62*song340_mvl/mxv
	.byte	W07
	.byte		        65*song340_mvl/mxv
	.byte	W05
	.byte		        70*song340_mvl/mxv
	.byte	W07
	.byte		        75*song340_mvl/mxv
	.byte	W06
	.byte		        79*song340_mvl/mxv
	.byte	W18
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Gs3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Cs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	PATT
	 .word	song340_1 + 0x186
	.byte		MOD   , 0
	.byte		N96   , As4 , v096
	.byte	W06
	.byte		VOL   , 34*song340_mvl/mxv
	.byte	W06
	.byte		        41*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 43*song340_mvl/mxv
	.byte	W07
	.byte		        46*song340_mvl/mxv
	.byte	W05
	.byte		        48*song340_mvl/mxv
	.byte	W07
	.byte		        51*song340_mvl/mxv
	.byte	W05
	.byte		        55*song340_mvl/mxv
	.byte	W07
	.byte		        60*song340_mvl/mxv
	.byte	W05
	.byte		        67*song340_mvl/mxv
	.byte	W07
	.byte		        75*song340_mvl/mxv
	.byte	W05
	.byte		        79*song340_mvl/mxv
	.byte	W30
	.byte	W01
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Ds5 
	.byte	W06
	.byte		VOL   , 22*song340_mvl/mxv
	.byte	W06
	.byte		        24*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 28*song340_mvl/mxv
	.byte	W07
	.byte		        31*song340_mvl/mxv
	.byte	W05
	.byte		        36*song340_mvl/mxv
	.byte	W07
	.byte		        42*song340_mvl/mxv
	.byte	W05
	.byte		        50*song340_mvl/mxv
	.byte	W07
	.byte		        58*song340_mvl/mxv
	.byte	W05
	.byte		        68*song340_mvl/mxv
	.byte	W07
	.byte		        74*song340_mvl/mxv
	.byte	W05
	.byte		        83*song340_mvl/mxv
	.byte	W30
	.byte	W01
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N72   , Gn4 
	.byte	W06
	.byte		VOL   , 45*song340_mvl/mxv
	.byte	W06
	.byte		        46*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 47*song340_mvl/mxv
	.byte	W07
	.byte		        49*song340_mvl/mxv
	.byte	W05
	.byte		        53*song340_mvl/mxv
	.byte	W07
	.byte		        55*song340_mvl/mxv
	.byte	W05
	.byte		        58*song340_mvl/mxv
	.byte	W07
	.byte		        60*song340_mvl/mxv
	.byte	W05
	.byte		        67*song340_mvl/mxv
	.byte	W07
	.byte		        72*song340_mvl/mxv
	.byte	W05
	.byte		        77*song340_mvl/mxv
	.byte	W01
	.byte		        79*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		N12
	.byte	W24
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W84
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N72   , Gs4 
	.byte	W06
	.byte		VOL   , 45*song340_mvl/mxv
	.byte	W06
	.byte		        46*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 47*song340_mvl/mxv
	.byte	W07
	.byte		        49*song340_mvl/mxv
	.byte	W05
	.byte		        53*song340_mvl/mxv
	.byte	W07
	.byte		        55*song340_mvl/mxv
	.byte	W05
	.byte		        58*song340_mvl/mxv
	.byte	W07
	.byte		        60*song340_mvl/mxv
	.byte	W05
	.byte		        67*song340_mvl/mxv
	.byte	W07
	.byte		        72*song340_mvl/mxv
	.byte	W05
	.byte		        77*song340_mvl/mxv
	.byte	W01
	.byte		        79*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		N12
	.byte	W24
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        As4 
	.byte	W36
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	GOTO
	 .word	song340_1 + 0xA2
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song340_2:
	.byte	KEYSH , 0
	.byte		VOICE , 83
	.byte		PAN   , c_v-64
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N06   , En2 , v092
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Fn2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Fs2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Gs2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , As2 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		PAN   , c_v+0
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds2 , v092
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte		PAN   , c_v-64
	.byte		N12   , En2 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N24   , En2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , As2 
	.byte	W03
	.byte		        Bn2 , v088
	.byte	W03
	.byte		N06   , As2 
	.byte	W06
	.byte		N12   , Gs2 , v092
	.byte	W12
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x70
	.byte	PATT
	 .word	song340_2 + 0x70
	.byte		VOICE , 80
	.byte		PAN   , c_v-64
	.byte		N12   , Ds2 , v092
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte		PAN   , c_v-64
	.byte		N72   , Bn2 , v092
	.byte	W72
	.byte		PAN   , c_v+63
	.byte		N12   , As2 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte	W24
	.byte		        c_v-64
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , An2 , v096
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		N06   , An2 
	.byte	W06
	.byte		N12   , Fs2 , v092
	.byte	W12
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte		PAN   , c_v-64
	.byte		N12   , Ds2 , v092
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 , v092
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song340_2 + 0x13C
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte		PAN   , c_v-64
	.byte		N12   , Cs2 , v092
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song340_2 + 0x169
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte		PAN   , c_v-64
	.byte		N12   , Ds2 , v092
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song340_2 + 0x196
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x4D
	.byte	PATT
	 .word	song340_2 + 0x13C
	.byte	PATT
	 .word	song340_2 + 0x13C
	.byte	GOTO
	 .word	song340_2 + 0xC2
	.byte	FINE

@**************** Track 03 ****************************@

song340_3:
	.byte	KEYSH , 0
	.byte		VOICE , 38
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song340_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BEND  , c_v+0
	.byte		N06   , En1 , v116
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Fs1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gn1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        Gs1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        An1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		        As1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N12   , Ds1 , v127
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		BEND  , c_v+0
	.byte		N12   , En1 
	.byte	W12
	.byte		N36   , En2 
	.byte	W09
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-21
	.byte	W03
	.byte		        c_v-29
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v-44
	.byte	W03
	.byte		        c_v-52
	.byte	W03
	.byte		        c_v-60
	.byte	W03
	.byte		        c_v-63
	.byte	W03
	.byte		        c_v+0
	.byte		N12   , En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte	PATT
	 .word	song340_3 + 0x3F
	.byte		N12   , Ds1 , v127
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N12   , Ds1 , v127
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N24   , Ds1 
	.byte	W24
	.byte		N12   , As1 
	.byte	W12
	.byte		N18   , Ds1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        As1 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N24   , Ds1 , v120
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		N18   , Gs1 
	.byte	W18
	.byte		N03   , Fs1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N24   , En1 , v127
	.byte	W24
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N18   , En1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N03   , Bn1 
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N06   , Gs1 
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W12
	.byte		N06   , En2 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N06   , Ds1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gs1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cs1 
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N18   , Cs1 
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N48   , Cs2 
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-31
	.byte	W03
	.byte		        c_v-35
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v-47
	.byte	W03
	.byte		        c_v-64
	.byte	W12
	.byte		        c_v+0
	.byte		N24   , As1 
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W24
	.byte		N36
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W06
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-15
	.byte	W03
	.byte		        c_v-20
	.byte	W03
	.byte		        c_v-28
	.byte	W03
	.byte		        c_v-32
	.byte	W03
	.byte		        c_v-39
	.byte	W03
	.byte		        c_v+0
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Cs2 
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N48   , Gs1 
	.byte	W12
	.byte		BEND  , c_v-6
	.byte	W03
	.byte		        c_v-10
	.byte	W03
	.byte		        c_v-17
	.byte	W03
	.byte		        c_v-23
	.byte	W03
	.byte		        c_v-31
	.byte	W03
	.byte		        c_v-35
	.byte	W03
	.byte		        c_v-42
	.byte	W03
	.byte		        c_v-47
	.byte	W03
	.byte		        c_v-64
	.byte	W12
	.byte		        c_v+0
	.byte		N12   , Ds1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Ds2 
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		N12   , Gn1 
	.byte	W12
	.byte		N06   , As1 
	.byte	W12
	.byte		        Cs2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N30   , Ds1 
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N24
	.byte	W36
	.byte		N12   , Dn2 
	.byte	W12
	.byte		N24   , Ds2 
	.byte	W24
	.byte		N18   , Ds1 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N24   , En1 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N18   , En1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N24   , En2 
	.byte	W24
	.byte		N12   , Ds2 
	.byte	W12
	.byte		        En2 
	.byte	W36
	.byte		        Bn1 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W12
	.byte		N12   , Gs1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte	GOTO
	 .word	song340_3 + 0xDA
	.byte	FINE

@**************** Track 04 ****************************@

song340_4:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		VOL   , 69*song340_mvl/mxv
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		N06   , As5 , v064
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		        As5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Gs6 
	.byte	W06
	.byte		VOL   , 56*song340_mvl/mxv
	.byte		N12   , As4 , v112
	.byte	W36
	.byte		        As3 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte	W48
	.byte		N12
	.byte	W48
	.byte	W36
	.byte		N12   , As3 , v112
	.byte	W36
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	W36
	.byte		N60   , An3 
	.byte	W06
	.byte		VOL   , 22*song340_mvl/mxv
	.byte	W06
	.byte		        29*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 41*song340_mvl/mxv
	.byte	W07
	.byte		        52*song340_mvl/mxv
	.byte	W05
	.byte		        68*song340_mvl/mxv
	.byte	W07
	.byte		        71*song340_mvl/mxv
	.byte	W24
	.byte		        56*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , As3 
	.byte	W36
	.byte		N12
	.byte	W36
	.byte		N12
	.byte	W24
	.byte	W48
	.byte		N12
	.byte	W48
	.byte	PATT
	 .word	song340_4 + 0x5B
	.byte	W36
	.byte		N60   , As3 , v112
	.byte	W12
	.byte		VOL   , 34*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W06
	.byte		VOL   , 47*song340_mvl/mxv
	.byte	W05
	.byte		        59*song340_mvl/mxv
	.byte	W06
	.byte		        69*song340_mvl/mxv
	.byte	W06
	.byte		        78*song340_mvl/mxv
	.byte	W06
	.byte		        84*song340_mvl/mxv
	.byte	W19
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 78*song340_mvl/mxv
	.byte		N36   , As3 , v104
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N36   , As3 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Cn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , As3 
	.byte	W24
	.byte		N72   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W60
	.byte		        0
	.byte		N12   , As4 
	.byte	W24
	.byte		        Bn4 
	.byte	W12
	.byte		        As4 
	.byte	W36
	.byte		N48   , En5 
	.byte	W06
	.byte		VOL   , 31*song340_mvl/mxv
	.byte	W06
	.byte		        40*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 46*song340_mvl/mxv
	.byte	W06
	.byte		        56*song340_mvl/mxv
	.byte	W06
	.byte		        69*song340_mvl/mxv
	.byte	W07
	.byte		        87*song340_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song340_mvl/mxv
	.byte		N36   , Ds4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Cs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N36   , En4 
	.byte	W36
	.byte		        Ds4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N36   , Gs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N36   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W24
	.byte		        0
	.byte		N24   , Fn4 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Ds4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		        Gs4 
	.byte	W24
	.byte		VOICE , 60
	.byte		TIE   , Bn4 , v100
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 21*song340_mvl/mxv
	.byte	W72
	.byte	W03
	.byte		        27*song340_mvl/mxv
	.byte	W09
	.byte		MOD   , 0
	.byte		VOL   , 34*song340_mvl/mxv
	.byte	W06
	.byte		        38*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte		VOL   , 45*song340_mvl/mxv
	.byte	W06
	.byte		        50*song340_mvl/mxv
	.byte	W06
	.byte		        56*song340_mvl/mxv
	.byte	W06
	.byte		        61*song340_mvl/mxv
	.byte	W06
	.byte		        67*song340_mvl/mxv
	.byte	W06
	.byte		        74*song340_mvl/mxv
	.byte	W06
	.byte		        79*song340_mvl/mxv
	.byte	W12
	.byte		        85*song340_mvl/mxv
	.byte	W36
	.byte		EOT
	.byte		MOD   , 0
	.byte		VOL   , 22*song340_mvl/mxv
	.byte		TIE   , As4 , v120
	.byte	W12
	.byte		MOD   , 7
	.byte	W78
	.byte		VOL   , 25*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 34*song340_mvl/mxv
	.byte	W06
	.byte		        38*song340_mvl/mxv
	.byte	W06
	.byte		MOD   , 7
	.byte		VOL   , 44*song340_mvl/mxv
	.byte	W06
	.byte		        50*song340_mvl/mxv
	.byte	W06
	.byte		        56*song340_mvl/mxv
	.byte	W06
	.byte		        60*song340_mvl/mxv
	.byte	W06
	.byte		        67*song340_mvl/mxv
	.byte	W06
	.byte		        74*song340_mvl/mxv
	.byte	W06
	.byte		        79*song340_mvl/mxv
	.byte	W12
	.byte		        84*song340_mvl/mxv
	.byte	W12
	.byte		        90*song340_mvl/mxv
	.byte	W24
	.byte		EOT
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N48   , Gs4 , v084
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Cs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		MOD   , 0
	.byte		N48   , Fn5 , v084
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Gs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	PEND
	.byte		        0
	.byte		N96   , Gn5 
	.byte	W06
	.byte		VOL   , 22*song340_mvl/mxv
	.byte	W06
	.byte		        29*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 32*song340_mvl/mxv
	.byte	W07
	.byte		        37*song340_mvl/mxv
	.byte	W05
	.byte		        43*song340_mvl/mxv
	.byte	W07
	.byte		        48*song340_mvl/mxv
	.byte	W05
	.byte		        55*song340_mvl/mxv
	.byte	W07
	.byte		        61*song340_mvl/mxv
	.byte	W05
	.byte		        68*song340_mvl/mxv
	.byte	W07
	.byte		        72*song340_mvl/mxv
	.byte	W06
	.byte		        75*song340_mvl/mxv
	.byte	W06
	.byte		        80*song340_mvl/mxv
	.byte	W24
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N96
	.byte	W06
	.byte		VOL   , 23*song340_mvl/mxv
	.byte	W06
	.byte		        29*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 32*song340_mvl/mxv
	.byte	W07
	.byte		        37*song340_mvl/mxv
	.byte	W05
	.byte		        41*song340_mvl/mxv
	.byte	W07
	.byte		        47*song340_mvl/mxv
	.byte	W05
	.byte		        53*song340_mvl/mxv
	.byte	W07
	.byte		        58*song340_mvl/mxv
	.byte	W05
	.byte		        67*song340_mvl/mxv
	.byte	W07
	.byte		        72*song340_mvl/mxv
	.byte	W05
	.byte		        75*song340_mvl/mxv
	.byte	W07
	.byte		        80*song340_mvl/mxv
	.byte	W24
	.byte		        68*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Gs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , Cs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	PATT
	 .word	song340_4 + 0x17D
	.byte		MOD   , 0
	.byte		N96   , As5 , v084
	.byte	W06
	.byte		VOL   , 22*song340_mvl/mxv
	.byte	W06
	.byte		        23*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 29*song340_mvl/mxv
	.byte	W07
	.byte		        35*song340_mvl/mxv
	.byte	W05
	.byte		        41*song340_mvl/mxv
	.byte	W07
	.byte		        48*song340_mvl/mxv
	.byte	W05
	.byte		        53*song340_mvl/mxv
	.byte	W07
	.byte		        57*song340_mvl/mxv
	.byte	W05
	.byte		        63*song340_mvl/mxv
	.byte	W07
	.byte		        70*song340_mvl/mxv
	.byte	W05
	.byte		        71*song340_mvl/mxv
	.byte	W30
	.byte	W01
	.byte		        56*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N96   , Ds6 
	.byte	W06
	.byte		VOL   , 26*song340_mvl/mxv
	.byte	W06
	.byte		        29*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 31*song340_mvl/mxv
	.byte	W07
	.byte		        34*song340_mvl/mxv
	.byte	W05
	.byte		        37*song340_mvl/mxv
	.byte	W07
	.byte		        41*song340_mvl/mxv
	.byte	W05
	.byte		        45*song340_mvl/mxv
	.byte	W07
	.byte		        48*song340_mvl/mxv
	.byte	W05
	.byte		        57*song340_mvl/mxv
	.byte	W07
	.byte		        63*song340_mvl/mxv
	.byte	W05
	.byte		        65*song340_mvl/mxv
	.byte	W07
	.byte		        69*song340_mvl/mxv
	.byte	W05
	.byte		        75*song340_mvl/mxv
	.byte	W19
	.byte		        56*song340_mvl/mxv
	.byte		MOD   , 0
	.byte		N72   , Gn5 
	.byte	W06
	.byte		VOL   , 29*song340_mvl/mxv
	.byte	W06
	.byte		        31*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 33*song340_mvl/mxv
	.byte	W07
	.byte		        36*song340_mvl/mxv
	.byte	W05
	.byte		        40*song340_mvl/mxv
	.byte	W07
	.byte		        44*song340_mvl/mxv
	.byte	W05
	.byte		        48*song340_mvl/mxv
	.byte	W07
	.byte		        55*song340_mvl/mxv
	.byte	W05
	.byte		        63*song340_mvl/mxv
	.byte	W07
	.byte		        70*song340_mvl/mxv
	.byte	W05
	.byte		        72*song340_mvl/mxv
	.byte	W07
	.byte		MOD   , 0
	.byte		N12
	.byte	W24
	.byte		VOL   , 67*song340_mvl/mxv
	.byte		N12   , Gs5 
	.byte	W12
	.byte		N24   , Gn5 
	.byte	W84
	.byte		VOL   , 56*song340_mvl/mxv
	.byte		N72   , Gs5 
	.byte	W06
	.byte		VOL   , 29*song340_mvl/mxv
	.byte	W06
	.byte		        31*song340_mvl/mxv
	.byte		MOD   , 7
	.byte	W05
	.byte		VOL   , 33*song340_mvl/mxv
	.byte	W07
	.byte		        36*song340_mvl/mxv
	.byte	W05
	.byte		        40*song340_mvl/mxv
	.byte	W07
	.byte		        44*song340_mvl/mxv
	.byte	W05
	.byte		        48*song340_mvl/mxv
	.byte	W07
	.byte		        55*song340_mvl/mxv
	.byte	W05
	.byte		        63*song340_mvl/mxv
	.byte	W07
	.byte		        70*song340_mvl/mxv
	.byte	W05
	.byte		        72*song340_mvl/mxv
	.byte	W07
	.byte		MOD   , 0
	.byte		N12
	.byte	W24
	.byte		VOL   , 56*song340_mvl/mxv
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        As5 
	.byte	W36
	.byte		N48   , Gs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte	GOTO
	 .word	song340_4 + 0x9E
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 05 ****************************@

song340_5:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song340_mvl/mxv
	.byte	W84
	.byte		N06   , Cn1 , v096
	.byte	W06
	.byte		        Cn1 , v064
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte		N48   , Cn3 
	.byte	W24
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Cn1 , v127
	.byte		N48   , Gn2 , v088
	.byte	W12
	.byte		N06   , Cn1 , v064
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cn1 , v068
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Cn1 , v064
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v064
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Fn1 , v120
	.byte	W12
	.byte	PEND
	.byte		        Cn1 
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W36
	.byte		        Cn1 , v068
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        En1 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn1 , v064
	.byte	W06
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v064
	.byte	W06
	.byte		        Cn2 , v120
	.byte		N24   , Bn2 , v096
	.byte	W06
	.byte		N06   , An1 , v120
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte		N48   , Cs2 , v088
	.byte	W12
	.byte		N06   , Cn1 , v064
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cn1 , v068
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte	PATT
	 .word	song340_5 + 0x32
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cn1 , v068
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		        Bn0 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn1 , v064
	.byte	W06
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v064
	.byte	W06
	.byte		        Cs1 , v096
	.byte		N24   , Cs2 , v120
	.byte	W12
	.byte		N06   , An1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte		N48   , Gn2 
	.byte	W24
	.byte		N06   , Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Gn1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 , v096
	.byte	W06
	.byte		        Bn1 , v120
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N24   , Gn2 
	.byte	W24
	.byte		N06   , Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 , v096
	.byte	W12
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte	PEND
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N48   , An2 , v096
	.byte	W24
	.byte		N06   , Cs1 
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        An1 , v120
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cs1 , v096
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		N06
	.byte		N24   , Bn2 , v120
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte		N06   , Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 
	.byte	W24
	.byte		        Cn1 
	.byte		N06   , Fn2 , v096
	.byte	W24
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte	PEND
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 , v096
	.byte		N06   , Fn2 
	.byte	W24
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		        Cs1 , v096
	.byte		N24   , Gn2 , v120
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		        Cn1 , v096
	.byte	W06
	.byte		        Cs1 , v120
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fn2 , v080
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte		N06   , Fn2 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 , v096
	.byte	W24
	.byte		        Cn1 , v120
	.byte		N06   , Fn2 , v096
	.byte	W24
	.byte	PATT
	 .word	song340_5 + 0x1C9
	.byte		N06   , Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cs1 , v096
	.byte		N06   , Fn2 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		VOICE , 0
	.byte		N06   , Cn1 , v120
	.byte		N48   , Cn3 , v096
	.byte	W06
	.byte		N06   , Cn1 , v120
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N48   , Cs2 
	.byte	W24
	.byte		N06   , Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W12
	.byte	PATT
	 .word	song340_5 + 0x12F
	.byte		N06   , Cn1 , v120
	.byte	W24
	.byte		        Cs1 , v096
	.byte	W12
	.byte		        Cn1 , v120
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte	GOTO
	 .word	song340_5 + 0xC3
	.byte	FINE

@**************** Track 06 ****************************@

song340_6:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		VOL   , 79*song340_mvl/mxv
	.byte	W96
	.byte	W12
	.byte		N03   , Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		        Cn5 , v044
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		        Cn5 , v056
	.byte	W06
	.byte		N03
	.byte	W18
	.byte		        Cn5 , v084
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03   , Cn5 , v108
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v100
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v100
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte	PEND
	.byte		N03   , Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W24
	.byte		        Cn5 , v064
	.byte	W12
	.byte	PEND
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W24
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v100
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		N03   , Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W12
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song340_6 + 0x1D
	.byte	PATT
	 .word	song340_6 + 0x36
	.byte	PATT
	 .word	song340_6 + 0x1D
	.byte	PATT
	 .word	song340_6 + 0x64
	.byte		N03   , Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PEND
	.byte		N03   , Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song340_6 + 0x94
	.byte	PATT
	 .word	song340_6 + 0xB8
	.byte	W12
	.byte		N03   , Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	PATT
	 .word	song340_6 + 0x94
	.byte	PATT
	 .word	song340_6 + 0x94
	.byte	PATT
	 .word	song340_6 + 0xB8
	.byte	PATT
	 .word	song340_6 + 0x94
	.byte	PATT
	 .word	song340_6 + 0xB8
	.byte		VOL   , 68*song340_mvl/mxv
	.byte		N03   , Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte	W12
	.byte		N03   , Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W24
	.byte		        Cn5 , v072
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W12
	.byte	PEND
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W24
	.byte	PEND
	.byte		N03   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v108
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		N03
	.byte	W12
	.byte	PEND
	.byte		        Cn5 , v064
	.byte	W12
	.byte		        Cn5 , v092
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        Cn5 , v064
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W12
	.byte	PATT
	 .word	song340_6 + 0x17D
	.byte	PATT
	 .word	song340_6 + 0x193
	.byte	PATT
	 .word	song340_6 + 0x1A7
	.byte		VOL   , 79*song340_mvl/mxv
	.byte	W12
	.byte		N03   , Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v088
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		VOL   , 79*song340_mvl/mxv
	.byte		N03   , Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v032
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		        Cn5 , v080
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v032
	.byte	W06
	.byte		        Cn5 , v028
	.byte	W06
	.byte		        Cn5 , v084
	.byte	W12
	.byte		        Cn5 , v028
	.byte	W06
	.byte		N03
	.byte	W06
	.byte	GOTO
	 .word	song340_6 + 0x94
	.byte	FINE

@**************** Track 07 ****************************@

song340_7:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		PAN   , c_v+0
	.byte		VOL   , 68*song340_mvl/mxv
	.byte	W96
	.byte		N12   , Gn5 , v044
	.byte	W24
	.byte		        Gn5 , v068
	.byte	W24
	.byte		        Gn5 , v088
	.byte	W24
	.byte		        Gn5 , v120
	.byte	W24
	.byte	W96
	.byte	W72
	.byte		        Gn5 , v088
	.byte	W24
	.byte	W24
	.byte		N12
	.byte	W72
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W96
	.byte	W72
	.byte		N12
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		        Gn5 , v120
	.byte	W12
	.byte		        Gn5 , v092
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W84
	.byte		        Gn5 , v096
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		        Gn5 , v120
	.byte	W12
	.byte	W96
	.byte		N12   , Gn5 , v092
	.byte	W60
	.byte		N12
	.byte	W36
	.byte	PEND
	.byte	W84
	.byte		        Gn5 , v096
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	song340_7 + 0x43
	.byte	W84
	.byte		N12   , Gn5 , v096
	.byte	W12
	.byte	W96
	.byte		        Gn5 , v092
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song340_7 + 0x27
	.byte	FINE

@******************************************************@
	.align	2

song340:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song340_pri	@ Priority
	.byte	song340_rev	@ Reverb.

	.word	song340_grp

	.word	song340_0
	.word	song340_1
	.word	song340_2
	.word	song340_3
	.word	song340_4
	.word	song340_5
	.word	song340_6
	.word	song340_7

	.end
