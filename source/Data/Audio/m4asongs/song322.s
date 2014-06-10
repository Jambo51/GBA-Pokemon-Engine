@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song322_grp, group_47
	.equ	song322_pri, 0
	.equ	song322_rev, 178
	.equ	song322_mvl, 127
	.equ	song322_key, 0
	.equ	song322_tbs, 1
	.equ	song322_exg, 1
	.equ	song322_cmp, 1

	.section .rodata
	.global	song322
	.align	2

@**************** Track 00 ****************************@

song322_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 70
	.byte	W12
	.byte		VOICE , 73
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 100*song322_mvl/mxv
	.byte		N06   , Bn4 , v112
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Bn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Cs5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Bn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        As4 
	.byte	W06
	.byte		N06   , Cn5 , v112
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        As4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		        Dn5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Cn5 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	PATT
	 .word	song322_0 + 0x51
	.byte		N06   , Dn5 , v112
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Cn5 
	.byte	W24
	.byte		        Bn3 
	.byte	W06
	.byte		        Ds4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte	GOTO
	 .word	song322_0 + 0x5
	.byte	FINE

@**************** Track 01 ****************************@

song322_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 100*song322_mvl/mxv
	.byte	W12
	.byte		N06   , En3 , v092
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		        Bn1 
	.byte	W48
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N06   , En3 , v092
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , An1 , v112
	.byte	W24
	.byte		        Bn1 
	.byte	W48
	.byte		VOICE , 56
	.byte		PAN   , c_v+0
	.byte	W12
	.byte		N06   , Fn3 , v092
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte		N06
	.byte	W36
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , As1 , v112
	.byte	W12
	.byte		        Cn2 
	.byte	W48
	.byte	PATT
	 .word	song322_1 + 0x3D
	.byte		N06   , Fn3 , v092
	.byte	W24
	.byte		VOICE , 47
	.byte		PAN   , c_v+10
	.byte		N12   , As1 , v112
	.byte	W24
	.byte		        Cn2 
	.byte	W48
	.byte	GOTO
	 .word	song322_1 + 0x3
	.byte	FINE

@**************** Track 02 ****************************@

song322_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 58
	.byte		VOL   , 100*song322_mvl/mxv
	.byte		N21   , En1 , v127
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N48   , An1 
	.byte	W06
	.byte		VOL   , 84*song322_mvl/mxv
	.byte	W03
	.byte		        73*song322_mvl/mxv
	.byte	W06
	.byte		        67*song322_mvl/mxv
	.byte	W06
	.byte		        72*song322_mvl/mxv
	.byte	W06
	.byte		        80*song322_mvl/mxv
	.byte	W03
	.byte		        86*song322_mvl/mxv
	.byte	W03
	.byte		        96*song322_mvl/mxv
	.byte	W06
	.byte		        100*song322_mvl/mxv
	.byte	W09
	.byte		        77*song322_mvl/mxv
	.byte		N48   , Bn1 
	.byte	W06
	.byte		VOL   , 81*song322_mvl/mxv
	.byte	W06
	.byte		        84*song322_mvl/mxv
	.byte	W06
	.byte		        87*song322_mvl/mxv
	.byte	W06
	.byte		        91*song322_mvl/mxv
	.byte	W09
	.byte		        96*song322_mvl/mxv
	.byte	W06
	.byte		        100*song322_mvl/mxv
	.byte	W09
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Bn0 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N24   , An1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W30
	.byte		        100*song322_mvl/mxv
	.byte		N21   , En1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N48   , As1 
	.byte	W06
	.byte		VOL   , 84*song322_mvl/mxv
	.byte	W03
	.byte		        73*song322_mvl/mxv
	.byte	W06
	.byte		        67*song322_mvl/mxv
	.byte	W06
	.byte		        72*song322_mvl/mxv
	.byte	W06
	.byte		        80*song322_mvl/mxv
	.byte	W03
	.byte		        86*song322_mvl/mxv
	.byte	W03
	.byte		        96*song322_mvl/mxv
	.byte	W06
	.byte		        100*song322_mvl/mxv
	.byte	W09
	.byte		        77*song322_mvl/mxv
	.byte		N48   , Cn2 
	.byte	W06
	.byte		VOL   , 81*song322_mvl/mxv
	.byte	W06
	.byte		        84*song322_mvl/mxv
	.byte	W06
	.byte		        87*song322_mvl/mxv
	.byte	W06
	.byte		        91*song322_mvl/mxv
	.byte	W09
	.byte		        96*song322_mvl/mxv
	.byte	W06
	.byte		        100*song322_mvl/mxv
	.byte	W09
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Fn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N21   , Cn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N24   , As1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W30
	.byte		        100*song322_mvl/mxv
	.byte		N24   , Fn1 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte		        100*song322_mvl/mxv
	.byte		N24   , Bn0 
	.byte	W12
	.byte		VOL   , 92*song322_mvl/mxv
	.byte	W03
	.byte		        76*song322_mvl/mxv
	.byte	W03
	.byte		        46*song322_mvl/mxv
	.byte	W03
	.byte		        31*song322_mvl/mxv
	.byte	W03
	.byte	GOTO
	 .word	song322_2 + 0x3
	.byte	FINE

@**************** Track 03 ****************************@

song322_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 82
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*song322_mvl/mxv
	.byte	W12
	.byte		N06   , Bn2 , v060
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs3 
	.byte	W96
	.byte	W12
	.byte		        Bn2 
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		        Cs3 
	.byte	W96
	.byte	W12
	.byte		N06   , Cn3 , v060
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PEND
	.byte		        Dn3 
	.byte	W96
	.byte	PATT
	 .word	song322_3 + 0x21
	.byte		N06   , Dn3 , v060
	.byte	W96
	.byte	GOTO
	 .word	song322_3 + 0x3
	.byte	FINE

@**************** Track 04 ****************************@

song322_4:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 83
	.byte		PAN   , c_v+48
	.byte		VOL   , 100*song322_mvl/mxv
	.byte		N03   , Bn5 , v032
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cs6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Bn5 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		N03
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gs5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cs6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Bn5 
	.byte	W48
	.byte		N03   , Cn6 , v032
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        As5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte	PEND
	.byte		        Dn6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cn6 
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte	PATT
	 .word	song322_4 + 0x3B
	.byte		N03   , Dn6 , v032
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W24
	.byte		        Cn6 
	.byte	W48
	.byte	GOTO
	 .word	song322_4 + 0x3
	.byte	FINE

@**************** Track 05 ****************************@

song322_5:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 81
	.byte		MOD   , 0
	.byte		VOL   , 100*song322_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte		N06   , An4 , v048
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Fs4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	W96
	.byte		        An4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Gs4 
	.byte	W48
	.byte	W96
	.byte		        As4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , Gn4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	W96
	.byte		        As4 
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N24
	.byte	W12
	.byte		MOD   , 5
	.byte	W12
	.byte		        0
	.byte		N06   , An4 
	.byte	W48
	.byte	GOTO
	 .word	song322_5 + 0x3
	.byte	FINE

@**************** Track 06 ****************************@

song322_6:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 0
	.byte		VOL   , 100*song322_mvl/mxv
	.byte		N06   , En1 , v076
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v064
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		N06   , En1 , v112
	.byte	W24
	.byte		        Fs2 , v064
	.byte	W24
	.byte		N12   , Bn2 , v092
	.byte	W24
	.byte		N06   , En1 , v112
	.byte		N03   , Fs2 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , Fs2 , v040
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v052
	.byte	W06
	.byte		        En1 , v088
	.byte		N06   , Fs2 , v060
	.byte	W06
	.byte	PEND
	.byte		N06   , En1 , v076
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v064
	.byte	W12
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v076
	.byte	W12
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte		        En1 , v112
	.byte		N06   , Fs2 , v064
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        En1 , v076
	.byte	W06
	.byte		        En1 , v064
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song322_6 + 0x33
	.byte	PATT
	 .word	song322_6 + 0x58
	.byte	PATT
	 .word	song322_6 + 0x33
	.byte	PATT
	 .word	song322_6 + 0x58
	.byte	PATT
	 .word	song322_6 + 0x33
	.byte	GOTO
	 .word	song322_6 + 0x3
	.byte	FINE

@******************************************************@
	.align	2

song322:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song322_pri	@ Priority
	.byte	song322_rev	@ Reverb.

	.word	song322_grp

	.word	song322_0
	.word	song322_1
	.word	song322_2
	.word	song322_3
	.word	song322_4
	.word	song322_5
	.word	song322_6

	.end
