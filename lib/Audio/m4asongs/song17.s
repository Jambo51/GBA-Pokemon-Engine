@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song17_grp, group_5
	.equ	song17_pri, 5
	.equ	song17_rev, 178
	.equ	song17_mvl, 127
	.equ	song17_key, 0
	.equ	song17_tbs, 1
	.equ	song17_exg, 1
	.equ	song17_cmp, 1

	.text
	.global	song17
	.align	2

@**************** Track 00 ****************************@

song17_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 126
	.byte		VOL   , 90*song17_mvl/mxv
	.byte		N03   , Fn4 , v120
	.byte	W03
	.byte		        Gs4 , v112
	.byte	W03
	.byte		N02   , Fs3 
	.byte	W03
	.byte		N03   , Gs4 , v072
	.byte	W03
	.byte		N02   , Fs3 , v096
	.byte	W03
	.byte		N03   , Gs4 , v056
	.byte	W03
	.byte		N02   , Fs3 , v080
	.byte	W03
	.byte		N03   , Gs4 , v040
	.byte	W03
	.byte		N02   , Fs3 , v064
	.byte	W03
	.byte		N03   , Gs4 , v024
	.byte	W03
	.byte		N02   , Fs3 , v048
	.byte	W03
	.byte		N03   , Gs4 , v020
	.byte	W03
	.byte		        Fs3 , v028
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song17:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song17_pri	@ Priority
	.byte	song17_rev	@ Reverb.

	.word	song17_grp

	.word	song17_0

	.end
