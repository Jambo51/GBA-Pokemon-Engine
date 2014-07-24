@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song82_grp, group_6
	.equ	song82_pri, 4
	.equ	song82_rev, 178
	.equ	song82_mvl, 127
	.equ	song82_key, 0
	.equ	song82_tbs, 1
	.equ	song82_exg, 1
	.equ	song82_cmp, 1

	.section .rodata
	.global	song82
	.align	2

@**************** Track 00 ****************************@

song82_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 38
	.byte		BENDR , 2
	.byte		VOL   , 100*song82_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , Fs4 , v080
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte		EOT
	.byte	FINE

@**************** Track 01 ****************************@

song82_1:
	.byte	KEYSH , 0
	.byte		VOICE , 27
	.byte		VOL   , 100*song82_mvl/mxv
	.byte		TIE   , Fn3 , v032
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	W24
	.byte		EOT
	.byte	FINE

@******************************************************@
	.align	2

song82:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song82_pri	@ Priority
	.byte	song82_rev	@ Reverb.

	.word	song82_grp

	.word	song82_0
	.word	song82_1

	.end
