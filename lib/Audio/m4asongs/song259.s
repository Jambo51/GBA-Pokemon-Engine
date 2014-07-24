@ Songgroup: 2

	.include "MPlayDef.s"

	.equ	song259_grp, group_0
	.equ	song259_pri, 5
	.equ	song259_rev, 178
	.equ	song259_mvl, 127
	.equ	song259_key, 0
	.equ	song259_tbs, 1
	.equ	song259_exg, 1
	.equ	song259_cmp, 1

	.section .rodata
	.global	song259
	.align	2

@**************** Track 00 ****************************@

song259_0:
	.byte	KEYSH , 0
	.byte	W12
	.byte	TEMPO , 75
	.byte		VOICE , 56
	.byte		PAN   , c_v+18
	.byte		VOL   , 90*song259_mvl/mxv
	.byte		N22   , Ds4 , v092
	.byte	W16
	.byte		VOL   , 68*song259_mvl/mxv
	.byte	W04
	.byte		        36*song259_mvl/mxv
	.byte	W04
	.byte		        90*song259_mvl/mxv
	.byte		N22   , Cn4 
	.byte	W16
	.byte		VOL   , 68*song259_mvl/mxv
	.byte	W04
	.byte		        36*song259_mvl/mxv
	.byte	W04
	.byte		        90*song259_mvl/mxv
	.byte		N16   , Gs3 
	.byte	W16
	.byte		N06   , Ds3 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		N04   , Fs4 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		N48   , Gs4 
	.byte	W16
	.byte		MOD   , 6
	.byte	W32
	.byte		        0
	.byte	W24
	.byte	FINE

@**************** Track 01 ****************************@

song259_1:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 56
	.byte		PAN   , c_v-16
	.byte		VOL   , 90*song259_mvl/mxv
	.byte		N22   , Cn5 , v100
	.byte	W16
	.byte		VOL   , 68*song259_mvl/mxv
	.byte	W04
	.byte		        36*song259_mvl/mxv
	.byte	W04
	.byte		        90*song259_mvl/mxv
	.byte		N22   , Gs4 
	.byte	W16
	.byte		VOL   , 68*song259_mvl/mxv
	.byte	W04
	.byte		        36*song259_mvl/mxv
	.byte	W04
	.byte		        90*song259_mvl/mxv
	.byte		N40   , Ds4 
	.byte	W12
	.byte		MOD   , 6
	.byte	W28
	.byte		VOL   , 68*song259_mvl/mxv
	.byte		MOD   , 0
	.byte	W04
	.byte		VOL   , 36*song259_mvl/mxv
	.byte	W04
	.byte		        90*song259_mvl/mxv
	.byte		N04   , Cs5 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        As4 
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        Cs5 
	.byte	W08
	.byte		N48   , Cn5 
	.byte	W16
	.byte		MOD   , 6
	.byte	W32
	.byte		        0
	.byte	W24
	.byte	FINE

@**************** Track 02 ****************************@

song259_2:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 88
	.byte		VOL   , 90*song259_mvl/mxv
	.byte		N12   , Ds1 , v080
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte		N08   , Cn1 
	.byte	W08
	.byte		        Ds1 
	.byte	W08
	.byte		        Gs1 
	.byte	W08
	.byte		N24   , As1 
	.byte	W24
	.byte		        Cs2 
	.byte	W24
	.byte		N40   , Cn2 
	.byte	W48
	.byte	W24
	.byte	FINE

@**************** Track 03 ****************************@

song259_3:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 82
	.byte		PAN   , c_v-48
	.byte		VOL   , 90*song259_mvl/mxv
	.byte		N08   , Gs4 , v040
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		VOL   , 90*song259_mvl/mxv
	.byte		N08   , Gs4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Ds3 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		N48   , Ds3 
	.byte	W16
	.byte		MOD   , 6
	.byte	W32
	.byte		        0
	.byte	W24
	.byte	FINE

@**************** Track 04 ****************************@

song259_4:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 83
	.byte		PAN   , c_v+48
	.byte		VOL   , 90*song259_mvl/mxv
	.byte	W04
	.byte		N08   , Gs4 , v040
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Cn4 
	.byte	W04
	.byte		VOL   , 90*song259_mvl/mxv
	.byte	W04
	.byte		N08   , Gs4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Ds4 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Cn4 
	.byte	W08
	.byte		        Gs3 
	.byte	W08
	.byte		        Ds3 
	.byte	W04
	.byte	W04
	.byte		        Cs3 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Cs2 
	.byte	W08
	.byte		        As2 
	.byte	W08
	.byte		        Cs3 
	.byte	W08
	.byte		N44   , Ds3 
	.byte	W12
	.byte		MOD   , 6
	.byte	W32
	.byte		        0
	.byte	W24
	.byte	FINE

@**************** Track 05 ****************************@

song259_5:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 47
	.byte		VOL   , 90*song259_mvl/mxv
	.byte	W24
	.byte		        90*song259_mvl/mxv
	.byte	W56
	.byte		N08   , Cn2 , v127
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		        Fs2 
	.byte	W24
	.byte		        Cs2 
	.byte	W08
	.byte		        As1 , v112
	.byte	W08
	.byte		N08
	.byte	W08
	.byte		N12   , Cn2 , v127
	.byte	W48
	.byte	W24
	.byte	FINE

@**************** Track 06 ****************************@

song259_6:
	.byte	KEYSH , 0
	.byte	W12
	.byte		VOICE , 0
	.byte		VOL   , 90*song259_mvl/mxv
	.byte		N04   , En1 , v112
	.byte		N80   , An2 , v120
	.byte	W24
	.byte		VOL   , 90*song259_mvl/mxv
	.byte		N04   , En1 , v112
	.byte	W08
	.byte		        En1 , v092
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        En1 , v112
	.byte	W16
	.byte		        En1 , v092
	.byte	W08
	.byte		        En1 , v112
	.byte	W08
	.byte		        En1 , v092
	.byte	W08
	.byte		N04
	.byte	W08
	.byte		        En1 , v112
	.byte	W16
	.byte		        En1 , v092
	.byte	W08
	.byte		        En1 , v112
	.byte	W08
	.byte		        En1 , v092
	.byte	W04
	.byte		        En1 , v112
	.byte	W04
	.byte		        En1 , v092
	.byte	W04
	.byte		N04
	.byte	W04
	.byte		        En1 , v112
	.byte	W48
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

song259:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song259_pri	@ Priority
	.byte	song259_rev	@ Reverb.

	.word	song259_grp

	.word	song259_0
	.word	song259_1
	.word	song259_2
	.word	song259_3
	.word	song259_4
	.word	song259_5
	.word	song259_6

	.end
