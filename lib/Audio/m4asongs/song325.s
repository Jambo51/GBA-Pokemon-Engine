@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song325_grp, group_57
	.equ	song325_pri, 0
	.equ	song325_rev, 178
	.equ	song325_mvl, 127
	.equ	song325_key, 0
	.equ	song325_tbs, 1
	.equ	song325_exg, 1
	.equ	song325_cmp, 1

	.section .rodata
	.global	song325
	.align	2

@**************** Track 00 ****************************@

song325_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 56
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+28
	.byte		VOL   , 67*song325_mvl/mxv
	.byte	W24
	.byte		N06   , Gn3 , v120
	.byte	W24
	.byte	W48
	.byte	FINE

@**************** Track 01 ****************************@

song325_1:
	.byte	KEYSH , 0
	.byte		VOICE , 60
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 81*song325_mvl/mxv
	.byte	W24
	.byte		N06   , Bn3 , v120
	.byte	W24
	.byte	W48
	.byte	FINE

@**************** Track 02 ****************************@

song325_2:
	.byte	KEYSH , 0
	.byte		VOICE , 58
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		VOL   , 88*song325_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Fs1 , v120
	.byte	W48
	.byte	W48
	.byte	FINE

@**************** Track 03 ****************************@

song325_3:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-24
	.byte		VOL   , 67*song325_mvl/mxv
	.byte	W24
	.byte		N06   , Bn2 , v120
	.byte	W24
	.byte	W48
	.byte	FINE

@**************** Track 04 ****************************@

song325_4:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 86*song325_mvl/mxv
	.byte		PAN   , c_v+2
	.byte	W24
	.byte		N15   , Gn2 , v120
	.byte	W24
	.byte	W48
	.byte	FINE

@**************** Track 05 ****************************@

song325_5:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 50*song325_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , Fs1 , v120
	.byte	W24
	.byte		N06   , Gn1 
	.byte	W24
	.byte	W48
	.byte	FINE

@**************** Track 06 ****************************@

song325_6:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 86*song325_mvl/mxv
	.byte		N03   , En1 , v120
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
	.byte		N48   , An2 , v096
	.byte	W24
	.byte	W48
	.byte	FINE

@******************************************************@
	.align	2

song325:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song325_pri	@ Priority
	.byte	song325_rev	@ Reverb.

	.word	song325_grp

	.word	song325_0
	.word	song325_1
	.word	song325_2
	.word	song325_3
	.word	song325_4
	.word	song325_5
	.word	song325_6

	.end
