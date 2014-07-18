@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song9_grp, group_5
	.equ	song9_pri, 5
	.equ	song9_rev, 178
	.equ	song9_mvl, 127
	.equ	song9_key, 0
	.equ	song9_tbs, 1
	.equ	song9_exg, 1
	.equ	song9_cmp, 1

	.text
	.global	song9
	.align	2

@**************** Track 00 ****************************@

song9_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 126
	.byte		VOL   , 120*song9_mvl/mxv
	.byte		N02   , An2 , v068
	.byte	W02
	.byte		        Cn3 , v127
	.byte	W01
	.byte	W01
	.byte		        En4 , v068
	.byte	W02
	.byte	W03
	.byte	W03
	.byte		        An2 
	.byte	W02
	.byte		        Cn3 , v100
	.byte	W01
	.byte	W01
	.byte		        En4 , v068
	.byte	W02
	.byte	W03
	.byte	W03
	.byte		        An2 , v032
	.byte	W02
	.byte		        Cn3 , v052
	.byte	W01
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song9:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song9_pri	@ Priority
	.byte	song9_rev	@ Reverb.

	.word	song9_grp

	.word	song9_0

	.end
