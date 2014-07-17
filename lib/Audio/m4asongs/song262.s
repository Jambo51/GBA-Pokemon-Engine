@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song262_grp, group_0
	.equ	song262_pri, 5
	.equ	song262_rev, 178
	.equ	song262_mvl, 127
	.equ	song262_key, 0
	.equ	song262_tbs, 1
	.equ	song262_exg, 1
	.equ	song262_cmp, 1

	.section .rodata
	.global	song262
	.align	2

@**************** Track 00 ****************************@

song262_0:
	.byte	KEYSH , 0
	.byte	W12
	.byte	TEMPO , 70
	.byte		VOICE , 13
	.byte		PAN   , c_v-10
	.byte		VOL   , 90*song262_mvl/mxv
	.byte		N04   , Fn4 , v092
	.byte	W04
	.byte		        Fn4 , v080
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        Cn4 , v092
	.byte	W04
	.byte		        Cn4 , v080
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        Cn5 , v092
	.byte	W08
	.byte		        Dn5 
	.byte	W08
	.byte		        Cn5 
	.byte	W08
	.byte		        Fn5 
	.byte	W04
	.byte		        Fn5 , v080
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		N04
	.byte	W36
	.byte	FINE

@**************** Track 01 ****************************@

song262_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 13
	.byte		PAN   , c_v+31
	.byte		VOL   , 90*song262_mvl/mxv
	.byte	W24
	.byte		N04   , Gn4 , v092
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		        Gn4 
	.byte	W08
	.byte		N16   , An4 
	.byte	W48
	.byte	FINE

@**************** Track 02 ****************************@

song262_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 1
	.byte		VOL   , 90*song262_mvl/mxv
	.byte		PAN   , c_v-32
	.byte		N24   , Fn3 , v080
	.byte	W24
	.byte		N04   , Gn3 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N16   , Fn3 
	.byte	W48
	.byte	FINE

@**************** Track 03 ****************************@

song262_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 1
	.byte		VOL   , 90*song262_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N24   , An2 , v080
	.byte	W24
	.byte		N04   , As2 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N16   , An2 
	.byte	W48
	.byte	FINE

@**************** Track 04 ****************************@

song262_4:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 100
	.byte		VOL   , 90*song262_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N04   , Cn5 , v060
	.byte	W08
	.byte		PAN   , c_v-49
	.byte		N04   , Cn5 , v020
	.byte	W16
	.byte		VOICE , 101
	.byte		PAN   , c_v-1
	.byte		N04   , As3 , v060
	.byte	W08
	.byte		        Gn3 
	.byte	W08
	.byte		PAN   , c_v+50
	.byte		N04   , Gn3 , v020
	.byte	W08
	.byte		VOICE , 100
	.byte		PAN   , c_v+0
	.byte		N04   , An3 , v060
	.byte	W08
	.byte		PAN   , c_v-48
	.byte		N04   , An3 , v020
	.byte	W16
	.byte		VOICE , 101
	.byte		PAN   , c_v+0
	.byte		N04   , An3 , v060
	.byte	W08
	.byte		PAN   , c_v+50
	.byte		N04   , An3 , v020
	.byte	W16
	.byte	FINE

@******************************************************@
	.align	2

song262:
	.byte	5	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song262_pri	@ Priority
	.byte	song262_rev	@ Reverb.

	.word	song262_grp

	.word	song262_0
	.word	song262_1
	.word	song262_2
	.word	song262_3
	.word	song262_4

	.end
