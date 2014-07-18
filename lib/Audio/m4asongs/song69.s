@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song69_grp, group_6
	.equ	song69_pri, 4
	.equ	song69_rev, 178
	.equ	song69_mvl, 127
	.equ	song69_key, 0
	.equ	song69_tbs, 1
	.equ	song69_exg, 1
	.equ	song69_cmp, 1

	.text
	.global	song69
	.align	2

@**************** Track 00 ****************************@

song69_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 120
	.byte		VOICE , 2
	.byte		BENDR , 12
	.byte		VOL   , 105*song69_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N02   , Fn3 , v127
	.byte	W02
	.byte		N01   , Cn4 , v112
	.byte	W02
	.byte		N03   , Fn3 , v052
	.byte	W02
	.byte	W02
	.byte		VOICE , 23
	.byte		N01   , En4 , v092
	.byte	W01
	.byte		        Cn5 
	.byte	W03
	.byte		        Gn3 
	.byte	W01
	.byte		        En4 
	.byte	W02
	.byte		        En3 , v048
	.byte	W01
	.byte		        Bn3 
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

song69:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song69_pri	@ Priority
	.byte	song69_rev	@ Reverb.

	.word	song69_grp

	.word	song69_0

	.end
