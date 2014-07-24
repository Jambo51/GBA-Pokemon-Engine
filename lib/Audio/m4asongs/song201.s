@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song201_grp, group_6
	.equ	song201_pri, 4
	.equ	song201_rev, 178
	.equ	song201_mvl, 127
	.equ	song201_key, 0
	.equ	song201_tbs, 1
	.equ	song201_exg, 1
	.equ	song201_cmp, 1

	.section .rodata
	.global	song201
	.align	2

@**************** Track 00 ****************************@

song201_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 75
	.byte		VOICE , 19
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v+3
	.byte		N06   , Cn6 , v088
	.byte	W01
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-17
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-34
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W02
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , Cn6 , v084
	.byte	W01
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-47
	.byte	W02
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N06   , Cn6 , v076
	.byte	W01
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W02
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v-1
	.byte		N06   , Cn6 , v064
	.byte	W01
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-21
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-38
	.byte	W01
	.byte		PAN   , c_v+0
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W02
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v-2
	.byte		N06   , Cn6 , v056
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-49
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v-2
	.byte		N06   , Cn6 , v044
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-49
	.byte	W02
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v-2
	.byte		N06   , Cn6 , v036
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-49
	.byte	W02
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v-2
	.byte		N06   , Cn6 , v028
	.byte	W01
	.byte		PAN   , c_v+5
	.byte		VOL   , 88*song201_mvl/mxv
	.byte		BEND  , c_v-13
	.byte	W01
	.byte		PAN   , c_v-6
	.byte		VOL   , 56*song201_mvl/mxv
	.byte		BEND  , c_v-22
	.byte	W01
	.byte		PAN   , c_v+8
	.byte		VOL   , 24*song201_mvl/mxv
	.byte		BEND  , c_v-39
	.byte	W01
	.byte		PAN   , c_v-10
	.byte		VOL   , 11*song201_mvl/mxv
	.byte		BEND  , c_v-49
	.byte	W02
	.byte	W06
	.byte	FINE

@**************** Track 01 ****************************@

song201_1:
	.byte	KEYSH , 0
	.byte		VOICE , 53
	.byte		PAN   , c_v+0
	.byte		VOL   , 95*song201_mvl/mxv
	.byte		BEND  , c_v-5
	.byte	W02
	.byte		N06   , An5 , v064
	.byte	W02
	.byte		VOL   , 88*song201_mvl/mxv
	.byte	W02
	.byte		        56*song201_mvl/mxv
	.byte	W01
	.byte		        24*song201_mvl/mxv
	.byte	W01
	.byte		        95*song201_mvl/mxv
	.byte		N06   , An5 , v056
	.byte	W02
	.byte		VOL   , 88*song201_mvl/mxv
	.byte	W02
	.byte		VOL   , 56*song201_mvl/mxv
	.byte	W01
	.byte		        24*song201_mvl/mxv
	.byte	W01
	.byte		        95*song201_mvl/mxv
	.byte		N06   , An5 , v052
	.byte	W02
	.byte		VOL   , 88*song201_mvl/mxv
	.byte	W02
	.byte	PEND
	.byte	PATT
	 .word	song201_1 + 0x1E
	.byte		VOL   , 56*song201_mvl/mxv
	.byte	W01
	.byte		        24*song201_mvl/mxv
	.byte	W01
	.byte		        95*song201_mvl/mxv
	.byte		N06   , An5 , v048
	.byte	W02
	.byte		VOL   , 88*song201_mvl/mxv
	.byte	W02
	.byte		        56*song201_mvl/mxv
	.byte	W01
	.byte		        24*song201_mvl/mxv
	.byte	W01
	.byte		        95*song201_mvl/mxv
	.byte		N06   , An5 , v044
	.byte	W02
	.byte		VOL   , 88*song201_mvl/mxv
	.byte	W02
	.byte		        56*song201_mvl/mxv
	.byte	W01
	.byte		        24*song201_mvl/mxv
	.byte	W01
	.byte		        95*song201_mvl/mxv
	.byte		N06   , An5 , v040
	.byte	W02
	.byte		VOL   , 88*song201_mvl/mxv
	.byte	W02
	.byte		        56*song201_mvl/mxv
	.byte	W01
	.byte		        24*song201_mvl/mxv
	.byte	W01
	.byte		        95*song201_mvl/mxv
	.byte		N06   , An5 , v036
	.byte	W02
	.byte		VOL   , 88*song201_mvl/mxv
	.byte	W02
	.byte		        56*song201_mvl/mxv
	.byte	W01
	.byte		        24*song201_mvl/mxv
	.byte	W05
	.byte	FINE

@******************************************************@
	.align	2

song201:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song201_pri	@ Priority
	.byte	song201_rev	@ Reverb.

	.word	song201_grp

	.word	song201_0
	.word	song201_1

	.end
