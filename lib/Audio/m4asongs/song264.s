@ Songgroup: 0

	.include "MPlayDef.s"

	.equ	song264_grp, group_1
	.equ	song264_pri, 1
	.equ	song264_rev, 178
	.equ	song264_mvl, 127
	.equ	song264_key, 0
	.equ	song264_tbs, 1
	.equ	song264_exg, 1
	.equ	song264_cmp, 1

	.section .rodata
	.global	song264
	.align	2

@**************** Track 00 ****************************@

song264_0:
	.byte	KEYSH , 0
	.byte	TEMPO , 60
	.byte		VOICE , 60
	.byte		VOL   , 80*song264_mvl/mxv
	.byte		N06   , Gn3 , v080
	.byte	W24
	.byte		        Gn3 , v056
	.byte	W24
	.byte		        Gn3 , v060
	.byte	W24
	.byte		        Gn3 , v064
	.byte	W24
	.byte		N06   , Gn3 , v068
	.byte	W24
	.byte		        Gn3 , v072
	.byte	W24
	.byte		        Gn3 , v076
	.byte	W24
	.byte		N24   , An3 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte		MOD   , 0
	.byte		N06   , Gn3 , v080
	.byte	W24
	.byte		        Gn3 , v056
	.byte	W24
	.byte		        Gn3 , v060
	.byte	W24
	.byte		        Gn3 , v064
	.byte	W24
	.byte	PEND
	.byte		N06   , Gn3 , v068
	.byte	W24
	.byte		        Gn3 , v072
	.byte	W24
	.byte		        Gn3 , v076
	.byte	W24
	.byte		N24   , Bn3 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte	PATT
	 .word	song264_0 + 0x27
	.byte	PATT
	 .word	song264_0 + 0x15
	.byte	PATT
	 .word	song264_0 + 0x27
	.byte	PATT
	 .word	song264_0 + 0x37
	.byte		MOD   , 0
	.byte		N06   , An3 , v080
	.byte	W24
	.byte		        An3 , v056
	.byte	W24
	.byte		        An3 , v060
	.byte	W24
	.byte		        An3 , v064
	.byte	W24
	.byte	PEND
	.byte		N06   , An3 , v068
	.byte	W24
	.byte		        An3 , v072
	.byte	W24
	.byte		        An3 , v076
	.byte	W24
	.byte		N24   , Bn3 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte	PATT
	 .word	song264_0 + 0x5D
	.byte		N06   , An3 , v068
	.byte	W24
	.byte		        An3 , v072
	.byte	W24
	.byte		        An3 , v076
	.byte	W24
	.byte		N24   , Cs4 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte	PATT
	 .word	song264_0 + 0x5D
	.byte	PATT
	 .word	song264_0 + 0x6D
	.byte	PATT
	 .word	song264_0 + 0x5D
	.byte	PATT
	 .word	song264_0 + 0x84
	.byte	GOTO
	 .word	song264_0 + 0x5D
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 01 ****************************@

song264_1:
	.byte	KEYSH , 0
	.byte		VOICE , 60
	.byte		PAN   , c_v+16
	.byte		VOL   , 80*song264_mvl/mxv
	.byte		N06   , Cn3 , v080
	.byte	W24
	.byte		        Dn3 , v056
	.byte	W24
	.byte		        Cn3 , v060
	.byte	W24
	.byte		        Dn3 , v064
	.byte	W24
	.byte		N06   , Cn3 , v068
	.byte	W24
	.byte		        Dn3 , v072
	.byte	W24
	.byte		        Cn3 , v076
	.byte	W24
	.byte		N24   , Dn3 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte		MOD   , 0
	.byte		N06   , Cn3 , v080
	.byte	W24
	.byte		        Dn3 , v056
	.byte	W24
	.byte		        Cn3 , v060
	.byte	W24
	.byte		        Dn3 , v064
	.byte	W24
	.byte	PEND
	.byte		N06   , Cn3 , v068
	.byte	W24
	.byte		        Dn3 , v072
	.byte	W24
	.byte		        Cn3 , v076
	.byte	W24
	.byte		N24   , Fs3 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte	PATT
	 .word	song264_1 + 0x27
	.byte	PATT
	 .word	song264_1 + 0x15
	.byte	PATT
	 .word	song264_1 + 0x27
	.byte	PATT
	 .word	song264_1 + 0x37
	.byte		MOD   , 0
	.byte		N06   , Dn3 , v080
	.byte	W24
	.byte		        En3 , v056
	.byte	W24
	.byte		        Dn3 , v060
	.byte	W24
	.byte		        En3 , v064
	.byte	W24
	.byte	PEND
	.byte		N06   , Dn3 , v068
	.byte	W24
	.byte		        En3 , v072
	.byte	W24
	.byte		        Dn3 , v076
	.byte	W24
	.byte		N24   , En3 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte	PATT
	 .word	song264_1 + 0x5D
	.byte		N06   , Dn3 , v068
	.byte	W24
	.byte		        En3 , v072
	.byte	W24
	.byte		        Dn3 , v076
	.byte	W24
	.byte		N24   , Gs3 , v080
	.byte	W09
	.byte		MOD   , 6
	.byte	W15
	.byte	PEND
	.byte	PATT
	 .word	song264_1 + 0x5D
	.byte	PATT
	 .word	song264_1 + 0x6D
	.byte	PATT
	 .word	song264_1 + 0x5D
	.byte	PATT
	 .word	song264_1 + 0x84
	.byte	GOTO
	 .word	song264_1 + 0x5D
	.byte		MOD   , 0
	.byte	FINE

@**************** Track 02 ****************************@

song264_2:
	.byte	KEYSH , 0
	.byte		VOICE , 81
	.byte		VOL   , 80*song264_mvl/mxv
	.byte		N06   , Cn1 , v080
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		N06   , Cn1 , v080
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W24
	.byte	PEND
	.byte		N06   , Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte	PATT
	 .word	song264_2 + 0x10
	.byte		N03   , Cn2 , v080
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Cn2 
	.byte	W12
	.byte		        Cn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song264_2 + 0x2A
	.byte	PATT
	 .word	song264_2 + 0x2A
	.byte	PATT
	 .word	song264_2 + 0x2A
	.byte		N03   , Dn2 , v080
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn2 
	.byte	W12
	.byte		        Dn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        En2 
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song264_2 + 0x54
	.byte	PATT
	 .word	song264_2 + 0x54
	.byte	PATT
	 .word	song264_2 + 0x54
	.byte	PATT
	 .word	song264_2 + 0x54
	.byte	PATT
	 .word	song264_2 + 0x54
	.byte	PATT
	 .word	song264_2 + 0x54
	.byte	PATT
	 .word	song264_2 + 0x54
	.byte	GOTO
	 .word	song264_2 + 0x54
	.byte	FINE

@**************** Track 03 ****************************@

song264_3:
	.byte	KEYSH , 0
	.byte		VOICE , 47
	.byte		VOL   , 80*song264_mvl/mxv
	.byte		PAN   , c_v-6
	.byte		N12   , Cn2 , v112
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Cn2 , v112
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte		N12   , Cn2 , v112
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        Cn2 
	.byte	W24
	.byte		        Dn2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte	PEND
	.byte		N12   , Cn2 , v112
	.byte	W24
	.byte		        Dn2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Cn2 
	.byte	W24
	.byte		N06   , Dn2 , v127
	.byte	W06
	.byte		        Dn2 , v108
	.byte	W06
	.byte		        Dn2 , v112
	.byte	W06
	.byte		        Dn2 , v120
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song264_3 + 0x44
	.byte	PATT
	 .word	song264_3 + 0x51
	.byte		N12   , Dn2 , v112
	.byte	W24
	.byte		        En2 
	.byte	W24
	.byte		        Dn2 
	.byte	W24
	.byte		        En2 
	.byte	W12
	.byte		N12
	.byte	W12
	.byte	PEND
	.byte		N12   , Dn2 , v112
	.byte	W24
	.byte		        En2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W24
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        En2 , v108
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song264_3 + 0x74
	.byte		N15   , Dn2 , v112
	.byte	W24
	.byte		N12   , En2 
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2 
	.byte	W24
	.byte		N06   , En2 , v127
	.byte	W06
	.byte		        En2 , v108
	.byte	W06
	.byte		        En2 , v112
	.byte	W06
	.byte		        En2 , v120
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	song264_3 + 0x74
	.byte	PATT
	 .word	song264_3 + 0x9F
	.byte	PATT
	 .word	song264_3 + 0x74
	.byte	PATT
	 .word	song264_3 + 0x81
	.byte	GOTO
	 .word	song264_3 + 0x74
	.byte	FINE

@**************** Track 04 ****************************@

song264_4:
	.byte	KEYSH , 0
	.byte		VOICE , 83
	.byte		PAN   , c_v-47
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		VOL   , 80*song264_mvl/mxv
	.byte		N06   , Cn3 , v056
	.byte	W24
	.byte		        Dn3 , v032
	.byte	W24
	.byte		        Cn3 , v036
	.byte	W24
	.byte		        Dn3 , v040
	.byte	W24
	.byte		N06   , Cn3 , v044
	.byte	W24
	.byte		        Dn3 , v048
	.byte	W24
	.byte		        Cn3 , v052
	.byte	W24
	.byte		N24   , Dn3 , v056
	.byte	W24
	.byte	PEND
	.byte		N06   , Cn3 , v056
	.byte	W24
	.byte		        Dn3 , v032
	.byte	W24
	.byte		        Cn3 , v036
	.byte	W24
	.byte		        Dn3 , v040
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song264_4 + 0x1A
	.byte	PATT
	 .word	song264_4 + 0x29
	.byte	PATT
	 .word	song264_4 + 0x1A
	.byte	PATT
	 .word	song264_4 + 0x29
	.byte	PATT
	 .word	song264_4 + 0x1A
	.byte		N06   , Dn3 , v056
	.byte	W24
	.byte		        En3 , v032
	.byte	W24
	.byte		        Dn3 , v036
	.byte	W24
	.byte		        En3 , v040
	.byte	W24
	.byte	PEND
	.byte		N06   , Dn3 , v044
	.byte	W24
	.byte		        En3 , v048
	.byte	W24
	.byte		        Dn3 , v052
	.byte	W24
	.byte		N24   , En3 , v056
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song264_4 + 0x50
	.byte	PATT
	 .word	song264_4 + 0x5E
	.byte	PATT
	 .word	song264_4 + 0x50
	.byte	PATT
	 .word	song264_4 + 0x5E
	.byte	PATT
	 .word	song264_4 + 0x50
	.byte	PATT
	 .word	song264_4 + 0x5E
	.byte	GOTO
	 .word	song264_4 + 0x50
	.byte	FINE

@**************** Track 05 ****************************@

song264_5:
	.byte	KEYSH , 0
	.byte		VOICE , 84
	.byte		XCMD  , xIECV , 10
	.byte		        xIECL , 8
	.byte		PAN   , c_v+48
	.byte		VOL   , 80*song264_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		N06   , An2 , v056
	.byte	W24
	.byte		        Bn2 , v032
	.byte	W24
	.byte		        An2 , v036
	.byte	W24
	.byte		        Bn2 , v040
	.byte	W24
	.byte		N06   , An2 , v044
	.byte	W24
	.byte		        Bn2 , v048
	.byte	W24
	.byte		        An2 , v052
	.byte	W24
	.byte		N24   , Bn2 , v056
	.byte	W24
	.byte	PEND
	.byte		N06   , An2 , v056
	.byte	W24
	.byte		        Bn2 , v032
	.byte	W24
	.byte		        An2 , v036
	.byte	W24
	.byte		        Bn2 , v040
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song264_5 + 0x1C
	.byte	PATT
	 .word	song264_5 + 0x2B
	.byte	PATT
	 .word	song264_5 + 0x1C
	.byte	PATT
	 .word	song264_5 + 0x2B
	.byte	PATT
	 .word	song264_5 + 0x1C
	.byte		N06   , Bn2 , v056
	.byte	W24
	.byte		        Cs3 , v032
	.byte	W24
	.byte		        Bn2 , v036
	.byte	W24
	.byte		        Cs3 , v040
	.byte	W24
	.byte	PEND
	.byte		N06   , Bn2 , v044
	.byte	W24
	.byte		        Cs3 , v048
	.byte	W24
	.byte		        Bn2 , v052
	.byte	W24
	.byte		N24   , Cs3 , v056
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	song264_5 + 0x52
	.byte	PATT
	 .word	song264_5 + 0x60
	.byte	PATT
	 .word	song264_5 + 0x52
	.byte	PATT
	 .word	song264_5 + 0x60
	.byte	PATT
	 .word	song264_5 + 0x52
	.byte	PATT
	 .word	song264_5 + 0x60
	.byte	GOTO
	 .word	song264_5 + 0x52
	.byte	FINE

@**************** Track 06 ****************************@

song264_6:
	.byte		VOL   , 80*song264_mvl/mxv
	.byte	KEYSH , 0
	.byte		VOICE , 0
	.byte		PAN   , c_v+0
	.byte		N06   , En1 , v112
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N03
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        En1 , v068
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        En1 , v064
	.byte	W03
	.byte		        En1 , v112
	.byte	W03
	.byte		        En1 , v072
	.byte	W03
	.byte		        En1 , v076
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		N03
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        En1 , v100
	.byte	W03
	.byte		        En1 , v112
	.byte	W03
	.byte		N06
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		        En1 , v112
	.byte	W12
	.byte		        En1 , v080
	.byte	W12
	.byte		N03   , En1 , v127
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        En1 , v104
	.byte	W03
	.byte		        En1 , v108
	.byte	W03
	.byte		        En1 , v112
	.byte	W03
	.byte		        En1 , v116
	.byte	W03
	.byte		        En1 , v120
	.byte	W03
	.byte		N06   , En1 , v127
	.byte	W12
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        En1 , v096
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        En1 , v096
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W06
	.byte		N06
	.byte	W12
	.byte		        En1 , v100
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        En1 , v096
	.byte	W12
	.byte		        En1 , v127
	.byte	W12
	.byte		        En1 , v096
	.byte	W12
	.byte		N03   , En1 , v127
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        En1 , v104
	.byte	W03
	.byte		        En1 , v108
	.byte	W03
	.byte		        En1 , v112
	.byte	W03
	.byte		        En1 , v116
	.byte	W03
	.byte		        En1 , v120
	.byte	W03
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v100
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte		N06   , En1 , v127
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v100
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		        En1 , v036
	.byte	W06
	.byte		        En1 , v096
	.byte	W06
	.byte		        En1 , v127
	.byte	W06
	.byte		N03
	.byte	W03
	.byte		        En1 , v088
	.byte	W03
	.byte		        En1 , v096
	.byte	W03
	.byte		        En1 , v104
	.byte	W03
	.byte		        En1 , v108
	.byte	W03
	.byte		        En1 , v112
	.byte	W03
	.byte		        En1 , v116
	.byte	W03
	.byte		        En1 , v120
	.byte	W03
	.byte	PEND
	.byte	PATT
	 .word	song264_6 + 0xC7
	.byte	PATT
	 .word	song264_6 + 0xF8
	.byte	PATT
	 .word	song264_6 + 0xC7
	.byte	PATT
	 .word	song264_6 + 0xF8
	.byte	PATT
	 .word	song264_6 + 0xC7
	.byte	PATT
	 .word	song264_6 + 0xF8
	.byte	PATT
	 .word	song264_6 + 0xC7
	.byte	PATT
	 .word	song264_6 + 0xF8
	.byte	GOTO
	 .word	song264_6 + 0x135
	.byte	FINE

@******************************************************@
	.align	2

song264:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song264_pri	@ Priority
	.byte	song264_rev	@ Reverb.

	.word	song264_grp

	.word	song264_0
	.word	song264_1
	.word	song264_2
	.word	song264_3
	.word	song264_4
	.word	song264_5
	.word	song264_6

	.end
