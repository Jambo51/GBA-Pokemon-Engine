@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song261_grp, group_0
	.equ	song261_pri, 5
	.equ	song261_rev, 178
	.equ	song261_mvl, 127
	.equ	song261_key, 0
	.equ	song261_tbs, 1
	.equ	song261_exg, 1
	.equ	song261_cmp, 1

	.section .rodata
	.global	song261
	.align	2

@**************** Track 00 ****************************@

song261_0:
	.byte	KEYSH , 0
	.byte	W12
	.byte	TEMPO , 70
	.byte		VOICE , 73
	.byte		PAN   , c_v-47
	.byte		VOL   , 90*song261_mvl/mxv
	.byte		N06   , Dn4 , v096
	.byte	W12
	.byte		        Gn3 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		N30   , Dn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte	W06
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Fs4 
	.byte	W18
	.byte		MOD   , 6
	.byte	W06
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song261_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 73
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song261_mvl/mxv
	.byte		N06   , Gn4 , v116
	.byte	W12
	.byte		        Dn4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		N30   , Bn4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W18
	.byte		        0
	.byte	W06
	.byte		N06   , An4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N48   , Dn5 
	.byte	W18
	.byte		MOD   , 6
	.byte	W06
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song261_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 58
	.byte		VOL   , 90*song261_mvl/mxv
	.byte		N12   , Gn1 , v120
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Fn1 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N48   , Dn1 
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song261_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 82
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song261_mvl/mxv
	.byte		N12   , Dn3 , v056
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06   , Gn2 , v068
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		N12   , Fn3 , v056
	.byte	W24
	.byte		N24
	.byte	W03
	.byte		VOL   , 79*song261_mvl/mxv
	.byte	W03
	.byte		        76*song261_mvl/mxv
	.byte	W02
	.byte		        79*song261_mvl/mxv
	.byte	W04
	.byte		        80*song261_mvl/mxv
	.byte	W02
	.byte		        83*song261_mvl/mxv
	.byte	W03
	.byte		        86*song261_mvl/mxv
	.byte	W03
	.byte		        90*song261_mvl/mxv
	.byte	W04
	.byte		N06   , An2 , v048
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        An4 
	.byte	W08
	.byte		N06   , Dn5 
	.byte	W24
	.byte	FINE

@**************** Track 04 ****************************@

song261_4:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 83
	.byte		XCMD  , xIECV , 8
	.byte		        xIECL , 8
	.byte		PAN   , c_v+48
	.byte		VOL   , 90*song261_mvl/mxv
	.byte		N12   , Bn2 , v048
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		N06   , Dn2 , v056
	.byte	W06
	.byte		        Gn2 
	.byte	W06
	.byte		N12   , Cn3 , v048
	.byte	W24
	.byte		N24
	.byte	W03
	.byte		VOL   , 79*song261_mvl/mxv
	.byte	W03
	.byte		        76*song261_mvl/mxv
	.byte	W02
	.byte		        79*song261_mvl/mxv
	.byte	W04
	.byte		        80*song261_mvl/mxv
	.byte	W02
	.byte		        83*song261_mvl/mxv
	.byte	W03
	.byte		        86*song261_mvl/mxv
	.byte	W03
	.byte		        90*song261_mvl/mxv
	.byte	W04
	.byte		BEND  , c_v-2
	.byte	W02
	.byte		N06   , An2 , v024
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Fs3 
	.byte	W06
	.byte		        An3 
	.byte	W04
	.byte	W02
	.byte		N08   , Dn4 
	.byte	W08
	.byte		        Fs4 
	.byte	W08
	.byte		        An4 
	.byte	W06
	.byte	W02
	.byte		N06   , Dn5 
	.byte	W22
	.byte	FINE

@**************** Track 05 ****************************@

song261_5:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 87
	.byte		VOL   , 90*song261_mvl/mxv
	.byte		PAN   , c_v+48
	.byte		N12   , Gn2 , v048
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		        Fn2 
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N36   , Dn2 
	.byte	W24
	.byte	W12
	.byte		N12   , Dn2 , v024
	.byte	W12
	.byte	W24
	.byte	FINE

@**************** Track 06 ****************************@

song261_6:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 0
	.byte		VOL   , 90*song261_mvl/mxv
	.byte		N04   , En1 , v100
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En1 , v068
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v100
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En1 , v072
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v100
	.byte	W12
	.byte		N04
	.byte	W04
	.byte		        En1 , v072
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v100
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W04
	.byte		        En1 , v040
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v044
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v072
	.byte	W04
	.byte		        En1 , v048
	.byte	W04
	.byte		        En1 , v056
	.byte	W04
	.byte		        En1 , v060
	.byte	W04
	.byte		        En1 , v064
	.byte	W04
	.byte		N05   , En1 , v068
	.byte	W04
	.byte	W02
	.byte		        En1 , v104
	.byte	W22
	.byte	FINE

@******************************************************@
	.align	2

song261:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song261_pri	@ Priority
	.byte	song261_rev	@ Reverb.

	.word	song261_grp

	.word	song261_0
	.word	song261_1
	.word	song261_2
	.word	song261_3
	.word	song261_4
	.word	song261_5
	.word	song261_6

	.end
