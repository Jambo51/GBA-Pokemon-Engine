@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song280_grp, group_16
	.equ	song280_pri, 0
	.equ	song280_rev, 178
	.equ	song280_mvl, 127
	.equ	song280_key, 0
	.equ	song280_tbs, 1
	.equ	song280_exg, 1
	.equ	song280_cmp, 1

	.section .rodata
	.global	song280
	.align	2

@**************** Track 00 ****************************@

song280_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 64
	.byte		VOICE , 17
	.byte		PAN   , c_v+0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		LFOS  , 50
	.byte		BENDR , 12
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v+0
	.byte	W96
	.byte		VOICE , 17
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Gn4 , v127
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , En4 
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 89*song280_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , An4 , v064
	.byte	W03
	.byte		        Gn4 
	.byte	W03
	.byte		        Fs4 
	.byte	W03
	.byte		        En4 
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Cs4 , v127
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Gn4 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Fs4 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , Gn4 , v064
	.byte	W03
	.byte		        Gs4 
	.byte	W03
	.byte		        An4 
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		MOD   , 0
	.byte		N24   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Cn5 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Gn5 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , En5 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 11
	.byte	W12
	.byte		        0
	.byte		N24   , Fs5 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        0
	.byte		N24   , En5 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        0
	.byte		N12   , Bn5 
	.byte	W12
	.byte		MOD   , 13
	.byte		N03   , An5 , v048
	.byte	W03
	.byte		        Gn5 
	.byte	W03
	.byte		        Fs5 
	.byte	W03
	.byte		        En5 
	.byte	W03
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Cs5 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte	PATT
	 .word	song280_0 + 0x116
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Fs5 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N24   , Bn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fs5 
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , Gn5 , v048
	.byte	W03
	.byte		        Gs5 
	.byte	W03
	.byte		        An5 
	.byte	W03
	.byte		        As5 
	.byte	W03
	.byte		MOD   , 0
	.byte		N24   , Bn5 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Cn5 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 21
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Gn4 , v100
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , En4 
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Cs4 
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Gn4 , v100
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Fs4 , v100
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N24   , Bn4 , v100
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte	PEND
	.byte		        0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Cn5 
	.byte	W06
	.byte		MOD   , 8
	.byte	W18
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 8
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte	PATT
	 .word	song280_0 + 0x27D
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , En4 , v100
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , En4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48   , Cs4 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 79*song280_mvl/mxv
	.byte	W12
	.byte		        68*song280_mvl/mxv
	.byte	W12
	.byte	PATT
	 .word	song280_0 + 0x27D
	.byte	PATT
	 .word	song280_0 + 0x29C
	.byte	PATT
	 .word	song280_0 + 0x2BB
	.byte		MOD   , 0
	.byte		N48   , Cn4 , v100
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song280_0 + 0x15
	.byte	FINE

@**************** Track 01 ****************************@

song280_1:
	.byte	KEYSH , 0
	.byte		VOICE , 24
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+48
	.byte		MOD   , 4
	.byte		VOL   , 31*song280_mvl/mxv
	.byte		N06   , Cn5 , v127
	.byte	W24
	.byte		PAN   , c_v-16
	.byte		N06   , Gn5 
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N06   , Bn5 
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N06   , Fs5 
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N06   , Cn5 , v127
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N06   , Gn5 
	.byte	W24
	.byte		PAN   , c_v+48
	.byte		N06   , Bn5 
	.byte	W24
	.byte		PAN   , c_v-16
	.byte		N06   , Fs5 
	.byte	W24
	.byte	PEND
	.byte		PAN   , c_v+48
	.byte		N06   , Cn5 , v127
	.byte	W24
	.byte		PAN   , c_v-16
	.byte		N06   , Gn5 
	.byte	W24
	.byte		PAN   , c_v-48
	.byte		N06   , Bn5 
	.byte	W24
	.byte		PAN   , c_v+16
	.byte		N06   , Fs5 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	PATT
	 .word	song280_1 + 0x37
	.byte	PATT
	 .word	song280_1 + 0x21
	.byte	GOTO
	 .word	song280_1 + 0x52
	.byte	FINE

@**************** Track 02 ****************************@

song280_2:
	.byte	KEYSH , 0
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		MOD   , 4
	.byte		VOL   , 42*song280_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		        c_v+0
	.byte	W72
	.byte		VOL   , 11*song280_mvl/mxv
	.byte		BEND  , c_v+16
	.byte		N24   , En2 , v096
	.byte	W12
	.byte		VOL   , 22*song280_mvl/mxv
	.byte		BEND  , c_v+10
	.byte	W06
	.byte		VOL   , 34*song280_mvl/mxv
	.byte		BEND  , c_v+5
	.byte	W06
	.byte		PAN   , c_v-32
	.byte		VOL   , 42*song280_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N96   , En2 , v108
	.byte	W06
	.byte		PAN   , c_v-24
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+8
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+25
	.byte	W06
	.byte		        c_v+32
	.byte	W12
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v-22
	.byte	W06
	.byte		        c_v-27
	.byte	W06
	.byte		N96   , Dn2 , v108
	.byte	W06
	.byte		PAN   , c_v-24
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+8
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+25
	.byte	W06
	.byte		        c_v+32
	.byte	W12
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v-22
	.byte	W06
	.byte		        c_v-27
	.byte	W06
	.byte	PEND
	.byte		N96   , Cn2 , v108
	.byte	W06
	.byte		PAN   , c_v-24
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+8
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+25
	.byte	W06
	.byte		        c_v+32
	.byte	W12
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v-22
	.byte	W06
	.byte		        c_v-27
	.byte	W06
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N24   , En2 , v108
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Bn1 
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte	PEND
	.byte		PAN   , c_v-32
	.byte		N96   , En2 , v108
	.byte	W06
	.byte		PAN   , c_v-24
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v+8
	.byte	W06
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+25
	.byte	W06
	.byte		        c_v+32
	.byte	W12
	.byte		        c_v+16
	.byte	W06
	.byte		        c_v+5
	.byte	W06
	.byte		        c_v+0
	.byte	W06
	.byte		        c_v-7
	.byte	W06
	.byte		        c_v-22
	.byte	W06
	.byte		        c_v-27
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song280_2 + 0x4E
	.byte	PATT
	 .word	song280_2 + 0x70
	.byte	PATT
	 .word	song280_2 + 0x92
	.byte	PATT
	 .word	song280_2 + 0xA2
	.byte	PATT
	 .word	song280_2 + 0x4E
	.byte	PATT
	 .word	song280_2 + 0x70
	.byte	PATT
	 .word	song280_2 + 0x92
	.byte		VOICE , 24
	.byte		PAN   , c_v-32
	.byte		N24   , Bn4 , v108
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gn4 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Fs4 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Bn4 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gn4 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Fs4 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Bn4 
	.byte	W24
	.byte		VOICE , 73
	.byte		PAN   , c_v-32
	.byte		N24   , Bn5 , v068
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Gn5 
	.byte	W24
	.byte		PAN   , c_v-32
	.byte		N24   , Fs5 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Bn5 
	.byte	W24
	.byte		VOICE , 48
	.byte		PAN   , c_v-32
	.byte		N24   , En2 , v108
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PATT
	 .word	song280_2 + 0xA2
	.byte	PATT
	 .word	song280_2 + 0x4E
	.byte	PATT
	 .word	song280_2 + 0x70
	.byte	PATT
	 .word	song280_2 + 0x92
	.byte	PATT
	 .word	song280_2 + 0xA2
	.byte	PATT
	 .word	song280_2 + 0x4E
	.byte	PATT
	 .word	song280_2 + 0x70
	.byte	PATT
	 .word	song280_2 + 0x92
	.byte	PATT
	 .word	song280_2 + 0xA2
	.byte	PATT
	 .word	song280_2 + 0x4E
	.byte	PATT
	 .word	song280_2 + 0x70
	.byte	PATT
	 .word	song280_2 + 0x92
	.byte		VOICE , 24
	.byte		PAN   , c_v-32
	.byte		MOD   , 8
	.byte		VOL   , 52*song280_mvl/mxv
	.byte		N24   , Bn4 , v108
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		MOD   , 8
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		MOD   , 8
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		MOD   , 8
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		MOD   , 8
	.byte		N24
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		MOD   , 8
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		MOD   , 8
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		MOD   , 8
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		        13
	.byte		VOL   , 56*song280_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N24   , Bn5 
	.byte	W12
	.byte		MOD   , 20
	.byte	W12
	.byte		        13
	.byte		PAN   , c_v-32
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 21
	.byte	W12
	.byte		        12
	.byte		PAN   , c_v+32
	.byte		N24   , Fs5 
	.byte	W12
	.byte		MOD   , 21
	.byte	W12
	.byte		        12
	.byte		PAN   , c_v-32
	.byte		N24   , Bn5 
	.byte	W12
	.byte		MOD   , 20
	.byte	W12
	.byte		VOICE , 48
	.byte		MOD   , 4
	.byte		PAN   , c_v-32
	.byte		VOL   , 42*song280_mvl/mxv
	.byte		N24   , En2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		PAN   , c_v+32
	.byte		N24   , Fs2 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte	PATT
	 .word	song280_2 + 0xA2
	.byte	PATT
	 .word	song280_2 + 0x4E
	.byte	PATT
	 .word	song280_2 + 0x70
	.byte	PATT
	 .word	song280_2 + 0x92
	.byte	PATT
	 .word	song280_2 + 0xA2
	.byte	PATT
	 .word	song280_2 + 0x4E
	.byte	PATT
	 .word	song280_2 + 0x70
	.byte	PATT
	 .word	song280_2 + 0x92
	.byte	GOTO
	 .word	song280_2 + 0x27
	.byte	FINE

@**************** Track 03 ****************************@

song280_3:
	.byte	KEYSH , 0
	.byte		VOICE , 78
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+32
	.byte		VOL   , 11*song280_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W72
	.byte		        3*song280_mvl/mxv
	.byte	W12
	.byte		        5*song280_mvl/mxv
	.byte	W06
	.byte		        6*song280_mvl/mxv
	.byte	W03
	.byte		        7*song280_mvl/mxv
	.byte	W03
	.byte		VOL   , 11*song280_mvl/mxv
	.byte		N92   , En3 , v120
	.byte	W92
	.byte	W01
	.byte		N03   , Ds3 
	.byte	W03
	.byte		N92   , Dn3 , v127
	.byte	W92
	.byte	W01
	.byte		N03   , Cs3 , v120
	.byte	W03
	.byte	PEND
	.byte		N84   , Cn3 , v127
	.byte	W84
	.byte	W03
	.byte		N03   , Cs3 , v120
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte	PEND
	.byte		N15   , En3 , v127
	.byte	W15
	.byte		N03   , Ds3 , v120
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		N24   , Cn3 , v127
	.byte	W24
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N03   , Cn3 , v120
	.byte	W03
	.byte		        Cs3 
	.byte	W03
	.byte		        Dn3 
	.byte	W03
	.byte		        Ds3 
	.byte	W03
	.byte		N24   , En3 , v127
	.byte	W24
	.byte	PEND
	.byte		N92   , En3 , v127
	.byte	W92
	.byte	W01
	.byte		N03   , Ds3 , v120
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song280_3 + 0x22
	.byte	PATT
	 .word	song280_3 + 0x2C
	.byte	PATT
	 .word	song280_3 + 0x3A
	.byte	PATT
	 .word	song280_3 + 0x5C
	.byte	PATT
	 .word	song280_3 + 0x22
	.byte	PATT
	 .word	song280_3 + 0x2C
	.byte	PATT
	 .word	song280_3 + 0x3A
	.byte		VOICE , 58
	.byte		VOL   , 22*song280_mvl/mxv
	.byte		N24   , Bn4 , v127
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		        0
	.byte		PAN   , c_v+16
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 16
	.byte		PAN   , c_v+7
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v+0
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 16
	.byte		PAN   , c_v-11
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v-18
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 16
	.byte		PAN   , c_v-27
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v-32
	.byte		N24
	.byte	W12
	.byte		MOD   , 16
	.byte		PAN   , c_v-37
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v-40
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 16
	.byte		PAN   , c_v-44
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v-34
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 16
	.byte		PAN   , c_v-28
	.byte	W12
	.byte		MOD   , 0
	.byte		PAN   , c_v-21
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 16
	.byte		PAN   , c_v-9
	.byte	W12
	.byte		VOICE , 78
	.byte		PAN   , c_v+0
	.byte		MOD   , 6
	.byte		N24   , Bn4 , v068
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		        6
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		        7
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		        7
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 16
	.byte	W12
	.byte		VOICE , 78
	.byte		MOD   , 0
	.byte		PAN   , c_v+32
	.byte		VOL   , 11*song280_mvl/mxv
	.byte		N18   , En3 , v127
	.byte	W18
	.byte		N03   , Fn3 , v120
	.byte	W03
	.byte		        Fs3 
	.byte	W03
	.byte		N24   , Gn3 , v127
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N03   , Gn3 , v120
	.byte	W03
	.byte		        Gs3 
	.byte	W03
	.byte		        An3 
	.byte	W03
	.byte		        As3 
	.byte	W03
	.byte		N24   , Bn3 , v127
	.byte	W24
	.byte	PATT
	 .word	song280_3 + 0x5C
	.byte	PATT
	 .word	song280_3 + 0x22
	.byte	PATT
	 .word	song280_3 + 0x2C
	.byte	PATT
	 .word	song280_3 + 0x3A
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		MOD   , 5
	.byte		VOL   , 11*song280_mvl/mxv
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte	W12
	.byte		        12
	.byte	W12
	.byte		        5
	.byte	W12
	.byte		        12
	.byte	W12
	.byte		        5
	.byte	W12
	.byte		        12
	.byte	W12
	.byte		VOICE , 58
	.byte		MOD   , 5
	.byte		VOL   , 14*song280_mvl/mxv
	.byte		N24   , Bn4 , v080
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		PAN   , c_v-32
	.byte		N24   , Bn4 , v096
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Gn4 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Fs4 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Bn4 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		VOICE , 73
	.byte		MOD   , 5
	.byte		PAN   , c_v+0
	.byte		VOL   , 13*song280_mvl/mxv
	.byte		N24   , Bn5 , v112
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Gn5 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Fs5 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		        5
	.byte		N24   , Bn5 
	.byte	W12
	.byte		MOD   , 12
	.byte	W12
	.byte		VOICE , 78
	.byte		MOD   , 0
	.byte		PAN   , c_v+32
	.byte		VOL   , 11*song280_mvl/mxv
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song280_3 + 0x18
	.byte	FINE

@**************** Track 04 ****************************@

song280_4:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		PAN   , c_v+0
	.byte		VOL   , 22*song280_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N48   , Gn2 , v096
	.byte	W09
	.byte		MOD   , 8
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N42
	.byte	W09
	.byte		MOD   , 8
	.byte	W32
	.byte	W01
	.byte		N03   , Fs2 , v092
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , En2 , v096
	.byte	W09
	.byte		MOD   , 8
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N42
	.byte	W09
	.byte		MOD   , 8
	.byte	W32
	.byte	W01
	.byte		N03   , Fn2 , v092
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N24   , Gn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N21   , Fs2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W09
	.byte		N03   , Fn2 , v092
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , Fn2 , v092
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		MOD   , 0
	.byte		N09   , Bn2 , v096
	.byte	W09
	.byte		N03   , As2 , v088
	.byte	W03
	.byte		MOD   , 7
	.byte		N03   , Gs2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        En2 , v092
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Cs2 , v096
	.byte	W09
	.byte		MOD   , 8
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N32
	.byte	W09
	.byte		MOD   , 8
	.byte	W24
	.byte		N03   , Dn2 , v092
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Gn2 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Fs2 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N36
	.byte	W09
	.byte		MOD   , 7
	.byte	W24
	.byte	W03
	.byte		N03   , Gn2 , v092
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N15   , Bn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , As2 , v092
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		MOD   , 0
	.byte		N24   , Gn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fs2 
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , Gn2 , v092
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		MOD   , 0
	.byte		N24   , Bn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Cn3 , v096
	.byte	W06
	.byte		MOD   , 8
	.byte	W42
	.byte		        0
	.byte		N36
	.byte	W09
	.byte		MOD   , 8
	.byte	W24
	.byte	W03
	.byte		N03   , Bn2 , v092
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Gn2 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N42
	.byte	W09
	.byte		MOD   , 7
	.byte	W32
	.byte	W01
	.byte		N03   , Fs2 , v092
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , En2 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N42
	.byte	W09
	.byte		MOD   , 7
	.byte	W32
	.byte	W01
	.byte		N03   , Fn2 , v092
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N24   , Gn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N21   , Fs2 
	.byte	W12
	.byte		MOD   , 7
	.byte	W09
	.byte		N03   , Fn2 , v092
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , En2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , Fn2 , v092
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , An2 , v092
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Cs2 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N36
	.byte	W09
	.byte		MOD   , 7
	.byte	W24
	.byte	W03
	.byte		N03   , Dn2 , v092
	.byte	W03
	.byte		        Ds2 
	.byte	W03
	.byte		        En2 
	.byte	W03
	.byte		        Fs2 
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song280_4 + 0x96
	.byte	PATT
	 .word	song280_4 + 0xA8
	.byte		MOD   , 0
	.byte		N15   , Bn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W03
	.byte		N03   , As2 , v092
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		MOD   , 0
	.byte		N24   , Gn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Fs2 
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , Gn2 , v092
	.byte	W03
	.byte		        Gs2 
	.byte	W03
	.byte		        An2 
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		MOD   , 0
	.byte		N12   , Bn2 , v096
	.byte	W12
	.byte		MOD   , 7
	.byte		N03   , An2 , v092
	.byte	W03
	.byte		        Gn2 
	.byte	W03
	.byte		        Fn2 
	.byte	W03
	.byte		        Dn2 
	.byte	W03
	.byte	PEND
	.byte		MOD   , 0
	.byte		N48   , Cn2 , v096
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte		        0
	.byte		N48
	.byte	W09
	.byte		MOD   , 7
	.byte	W36
	.byte	W03
	.byte	PEND
	.byte		        0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	song280_4 + 0xE
	.byte	PATT
	 .word	song280_4 + 0x24
	.byte	PATT
	 .word	song280_4 + 0x3C
	.byte	PATT
	 .word	song280_4 + 0x79
	.byte	PATT
	 .word	song280_4 + 0x96
	.byte	PATT
	 .word	song280_4 + 0xA8
	.byte	PATT
	 .word	song280_4 + 0xC4
	.byte	PATT
	 .word	song280_4 + 0xF8
	.byte	PATT
	 .word	song280_4 + 0x113
	.byte	PATT
	 .word	song280_4 + 0x12B
	.byte	PATT
	 .word	song280_4 + 0x143
	.byte	PATT
	 .word	song280_4 + 0x17C
	.byte	PATT
	 .word	song280_4 + 0x96
	.byte	PATT
	 .word	song280_4 + 0xA8
	.byte	PATT
	 .word	song280_4 + 0x1A2
	.byte	PATT
	 .word	song280_4 + 0x1DF
	.byte		MOD   , 0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	song280_4 + 0xE
	.byte	FINE

@**************** Track 05 ****************************@

song280_5:
	.byte	KEYSH , 0
	.byte		VOICE , 10
	.byte		VOL   , 67*song280_mvl/mxv
	.byte		PAN   , c_v+30
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W06
	.byte		VOL   , 69*song280_mvl/mxv
	.byte	W90
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N48   , Cn3 , v048
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W96
	.byte	W48
	.byte		N48
	.byte	W48
	.byte	W96
	.byte	W96
	.byte		N48
	.byte	W96
	.byte	GOTO
	 .word	song280_5 + 0xC
	.byte	FINE

@**************** Track 06 ****************************@

song280_6:
	.byte	KEYSH , 0
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		MOD   , 5
	.byte		PAN   , c_v+63
	.byte		VOL   , 21*song280_mvl/mxv
	.byte		BEND  , c_v+1
	.byte		N06   , Cn5 , v064
	.byte	W24
	.byte		        Gn5 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Bn5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Cn5 , v064
	.byte	W24
	.byte		        Gn5 
	.byte	W24
	.byte		PAN   , c_v+63
	.byte		N06   , Bn5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte	PEND
	.byte		PAN   , c_v+63
	.byte		N06   , Cn5 , v064
	.byte	W24
	.byte		        Gn5 
	.byte	W24
	.byte		PAN   , c_v-64
	.byte		N06   , Bn5 
	.byte	W24
	.byte		        Fs5 
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	PATT
	 .word	song280_6 + 0x32
	.byte	PATT
	 .word	song280_6 + 0x22
	.byte	GOTO
	 .word	song280_6 + 0x47
	.byte	FINE

@**************** Track 07 ****************************@

song280_7:
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		VOL   , 90*song280_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N48   , Ds5 , v120
	.byte	W96
	.byte		N48   , Bn4 , v032
	.byte	W48
	.byte		        En5 , v052
	.byte	W48
	.byte	PEND
	.byte		        Ds5 , v120
	.byte	W96
	.byte	PATT
	 .word	song280_7 + 0x20
	.byte		N48   , Ds5 , v120
	.byte	W96
	.byte	PATT
	 .word	song280_7 + 0x20
	.byte		N48   , Ds5 , v120
	.byte	W48
	.byte		        Bn4 , v032
	.byte	W48
	.byte	PEND
	.byte		N48   , Ds5 , v120
	.byte	W48
	.byte		        En5 , v052
	.byte	W48
	.byte	PEND
	.byte		        Ds5 , v120
	.byte	W96
	.byte	PATT
	 .word	song280_7 + 0x20
	.byte	PATT
	 .word	song280_7 + 0x39
	.byte		N48   , En5 , v052
	.byte	W96
	.byte		        Ds5 , v120
	.byte	W96
	.byte	PATT
	 .word	song280_7 + 0x20
	.byte		N48   , Ds5 , v120
	.byte	W96
	.byte		        En5 , v052
	.byte	W96
	.byte		        Ds5 , v120
	.byte	W96
	.byte		        Bn4 , v032
	.byte	W48
	.byte		        En5 , v056
	.byte	W48
	.byte		        Ds5 , v120
	.byte	W96
	.byte	PATT
	 .word	song280_7 + 0x20
	.byte		N48   , Ds5 , v120
	.byte	W96
	.byte	PATT
	 .word	song280_7 + 0x20
	.byte	PATT
	 .word	song280_7 + 0x41
	.byte	W48
	.byte		N48   , Bn4 , v032
	.byte	W48
	.byte	GOTO
	 .word	song280_7 + 0xC
	.byte	FINE

@******************************************************@
	.align	2

song280:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song280_pri	@ Priority
	.byte	song280_rev	@ Reverb.

	.word	song280_grp

	.word	song280_0
	.word	song280_1
	.word	song280_2
	.word	song280_3
	.word	song280_4
	.word	song280_5
	.word	song280_6
	.word	song280_7

	.end
