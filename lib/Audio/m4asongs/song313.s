@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song313_grp, group_49
	.equ	song313_pri, 0
	.equ	song313_rev, 178
	.equ	song313_mvl, 127
	.equ	song313_key, 0
	.equ	song313_tbs, 1
	.equ	song313_exg, 1
	.equ	song313_cmp, 1

	.section .rodata
	.global	song313
	.align	2

@**************** Track 00 ****************************@

song313_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 58
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 34*song313_mvl/mxv
	.byte		N24   , An3 , v127
	.byte	W24
	.byte		PAN   , c_v-16
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Dn4 
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Dn4 
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N06   , Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N24   , An3 
	.byte	W24
	.byte		PAN   , c_v-16
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Dn3 , v120
	.byte	W06
	.byte		        Gn3 , v127
	.byte	W06
	.byte		        Dn3 , v120
	.byte	W06
	.byte		PAN   , c_v+16
	.byte		N06   , An3 , v127
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W06
	.byte		        Bn3 , v127
	.byte	W06
	.byte		        As3 , v120
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		N24   , An3 , v127
	.byte	W24
	.byte		PAN   , c_v-16
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Dn4 
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PATT
	 .word	song313_0 + 0x28
	.byte		PAN   , c_v-32
	.byte		N24   , An3 , v127
	.byte	W24
	.byte		PAN   , c_v-16
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte		N12   , An3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N24   , Bn3 
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N24   , An3 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , Gn4 , v127
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cs4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		N12   , En4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N06   , Dn1 , v120
	.byte		N12   , Cs4 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N12   , En4 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Cs4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N06   , Bn3 
	.byte	W12
	.byte		N12   , Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cs4 
	.byte	W12
	.byte		N12   , En4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N06   , Dn4 
	.byte	W12
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PATT
	 .word	song313_0 + 0xFF
	.byte		PAN   , c_v-32
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		PAN   , c_v-16
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v+16
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PATT
	 .word	song313_0 + 0x140
	.byte		VOICE , 24
	.byte		PAN   , c_v+40
	.byte		VOL   , 43*song313_mvl/mxv
	.byte		N06   , Cs4 , v120
	.byte	W06
	.byte		N03   , Cs4 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cs4 , v120
	.byte	W06
	.byte		N01   , Cs4 , v052
	.byte	W06
	.byte		N03   , Gn4 , v084
	.byte	W06
	.byte		        Bn3 
	.byte		N01   , Cs4 
	.byte	W03
	.byte		N03   , Cn4 , v088
	.byte	W03
	.byte		N06   , Cs4 , v120
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Cs4 
	.byte	W12
	.byte	W06
	.byte		N03   , Gs3 , v084
	.byte	W03
	.byte		        Bn3 , v088
	.byte	W03
	.byte		        Cs4 , v120
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N01   , An4 , v116
	.byte	W06
	.byte		N06   , Cs4 , v052
	.byte	W06
	.byte		N03   , Gs3 , v072
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Bn3 , v080
	.byte	W03
	.byte		        Cs4 , v120
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N01   , En4 , v068
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		N03   , An4 , v096
	.byte	W06
	.byte		N06   , An3 , v084
	.byte	W12
	.byte	GOTO
	 .word	song313_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song313_1:
	.byte	KEYSH , 0
	.byte		VOICE , 73
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 78*song313_mvl/mxv
	.byte		N48   , Dn4 , v100
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		VOL   , 56*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 78*song313_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N36   , En4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 56*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 78*song313_mvl/mxv
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N48   , Fs4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		VOL   , 56*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 78*song313_mvl/mxv
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N36   , En4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 56*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 78*song313_mvl/mxv
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		VOL   , 56*song313_mvl/mxv
	.byte	W12
	.byte		VOICE , 4
	.byte		VOL   , 81*song313_mvl/mxv
	.byte		MOD   , 0
	.byte		N48   , Dn5 , v108
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W12
	.byte		        56*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 81*song313_mvl/mxv
	.byte		N24   , Gn5 , v076
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		N36   , En5 , v108
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 81*song313_mvl/mxv
	.byte		N06   , Dn5 , v088
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		N48   , Fs5 , v084
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W12
	.byte		        56*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 81*song313_mvl/mxv
	.byte		N48   , Dn5 , v108
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 81*song313_mvl/mxv
	.byte		N24   , Gn5 , v088
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		N36   , En5 , v108
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 81*song313_mvl/mxv
	.byte		N06   , Fs5 , v084
	.byte	W06
	.byte		        En5 , v080
	.byte	W06
	.byte		N48   , Dn5 , v088
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W12
	.byte		        56*song313_mvl/mxv
	.byte	W12
	.byte		VOICE , 17
	.byte		MOD   , 0
	.byte		VOL   , 90*song313_mvl/mxv
	.byte		N24   , En4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , En5 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N24   , Dn5 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Cs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		VOICE , 24
	.byte		MOD   , 0
	.byte		VOL   , 79*song313_mvl/mxv
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , En4 , v120
	.byte	W12
	.byte		N06   , Fs4 , v127
	.byte	W12
	.byte		N12   , Fs4 , v120
	.byte	W12
	.byte		N06   , Gn4 , v127
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 , v120
	.byte	W06
	.byte		        An4 , v127
	.byte	W12
	.byte		N12   , An4 , v120
	.byte	W12
	.byte		N48   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 79*song313_mvl/mxv
	.byte		N48   , En5 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 79*song313_mvl/mxv
	.byte		N12   , Dn5 , v127
	.byte	W12
	.byte		N06   , Gn4 , v120
	.byte	W12
	.byte		N24   , Cs5 , v127
	.byte	W24
	.byte		N06   , Bn4 
	.byte	W12
	.byte		        En5 , v120
	.byte	W12
	.byte		N03   , Bn4 
	.byte	W03
	.byte		        Cs5 , v096
	.byte	W03
	.byte		N06   , Bn4 , v088
	.byte	W06
	.byte		N12   , An4 , v120
	.byte	W12
	.byte		N36   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 79*song313_mvl/mxv
	.byte		N06   , Cs5 , v120
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N48   , An4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		VOL   , 68*song313_mvl/mxv
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 87*song313_mvl/mxv
	.byte		N96   , An3 , v120
	.byte	W12
	.byte		MOD   , 5
	.byte	W84
	.byte		        0
	.byte	W24
	.byte		VOICE , 73
	.byte		VOL   , 70*song313_mvl/mxv
	.byte	W24
	.byte		        22*song313_mvl/mxv
	.byte		N24
	.byte	W03
	.byte		VOL   , 29*song313_mvl/mxv
	.byte	W06
	.byte		        41*song313_mvl/mxv
	.byte	W03
	.byte		        52*song313_mvl/mxv
	.byte	W03
	.byte		        63*song313_mvl/mxv
	.byte	W03
	.byte		        76*song313_mvl/mxv
	.byte	W06
	.byte		N03   , Cs4 
	.byte	W03
	.byte		        Dn4 , v088
	.byte	W03
	.byte		N06   , Cs4 , v120
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte	GOTO
	 .word	song313_1 + 0x2
	.byte	FINE

@**************** Track 02 ****************************@

song313_2:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-63
	.byte		VOL   , 44*song313_mvl/mxv
	.byte		MOD   , 3
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , Bn2 
	.byte	W03
	.byte		        Cs3 , v120
	.byte	W03
	.byte		N06   , Bn2 
	.byte	W06
	.byte		N12   , An2 , v127
	.byte	W12
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	PEND
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fs2 
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte		        An2 , v127
	.byte	W06
	.byte		        Gs2 , v120
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Cs3 , v120
	.byte	W06
	.byte		        Fs3 , v127
	.byte	W06
	.byte		        En3 , v120
	.byte	W06
	.byte	PATT
	 .word	song313_2 + 0x4A
	.byte		N12   , Cs3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Fs3 
	.byte	W06
	.byte		        Gn3 , v120
	.byte	W06
	.byte		        En3 , v127
	.byte	W06
	.byte		        Fs3 , v120
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        En3 , v120
	.byte	W06
	.byte		        An2 , v127
	.byte	W06
	.byte		        Bn2 , v120
	.byte	W06
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		N06   , En3 , v120
	.byte	W06
	.byte		        Fs3 , v127
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An2 , v120
	.byte	W06
	.byte		        Dn3 , v127
	.byte	W06
	.byte		        Cs3 , v120
	.byte	W06
	.byte		PAN   , c_v-64
	.byte		N06   , En3 , v127
	.byte	W06
	.byte		        Dn3 , v120
	.byte	W06
	.byte		        Fs3 , v127
	.byte	W06
	.byte		        En3 , v120
	.byte	W06
	.byte		N12   , An3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N03   , Bn2 
	.byte	W03
	.byte		        Cs3 , v120
	.byte	W03
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        An2 , v127
	.byte	W06
	.byte		        As2 , v120
	.byte	W06
	.byte		N12   , Cs3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , Cs3 
	.byte	W03
	.byte		        Dn3 , v120
	.byte	W03
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , En3 , v120
	.byte	W12
	.byte		        An2 , v127
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        Dn3 , v120
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , Cs3 , v127
	.byte	W03
	.byte		        Dn3 , v120
	.byte	W03
	.byte		N06   , Cs3 
	.byte	W06
	.byte		N12   , Bn2 , v127
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , En3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N06   , Gn2 
	.byte	W06
	.byte		        Gs2 , v120
	.byte	W06
	.byte		        An2 , v127
	.byte	W06
	.byte		        Bn2 , v120
	.byte	W06
	.byte		PAN   , c_v+63
	.byte		N12   , Cs3 , v127
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N03   , Gn2 
	.byte	W03
	.byte		        An2 , v120
	.byte	W03
	.byte		N06   , Gn2 
	.byte	W06
	.byte		N12   , En2 , v127
	.byte	W12
	.byte		        An2 , v120
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		PAN   , c_v-64
	.byte		N12   , An2 
	.byte	W12
	.byte		        En2 , v024
	.byte	W12
	.byte	GOTO
	 .word	song313_2 + 0x2
	.byte	FINE

@**************** Track 03 ****************************@

song313_3:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v-1
	.byte		VOL   , 49*song313_mvl/mxv
	.byte		N12   , Dn1 , v120
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Dn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W24
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Cs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , An1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , Gs1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N12   , Dn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Dn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N03   , Fs1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , An1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N03   , Dn2 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N09   , Dn1 
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		        Ds1 
	.byte	W06
	.byte		N12   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Fs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Gs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N03   , An1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Bn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , An1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Dn2 
	.byte	W12
	.byte		N03   , Dn1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N06   , Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Cs2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Bn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , An1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Fs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , An1 
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N06   , Dn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Cs2 
	.byte	W12
	.byte		N24   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N12   , Bn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , En2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06   , As1 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Bn1 
	.byte	W12
	.byte		N12   , En1 
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W12
	.byte		N03   , En1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , An1 
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , Cs1 
	.byte	W06
	.byte		N03   , An1 
	.byte	W06
	.byte		N12   , Cs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N03   , En1 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En2 
	.byte	W06
	.byte		N03   , Bn1 
	.byte	W06
	.byte		N06   , En1 
	.byte		N03   , An1 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N12   , An1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , Gn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , En1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N18   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N06   , Gn1 
	.byte	W06
	.byte		        Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , Gn1 
	.byte	W06
	.byte		N03   , Gn2 
	.byte	W06
	.byte		N12   , Bn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06   , Fs1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06   , En1 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N06   , Dn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , An1 
	.byte	W12
	.byte		N24
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		        0
	.byte		N06
	.byte	W06
	.byte		N03   , An2 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		N06   , En1 
	.byte	W09
	.byte		        Gn1 
	.byte	W06
	.byte		N12   , Gs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N12   , An1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N12
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		        0
	.byte		N24   , Cs1 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , En1 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte		        0
	.byte		N24   , Gn1 
	.byte	W12
	.byte		MOD   , 8
	.byte	W12
	.byte	GOTO
	 .word	song313_3 + 0x2
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 04 ****************************@

song313_4:
	.byte	KEYSH , 0
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 34*song313_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+1
	.byte		N48   , Dn4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		N36   , En4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N06   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N48   , Fs4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Dn4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte	PEND
	.byte		N36   , En4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N06   , Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N48   , Dn4 
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte	PEND
	.byte		N48
	.byte	W48
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte	PATT
	 .word	song313_4 + 0x1B
	.byte	PATT
	 .word	song313_4 + 0x2F
	.byte	PATT
	 .word	song313_4 + 0x3F
	.byte		MOD   , 0
	.byte		N24   , En4 , v127
	.byte	W24
	.byte		        Fs4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , En5 , v080
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N24   , Dn5 , v127
	.byte	W24
	.byte		        Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		N48   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , An4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N06   , En4 
	.byte	W12
	.byte		N12   , En4 , v120
	.byte	W12
	.byte		N06   , Fs4 , v127
	.byte	W12
	.byte		N12   , Fs4 , v120
	.byte	W12
	.byte		N06   , Gn4 , v127
	.byte	W06
	.byte		        En4 , v092
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Gn4 , v120
	.byte	W06
	.byte		        An4 , v127
	.byte	W12
	.byte		N12   , An4 , v120
	.byte	W12
	.byte		N48   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N48   , En5 , v084
	.byte	W12
	.byte		MOD   , 7
	.byte	W36
	.byte		        0
	.byte		N12   , Dn5 , v127
	.byte	W24
	.byte		N24   , Cs5 
	.byte	W24
	.byte		        Bn4 
	.byte	W48
	.byte		N36
	.byte	W12
	.byte		MOD   , 5
	.byte	W24
	.byte		        0
	.byte		N06   , Cs5 , v120
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		N48   , An4 , v127
	.byte	W12
	.byte		MOD   , 5
	.byte	W36
	.byte		        0
	.byte	W12
	.byte		        5
	.byte	W84
	.byte		        0
	.byte	W96
	.byte	GOTO
	 .word	song313_4 + 0x2
	.byte	FINE

@**************** Track 05 ****************************@

song313_5:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		VOL   , 41*song313_mvl/mxv
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-30
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
	.byte		VOL   , 42*song313_mvl/mxv
	.byte		N06   , En3 , v120
	.byte	W06
	.byte		N03   , En3 , v052
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , En3 , v120
	.byte	W06
	.byte		N01   , En3 , v052
	.byte	W06
	.byte		N03   , En4 , v084
	.byte	W06
	.byte		        Cs3 
	.byte		N01   , En3 
	.byte	W03
	.byte		N03   , Ds3 , v088
	.byte	W03
	.byte		        En3 , v120
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12   , En3 
	.byte	W12
	.byte	W06
	.byte		N03   , Bn2 , v084
	.byte	W03
	.byte		        Dn3 , v088
	.byte	W03
	.byte		        En3 , v120
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N01   , En4 , v116
	.byte	W06
	.byte		N06   , En3 , v052
	.byte	W06
	.byte		N03   , Bn2 , v072
	.byte		N03   , En3 
	.byte	W03
	.byte		        Dn3 , v080
	.byte	W03
	.byte		        En3 , v120
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		N04   , An3 , v068
	.byte	W03
	.byte		N01   , En4 
	.byte	W03
	.byte		N03   , Gn4 , v096
	.byte	W06
	.byte		N06   , Gn3 , v084
	.byte	W12
	.byte	GOTO
	 .word	song313_5 + 0x2
	.byte	FINE

@**************** Track 06 ****************************@

song313_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 72*song313_mvl/mxv
	.byte		PAN   , c_v-1
	.byte		N06   , En1 , v100
	.byte		N48   , Gn2 , v120
	.byte	W12
	.byte		N06   , En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En1 , v076
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En1 , v076
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W12
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En1 , v076
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03
	.byte	W06
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	song313_6 + 0x35
	.byte	PATT
	 .word	song313_6 + 0x35
	.byte	PATT
	 .word	song313_6 + 0x35
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N03   , En1 , v076
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v104
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v092
	.byte	W12
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v056
	.byte	W06
	.byte		N03   , En1 , v076
	.byte		N06   , Dn2 , v120
	.byte	W03
	.byte		N03   , En1 , v068
	.byte	W03
	.byte		N03
	.byte		N06   , Dn2 , v120
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , An1 , v120
	.byte	W06
	.byte		        En1 , v048
	.byte		N06   , Gn1 , v120
	.byte	W06
	.byte		        En1 , v100
	.byte		N06   , Fn1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 , v064
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , En1 , v048
	.byte	W06
	.byte		VOL   , 67*song313_mvl/mxv
	.byte		N06   , Cn1 , v120
	.byte		N48   , Gn2 
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W24
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte		N48   , Bn2 
	.byte	W06
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N03   , Dn2 
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N06   , An1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v120
	.byte	W12
	.byte		N03   , Bn0 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En1 
	.byte	W24
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn2 , v084
	.byte	W06
	.byte		N03   , Gn1 , v120
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W12
	.byte		        Bn1 
	.byte	W06
	.byte		N03   , Gn1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Cn1 , v088
	.byte	W06
	.byte		        Dn1 , v092
	.byte	W06
	.byte		        Dn1 , v112
	.byte	W06
	.byte		        Cn1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Cn1 , v084
	.byte	W12
	.byte		        En1 , v120
	.byte	W12
	.byte		N03   , Bn0 
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte		N48   , An2 
	.byte	W06
	.byte		N06   , Cn1 , v096
	.byte	W06
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v120
	.byte	W12
	.byte		N03   , Bn0 
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Fn1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W12
	.byte		N06
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		        En1 , v048
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		        Bn0 , v080
	.byte		N06   , En1 , v076
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , En1 , v100
	.byte	W12
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v048
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , En1 , v100
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		        Cn1 
	.byte		N03   , En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N03   , En1 , v100
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v048
	.byte	W06
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v060
	.byte	W06
	.byte		        Cn1 , v120
	.byte		N06   , En1 , v096
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v120
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W12
	.byte		        En1 , v024
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte	GOTO
	 .word	song313_6 + 0x2
	.byte	FINE

@**************** Track 07 ****************************@

song313_7:
	.byte	KEYSH , 0
	.byte		VOICE , 127
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 43*song313_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N02   , Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte	PEND
	.byte	PATT
	 .word	song313_7 + 0x3E
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v024
	.byte	W18
	.byte		        Cn5 , v064
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W18
	.byte		        Cn5 , v088
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W18
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v072
	.byte	W18
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		N02
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W12
	.byte	PEND
	.byte		        Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v056
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W06
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v044
	.byte	W18
	.byte	PATT
	 .word	song313_7 + 0x9E
	.byte	PATT
	 .word	song313_7 + 0x9E
	.byte		N02   , Cn5 , v120
	.byte	W12
	.byte		        Cn5 , v056
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W12
	.byte		        Cn5 , v096
	.byte	W12
	.byte		        Cn5 , v048
	.byte	W06
	.byte		        Cn5 , v104
	.byte	W06
	.byte		        Cn5 , v024
	.byte	W06
	.byte		        Cn5 , v096
	.byte	W06
	.byte	GOTO
	 .word	song313_7 + 0x2
	.byte	FINE

@**************** Track 08 ****************************@

song313_8:
	.byte	KEYSH , 0
	.byte		VOICE , 126
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 43*song313_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N12   , Gn5 , v096
	.byte	W48
	.byte		N12
	.byte	W36
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W84
	.byte		N12
	.byte	W12
	.byte	W60
	.byte		N12
	.byte	W36
	.byte	W12
	.byte		        Gn5 , v052
	.byte	W24
	.byte		        Gn5 , v068
	.byte	W24
	.byte		        Gn5 , v080
	.byte	W24
	.byte		        Gn5 , v104
	.byte	W12
	.byte	W96
	.byte	W84
	.byte		        Gn5 , v120
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song313_8 + 0x2
	.byte	FINE

@******************************************************@
	.align	2

song313:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song313_pri	@ Priority
	.byte	song313_rev	@ Reverb.

	.word	song313_grp

	.word	song313_0
	.word	song313_1
	.word	song313_2
	.word	song313_3
	.word	song313_4
	.word	song313_5
	.word	song313_6
	.word	song313_7
	.word	song313_8

	.end
