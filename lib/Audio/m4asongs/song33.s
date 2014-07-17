@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song33_grp, group_5
	.equ	song33_pri, 4
	.equ	song33_rev, 178
	.equ	song33_mvl, 127
	.equ	song33_key, 0
	.equ	song33_tbs, 1
	.equ	song33_exg, 1
	.equ	song33_cmp, 1

	.section .rodata
	.global	song33
	.align	2

@**************** Track 00 ****************************@

song33_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 126
	.byte		VOL   , 127*song33_mvl/mxv
	.byte		N08   , An2 , v112
	.byte	W03
	.byte	W03
	.byte	W02
	.byte		N01   , Gs2 
	.byte	W01
	.byte	W01
	.byte		N08   , An2 , v096
	.byte	W02
	.byte	W03
	.byte	W03
	.byte	W01
	.byte		N01   , Gs2 , v092
	.byte	W01
	.byte		N08   , An2 , v080
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W02
	.byte		N01   , Gs2 , v076
	.byte	W01
	.byte		N08   , An2 , v064
	.byte	W03
	.byte	W03
	.byte	W03
	.byte		N01   , Gs2 , v060
	.byte	W02
	.byte		N09   , An2 , v048
	.byte	W01
	.byte	W03
	.byte	W03
	.byte	W02
	.byte		N01   , Gs2 , v040
	.byte	W01
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

song33:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song33_pri	@ Priority
	.byte	song33_rev	@ Reverb.

	.word	song33_grp

	.word	song33_0

	.end
