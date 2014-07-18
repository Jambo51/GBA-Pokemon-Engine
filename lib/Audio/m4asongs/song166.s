@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song166_grp, group_6
	.equ	song166_pri, 4
	.equ	song166_rev, 178
	.equ	song166_mvl, 127
	.equ	song166_key, 0
	.equ	song166_tbs, 1
	.equ	song166_exg, 1
	.equ	song166_cmp, 1

	.text
	.global	song166
	.align	2

@**************** Track 00 ****************************@

song166_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 50
	.byte		VOICE , 73
	.byte		BENDR , 12
	.byte		LFOS  , 40
	.byte		PAN   , c_v+7
	.byte		VOL   , 25*song166_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W03
	.byte		VOL   , 29*song166_mvl/mxv
	.byte	W03
	.byte		        33*song166_mvl/mxv
	.byte		N48   , An3 , v112
	.byte	W03
	.byte		VOL   , 40*song166_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+4
	.byte	W02
	.byte		VOL   , 45*song166_mvl/mxv
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 51*song166_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		VOL   , 56*song166_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		VOL   , 62*song166_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		VOL   , 72*song166_mvl/mxv
	.byte		PAN   , c_v-4
	.byte	W03
	.byte		VOL   , 81*song166_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		VOL   , 92*song166_mvl/mxv
	.byte		PAN   , c_v-8
	.byte	W03
	.byte		VOL   , 100*song166_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		PAN   , c_v-4
	.byte	W06
	.byte		VOL   , 82*song166_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W03
	.byte		VOL   , 52*song166_mvl/mxv
	.byte	W03
	.byte		        25*song166_mvl/mxv
	.byte		MOD   , 0
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		VOL   , 29*song166_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+7
	.byte	W02
	.byte		VOL   , 33*song166_mvl/mxv
	.byte		N72   , Gs3 , v112
	.byte	W03
	.byte		VOL   , 40*song166_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+4
	.byte	W02
	.byte	PATT
	 .word	song166_0 + 0x1F
	.byte	PATT
	 .word	song166_0 + 0x28
	.byte	PATT
	 .word	song166_0 + 0x31
	.byte	PATT
	 .word	song166_0 + 0x3A
	.byte		PAN   , c_v-4
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+4
	.byte	W03
	.byte		VOL   , 87*song166_mvl/mxv
	.byte	W03
	.byte		        75*song166_mvl/mxv
	.byte		PAN   , c_v+7
	.byte	W03
	.byte		VOL   , 62*song166_mvl/mxv
	.byte	W03
	.byte		        48*song166_mvl/mxv
	.byte		PAN   , c_v+4
	.byte	W03
	.byte		VOL   , 33*song166_mvl/mxv
	.byte	W03
	.byte		        25*song166_mvl/mxv
	.byte	W01
	.byte		PAN   , c_v+0
	.byte	W02
	.byte		VOL   , 10*song166_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		PAN   , c_v-4
	.byte	W05
	.byte	FINE

@**************** Track 01 ****************************@

song166_1:
	.byte	KEYSH , 0
	.byte		VOICE , 73
	.byte		VOL   , 25*song166_mvl/mxv
	.byte		PAN   , c_v-17
	.byte		N48   , Cn4 , v100
	.byte	W03
	.byte		VOL   , 29*song166_mvl/mxv
	.byte	W03
	.byte		        33*song166_mvl/mxv
	.byte	W03
	.byte		        40*song166_mvl/mxv
	.byte	W03
	.byte		VOL   , 45*song166_mvl/mxv
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 51*song166_mvl/mxv
	.byte	W03
	.byte	PEND
	.byte		        56*song166_mvl/mxv
	.byte	W03
	.byte		        62*song166_mvl/mxv
	.byte	W03
	.byte		        72*song166_mvl/mxv
	.byte	W03
	.byte		        81*song166_mvl/mxv
	.byte	W03
	.byte		        92*song166_mvl/mxv
	.byte	W03
	.byte		        100*song166_mvl/mxv
	.byte	W03
	.byte	W06
	.byte		        82*song166_mvl/mxv
	.byte	W03
	.byte		        52*song166_mvl/mxv
	.byte	W03
	.byte		        25*song166_mvl/mxv
	.byte		MOD   , 0
	.byte		N72   , Bn3 , v100
	.byte	W03
	.byte		VOL   , 29*song166_mvl/mxv
	.byte	W03
	.byte		        33*song166_mvl/mxv
	.byte	W03
	.byte		        40*song166_mvl/mxv
	.byte	W03
	.byte	PATT
	 .word	song166_1 + 0x13
	.byte		VOL   , 56*song166_mvl/mxv
	.byte	W03
	.byte		        62*song166_mvl/mxv
	.byte	W03
	.byte		        72*song166_mvl/mxv
	.byte	W03
	.byte		        81*song166_mvl/mxv
	.byte	W03
	.byte		        92*song166_mvl/mxv
	.byte	W03
	.byte		        100*song166_mvl/mxv
	.byte	W03
	.byte	W06
	.byte	W06
	.byte	W03
	.byte		        87*song166_mvl/mxv
	.byte	W03
	.byte		        75*song166_mvl/mxv
	.byte	W03
	.byte		        62*song166_mvl/mxv
	.byte	W03
	.byte		        48*song166_mvl/mxv
	.byte	W03
	.byte		        33*song166_mvl/mxv
	.byte	W03
	.byte		        25*song166_mvl/mxv
	.byte	W03
	.byte		        10*song166_mvl/mxv
	.byte	W03
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song166:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song166_pri	@ Priority
	.byte	song166_rev	@ Reverb.

	.word	song166_grp

	.word	song166_0
	.word	song166_1

	.end
