@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song324_grp, group_57
	.equ	song324_pri, 0
	.equ	song324_rev, 178
	.equ	song324_mvl, 127
	.equ	song324_key, 0
	.equ	song324_tbs, 1
	.equ	song324_exg, 1
	.equ	song324_cmp, 1

	.text
	.global	song324
	.align	2

@**************** Track 00 ****************************@

song324_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+23
	.byte		VOL   , 67*song324_mvl/mxv
	.byte	W96
	.byte	W96
	.byte		N06   , Gn3 , v120
	.byte	W96
	.byte	W72
	.byte		N24   , Fs3 
	.byte	W24
	.byte		N06   , Gn3 
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song324_0 + 0x2
	.byte	FINE

@**************** Track 01 ****************************@

song324_1:
	.byte	KEYSH , 0
	.byte		VOICE , 58
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 88*song324_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Gn1 , v120
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W48
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , Gn1 , v120
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W48
	.byte	PEND
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte	PATT
	 .word	song324_1 + 0x23
	.byte		N06   , Gn1 , v120
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte	GOTO
	 .word	song324_1 + 0x2
	.byte	FINE

@**************** Track 02 ****************************@

song324_2:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-16
	.byte		VOL   , 70*song324_mvl/mxv
	.byte	W96
	.byte	W96
	.byte		N06   , Bn2 , v120
	.byte	W96
	.byte	W72
	.byte		N24   , As2 
	.byte	W24
	.byte		N06   , Bn2 
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song324_2 + 0x2
	.byte	FINE

@**************** Track 03 ****************************@

song324_3:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 86*song324_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Gn2 , v120
	.byte	W96
	.byte	W96
	.byte		N12
	.byte	W96
	.byte	W96
	.byte		N12
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song324_3 + 0x2
	.byte	FINE

@**************** Track 04 ****************************@

song324_4:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 50*song324_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Gn1 , v120
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W48
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N24   , Fs1 
	.byte	W24
	.byte		N12   , Gn1 , v120
	.byte	W36
	.byte		N03
	.byte	W06
	.byte		N03
	.byte	W06
	.byte		N12
	.byte	W48
	.byte	PEND
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte	PATT
	 .word	song324_4 + 0x28
	.byte		N06   , Gn1 , v120
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte	GOTO
	 .word	song324_4 + 0x2
	.byte	FINE

@**************** Track 05 ****************************@

song324_5:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 85*song324_mvl/mxv
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N12
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PEND
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	PATT
	 .word	song324_5 + 0x46
	.byte		N06   , En1 , v120
	.byte	W12
	.byte		N06
	.byte	W18
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		        En1 , v084
	.byte	W06
	.byte		        En1 , v120
	.byte	W12
	.byte		N03
	.byte	W03
	.byte		        En1 , v048
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		N03
	.byte	W03
	.byte	GOTO
	 .word	song324_5 + 0x2
	.byte	FINE

@******************************************************@
	.align	2

song324:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song324_pri	@ Priority
	.byte	song324_rev	@ Reverb.

	.word	song324_grp

	.word	song324_0
	.word	song324_1
	.word	song324_2
	.word	song324_3
	.word	song324_4
	.word	song324_5

	.end
