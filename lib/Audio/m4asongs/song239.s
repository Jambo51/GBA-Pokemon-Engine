@ Songgroup: 1

	.include "MPlayDef.s"

	.equ	song239_grp, group_6
	.equ	song239_pri, 4
	.equ	song239_rev, 178
	.equ	song239_mvl, 127
	.equ	song239_key, 0
	.equ	song239_tbs, 1
	.equ	song239_exg, 1
	.equ	song239_cmp, 1

	.section .rodata
	.global	song239
	.align	2

@**************** Track 00 ****************************@

song239_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 95
	.byte		VOICE , 45
	.byte		BENDR , 8
	.byte		PAN   , c_v-47
	.byte		VOL   , 10*song239_mvl/mxv
	.byte		MOD   , 30
	.byte		BEND  , c_v+1
	.byte		TIE   , As2 , v100
	.byte	W03
	.byte		VOL   , 14*song239_mvl/mxv
	.byte	W03
	.byte		        22*song239_mvl/mxv
	.byte		PAN   , c_v-45
	.byte	W02
	.byte		VOL   , 31*song239_mvl/mxv
	.byte	W02
	.byte		        39*song239_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-43
	.byte	W02
	.byte		VOL   , 45*song239_mvl/mxv
	.byte	W02
	.byte		        50*song239_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-41
	.byte	W01
	.byte		VOL   , 61*song239_mvl/mxv
	.byte	W02
	.byte		        66*song239_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-39
	.byte		VOL   , 73*song239_mvl/mxv
	.byte	W02
	.byte		        78*song239_mvl/mxv
	.byte	W04
	.byte		        84*song239_mvl/mxv
	.byte		PAN   , c_v-37
	.byte	W03
	.byte		VOL   , 91*song239_mvl/mxv
	.byte	W03
	.byte		        98*song239_mvl/mxv
	.byte		PAN   , c_v-35
	.byte	W02
	.byte		VOL   , 104*song239_mvl/mxv
	.byte	W04
	.byte		        110*song239_mvl/mxv
	.byte		PAN   , c_v-32
	.byte	W06
	.byte		        c_v-28
	.byte	W06
	.byte		        c_v-25
	.byte		VOL   , 106*song239_mvl/mxv
	.byte	W04
	.byte		        104*song239_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-23
	.byte	W03
	.byte		VOL   , 101*song239_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-20
	.byte	W03
	.byte		VOL   , 97*song239_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-17
	.byte	W02
	.byte		VOL   , 91*song239_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v-13
	.byte	W03
	.byte		VOL   , 88*song239_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-10
	.byte	W03
	.byte		VOL   , 81*song239_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v-7
	.byte	W04
	.byte		VOL   , 75*song239_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v-3
	.byte	W02
	.byte		VOL   , 74*song239_mvl/mxv
	.byte	W02
	.byte		        76*song239_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+0
	.byte	W01
	.byte		VOL   , 79*song239_mvl/mxv
	.byte	W02
	.byte		        83*song239_mvl/mxv
	.byte	W03
	.byte	W01
	.byte		        86*song239_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+2
	.byte		VOL   , 90*song239_mvl/mxv
	.byte	W03
	.byte		        95*song239_mvl/mxv
	.byte	W03
	.byte		        98*song239_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+7
	.byte		VOL   , 102*song239_mvl/mxv
	.byte	W02
	.byte		        104*song239_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+10
	.byte		VOL   , 110*song239_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+14
	.byte	W06
	.byte		        c_v+16
	.byte	W02
	.byte		VOL   , 106*song239_mvl/mxv
	.byte	W04
	.byte		PAN   , c_v+19
	.byte	W01
	.byte		VOL   , 100*song239_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v+22
	.byte		VOL   , 94*song239_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+25
	.byte		VOL   , 88*song239_mvl/mxv
	.byte	W04
	.byte		        83*song239_mvl/mxv
	.byte	W02
	.byte		PAN   , c_v+27
	.byte	W06
	.byte		        c_v+29
	.byte		VOL   , 75*song239_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+32
	.byte		VOL   , 64*song239_mvl/mxv
	.byte	W06
	.byte		PAN   , c_v+34
	.byte	W01
	.byte		VOL   , 55*song239_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v+38
	.byte	W01
	.byte		VOL   , 47*song239_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v+41
	.byte	W01
	.byte		VOL   , 41*song239_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v+44
	.byte		VOL   , 32*song239_mvl/mxv
	.byte	W03
	.byte		        25*song239_mvl/mxv
	.byte	W03
	.byte		PAN   , c_v+47
	.byte	W01
	.byte		VOL   , 12*song239_mvl/mxv
	.byte	W03
	.byte		        6*song239_mvl/mxv
	.byte	W02
	.byte		EOT
	.byte	FINE

@**************** Track 01 ****************************@

song239_1:
	.byte	KEYSH , 0
	.byte		VOICE , 70
	.byte		BENDR , 8
	.byte		PAN   , c_v+0
	.byte		VOL   , 110*song239_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N24   , Fn4 , v020
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	W06
	.byte		N18   , Ds4 
	.byte	W06
	.byte	W06
	.byte	W06
	.byte	FINE

@******************************************************@
	.align	2

song239:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song239_pri	@ Priority
	.byte	song239_rev	@ Reverb.

	.word	song239_grp

	.word	song239_0
	.word	song239_1

	.end
