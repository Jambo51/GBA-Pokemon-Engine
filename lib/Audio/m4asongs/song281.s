@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song281_grp, group_17
	.equ	song281_pri, 0
	.equ	song281_rev, 178
	.equ	song281_mvl, 127
	.equ	song281_key, 0
	.equ	song281_tbs, 1
	.equ	song281_exg, 1
	.equ	song281_cmp, 1

	.text
	.global	song281
	.align	2

@**************** Track 00 ****************************@

song281_0:
	.byte		VOL   , 90*song281_mvl/mxv
	.byte	KEYSH , 0
	.byte	TEMPO , 73
	.byte		VOICE , 2
	.byte		N24   , Bn4 , v064
	.byte	W24
	.byte		N24
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		N48   , En5 
	.byte	W24
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song281_1:
	.byte		VOL   , 90*song281_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 3
	.byte		N12   , En2 , v092
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		N36   , En2 
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song281:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song281_pri	@ Priority
	.byte	song281_rev	@ Reverb.

	.word	song281_grp

	.word	song281_0
	.word	song281_1

	.end
