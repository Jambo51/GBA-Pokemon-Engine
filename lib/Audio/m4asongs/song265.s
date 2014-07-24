@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song265_grp, group_2
	.equ	song265_pri, 0
	.equ	song265_rev, 178
	.equ	song265_mvl, 127
	.equ	song265_key, 0
	.equ	song265_tbs, 1
	.equ	song265_exg, 1
	.equ	song265_cmp, 1

	.section .rodata
	.global	song265
	.align	2

@**************** Track 00 ****************************@

song265_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 98
	.byte		VOICE , 48
	.byte		VOL   , 80*song265_mvl/mxv
	.byte		LFOS  , 18
	.byte		PAN   , c_v-10
	.byte		N06   , Cn5 , v092
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        Cs4 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        As3 
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
	.byte		VOICE , 56
	.byte		PAN   , c_v+10
	.byte		N12   , Gn3 , v104
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		        Gn2 
	.byte	W24
	.byte		        En3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N24   , As2 
	.byte	W24
	.byte		N12   , Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		        Gn2 
	.byte	W24
	.byte		        En3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N24   , Gs3 
	.byte	W24
	.byte		VOICE , 60
	.byte		PAN   , c_v-16
	.byte		N48   , Cn4 , v100
	.byte	W48
	.byte		        Cn3 
	.byte	W48
	.byte		        Gn3 
	.byte	W48
	.byte		        Cs3 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
	.byte		        Cs4 
	.byte	W48
	.byte		N24   , Ds3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		PAN   , c_v+10
	.byte		N48   , Gn3 , v100
	.byte	W48
	.byte		N42   , Fn3 
	.byte	W42
	.byte		N06   , Gs3 
	.byte	W06
	.byte		N36   , Gn3 
	.byte	W36
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N36   , Gn3 
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		N12   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N60   , Gn3 
	.byte	W60
	.byte		PAN   , c_v+16
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
	.byte		N24   , As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N72   , Gn3 
	.byte	W72
	.byte		N24   , En3 
	.byte	W24
	.byte		N92   , Cn4 
	.byte	W96
	.byte		N48   , Dn4 
	.byte	W12
	.byte		PAN   , c_v+20
	.byte	W36
	.byte		N48   , Cn4 
	.byte	W48
	.byte		        As3 
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte		N72   , En4 
	.byte	W72
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N92   , Cn4 
	.byte	W96
	.byte		VOICE , 1
	.byte		PAN   , c_v+10
	.byte		N36   , Cn3 , v108
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N24   , En3 
	.byte	W24
	.byte		N36   , Fn3 
	.byte	W36
	.byte		N12   , Cn3 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N36   , Gn3 
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte		N12   , As3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Cn4 
	.byte	W24
	.byte		N60   , Gn3 
	.byte	W56
	.byte	W01
	.byte		VOICE , 56
	.byte	W03
	.byte		N48   , Dn4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Cn4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N24   , As3 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N72   , Gn3 
	.byte	W36
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N24   , En3 
	.byte	W24
	.byte		N56   , Cn4 , v104
	.byte	W30
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 76*song265_mvl/mxv
	.byte	W06
	.byte		        71*song265_mvl/mxv
	.byte	W06
	.byte		        64*song265_mvl/mxv
	.byte	W03
	.byte		        49*song265_mvl/mxv
	.byte	W03
	.byte		        33*song265_mvl/mxv
	.byte	W03
	.byte		        17*song265_mvl/mxv
	.byte	W03
	.byte		VOICE , 48
	.byte		MOD   , 0
	.byte	W03
	.byte		PAN   , c_v+20
	.byte		N12   , Gn3 , v092
	.byte	W03
	.byte		VOL   , 80*song265_mvl/mxv
	.byte	W09
	.byte		N12   , Cn4 
	.byte	W24
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
	.byte		        As3 
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte		N72   , En4 
	.byte	W72
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N92   , Gn4 
	.byte	W96
	.byte		VOICE , 1
	.byte		N36   , Gn3 , v108
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N36   , An3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N24   , An3 
	.byte	W24
	.byte		TIE   , Gn3 
	.byte	W96
	.byte	W72
	.byte		EOT
	.byte	W24
	.byte	W96
	.byte	W96
	.byte		VOICE , 60
	.byte		PAN   , c_v+10
	.byte		TIE   , Cn3 , v100
	.byte	W96
	.byte	W72
	.byte		EOT
	.byte		N12
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N96   , Cs3 
	.byte	W96
	.byte		        Ds3 
	.byte	W96
	.byte		TIE   , Cn3 
	.byte	W96
	.byte	W72
	.byte		EOT
	.byte		N12
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		N96   , Cs3 
	.byte	W96
	.byte		        Ds3 
	.byte	W96
	.byte		TIE   , As2 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte		VOICE , 48
	.byte		PAN   , c_v+20
	.byte		N96   , Gn2 
	.byte	W96
	.byte		N48   , Fn2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
	.byte		N96   , Cn2 
	.byte	W96
	.byte		        Gn2 
	.byte	W96
	.byte		        Gs2 
	.byte	W96
	.byte		N48   , Fn2 
	.byte	W48
	.byte		        Gs2 
	.byte	W48
	.byte		N96   , Gn2 
	.byte	W96
	.byte		        Cn3 
	.byte	W96
	.byte	GOTO
	 .word	song265_0 + 0x88
	.byte	FINE

@**************** Track 01 ****************************@

song265_1:
	.byte	KEYSH , 0
	.byte		VOICE , 1
	.byte		VOL   , 80*song265_mvl/mxv
	.byte		LFOS  , 18
	.byte		PAN   , c_v+10
	.byte		N06   , Gn5 , v080
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		N12   , Gn5 
	.byte	W12
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		N12   , Cn4 , v104
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , Cs3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W36
	.byte		        Cs4 
	.byte	W36
	.byte		        Cn3 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
	.byte		VOICE , 45
	.byte		PAN   , c_v+0
	.byte		N12   , Cn5 , v108
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		        Cn4 
	.byte	W24
	.byte		        Gn4 
	.byte	W36
	.byte		        Gs4 
	.byte	W36
	.byte		N24   , Cs4 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Cn5 
	.byte	W36
	.byte		        Cs5 
	.byte	W36
	.byte		N24   , Ds5 
	.byte	W24
	.byte		VOICE , 48
	.byte		PAN   , c_v+0
	.byte		N48   , Cn4 , v100
	.byte	W48
	.byte		        As3 
	.byte	W48
	.byte		N36   , Dn4 
	.byte	W36
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W72
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		N60   , Cn4 
	.byte	W60
	.byte		PAN   , c_v+0
	.byte		N48   , As4 
	.byte	W48
	.byte		        An4 
	.byte	W48
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N72   , En4 
	.byte	W72
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N92   , Gn4 
	.byte	W96
	.byte		N48   , As4 
	.byte	W12
	.byte		PAN   , c_v+2
	.byte	W36
	.byte		N48   , An4 
	.byte	W48
	.byte		N24   , As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		N72   , En5 
	.byte	W72
	.byte		N24   , Dn5 
	.byte	W24
	.byte		N92   , Cn5 
	.byte	W96
	.byte		VOICE , 56
	.byte		PAN   , c_v+1
	.byte		N48   , Cn4 , v104
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , As3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N36   , Dn4 
	.byte	W18
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N12   , Gn3 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N72   , En4 
	.byte	W36
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W24
	.byte		N60   , Cn4 
	.byte	W24
	.byte	W03
	.byte		MOD   , 6
	.byte	W32
	.byte	W01
	.byte		        0
	.byte		N48   , As4 , v108
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , An4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Gn4 
	.byte	W24
	.byte		        Fn4 
	.byte	W24
	.byte		N72   , En4 
	.byte	W36
	.byte		MOD   , 6
	.byte	W36
	.byte		        0
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N56   , Gn4 
	.byte	W30
	.byte		MOD   , 6
	.byte	W03
	.byte		VOL   , 76*song265_mvl/mxv
	.byte	W06
	.byte		        71*song265_mvl/mxv
	.byte	W06
	.byte		        64*song265_mvl/mxv
	.byte	W03
	.byte		        49*song265_mvl/mxv
	.byte	W03
	.byte		        33*song265_mvl/mxv
	.byte	W03
	.byte		        17*song265_mvl/mxv
	.byte	W03
	.byte		MOD   , 0
	.byte	W03
	.byte		VOICE , 48
	.byte		PAN   , c_v+2
	.byte		N12   , Gn4 , v092
	.byte	W03
	.byte		VOL   , 80*song265_mvl/mxv
	.byte	W09
	.byte		N12   , Cn5 
	.byte	W24
	.byte		N48   , As4 
	.byte	W48
	.byte		        An4 
	.byte	W48
	.byte		N24   , As4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte		        Fn5 
	.byte	W24
	.byte		N72   , En5 
	.byte	W72
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N92   , Gn5 
	.byte	W96
	.byte		VOICE , 1
	.byte		N36   , Cn3 , v108
	.byte	W36
	.byte		        As2 
	.byte	W36
	.byte		N24   , Cn3 
	.byte	W24
	.byte		N36   , Dn3 
	.byte	W36
	.byte		        As2 
	.byte	W36
	.byte		N24   , Dn3 
	.byte	W24
	.byte		TIE   , Cn3 
	.byte	W96
	.byte	W72
	.byte		EOT
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 60
	.byte		PAN   , c_v+0
	.byte		N72   , Cn4 , v100
	.byte	W72
	.byte		N12
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		N96   , Cs4 
	.byte	W96
	.byte		        Ds4 
	.byte	W96
	.byte		TIE   , Fn4 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte		VOICE , 48
	.byte		PAN   , c_v+2
	.byte		N96   , Cn3 
	.byte	W96
	.byte		N42   , As2 
	.byte	W42
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N48   , Dn3 
	.byte	W48
	.byte		N96   , Gn2 
	.byte	W96
	.byte		        Cn3 
	.byte	W96
	.byte		        Cs3 
	.byte	W96
	.byte		N48   , As2 
	.byte	W48
	.byte		N36   , Cs3 
	.byte	W36
	.byte		N12   , En3 
	.byte	W12
	.byte		N96   , Cn3 
	.byte	W96
	.byte		        En3 
	.byte	W96
	.byte	GOTO
	 .word	song265_1 + 0x88
	.byte	FINE

@**************** Track 02 ****************************@

song265_2:
	.byte	KEYSH , 0
	.byte		VOICE , 33
	.byte		VOL   , 80*song265_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Cn2 , v108
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        As1 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte		N12   , As1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_2 + 0x21
	.byte	PATT
	 .word	song265_2 + 0x34
	.byte	PATT
	 .word	song265_2 + 0x21
	.byte	PATT
	 .word	song265_2 + 0x34
	.byte	PATT
	 .word	song265_2 + 0x21
	.byte	PATT
	 .word	song265_2 + 0x34
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N12   , As0 , v108
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte	PEND
	.byte		N12   , As0 , v108
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Gn1 
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0xB2
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte		N12   , Cn1 , v108
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0xCA
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte		N12   , Cs1 , v108
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte	PEND
	.byte		N12   , Ds1 , v108
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
	.byte		        Ds1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x167
	.byte	PATT
	 .word	song265_2 + 0x17A
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x167
	.byte	PATT
	 .word	song265_2 + 0x17A
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x9F
	.byte	PATT
	 .word	song265_2 + 0x65
	.byte	PATT
	 .word	song265_2 + 0xEC
	.byte	GOTO
	 .word	song265_2 + 0x65
	.byte	FINE

@**************** Track 03 ****************************@

song265_3:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 18
	.byte		VOL   , 80*song265_mvl/mxv
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		PAN   , c_v-48
	.byte	W12
	.byte		N06   , Cn6 , v052
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		VOICE , 82
	.byte		PAN   , c_v+48
	.byte		N12   , Cn3 , v060
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N12   , Cn2 
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N12   , Cs2 
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N12   , Cn3 
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N12   , Cn4 
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 82
	.byte		MOD   , 0
	.byte		N12   , Cs3 
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		MOD   , 6
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		VOICE , 4
	.byte		PAN   , c_v-48
	.byte		MOD   , 0
	.byte		N12   , Gn4 , v040
	.byte	W36
	.byte		        Gs4 
	.byte	W36
	.byte		        Gn3 
	.byte	W24
	.byte		        En4 
	.byte	W36
	.byte		        Fn4 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Gs4 
	.byte	W36
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Gn4 
	.byte	W36
	.byte		        Gs4 
	.byte	W36
	.byte		N24
	.byte	W24
	.byte		VOICE , 84
	.byte		PAN   , c_v+0
	.byte		N12   , En4 , v040
	.byte	W36
	.byte		        Fn4 
	.byte	W36
	.byte		        Gn4 
	.byte	W24
	.byte	W60
	.byte		        Gn4 , v052
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N36   , En5 
	.byte	W18
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N36   , Cn5 
	.byte	W18
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W24
	.byte		N60   , Cn5 
	.byte	W24
	.byte		MOD   , 7
	.byte	W36
	.byte		VOICE , 80
	.byte		MOD   , 0
	.byte		N48   , As3 , v060
	.byte	W48
	.byte		        An3 
	.byte	W48
	.byte	PEND
	.byte		N24   , Gn3 , v060
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gn3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
	.byte	PEND
	.byte		N72   , En3 , v060
	.byte	W72
	.byte		N24   , Cn3 
	.byte	W24
	.byte	PEND
	.byte		N60   , Gn3 , v060
	.byte	W60
	.byte		VOICE , 6
	.byte		N12   , En3 , v072
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte	PEND
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-47
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-49
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Cn3 
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+51
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		VOICE , 84
	.byte		PAN   , c_v+0
	.byte		N12   , Cn5 , v040
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Fn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , En5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		        0
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		N36   , En5 
	.byte	W21
	.byte		MOD   , 6
	.byte	W15
	.byte		        0
	.byte		N36   , Cn5 
	.byte	W18
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        En5 
	.byte	W12
	.byte		        Fn5 
	.byte	W12
	.byte		        En5 
	.byte	W24
	.byte		N60   , Cn5 
	.byte	W24
	.byte	W03
	.byte		MOD   , 6
	.byte	W32
	.byte	W01
	.byte	PATT
	 .word	song265_3 + 0x105
	.byte	PATT
	 .word	song265_3 + 0x110
	.byte	PATT
	 .word	song265_3 + 0x11B
	.byte	PATT
	 .word	song265_3 + 0x123
	.byte		N12   , Fn2 , v072
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		PAN   , c_v-47
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N12   , An3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		PAN   , c_v-49
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Gn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		PAN   , c_v+51
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 84
	.byte		N72   , Cn2 
	.byte	W72
	.byte		N12
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N96   , Cs2 
	.byte	W96
	.byte		        Ds2 
	.byte	W96
	.byte		TIE   , Cn2 
	.byte	W96
	.byte	W72
	.byte		EOT
	.byte		N12
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N96   , Cs2 
	.byte	W96
	.byte		        Ds2 
	.byte	W96
	.byte		TIE   , Cn2 
	.byte	W96
	.byte	W72
	.byte		EOT
	.byte		N12
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N96   , Cs2 
	.byte	W96
	.byte		        Ds2 
	.byte	W96
	.byte		TIE   , Fn2 
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte		VOICE , 86
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12   , Fn2 , v072
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_3 + 0x285
	.byte	PATT
	 .word	song265_3 + 0x285
	.byte		VOICE , 6
	.byte		N12   , Gn3 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		VOICE , 7
	.byte		PAN   , c_v+0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Gn3 , v060
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte		VOICE , 6
	.byte		PAN   , c_v+0
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v-48
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+0
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		PAN   , c_v+48
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		VOICE , 7
	.byte		PAN   , c_v+0
	.byte		N12   , Gn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		PAN   , c_v-47
	.byte		N12   , En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PATT
	 .word	song265_3 + 0x2E7
	.byte	GOTO
	 .word	song265_3 + 0xD4
	.byte	FINE

@**************** Track 04 ****************************@

song265_4:
	.byte	KEYSH , 0
	.byte		VOICE , 82
	.byte		LFOS  , 18
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 80*song265_mvl/mxv
	.byte		PAN   , c_v+46
	.byte		BEND  , c_v-2
	.byte		N06   , Gn3 , v052
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W06
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        As3 
	.byte	W06
	.byte		        Fn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W06
	.byte		VOICE , 80
	.byte		PAN   , c_v-47
	.byte		N48   , Cn4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Cn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Gn3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Cs3 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte	W06
	.byte		N42   , Cn4 
	.byte	W18
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Gn4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Cn5 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		        0
	.byte		N48   , Cs4 
	.byte	W24
	.byte		MOD   , 6
	.byte	W24
	.byte		VOICE , 5
	.byte		PAN   , c_v+48
	.byte		MOD   , 0
	.byte		N12   , Gn3 , v040
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		        Gn2 
	.byte	W24
	.byte		        En3 
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		        Gn2 
	.byte	W24
	.byte		        Gn3 
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12
	.byte	W36
	.byte		        Gs3 
	.byte	W36
	.byte		N24   , Ds3 
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W36
	.byte		VOICE , 82
	.byte		PAN   , c_v+0
	.byte		N12   , En3 , v060
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
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
	.byte	W36
	.byte		VOICE , 82
	.byte		N12
	.byte	W12
	.byte		VOICE , 83
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
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
	.byte		VOICE , 80
	.byte		BEND  , c_v-2
	.byte		N09   , As3 , v072
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Ds3 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		VOICE , 5
	.byte		N09   , Cn2 , v060
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		VOICE , 4
	.byte		N09   , Cn4 , v060
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte	PEND
	.byte		N09   , Cn4 , v060
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte	PEND
	.byte		VOICE , 5
	.byte		N09   , Cs2 
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N32
	.byte	W36
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte		N09
	.byte	W12
	.byte	PATT
	 .word	song265_4 + 0x13B
	.byte	PATT
	 .word	song265_4 + 0x14C
	.byte	GOTO
	 .word	song265_4 + 0xA1
	.byte	FINE

@**************** Track 05 ****************************@

song265_5:
	.byte	KEYSH , 0
	.byte		VOICE , 90
	.byte		VOL   , 80*song265_mvl/mxv
	.byte	W24
	.byte		N06   , Gn2 , v080
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Cs3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Cs2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Ds2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Fn2 
	.byte	W06
	.byte		        Fs2 
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		        Gs2 
	.byte	W06
	.byte		        An2 
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		        Bn2 
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
	.byte		        Fn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        Gn3 
	.byte	W06
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 81
	.byte		N48   , Cn3 , v064
	.byte	W48
	.byte		        Cn2 
	.byte	W48
	.byte		        Gn2 
	.byte	W48
	.byte		        Cs2 
	.byte	W48
	.byte		        Cn3 
	.byte	W48
	.byte		        Cn2 
	.byte	W48
	.byte		        Cs3 
	.byte	W48
	.byte		        Ds2 
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N48   , Fn4 , v064
	.byte	W48
	.byte		        En4 
	.byte	W48
	.byte	PEND
	.byte		N24   , Fn4 , v064
	.byte	W24
	.byte		        En4 
	.byte	W24
	.byte		        An4 
	.byte	W24
	.byte		        Dn5 
	.byte	W24
	.byte	PEND
	.byte		N72   , Cn5 
	.byte	W72
	.byte		N24   , An4 
	.byte	W24
	.byte		N96   , Gn4 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Gn4 
	.byte	W24
	.byte	PATT
	 .word	song265_5 + 0x61
	.byte	PATT
	 .word	song265_5 + 0x68
	.byte		N72   , Cn5 , v064
	.byte	W72
	.byte		N24   , En4 
	.byte	W24
	.byte		N92   , Cn5 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N72   , Cn1 
	.byte	W72
	.byte		N12
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N96   , Cs1 
	.byte	W96
	.byte		        Ds1 
	.byte	W96
	.byte		TIE   , Cn1 
	.byte	W96
	.byte	W72
	.byte		EOT
	.byte		N12
	.byte	W12
	.byte		        As0 
	.byte	W12
	.byte		N96   , Cs1 
	.byte	W96
	.byte		        Ds1 
	.byte	W96
	.byte		        Cn1 
	.byte	W96
	.byte		N72   , Gn2 
	.byte	W72
	.byte		N12
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		N96   , Gs2 
	.byte	W96
	.byte		        As2 
	.byte	W96
	.byte		TIE   , Fn3 
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		EOT
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song265_5 + 0x59
	.byte	FINE

@**************** Track 06 ****************************@

song265_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 80*song265_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W84
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W48
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	W24
	.byte		N12   , Dn1 , v112
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0x34
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0x34
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0xE
	.byte	PATT
	 .word	song265_6 + 0x34
	.byte	GOTO
	 .word	song265_6 + 0x3E
	.byte	FINE

@**************** Track 07 ****************************@

song265_7:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		VOL   , 80*song265_mvl/mxv
	.byte		PAN   , c_v-10
	.byte		N12   , Cn2 , v112
	.byte	W36
	.byte		N12
	.byte	W48
	.byte		        Gn1 
	.byte	W12
	.byte	W12
	.byte		        Cn2 
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		N12   , Cn2 , v112
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	PEND
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte		N12   , Cn2 , v112
	.byte	W36
	.byte		N12
	.byte	W48
	.byte		        Gn1 
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x17
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte	PATT
	 .word	song265_7 + 0x41
	.byte		N12   , Cn2 , v112
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	song265_7 + 0x121
	.byte	PATT
	 .word	song265_7 + 0x121
	.byte	PATT
	 .word	song265_7 + 0x121
	.byte	PATT
	 .word	song265_7 + 0x121
	.byte	PATT
	 .word	song265_7 + 0x121
	.byte	W24
	.byte		N12   , Cn2 , v112
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W48
	.byte		N12
	.byte	W12
	.byte		N12
	.byte	W36
	.byte	GOTO
	 .word	song265_7 + 0x41
	.byte	FINE

@******************************************************@
	.align	2

song265:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song265_pri	@ Priority
	.byte	song265_rev	@ Reverb.

	.word	song265_grp

	.word	song265_0
	.word	song265_1
	.word	song265_2
	.word	song265_3
	.word	song265_4
	.word	song265_5
	.word	song265_6
	.word	song265_7

	.end
