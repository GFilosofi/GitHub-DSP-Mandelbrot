;******************************************************************************
;* TMS320C6x C/C++ Codegen                                          PC v5.1.0 *
;* Date/Time created: Sun Mar 12 23:01:05 2006                                *
;******************************************************************************
	.compiler_opts --endian=little --mem_model:code=far --mem_model:data=far_aggregates --predefine_memory_model_macros --quiet --silicon_version=6416 

;******************************************************************************
;* GLOBAL FILE PARAMETERS                                                     *
;*                                                                            *
;*   Architecture      : TMS320C64xx                                          *
;*   Optimization      : Enabled at level 1                                   *
;*   Optimizing for    : Compile time 1st, size 2nd                           *
;*                       Based on options: -o1, -ms3                          *
;*   Endian            : Little                                               *
;*   Interrupt Thrshld : Disabled                                             *
;*   Data Access Model : Far Aggregate Data                                   *
;*   Pipelining        : Disabled                                             *
;*   Memory Aliases    : Presume are aliases (pessimistic)                    *
;*   Debug Info        : DWARF Debug                                          *
;*                                                                            *
;******************************************************************************

	.asg	A15, FP
	.asg	B14, DP
	.asg	B15, SP
	.global	$bss


DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_name("realtime.c")
	.dwattr DW$CU, DW_AT_producer("TMS320C6x C/C++ Codegen PC v5.1.0 Copyright (c) 1996-2005 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;*****************************************************************************
;* CINIT RECORDS                                                             *
;*****************************************************************************
	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_timer0value+0,32
	.field  	0,32			; _timer0value @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_timer1value+0,32
	.field  	0,32			; _timer1value @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_timer2value+0,32
	.field  	0,32			; _timer2value @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_WhatIsrActive+0,32
	.field  	0,32			; _WhatIsrActive @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_Isr0+0,32
	.field  	0,32			; _Isr0 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_Isr1+0,32
	.field  	0,32			; _Isr1 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_Isr2+0,32
	.field  	0,32			; _Isr2 @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_xmin+0,32
	.word	0c00ccccdh		; _xmin @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_xmax+0,32
	.word	03f000000h		; _xmax @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_ymin+0,32
	.word	0bfc00000h		; _ymin @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_ymax+0,32
	.word	03fc00000h		; _ymax @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_OutputDataPtr+0,32
	.field  	_OutputDataMem,32		; _OutputDataPtr @ 0

	.sect	".cinit"
	.align	8
	.field  	4,32
	.field  	_GUARD_BITS+0,32
	.field  	4,32			; _GUARD_BITS @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_Mult+0,32
	.field  	31821,16			; _Mult @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_Inc+0,32
	.field  	13849,16			; _Inc @ 0

	.sect	".cinit"
	.align	8
	.field  	2,32
	.field  	_Seed$2+0,32
	.field  	21845,16			; _Seed$2 @ 0


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("IRQ_map"), DW_AT_symbol_name("_IRQ_map")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("TIMER_open"), DW_AT_symbol_name("_TIMER_open")
	.dwattr DW$4, DW_AT_type(*DW$T$28)
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$4


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("_CSL_init"), DW_AT_symbol_name("__CSL_init")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$7


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("CSL6416_LIB_"), DW_AT_symbol_name("_CSL6416_LIB_")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("addsp"), DW_AT_symbol_name("_addsp")
	.dwattr DW$10, DW_AT_type(*DW$T$16)
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$10


DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("divsp"), DW_AT_symbol_name("_divsp")
	.dwattr DW$13, DW_AT_type(*DW$T$16)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$13


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("mpysp"), DW_AT_symbol_name("_mpysp")
	.dwattr DW$16, DW_AT_type(*DW$T$16)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$16


DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("printf"), DW_AT_symbol_name("_printf")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("exit"), DW_AT_symbol_name("_exit")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("_IRQ_eventTable"), DW_AT_symbol_name("__IRQ_eventTable")
	.dwattr DW$21, DW_AT_type(*DW$T$89)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
	.global	_timer0value
	.bss	_timer0value,4,4
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("timer0value"), DW_AT_symbol_name("_timer0value")
	.dwattr DW$22, DW_AT_location[DW_OP_addr _timer0value]
	.dwattr DW$22, DW_AT_type(*DW$T$11)
	.dwattr DW$22, DW_AT_external(0x01)
	.global	_timer1value
	.bss	_timer1value,4,4
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("timer1value"), DW_AT_symbol_name("_timer1value")
	.dwattr DW$23, DW_AT_location[DW_OP_addr _timer1value]
	.dwattr DW$23, DW_AT_type(*DW$T$11)
	.dwattr DW$23, DW_AT_external(0x01)
	.global	_timer2value
	.bss	_timer2value,4,4
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("timer2value"), DW_AT_symbol_name("_timer2value")
	.dwattr DW$24, DW_AT_location[DW_OP_addr _timer2value]
	.dwattr DW$24, DW_AT_type(*DW$T$11)
	.dwattr DW$24, DW_AT_external(0x01)
	.bss	_WhatIsrActive,4,4
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("WhatIsrActive"), DW_AT_symbol_name("_WhatIsrActive")
	.dwattr DW$25, DW_AT_type(*DW$T$117)
	.dwattr DW$25, DW_AT_location[DW_OP_addr _WhatIsrActive]
	.bss	_Isr0,4,4
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("Isr0"), DW_AT_symbol_name("_Isr0")
	.dwattr DW$26, DW_AT_type(*DW$T$96)
	.dwattr DW$26, DW_AT_location[DW_OP_addr _Isr0]
	.bss	_Isr1,4,4
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("Isr1"), DW_AT_symbol_name("_Isr1")
	.dwattr DW$27, DW_AT_type(*DW$T$96)
	.dwattr DW$27, DW_AT_location[DW_OP_addr _Isr1]
	.bss	_Isr2,4,4
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("Isr2"), DW_AT_symbol_name("_Isr2")
	.dwattr DW$28, DW_AT_type(*DW$T$96)
	.dwattr DW$28, DW_AT_location[DW_OP_addr _Isr2]
	.global	_AvgFirCoeff
	.sect	".const"
	.align	8
_AvgFirCoeff:
	.field  	2048,16			; _AvgFirCoeff[0] @ 0
	.field  	2048,16			; _AvgFirCoeff[1] @ 16
	.field  	2048,16			; _AvgFirCoeff[2] @ 32
	.field  	2048,16			; _AvgFirCoeff[3] @ 48
	.field  	2048,16			; _AvgFirCoeff[4] @ 64
	.field  	2048,16			; _AvgFirCoeff[5] @ 80
	.field  	2048,16			; _AvgFirCoeff[6] @ 96
	.field  	2048,16			; _AvgFirCoeff[7] @ 112
	.field  	2048,16			; _AvgFirCoeff[8] @ 128
	.field  	2048,16			; _AvgFirCoeff[9] @ 144
	.field  	2048,16			; _AvgFirCoeff[10] @ 160
	.field  	2048,16			; _AvgFirCoeff[11] @ 176
	.field  	2048,16			; _AvgFirCoeff[12] @ 192
	.field  	2048,16			; _AvgFirCoeff[13] @ 208
	.field  	2048,16			; _AvgFirCoeff[14] @ 224
	.field  	2048,16			; _AvgFirCoeff[15] @ 240

DW$29	.dwtag  DW_TAG_variable, DW_AT_name("AvgFirCoeff"), DW_AT_symbol_name("_AvgFirCoeff")
	.dwattr DW$29, DW_AT_location[DW_OP_addr _AvgFirCoeff]
	.dwattr DW$29, DW_AT_type(*DW$T$55)
	.dwattr DW$29, DW_AT_external(0x01)
	.global	_xmin
	.bss	_xmin,4,4
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("xmin"), DW_AT_symbol_name("_xmin")
	.dwattr DW$30, DW_AT_location[DW_OP_addr _xmin]
	.dwattr DW$30, DW_AT_type(*DW$T$16)
	.dwattr DW$30, DW_AT_external(0x01)
	.global	_xmax
	.bss	_xmax,4,4
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("xmax"), DW_AT_symbol_name("_xmax")
	.dwattr DW$31, DW_AT_location[DW_OP_addr _xmax]
	.dwattr DW$31, DW_AT_type(*DW$T$16)
	.dwattr DW$31, DW_AT_external(0x01)
	.global	_ymin
	.bss	_ymin,4,4
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("ymin"), DW_AT_symbol_name("_ymin")
	.dwattr DW$32, DW_AT_location[DW_OP_addr _ymin]
	.dwattr DW$32, DW_AT_type(*DW$T$16)
	.dwattr DW$32, DW_AT_external(0x01)
	.global	_ymax
	.bss	_ymax,4,4
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("ymax"), DW_AT_symbol_name("_ymax")
	.dwattr DW$33, DW_AT_location[DW_OP_addr _ymax]
	.dwattr DW$33, DW_AT_type(*DW$T$16)
	.dwattr DW$33, DW_AT_external(0x01)
	.bss	_xspan,4,4
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("xspan"), DW_AT_symbol_name("_xspan")
	.dwattr DW$34, DW_AT_type(*DW$T$16)
	.dwattr DW$34, DW_AT_location[DW_OP_addr _xspan]
	.bss	_yspan,4,4
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("yspan"), DW_AT_symbol_name("_yspan")
	.dwattr DW$35, DW_AT_type(*DW$T$16)
	.dwattr DW$35, DW_AT_location[DW_OP_addr _yspan]
_image:	.usect	".far",65536,8
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("image"), DW_AT_symbol_name("_image")
	.dwattr DW$36, DW_AT_type(*DW$T$91)
	.dwattr DW$36, DW_AT_location[DW_OP_addr _image]
	.bss	_OutputDataMem,2,2
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("OutputDataMem"), DW_AT_symbol_name("_OutputDataMem")
	.dwattr DW$37, DW_AT_type(*DW$T$45)
	.dwattr DW$37, DW_AT_location[DW_OP_addr _OutputDataMem]
	.global	_OutputDataPtr
	.bss	_OutputDataPtr,4,4
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("OutputDataPtr"), DW_AT_symbol_name("_OutputDataPtr")
	.dwattr DW$38, DW_AT_location[DW_OP_addr _OutputDataPtr]
	.dwattr DW$38, DW_AT_type(*DW$T$58)
	.dwattr DW$38, DW_AT_external(0x01)
	.global	_GUARD_BITS
	.bss	_GUARD_BITS,4,4
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("GUARD_BITS"), DW_AT_symbol_name("_GUARD_BITS")
	.dwattr DW$39, DW_AT_location[DW_OP_addr _GUARD_BITS]
	.dwattr DW$39, DW_AT_type(*DW$T$81)
	.dwattr DW$39, DW_AT_external(0x01)
	.global	_Mult
	.bss	_Mult,2,2
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("Mult"), DW_AT_symbol_name("_Mult")
	.dwattr DW$40, DW_AT_location[DW_OP_addr _Mult]
	.dwattr DW$40, DW_AT_type(*DW$T$52)
	.dwattr DW$40, DW_AT_external(0x01)
	.global	_Inc
	.bss	_Inc,2,2
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("Inc"), DW_AT_symbol_name("_Inc")
	.dwattr DW$41, DW_AT_location[DW_OP_addr _Inc]
	.dwattr DW$41, DW_AT_type(*DW$T$52)
	.dwattr DW$41, DW_AT_external(0x01)
_x$1:	.usect	".far",32,8
	.bss	_Seed$2,2,2
;	C:\CCStudio_v3.1_EVAL\C6000\cgtools\bin\opt6x.exe C:\DOCUME~1\Ga&Lu\IMPOST~1\Temp\TI8282 C:\DOCUME~1\Ga&Lu\IMPOST~1\Temp\TI8284 
	.sect	".text"
	.global	_main

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("main"), DW_AT_symbol_name("_main")
	.dwattr DW$42, DW_AT_low_pc(_main)
	.dwattr DW$42, DW_AT_high_pc(0x00)
	.dwattr DW$42, DW_AT_begin_file("realtime.c")
	.dwattr DW$42, DW_AT_begin_line(0x65)
	.dwattr DW$42, DW_AT_begin_column(0x05)
	.dwpsn	"realtime.c",102,1

	.dwfde DW$CIE
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x$1")
	.dwattr DW$43, DW_AT_type(*DW$T$59)
	.dwattr DW$43, DW_AT_location[DW_OP_addr _x$1]

;******************************************************************************
;* FUNCTION NAME: _main                                                       *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21, *
;*                           A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17, *
;*                           B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29, *
;*                           B30,B31                                          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,B0,B1,B2,  *
;*                           B3,B4,B5,B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,  *
;*                           A21,A22,A23,A24,A25,A26,A27,A28,A29,A30,A31,B16, *
;*                           B17,B18,B19,B20,B21,B22,B23,B24,B25,B26,B27,B28, *
;*                           B29,B30,B31                                      *
;*   Local Frame Size  : 0 Args + 12 Auto + 16 Save = 28 byte                 *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_main:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(32)      ; |102| 
	.dwcfa	0x0e, 32
	.dwcfa	0x80, 19, 0
           STDW    .D2T1   A11:A10,*+SP(24)  ; |102| 
	.dwcfa	0x80, 10, 1
	.dwcfa	0x80, 11, 2
           STW     .D2T1   A12,*+SP(20)      ; |102| 
	.dwcfa	0x80, 12, 3
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("Result"), DW_AT_symbol_name("_Result")
	.dwattr DW$44, DW_AT_type(*DW$T$45)
	.dwattr DW$44, DW_AT_location[DW_OP_reg4]
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$45, DW_AT_type(*DW$T$10)
	.dwattr DW$45, DW_AT_location[DW_OP_reg3]
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("k"), DW_AT_symbol_name("_k")
	.dwattr DW$46, DW_AT_type(*DW$T$19)
	.dwattr DW$46, DW_AT_location[DW_OP_reg11]
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$47, DW_AT_type(*DW$T$19)
	.dwattr DW$47, DW_AT_location[DW_OP_reg10]
DW$48	.dwtag  DW_TAG_variable, DW_AT_name("z"), DW_AT_symbol_name("_z")
	.dwattr DW$48, DW_AT_type(*DW$T$87)
	.dwattr DW$48, DW_AT_location[DW_OP_breg31 4]
DW$49	.dwtag  DW_TAG_variable, DW_AT_name("KeepRunning"), DW_AT_symbol_name("_KeepRunning")
	.dwattr DW$49, DW_AT_type(*DW$T$82)
	.dwattr DW$49, DW_AT_location[DW_OP_breg31 12]
	.dwpsn	"realtime.c",107,18
           ZERO    .L2     B4                ; |107| 
           STW     .D2T2   B4,*+SP(12)       ; |107| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl.h",160,5
           MVKL    .S1     _CSL6416_LIB_,A3  ; |160| 
           MVKH    .S1     _CSL6416_LIB_,A3  ; |160| 
           CALL    .S2X    A3                ; |160| 
           ADDKPC  .S2     RL6,B3,4          ; |160| 
RL6:       ; CALL OCCURS {_CSL6416_LIB_}     ; |160| 
;** --------------------------------------------------------------------------*
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl.h",176,3
           MVKL    .S2     __CSL_init,B4     ; |176| 
           MVKH    .S2     __CSL_init,B4     ; |176| 
           CALL    .S2     B4                ; |176| 
           ADDKPC  .S2     RL7,B3,3          ; |176| 
           MVK     .L1     0xffffffff,A4     ; |176| 
RL7:       ; CALL OCCURS {__CSL_init}        ; |176| 
           MVKL    .S1     _ConfigureAllTimers,A3 ; |176| 
           MVKH    .S1     _ConfigureAllTimers,A3 ; |176| 
           CALL    .S2X    A3                ; |176| 
           ADDKPC  .S2     RL8,B3,4          ; |176| 
RL8:       ; CALL OCCURS {_ConfigureAllTimers}  ; |176| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",114,10

           ZERO    .L1     A3                ; |114| 
||         ZERO    .D1     A6                ; |115| 
||         MVK     .S1     16,A5             ; |114| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L1:    
DW$L$_main$4$B:
	.dwpsn	"realtime.c",115,9
           MVKL    .S1     _x$1,A4           ; |115| 
           MVKH    .S1     _x$1,A4           ; |115| 
           STH     .D1T1   A6,*+A4[A3]       ; |115| 
	.dwpsn	"realtime.c",114,31
           ADD     .L1     1,A3,A3           ; |114| 
           CMPLT   .L1     A3,A5,A0          ; |114| 
   [ A0]   BNOP    .S1     L1,5              ; |114| 
           ; BRANCHCC OCCURS {L1}            ; |114| 
DW$L$_main$4$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",118,5
           MVKL    .S1     _SetupInterrupts,A3 ; |118| 
           MVKH    .S1     _SetupInterrupts,A3 ; |118| 
           CALL    .S2X    A3                ; |118| 
           ADDKPC  .S2     RL9,B3,4          ; |118| 
RL9:       ; CALL OCCURS {_SetupInterrupts}  ; |118| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",121,5
           BNOP    .S1     L3,5              ; |121| 
           ; BRANCH OCCURS {L3}              ; |121| 
;** --------------------------------------------------------------------------*
L2:    
DW$L$_main$7$B:
	.dwpsn	"realtime.c",124,9
           MVKL    .S1     _InputData,A3     ; |124| 
           MVKH    .S1     _InputData,A3     ; |124| 
           CALL    .S2X    A3                ; |124| 
           ADDKPC  .S2     RL10,B3,4         ; |124| 
RL10:      ; CALL OCCURS {_InputData}        ; |124| 
DW$L$_main$7$E:
;** --------------------------------------------------------------------------*
DW$L$_main$8$B:
           MVKL    .S1     _x$1,A3           ; |124| 
           MVKH    .S1     _x$1,A3           ; |124| 
           STH     .D1T1   A4,*A3            ; |124| 
	.dwpsn	"realtime.c",125,9
           MVKL    .S1     _Fir32,A5         ; |125| 
           MVKH    .S1     _Fir32,A5         ; |125| 
           CALL    .S2X    A5                ; |125| 
           MVKL    .S2     _AvgFirCoeff,B4   ; |125| 
           MVKH    .S2     _AvgFirCoeff,B4   ; |125| 
           ADDKPC  .S2     RL11,B3,1         ; |125| 
           MV      .L1     A3,A4             ; |125| 
RL11:      ; CALL OCCURS {_Fir32}            ; |125| 
           EXT     .S1     A4,1,16,A4        ; |125| 
	.dwpsn	"realtime.c",126,9
           MVKL    .S2     _OutputData,B4    ; |126| 
           MVKH    .S2     _OutputData,B4    ; |126| 
           CALL    .S2     B4                ; |126| 
           ADDKPC  .S2     RL12,B3,4         ; |126| 
RL12:      ; CALL OCCURS {_OutputData}       ; |126| 
DW$L$_main$8$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L3:    
DW$L$_main$9$B:
	.dwpsn	"realtime.c",127,5
           LDW     .D2T2   *+SP(12),B0       ; |127| 
           NOP             4
   [ B0]   BNOP    .S1     L2,5              ; |127| 
           ; BRANCHCC OCCURS {L2}            ; |127| 
DW$L$_main$9$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",130,3
           MVKL    .S1     _mandelinit,A3    ; |130| 
           MVKH    .S1     _mandelinit,A3    ; |130| 
           CALL    .S2X    A3                ; |130| 
           ADDKPC  .S2     RL13,B3,4         ; |130| 
RL13:      ; CALL OCCURS {_mandelinit}       ; |130| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",132,7

           ZERO    .L1     A10               ; |132| 
||         MVK     .S1     128,A12           ; |139| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L4
;** --------------------------------------------------------------------------*
L4:    
DW$L$_main$12$B:
	.dwpsn	"realtime.c",135,5
           MVKL    .S1     __fltuf,A3        ; |135| 
           MVKH    .S1     __fltuf,A3        ; |135| 
           CALL    .S2X    A3                ; |135| 
           ADDKPC  .S2     RL18,B3,3         ; |135| 
           MV      .L1     A10,A4            ; |135| 
RL18:      ; CALL OCCURS {__fltuf}           ; |135| 
DW$L$_main$12$E:
;** --------------------------------------------------------------------------*
DW$L$_main$13$B:
           MVKL    .S2     __mpyf,B5         ; |135| 
           MVKH    .S2     __mpyf,B5         ; |135| 
           CALL    .S2     B5                ; |135| 
           LDW     .D2T2   *+DP(_xspan),B4   ; |135| 
           ADDKPC  .S2     RL19,B3,3         ; |135| 
RL19:      ; CALL OCCURS {__mpyf}            ; |135| 
           MVKL    .S1     _addsp,A3         ; |135| 
           MVKH    .S1     _addsp,A3         ; |135| 
           CALL    .S2X    A3                ; |135| 

           LDW     .D2T1   *+DP(_xmin),A4    ; |135| 
||         MV      .L2X    A4,B4             ; |135| 

           ADDKPC  .S2     RL20,B3,3         ; |135| 
RL20:      ; CALL OCCURS {_addsp}            ; |135| 
DW$L$_main$13$E:
;** --------------------------------------------------------------------------*
DW$L$_main$14$B:
           STW     .D2T1   A4,*+SP(4)        ; |135| 
	.dwpsn	"realtime.c",139,9
           ZERO    .L1     A11               ; |139| 
DW$L$_main$14$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L5:    
DW$L$_main$15$B:
	.dwpsn	"realtime.c",142,7
           MVKL    .S1     __fltuf,A3        ; |142| 
           MVKH    .S1     __fltuf,A3        ; |142| 
           CALL    .S2X    A3                ; |142| 
           ADDKPC  .S2     RL25,B3,3         ; |142| 
           MV      .L1     A11,A4            ; |142| 
RL25:      ; CALL OCCURS {__fltuf}           ; |142| 
DW$L$_main$15$E:
;** --------------------------------------------------------------------------*
DW$L$_main$16$B:
           MVKL    .S2     __mpyf,B5         ; |142| 
           MVKH    .S2     __mpyf,B5         ; |142| 
           CALL    .S2     B5                ; |142| 
           LDW     .D2T2   *+DP(_yspan),B4   ; |142| 
           ADDKPC  .S2     RL26,B3,3         ; |142| 
RL26:      ; CALL OCCURS {__mpyf}            ; |142| 
           MVKL    .S1     _addsp,A3         ; |142| 
           MVKH    .S1     _addsp,A3         ; |142| 
           CALL    .S2X    A3                ; |142| 

           LDW     .D2T1   *+DP(_ymin),A4    ; |142| 
||         MV      .L2X    A4,B4             ; |142| 

           ADDKPC  .S2     RL27,B3,3         ; |142| 
RL27:      ; CALL OCCURS {_addsp}            ; |142| 
           STW     .D2T1   A4,*+SP(8)        ; |142| 
	.dwpsn	"realtime.c",146,7
           MVKL    .S1     _mandsub,A3       ; |146| 
           MVKH    .S1     _mandsub,A3       ; |146| 
           CALL    .S2X    A3                ; |146| 
           MVK     .S2     0x28,B4           ; |146| 
           ADDKPC  .S2     RL28,B3,1         ; |146| 
           MVK     .L1     0x4,A6            ; |146| 
           ADD     .S1X    4,SP,A4           ; |146| 
RL28:      ; CALL OCCURS {_mandsub}          ; |146| 
DW$L$_main$16$E:
;** --------------------------------------------------------------------------*
DW$L$_main$17$B:

           MVKL    .S2     _image,B4         ; |146| 
||         SHL     .S1     A10,9,A3          ; |146| 

           MVKH    .S2     _image,B4         ; |146| 
||         ADDAW   .D1     A3,A11,A3         ; |146| 

           ADD     .L1X    B4,A3,A3          ; |146| 
           STW     .D1T1   A4,*A3            ; |146| 
	.dwpsn	"realtime.c",139,18
           ADD     .L1     1,A11,A11         ; |139| 
           CMPLTU  .L1     A11,A12,A0        ; |139| 
   [ A0]   BNOP    .S1     L5,5              ; |139| 
           ; BRANCHCC OCCURS {L5}            ; |139| 
DW$L$_main$17$E:
;** --------------------------------------------------------------------------*
DW$L$_main$18$B:
	.dwpsn	"realtime.c",132,16

           ADD     .L1     1,A10,A10         ; |132| 
||         MVK     .S1     128,A3            ; |132| 

           CMPLTU  .L1     A10,A3,A0         ; |132| 
   [ A0]   BNOP    .S1     L4,5              ; |132| 
           ; BRANCHCC OCCURS {L4}            ; |132| 
DW$L$_main$18$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",150,7

           ZERO    .L1     A10               ; |150| 
||         MVK     .S1     128,A4            ; |150| 
||         MVK     .S2     21845,B4          ; |152| 

;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L6:    
DW$L$_main$20$B:
	.dwpsn	"realtime.c",152,5

           MVKL    .S1     _image+508,A3     ; |152| 
||         SHL     .S2X    A10,9,B5          ; |152| 

           MVKH    .S1     _image+508,A3     ; |152| 
           ADD     .L2X    A3,B5,B5          ; |152| 
           STW     .D2T2   B4,*B5            ; |152| 
	.dwpsn	"realtime.c",150,16
           ADD     .L1     1,A10,A10         ; |150| 
           CMPLTU  .L1     A10,A4,A0         ; |150| 
   [ A0]   BNOP    .S1     L6,5              ; |150| 
           ; BRANCHCC OCCURS {L6}            ; |150| 
DW$L$_main$20$E:
;** --------------------------------------------------------------------------*
;***	; the preceding call never returns
	.dwpsn	"realtime.c",156,3

           MVKL    .S2     _printf,B4        ; |156| 
||         MVKL    .S1     SL1+0,A4          ; |156| 

           MVKH    .S2     _printf,B4        ; |156| 
||         MVKH    .S1     SL1+0,A4          ; |156| 

           CALL    .S2     B4                ; |156| 
           ADDKPC  .S2     RL29,B3,4         ; |156| 
RL29:      ; CALL OCCURS {_printf}           ; |156| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",157,3
           MVKL    .S1     _exit,A3          ; |157| 
           MVKH    .S1     _exit,A3          ; |157| 
           CALL    .S2X    A3                ; |157| 
           ADDKPC  .S2     RL30,B3,3         ; |157| 
           ZERO    .L1     A4                ; |157| 
RL30:      ; CALL OCCURS {_exit}             ; |157| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",159,1
           LDDW    .D2T1   *+SP(24),A11:A10  ; |159| 
	.dwcfa	0xc0, 10
	.dwcfa	0xc0, 11
           LDW     .D2T1   *+SP(20),A12      ; |159| 
	.dwcfa	0xc0, 12
           LDW     .D2T2   *++SP(32),B3      ; |159| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |159| 
           ; BRANCH OCCURS {B3}              ; |159| 

DW$50	.dwtag  DW_TAG_loop
	.dwattr DW$50, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L6:1:1142200865")
	.dwattr DW$50, DW_AT_begin_file("realtime.c")
	.dwattr DW$50, DW_AT_begin_line(0x96)
	.dwattr DW$50, DW_AT_end_line(0x99)
DW$51	.dwtag  DW_TAG_loop_range
	.dwattr DW$51, DW_AT_low_pc(DW$L$_main$20$B)
	.dwattr DW$51, DW_AT_high_pc(DW$L$_main$20$E)
	.dwendtag DW$50


DW$52	.dwtag  DW_TAG_loop
	.dwattr DW$52, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L4:1:1142200865")
	.dwattr DW$52, DW_AT_begin_file("realtime.c")
	.dwattr DW$52, DW_AT_begin_line(0x84)
	.dwattr DW$52, DW_AT_end_line(0x94)
DW$53	.dwtag  DW_TAG_loop_range
	.dwattr DW$53, DW_AT_low_pc(DW$L$_main$12$B)
	.dwattr DW$53, DW_AT_high_pc(DW$L$_main$12$E)
DW$54	.dwtag  DW_TAG_loop_range
	.dwattr DW$54, DW_AT_low_pc(DW$L$_main$13$B)
	.dwattr DW$54, DW_AT_high_pc(DW$L$_main$13$E)
DW$55	.dwtag  DW_TAG_loop_range
	.dwattr DW$55, DW_AT_low_pc(DW$L$_main$14$B)
	.dwattr DW$55, DW_AT_high_pc(DW$L$_main$14$E)
DW$56	.dwtag  DW_TAG_loop_range
	.dwattr DW$56, DW_AT_low_pc(DW$L$_main$18$B)
	.dwattr DW$56, DW_AT_high_pc(DW$L$_main$18$E)

DW$57	.dwtag  DW_TAG_loop
	.dwattr DW$57, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L5:2:1142200865")
	.dwattr DW$57, DW_AT_begin_file("realtime.c")
	.dwattr DW$57, DW_AT_begin_line(0x8b)
	.dwattr DW$57, DW_AT_end_line(0x93)
DW$58	.dwtag  DW_TAG_loop_range
	.dwattr DW$58, DW_AT_low_pc(DW$L$_main$15$B)
	.dwattr DW$58, DW_AT_high_pc(DW$L$_main$15$E)
DW$59	.dwtag  DW_TAG_loop_range
	.dwattr DW$59, DW_AT_low_pc(DW$L$_main$16$B)
	.dwattr DW$59, DW_AT_high_pc(DW$L$_main$16$E)
DW$60	.dwtag  DW_TAG_loop_range
	.dwattr DW$60, DW_AT_low_pc(DW$L$_main$17$B)
	.dwattr DW$60, DW_AT_high_pc(DW$L$_main$17$E)
	.dwendtag DW$57

	.dwendtag DW$52


DW$61	.dwtag  DW_TAG_loop
	.dwattr DW$61, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L3:1:1142200865")
	.dwattr DW$61, DW_AT_begin_file("realtime.c")
	.dwattr DW$61, DW_AT_begin_line(0x79)
	.dwattr DW$61, DW_AT_end_line(0x7f)
DW$62	.dwtag  DW_TAG_loop_range
	.dwattr DW$62, DW_AT_low_pc(DW$L$_main$9$B)
	.dwattr DW$62, DW_AT_high_pc(DW$L$_main$9$E)
DW$63	.dwtag  DW_TAG_loop_range
	.dwattr DW$63, DW_AT_low_pc(DW$L$_main$7$B)
	.dwattr DW$63, DW_AT_high_pc(DW$L$_main$7$E)
DW$64	.dwtag  DW_TAG_loop_range
	.dwattr DW$64, DW_AT_low_pc(DW$L$_main$8$B)
	.dwattr DW$64, DW_AT_high_pc(DW$L$_main$8$E)
	.dwendtag DW$61


DW$65	.dwtag  DW_TAG_loop
	.dwattr DW$65, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L1:1:1142200865")
	.dwattr DW$65, DW_AT_begin_file("realtime.c")
	.dwattr DW$65, DW_AT_begin_line(0x72)
	.dwattr DW$65, DW_AT_end_line(0x73)
DW$66	.dwtag  DW_TAG_loop_range
	.dwattr DW$66, DW_AT_low_pc(DW$L$_main$4$B)
	.dwattr DW$66, DW_AT_high_pc(DW$L$_main$4$E)
	.dwendtag DW$65

	.dwattr DW$42, DW_AT_end_file("realtime.c")
	.dwattr DW$42, DW_AT_end_line(0x9f)
	.dwattr DW$42, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$42

	.sect	".text"
	.global	_mandelinit

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("mandelinit"), DW_AT_symbol_name("_mandelinit")
	.dwattr DW$67, DW_AT_low_pc(_mandelinit)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("realtime.c")
	.dwattr DW$67, DW_AT_begin_line(0xa5)
	.dwattr DW$67, DW_AT_begin_column(0x06)
	.dwpsn	"realtime.c",166,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _mandelinit                                                 *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_mandelinit:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |166| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A10,*+SP(4)       ; |166| 
	.dwcfa	0x80, 10, 1
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("k"), DW_AT_symbol_name("_k")
	.dwattr DW$68, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_location[DW_OP_reg3]
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("j"), DW_AT_symbol_name("_j")
	.dwattr DW$69, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_location[DW_OP_reg4]
	.dwpsn	"realtime.c",169,3
           MVKL    .S1     __subf,A3         ; |169| 
           MVKH    .S1     __subf,A3         ; |169| 

           CALL    .S2X    A3                ; |169| 
||         LDW     .D2T2   *+DP(_xmin),B4    ; |169| 

           LDW     .D2T1   *+DP(_xmax),A4    ; |169| 
           ADDKPC  .S2     RL34,B3,3         ; |169| 
RL34:      ; CALL OCCURS {__subf}            ; |169| 
;** --------------------------------------------------------------------------*
           MVKL    .S1     _divsp,A3         ; |169| 
           MVKH    .S1     _divsp,A3         ; |169| 
           CALL    .S2X    A3                ; |169| 
           ZERO    .L1     A10               ; |169| 
           MVKH    .S1     0x43000000,A10    ; |169| 
           ADDKPC  .S2     RL35,B3,1         ; |169| 
           MV      .L2X    A10,B4            ; |169| 
RL35:      ; CALL OCCURS {_divsp}            ; |169| 
           STW     .D2T1   A4,*+DP(_xspan)   ; |169| 
	.dwpsn	"realtime.c",170,3
           MVKL    .S2     __subf,B5         ; |170| 
           MVKH    .S2     __subf,B5         ; |170| 

           CALL    .S2     B5                ; |170| 
||         LDW     .D2T1   *+DP(_ymax),A4    ; |170| 

           LDW     .D2T2   *+DP(_ymin),B4    ; |170| 
           ADDKPC  .S2     RL37,B3,3         ; |170| 
RL37:      ; CALL OCCURS {__subf}            ; |170| 
           MVKL    .S2     _divsp,B5         ; |170| 
           MVKH    .S2     _divsp,B5         ; |170| 
           CALL    .S2     B5                ; |170| 
           ADDKPC  .S2     RL38,B3,3         ; |170| 
           MV      .L2X    A10,B4            ; |170| 
RL38:      ; CALL OCCURS {_divsp}            ; |170| 
;** --------------------------------------------------------------------------*
           STW     .D2T1   A4,*+DP(_yspan)   ; |170| 
	.dwpsn	"realtime.c",175,7

           ZERO    .L1     A4                ; |175| 
||         ZERO    .D1     A5                ; |178| 
||         MVK     .S1     128,A7            ; |177| 

;** --------------------------------------------------------------------------*
;**   BEGIN LOOP L7
;** --------------------------------------------------------------------------*
L7:    
DW$L$_mandelinit$4$B:
	.dwpsn	"realtime.c",177,9
           ZERO    .L1     A3                ; |177| 
DW$L$_mandelinit$4$E:
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L8:    
DW$L$_mandelinit$5$B:
	.dwpsn	"realtime.c",178,5

           MVKL    .S2     _image,B4         ; |178| 
||         SHL     .S1     A4,9,A6           ; |178| 

           MVKH    .S2     _image,B4         ; |178| 
||         ADDAW   .D1     A6,A3,A6          ; |178| 

           ADD     .L1X    B4,A6,A6          ; |178| 
           STW     .D1T1   A5,*A6            ; |178| 
	.dwpsn	"realtime.c",177,18
           ADD     .L1     1,A3,A3           ; |177| 
           CMPLTU  .L1     A3,A7,A0          ; |177| 
   [ A0]   BNOP    .S1     L8,5              ; |177| 
           ; BRANCHCC OCCURS {L8}            ; |177| 
DW$L$_mandelinit$5$E:
;** --------------------------------------------------------------------------*
DW$L$_mandelinit$6$B:
	.dwpsn	"realtime.c",175,16

           ADD     .L1     1,A4,A4           ; |175| 
||         MVK     .S1     128,A3            ; |175| 

           CMPLTU  .L1     A4,A3,A0          ; |175| 
   [ A0]   BNOP    .S1     L7,5              ; |175| 
           ; BRANCHCC OCCURS {L7}            ; |175| 
DW$L$_mandelinit$6$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",180,1
           LDW     .D2T1   *+SP(4),A10       ; |180| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(8),B3       ; |180| 
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           NOP             4
           RETNOP  .S2     B3,5              ; |180| 
           ; BRANCH OCCURS {B3}              ; |180| 

DW$70	.dwtag  DW_TAG_loop
	.dwattr DW$70, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L7:1:1142200865")
	.dwattr DW$70, DW_AT_begin_file("realtime.c")
	.dwattr DW$70, DW_AT_begin_line(0xaf)
	.dwattr DW$70, DW_AT_end_line(0xb3)
DW$71	.dwtag  DW_TAG_loop_range
	.dwattr DW$71, DW_AT_low_pc(DW$L$_mandelinit$4$B)
	.dwattr DW$71, DW_AT_high_pc(DW$L$_mandelinit$4$E)
DW$72	.dwtag  DW_TAG_loop_range
	.dwattr DW$72, DW_AT_low_pc(DW$L$_mandelinit$6$B)
	.dwattr DW$72, DW_AT_high_pc(DW$L$_mandelinit$6$E)

DW$73	.dwtag  DW_TAG_loop
	.dwattr DW$73, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L8:2:1142200865")
	.dwattr DW$73, DW_AT_begin_file("realtime.c")
	.dwattr DW$73, DW_AT_begin_line(0xb1)
	.dwattr DW$73, DW_AT_end_line(0xb2)
DW$74	.dwtag  DW_TAG_loop_range
	.dwattr DW$74, DW_AT_low_pc(DW$L$_mandelinit$5$B)
	.dwattr DW$74, DW_AT_high_pc(DW$L$_mandelinit$5$E)
	.dwendtag DW$73

	.dwendtag DW$70

	.dwattr DW$67, DW_AT_end_file("realtime.c")
	.dwattr DW$67, DW_AT_end_line(0xb4)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$67

	.sect	".text"
	.global	_mandsub

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("mandsub"), DW_AT_symbol_name("_mandsub")
	.dwattr DW$75, DW_AT_low_pc(_mandsub)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("realtime.c")
	.dwattr DW$75, DW_AT_begin_line(0xbd)
	.dwattr DW$75, DW_AT_begin_column(0x08)
	.dwpsn	"realtime.c",190,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _mandsub                                                    *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,   *
;*                           A15,B0,B1,B2,B3,B4,B5,B6,B7,B8,B9,B10,B11,B12,   *
;*                           B13,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,  *
;*                           A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20,B21, *
;*                           B22,B23,B24,B25,B26,B27,B28,B29,B30,B31          *
;*   Local Frame Size  : 0 Args + 0 Auto + 44 Save = 44 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_mandsub:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19

           STW     .D2T1   A15,*SP--(48)     ; |190| 
||         MV      .L1X    SP,A31            ; |190| 

	.dwcfa	0x80, 15, 0
           STDW    .D2T2   B13:B12,*+SP(40)
	.dwcfa	0x80, 28, 1
	.dwcfa	0x80, 29, 2
           STDW    .D2T2   B11:B10,*+SP(32)
	.dwcfa	0x80, 26, 3
	.dwcfa	0x80, 27, 4
           STW     .D2T2   B3,*+SP(28)
	.dwcfa	0x80, 19, 5
           STW     .D1T1   A14,*-A31(24)
	.dwcfa	0x80, 14, 6
           STDW    .D1T1   A13:A12,*-A31(32)
	.dwcfa	0x80, 12, 7
	.dwcfa	0x80, 13, 8
           STDW    .D1T1   A11:A10,*-A31(40)
	.dwcfa	0x80, 10, 9
	.dwcfa	0x80, 11, 10
DW$76	.dwtag  DW_TAG_formal_parameter, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$76, DW_AT_type(*DW$T$111)
	.dwattr DW$76, DW_AT_location[DW_OP_reg4]
DW$77	.dwtag  DW_TAG_formal_parameter, DW_AT_name("imax"), DW_AT_symbol_name("_imax")
	.dwattr DW$77, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_location[DW_OP_reg20]
DW$78	.dwtag  DW_TAG_formal_parameter, DW_AT_name("sqthres"), DW_AT_symbol_name("_sqthres")
	.dwattr DW$78, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_location[DW_OP_reg6]
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("sqthres"), DW_AT_symbol_name("_sqthres")
	.dwattr DW$79, DW_AT_type(*DW$T$92)
	.dwattr DW$79, DW_AT_location[DW_OP_reg29]
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("imax"), DW_AT_symbol_name("_imax")
	.dwattr DW$80, DW_AT_type(*DW$T$92)
	.dwattr DW$80, DW_AT_location[DW_OP_reg10]
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$81, DW_AT_type(*DW$T$112)
	.dwattr DW$81, DW_AT_location[DW_OP_reg4]
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$82, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_location[DW_OP_reg11]
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("p1"), DW_AT_symbol_name("_p1")
	.dwattr DW$83, DW_AT_type(*DW$T$16)
	.dwattr DW$83, DW_AT_location[DW_OP_reg12]
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("p2"), DW_AT_symbol_name("_p2")
	.dwattr DW$84, DW_AT_type(*DW$T$16)
	.dwattr DW$84, DW_AT_location[DW_OP_reg27]
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("p3"), DW_AT_symbol_name("_p3")
	.dwattr DW$85, DW_AT_type(*DW$T$16)
	.dwattr DW$85, DW_AT_location[DW_OP_reg14]
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("CSU"), DW_AT_symbol_name("CSU$c$I")
	.dwattr DW$86, DW_AT_type(*DW$T$16)
	.dwattr DW$86, DW_AT_location[DW_OP_reg28]
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("CSU"), DW_AT_symbol_name("CSU$c$R")
	.dwattr DW$87, DW_AT_type(*DW$T$16)
	.dwattr DW$87, DW_AT_location[DW_OP_reg26]
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("CSU"), DW_AT_symbol_name("CSU$z$I")
	.dwattr DW$88, DW_AT_type(*DW$T$16)
	.dwattr DW$88, DW_AT_location[DW_OP_reg14]
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("CSU"), DW_AT_symbol_name("CSU$z$R")
	.dwattr DW$89, DW_AT_type(*DW$T$16)
	.dwattr DW$89, DW_AT_location[DW_OP_reg13]
           LDW     .D1T2   *A4,B10           ; |190| 
           LDW     .D1T2   *+A4(4),B12       ; |190| 

           MV      .L1X    B4,A10            ; |190| 
||         MV      .L2X    A6,B13            ; |190| 

	.dwpsn	"realtime.c",191,10
           ZERO    .L1     A11               ; |191| 
	.dwpsn	"realtime.c",193,9

           ZERO    .L1     A12               ; |193| 
||         ZERO    .L2     B11               ; |193| 

	.dwpsn	"realtime.c",195,11
           MV      .L1X    B10,A13           ; |195| 
           MV      .L1X    B12,A14           ; |195| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L9:    
DW$L$_mandsub$2$B:
	.dwpsn	"realtime.c",197,9
           MVKL    .S1     _addsp,A3         ; |197| 
           MVKH    .S1     _addsp,A3         ; |197| 
           CALL    .S2X    A3                ; |197| 
           ADDKPC  .S2     RL42,B3,2         ; |197| 
           MV      .L2     B11,B4            ; |197| 
           MV      .L1     A12,A4            ; |197| 
RL42:      ; CALL OCCURS {_addsp}            ; |197| 
DW$L$_mandsub$2$E:
;** --------------------------------------------------------------------------*
DW$L$_mandsub$3$B:
           MVKL    .S2     __fltuf,B4        ; |197| 
           MVKH    .S2     __fltuf,B4        ; |197| 
           CALL    .S2     B4                ; |197| 
           ADDKPC  .S2     RL43,B3,2         ; |197| 
           MV      .S1     A4,A12            ; |197| 
           MV      .L1X    B13,A4            ; |197| 
RL43:      ; CALL OCCURS {__fltuf}           ; |197| 
           MVKL    .S1     __cmpf,A3         ; |197| 
           MVKH    .S1     __cmpf,A3         ; |197| 
           CALL    .S2X    A3                ; |197| 
           MV      .L2X    A4,B4             ; |197| 
           ADDKPC  .S2     RL44,B3,2         ; |197| 
           MV      .L1     A12,A4            ; |197| 
RL44:      ; CALL OCCURS {__cmpf}            ; |197| 
DW$L$_mandsub$3$E:
;** --------------------------------------------------------------------------*
DW$L$_mandsub$4$B:

           CMPLT   .L1     A4,0,A0           ; |197| 
||         ZERO    .L2     B4                ; |197| 

   [!A0]   MVK     .L2     0x1,B4            ; |197| 
||         CMPLTU  .L1     A11,A10,A3        ; |197| 

           MV      .L1X    B4,A0             ; |197| 
   [!A0]   XOR     .L2X    1,A3,B4           ; |197| 
           MV      .L1X    B4,A0             ; |197| 
	.dwpsn	"realtime.c",220,3

   [ A0]   BNOP    .S1     L10,5             ; |220| 
|| [ A0]   MV      .L1     A11,A15           ; |220| 

           ; BRANCHCC OCCURS {L10}           ; |220| 
DW$L$_mandsub$4$E:
;** --------------------------------------------------------------------------*
DW$L$_mandsub$5$B:
	.dwpsn	"realtime.c",199,5
           MVKL    .S1     _mpysp,A3         ; |199| 
           MVKH    .S1     _mpysp,A3         ; |199| 
           CALL    .S2X    A3                ; |199| 
           ADDKPC  .S2     RL45,B3,2         ; |199| 
           MV      .L1     A13,A4            ; |199| 
           MV      .L2X    A13,B4            ; |199| 
RL45:      ; CALL OCCURS {_mpysp}            ; |199| 
DW$L$_mandsub$5$E:
;** --------------------------------------------------------------------------*
DW$L$_mandsub$6$B:
           MV      .L1     A4,A12            ; |199| 
	.dwpsn	"realtime.c",200,5
           MVKL    .S1     _mpysp,A3         ; |200| 
           MVKH    .S1     _mpysp,A3         ; |200| 
           CALL    .S2X    A3                ; |200| 
           ADDKPC  .S2     RL46,B3,2         ; |200| 
           MV      .L1     A14,A4            ; |200| 
           MV      .L2X    A14,B4            ; |200| 
RL46:      ; CALL OCCURS {_mpysp}            ; |200| 
           MV      .L2X    A4,B11            ; |200| 
	.dwpsn	"realtime.c",201,5
           MVKL    .S1     _mpysp,A3         ; |201| 
           MVKH    .S1     _mpysp,A3         ; |201| 
           CALL    .S2X    A3                ; |201| 
           ADDKPC  .S2     RL47,B3,2         ; |201| 
           MV      .L1     A13,A4            ; |201| 
           MV      .L2X    A14,B4            ; |201| 
RL47:      ; CALL OCCURS {_mpysp}            ; |201| 
	.dwpsn	"realtime.c",202,2
           MVKL    .S2     _mpysp,B5         ; |202| 
           MVKH    .S2     _mpysp,B5         ; |202| 
           CALL    .S2     B5                ; |202| 
           ZERO    .L1     A3                ; |202| 
           MVKH    .S1     0x40000000,A3     ; |202| 
           ADDKPC  .S2     RL48,B3,1         ; |202| 
           MV      .L2X    A3,B4             ; |202| 
RL48:      ; CALL OCCURS {_mpysp}            ; |202| 
           MV      .L1     A4,A14            ; |202| 
	.dwpsn	"realtime.c",204,5
           MVKL    .S1     __subf,A3         ; |204| 
           MVKH    .S1     __subf,A3         ; |204| 
           CALL    .S2X    A3                ; |204| 
           ADDKPC  .S2     RL50,B3,2         ; |204| 
           MV      .L1     A12,A4            ; |204| 
           MV      .L2     B11,B4            ; |204| 
RL50:      ; CALL OCCURS {__subf}            ; |204| 
           MVKL    .S1     _addsp,A3         ; |204| 
           MVKH    .S1     _addsp,A3         ; |204| 
           CALL    .S2X    A3                ; |204| 
           MV      .L2     B10,B4            ; |204| 
           ADDKPC  .S2     RL51,B3,3         ; |204| 
RL51:      ; CALL OCCURS {_addsp}            ; |204| 
           MV      .L1     A4,A13            ; |204| 
	.dwpsn	"realtime.c",205,5
           MVKL    .S2     _addsp,B5         ; |205| 
           MVKH    .S2     _addsp,B5         ; |205| 
           CALL    .S2     B5                ; |205| 
           ADDKPC  .S2     RL52,B3,2         ; |205| 
           MV      .L1     A14,A4            ; |205| 
           MV      .L2     B12,B4            ; |205| 
RL52:      ; CALL OCCURS {_addsp}            ; |205| 
DW$L$_mandsub$6$E:
;** --------------------------------------------------------------------------*
DW$L$_mandsub$7$B:
           MV      .L1     A4,A14            ; |205| 
	.dwpsn	"realtime.c",206,5
           BNOP    .S1     L9,4              ; |206| 
           ADD     .L1     1,A11,A11         ; |206| 
           ; BRANCH OCCURS {L9}              ; |206| 
DW$L$_mandsub$7$E:
;** --------------------------------------------------------------------------*
L10:    
	.dwpsn	"realtime.c",221,1

           MV      .L1X    SP,A31            ; |221| 
||         LDDW    .D2T2   *+SP(40),B13:B12  ; |221| 
||         MV      .S1     A15,A4            ; |206| 

	.dwcfa	0xc0, 28
	.dwcfa	0xc0, 29
           LDDW    .D2T2   *+SP(32),B11:B10  ; |221| 
	.dwcfa	0xc0, 26
	.dwcfa	0xc0, 27
           LDW     .D2T2   *+SP(28),B3       ; |221| 
	.dwcfa	0xc0, 19
           LDW     .D1T1   *+A31(24),A14     ; |221| 
	.dwcfa	0xc0, 14
           LDDW    .D1T1   *+A31(16),A13:A12 ; |221| 
	.dwcfa	0xc0, 12
	.dwcfa	0xc0, 13
           LDDW    .D1T1   *+A31(8),A11:A10  ; |221| 
	.dwcfa	0xc0, 10
	.dwcfa	0xc0, 11
           LDW     .D2T1   *++SP(48),A15     ; |221| 
	.dwcfa	0xc0, 15
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |221| 
           ; BRANCH OCCURS {B3}              ; |221| 

DW$90	.dwtag  DW_TAG_loop
	.dwattr DW$90, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L9:1:1142200865")
	.dwattr DW$90, DW_AT_begin_file("realtime.c")
	.dwattr DW$90, DW_AT_begin_line(0xc5)
	.dwattr DW$90, DW_AT_end_line(0xcf)
DW$91	.dwtag  DW_TAG_loop_range
	.dwattr DW$91, DW_AT_low_pc(DW$L$_mandsub$2$B)
	.dwattr DW$91, DW_AT_high_pc(DW$L$_mandsub$2$E)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_mandsub$3$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_mandsub$3$E)
DW$93	.dwtag  DW_TAG_loop_range
	.dwattr DW$93, DW_AT_low_pc(DW$L$_mandsub$4$B)
	.dwattr DW$93, DW_AT_high_pc(DW$L$_mandsub$4$E)
DW$94	.dwtag  DW_TAG_loop_range
	.dwattr DW$94, DW_AT_low_pc(DW$L$_mandsub$5$B)
	.dwattr DW$94, DW_AT_high_pc(DW$L$_mandsub$5$E)
DW$95	.dwtag  DW_TAG_loop_range
	.dwattr DW$95, DW_AT_low_pc(DW$L$_mandsub$6$B)
	.dwattr DW$95, DW_AT_high_pc(DW$L$_mandsub$6$E)
DW$96	.dwtag  DW_TAG_loop_range
	.dwattr DW$96, DW_AT_low_pc(DW$L$_mandsub$7$B)
	.dwattr DW$96, DW_AT_high_pc(DW$L$_mandsub$7$E)
	.dwendtag DW$90

	.dwattr DW$75, DW_AT_end_file("realtime.c")
	.dwattr DW$75, DW_AT_end_line(0xdd)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$75

	.sect	".text"
	.global	_InputData

DW$97	.dwtag  DW_TAG_subprogram, DW_AT_name("InputData"), DW_AT_symbol_name("_InputData")
	.dwattr DW$97, DW_AT_low_pc(_InputData)
	.dwattr DW$97, DW_AT_high_pc(0x00)
	.dwattr DW$97, DW_AT_begin_file("realtime.c")
	.dwattr DW$97, DW_AT_begin_line(0xe5)
	.dwattr DW$97, DW_AT_begin_column(0x07)
	.dwpsn	"realtime.c",230,1

	.dwfde DW$CIE
DW$98	.dwtag  DW_TAG_variable, DW_AT_name("Seed"), DW_AT_symbol_name("_Seed$2")
	.dwattr DW$98, DW_AT_type(*DW$T$45)
	.dwattr DW$98, DW_AT_location[DW_OP_addr _Seed$2]

;******************************************************************************
;* FUNCTION NAME: _InputData                                                  *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 4 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_InputData:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |230| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
	.dwpsn	"realtime.c",232,5
           MVKL    .S2     _PseudoRand16,B4  ; |232| 
           MVKH    .S2     _PseudoRand16,B4  ; |232| 
           CALL    .S2     B4                ; |232| 
           MVK     .S1     (_Seed$2-$bss),A3 ; |232| 
           ADDKPC  .S2     RL53,B3,2         ; |232| 
           ADD     .L1X    DP,A3,A4          ; |232| 
RL53:      ; CALL OCCURS {_PseudoRand16}     ; |232| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",233,1
           LDW     .D2T2   *++SP(8),B3       ; |233| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |233| 
           ; BRANCH OCCURS {B3}              ; |233| 
	.dwattr DW$97, DW_AT_end_file("realtime.c")
	.dwattr DW$97, DW_AT_end_line(0xe9)
	.dwattr DW$97, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$97

	.sect	".text"
	.global	_OutputData

DW$99	.dwtag  DW_TAG_subprogram, DW_AT_name("OutputData"), DW_AT_symbol_name("_OutputData")
	.dwattr DW$99, DW_AT_low_pc(_OutputData)
	.dwattr DW$99, DW_AT_high_pc(0x00)
	.dwattr DW$99, DW_AT_begin_file("realtime.c")
	.dwattr DW$99, DW_AT_begin_line(0xf4)
	.dwattr DW$99, DW_AT_begin_column(0x06)
	.dwpsn	"realtime.c",245,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _OutputData                                                 *
;*                                                                            *
;*   Regs Modified     : B4                                                   *
;*   Regs Used         : A4,B3,B4,DP                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_OutputData:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$100, DW_AT_type(*DW$T$45)
	.dwattr DW$100, DW_AT_location[DW_OP_reg4]
DW$101	.dwtag  DW_TAG_variable, DW_AT_name("Data"), DW_AT_symbol_name("_Data")
	.dwattr DW$101, DW_AT_type(*DW$T$52)
	.dwattr DW$101, DW_AT_location[DW_OP_reg4]
	.dwpsn	"realtime.c",246,5
           LDW     .D2T2   *+DP(_OutputDataPtr),B4 ; |246| 
           NOP             4
           STH     .D2T1   A4,*B4            ; |246| 
	.dwpsn	"realtime.c",247,1
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |247| 
           ; BRANCH OCCURS {B3}              ; |247| 
	.dwattr DW$99, DW_AT_end_file("realtime.c")
	.dwattr DW$99, DW_AT_end_line(0xf7)
	.dwattr DW$99, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$99

	.sect	".text"
	.global	_Fir32

DW$102	.dwtag  DW_TAG_subprogram, DW_AT_name("Fir32"), DW_AT_symbol_name("_Fir32")
	.dwattr DW$102, DW_AT_low_pc(_Fir32)
	.dwattr DW$102, DW_AT_high_pc(0x00)
	.dwattr DW$102, DW_AT_begin_file("realtime.c")
	.dwattr DW$102, DW_AT_begin_line(0x101)
	.dwattr DW$102, DW_AT_begin_column(0x07)
	.dwpsn	"realtime.c",258,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _Fir32                                                      *
;*                                                                            *
;*   Regs Modified     : A0,A3,A4,A5,A6,A7,A8                                 *
;*   Regs Used         : A0,A3,A4,A5,A6,A7,A8,B3,B4                           *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_Fir32:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$103, DW_AT_type(*DW$T$50)
	.dwattr DW$103, DW_AT_location[DW_OP_reg4]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("coeff"), DW_AT_symbol_name("_coeff")
	.dwattr DW$104, DW_AT_type(*DW$T$53)
	.dwattr DW$104, DW_AT_location[DW_OP_reg20]
DW$105	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$105, DW_AT_type(*DW$T$10)
	.dwattr DW$105, DW_AT_location[DW_OP_reg5]
DW$106	.dwtag  DW_TAG_variable, DW_AT_name("sum"), DW_AT_symbol_name("_sum")
	.dwattr DW$106, DW_AT_type(*DW$T$79)
	.dwattr DW$106, DW_AT_location[DW_OP_reg4]
DW$107	.dwtag  DW_TAG_variable, DW_AT_name("x"), DW_AT_symbol_name("_x")
	.dwattr DW$107, DW_AT_type(*DW$T$51)
	.dwattr DW$107, DW_AT_location[DW_OP_reg3]
DW$108	.dwtag  DW_TAG_variable, DW_AT_name("coeff"), DW_AT_symbol_name("_coeff")
	.dwattr DW$108, DW_AT_type(*DW$T$54)
	.dwattr DW$108, DW_AT_location[DW_OP_reg7]

           MV      .L1     A4,A3             ; |258| 
||         MV      .S1X    B4,A7             ; |258| 

	.dwpsn	"realtime.c",263,5
           LDH     .D1T1   *+A3(30),A5       ; |263| 
           LDH     .D1T1   *+A7(30),A4       ; |263| 
           NOP             4
           MPY     .M1     A5,A4,A4          ; |263| 
           NOP             1
           SHR     .S1     A4,4,A4           ; |263| 
	.dwpsn	"realtime.c",264,10
           MVK     .L1     0xe,A5            ; |264| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L11:    
DW$L$_Fir32$2$B:
	.dwpsn	"realtime.c",266,9
           LDH     .D1T1   *+A7[A5],A6       ; |266| 
           LDH     .D1T1   *+A3[A5],A8       ; |266| 
           NOP             4
           MPY     .M1     A8,A6,A6          ; |266| 
           NOP             1
           SHR     .S1     A6,4,A6           ; |266| 
           ADD     .L1     A6,A4,A4          ; |266| 
	.dwpsn	"realtime.c",267,9
           ADDAH   .D1     A3,A5,A6          ; |267| 
           STH     .D1T1   A8,*+A6(2)        ; |267| 
	.dwpsn	"realtime.c",264,24

           CMPLT   .L1     A5,1,A0           ; |264| 
||         SUB     .S1     A5,1,A5           ; |264| 

   [!A0]   BNOP    .S1     L11,5             ; |264| 
           ; BRANCHCC OCCURS {L11}           ; |264| 
DW$L$_Fir32$2$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",269,5
	.dwpsn	"realtime.c",270,1
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |270| 
           ; BRANCH OCCURS {B3}              ; |270| 

DW$109	.dwtag  DW_TAG_loop
	.dwattr DW$109, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L11:1:1142200865")
	.dwattr DW$109, DW_AT_begin_file("realtime.c")
	.dwattr DW$109, DW_AT_begin_line(0x108)
	.dwattr DW$109, DW_AT_end_line(0x10c)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_Fir32$2$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_Fir32$2$E)
	.dwendtag DW$109

	.dwattr DW$102, DW_AT_end_file("realtime.c")
	.dwattr DW$102, DW_AT_end_line(0x10e)
	.dwattr DW$102, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$102

	.sect	".text"
	.global	_PseudoRand16

DW$111	.dwtag  DW_TAG_subprogram, DW_AT_name("PseudoRand16"), DW_AT_symbol_name("_PseudoRand16")
	.dwattr DW$111, DW_AT_low_pc(_PseudoRand16)
	.dwattr DW$111, DW_AT_high_pc(0x00)
	.dwattr DW$111, DW_AT_begin_file("realtime.c")
	.dwattr DW$111, DW_AT_begin_line(0x11e)
	.dwattr DW$111, DW_AT_begin_column(0x07)
	.dwpsn	"realtime.c",287,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _PseudoRand16                                               *
;*                                                                            *
;*   Regs Modified     : A3,A4,A5                                             *
;*   Regs Used         : A3,A4,A5,B3                                          *
;*   Local Frame Size  : 0 Args + 0 Auto + 0 Save = 0 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_PseudoRand16:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
DW$112	.dwtag  DW_TAG_formal_parameter, DW_AT_name("Seed"), DW_AT_symbol_name("_Seed")
	.dwattr DW$112, DW_AT_type(*DW$T$50)
	.dwattr DW$112, DW_AT_location[DW_OP_reg4]
DW$113	.dwtag  DW_TAG_variable, DW_AT_name("Seed"), DW_AT_symbol_name("_Seed")
	.dwattr DW$113, DW_AT_type(*DW$T$51)
	.dwattr DW$113, DW_AT_location[DW_OP_reg4]
	.dwpsn	"realtime.c",288,5
           LDH     .D1T1   *A4,A3            ; |288| 
           NOP             3
           MVK     .S1     31821,A5          ; |288| 
           MPY     .M1     A3,A5,A3          ; |288| 
           NOP             1
           ADDK    .S1     13849,A3          ; |288| 

           EXT     .S1     A3,16,16,A4       ; |288| 
||         STH     .D1T1   A3,*A4            ; |288| 

	.dwpsn	"realtime.c",289,5
	.dwpsn	"realtime.c",290,1
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |290| 
           ; BRANCH OCCURS {B3}              ; |290| 
	.dwattr DW$111, DW_AT_end_file("realtime.c")
	.dwattr DW$111, DW_AT_end_line(0x122)
	.dwattr DW$111, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$111

	.sect	".text"
	.global	_PerformIsr1

DW$114	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr1"), DW_AT_symbol_name("_PerformIsr1")
	.dwattr DW$114, DW_AT_low_pc(_PerformIsr1)
	.dwattr DW$114, DW_AT_high_pc(0x00)
	.dwattr DW$114, DW_AT_begin_file("realtime.c")
	.dwattr DW$114, DW_AT_begin_line(0x12b)
	.dwattr DW$114, DW_AT_begin_column(0x10)
	.dwpsn	"realtime.c",300,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _PerformIsr1                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 212 Save = 212 byte                *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_PerformIsr1:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           ADDK    .S2     -216,SP           ; |300| 
	.dwcfa	0x0e, 216
           STW     .D2T2   B31,*+SP(216)     ; |300| 
	.dwcfa	0x80, 68, 0
           STDW    .D2T2   B29:B28,*+SP(208) ; |300| 
	.dwcfa	0x80, 65, 1
	.dwcfa	0x80, 66, 2
           STDW    .D2T2   B27:B26,*+SP(200) ; |300| 
	.dwcfa	0x80, 63, 3
	.dwcfa	0x80, 64, 4
           STDW    .D2T2   B25:B24,*+SP(192) ; |300| 
	.dwcfa	0x80, 61, 5
	.dwcfa	0x80, 62, 6
           STDW    .D2T2   B23:B22,*+SP(184) ; |300| 
	.dwcfa	0x80, 59, 7
	.dwcfa	0x80, 60, 8
           STDW    .D2T2   B21:B20,*+SP(176) ; |300| 
	.dwcfa	0x80, 57, 9
	.dwcfa	0x80, 58, 10
           STDW    .D2T2   B19:B18,*+SP(168) ; |300| 
	.dwcfa	0x80, 55, 11
	.dwcfa	0x80, 56, 12
           STDW    .D2T2   B17:B16,*+SP(160) ; |300| 
	.dwcfa	0x80, 53, 13
	.dwcfa	0x80, 54, 14
           STW     .D2T2   B30,*+SP(156)     ; |300| 
	.dwcfa	0x80, 67, 15
           STW     .D2T1   A31,*+SP(152)     ; |300| 
	.dwcfa	0x80, 52, 16
           STDW    .D2T1   A29:A28,*+SP(144) ; |300| 
	.dwcfa	0x80, 49, 17
	.dwcfa	0x80, 50, 18
           STDW    .D2T1   A27:A26,*+SP(136) ; |300| 
	.dwcfa	0x80, 47, 19
	.dwcfa	0x80, 48, 20
           STDW    .D2T1   A25:A24,*+SP(128) ; |300| 
	.dwcfa	0x80, 45, 21
	.dwcfa	0x80, 46, 22
           STDW    .D2T1   A23:A22,*+SP(120) ; |300| 
	.dwcfa	0x80, 43, 23
	.dwcfa	0x80, 44, 24
           STDW    .D2T1   A21:A20,*+SP(112) ; |300| 
	.dwcfa	0x80, 41, 25
	.dwcfa	0x80, 42, 26
           STDW    .D2T1   A19:A18,*+SP(104) ; |300| 
	.dwcfa	0x80, 39, 27
	.dwcfa	0x80, 40, 28
           STDW    .D2T1   A17:A16,*+SP(96)  ; |300| 
	.dwcfa	0x80, 37, 29
	.dwcfa	0x80, 38, 30
           STW     .D2T1   A30,*+SP(92)      ; |300| 
	.dwcfa	0x80, 51, 31
           STW     .D2T2   B9,*+SP(88)       ; |300| 
	.dwcfa	0x80, 25, 32
           STDW    .D2T2   B7:B6,*+SP(80)    ; |300| 
	.dwcfa	0x80, 22, 33
	.dwcfa	0x80, 23, 34
           STDW    .D2T2   B5:B4,*+SP(72)    ; |300| 
	.dwcfa	0x80, 20, 35
	.dwcfa	0x80, 21, 36
           STDW    .D2T2   B3:B2,*+SP(64)    ; |300| 
	.dwcfa	0x80, 18, 37
	.dwcfa	0x80, 19, 38
           STDW    .D2T2   B1:B0,*+SP(56)    ; |300| 
	.dwcfa	0x80, 16, 39
	.dwcfa	0x80, 17, 40
           STW     .D2T2   B8,*+SP(52)       ; |300| 
	.dwcfa	0x80, 24, 41
           STW     .D2T1   A9,*+SP(48)       ; |300| 
	.dwcfa	0x80, 9, 42
           STDW    .D2T1   A7:A6,*+SP(40)    ; |300| 
	.dwcfa	0x80, 6, 43
	.dwcfa	0x80, 7, 44
           STDW    .D2T1   A5:A4,*+SP(32)    ; |300| 
	.dwcfa	0x80, 4, 45
	.dwcfa	0x80, 5, 46
           STDW    .D2T1   A3:A2,*+SP(24)    ; |300| 
	.dwcfa	0x80, 2, 47
	.dwcfa	0x80, 3, 48
           STDW    .D2T1   A1:A0,*+SP(16)    ; |300| 
	.dwcfa	0x80, 0, 49
	.dwcfa	0x80, 1, 50
           STW     .D2T1   A8,*+SP(12)       ; |300| 
	.dwcfa	0x80, 8, 51
	.dwpsn	"realtime.c",301,5
           MVK     .L2     1,B4              ; |301| 
           STW     .D2T2   B4,*+DP(_WhatIsrActive) ; |301| 
	.dwpsn	"realtime.c",303,5
           LDW     .D2T2   *+DP(_Isr0),B4    ; |303| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |303| 
           STW     .D2T2   B4,*+DP(_Isr0)    ; |303| 
	.dwpsn	"realtime.c",304,5
           LDW     .D2T2   *+DP(_Isr0),B4    ; |304| 
           NOP             4
           AND     .L2     7,B4,B0           ; |304| 
   [ B0]   BNOP    .S1     L12,5             ; |304| 
           ; BRANCHCC OCCURS {L12}           ; |304| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",305,9
           MVKL    .S1     _TakeALongTime,A3 ; |305| 
           MVKH    .S1     _TakeALongTime,A3 ; |305| 
           CALL    .S2X    A3                ; |305| 
           ADDKPC  .S2     RL54,B3,4         ; |305| 
RL54:      ; CALL OCCURS {_TakeALongTime}    ; |305| 
;** --------------------------------------------------------------------------*
L12:    
	.dwpsn	"realtime.c",306,5
           ZERO    .L2     B4                ; |306| 
           STW     .D2T2   B4,*+DP(_WhatIsrActive) ; |306| 
	.dwpsn	"realtime.c",307,5
           LDW     .D2T2   *+DP(_timer0value),B4 ; |307| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |307| 
           STW     .D2T2   B4,*+DP(_timer0value) ; |307| 
	.dwpsn	"realtime.c",308,1
           LDDW    .D2T2   *+SP(208),B29:B28 ; |308| 
	.dwcfa	0xc0, 65
	.dwcfa	0xc0, 66
           LDDW    .D2T2   *+SP(200),B27:B26 ; |308| 
	.dwcfa	0xc0, 63
	.dwcfa	0xc0, 64
           LDDW    .D2T2   *+SP(192),B25:B24 ; |308| 
	.dwcfa	0xc0, 61
	.dwcfa	0xc0, 62
           LDDW    .D2T2   *+SP(184),B23:B22 ; |308| 
	.dwcfa	0xc0, 59
	.dwcfa	0xc0, 60
           LDDW    .D2T2   *+SP(176),B21:B20 ; |308| 
	.dwcfa	0xc0, 57
	.dwcfa	0xc0, 58
           LDDW    .D2T2   *+SP(168),B19:B18 ; |308| 
	.dwcfa	0xc0, 55
	.dwcfa	0xc0, 56
           LDDW    .D2T2   *+SP(160),B17:B16 ; |308| 
	.dwcfa	0xc0, 53
	.dwcfa	0xc0, 54
           LDW     .D2T2   *+SP(156),B30     ; |308| 
	.dwcfa	0xc0, 67
           LDW     .D2T1   *+SP(152),A31     ; |308| 
	.dwcfa	0xc0, 52
           LDDW    .D2T1   *+SP(144),A29:A28 ; |308| 
	.dwcfa	0xc0, 49
	.dwcfa	0xc0, 50
           LDDW    .D2T1   *+SP(136),A27:A26 ; |308| 
	.dwcfa	0xc0, 47
	.dwcfa	0xc0, 48
           LDDW    .D2T1   *+SP(128),A25:A24 ; |308| 
	.dwcfa	0xc0, 45
	.dwcfa	0xc0, 46
           LDDW    .D2T1   *+SP(120),A23:A22 ; |308| 
	.dwcfa	0xc0, 43
	.dwcfa	0xc0, 44
           LDDW    .D2T1   *+SP(112),A21:A20 ; |308| 
	.dwcfa	0xc0, 41
	.dwcfa	0xc0, 42
           LDDW    .D2T1   *+SP(104),A19:A18 ; |308| 
	.dwcfa	0xc0, 39
	.dwcfa	0xc0, 40
           LDDW    .D2T1   *+SP(96),A17:A16  ; |308| 
	.dwcfa	0xc0, 37
	.dwcfa	0xc0, 38
           LDW     .D2T1   *+SP(92),A30      ; |308| 
	.dwcfa	0xc0, 51
           LDW     .D2T2   *+SP(88),B9       ; |308| 
	.dwcfa	0xc0, 25
           LDDW    .D2T2   *+SP(80),B7:B6    ; |308| 
	.dwcfa	0xc0, 22
	.dwcfa	0xc0, 23
           LDDW    .D2T2   *+SP(72),B5:B4    ; |308| 
	.dwcfa	0xc0, 20
	.dwcfa	0xc0, 21
           LDDW    .D2T2   *+SP(64),B3:B2    ; |308| 
	.dwcfa	0xc0, 18
	.dwcfa	0xc0, 19
           LDDW    .D2T2   *+SP(56),B1:B0    ; |308| 
	.dwcfa	0xc0, 16
	.dwcfa	0xc0, 17
           LDW     .D2T2   *+SP(52),B8       ; |308| 
	.dwcfa	0xc0, 24
           LDW     .D2T1   *+SP(48),A9       ; |308| 
	.dwcfa	0xc0, 9
           LDDW    .D2T1   *+SP(40),A7:A6    ; |308| 
	.dwcfa	0xc0, 6
	.dwcfa	0xc0, 7
           LDDW    .D2T1   *+SP(32),A5:A4    ; |308| 
	.dwcfa	0xc0, 4
	.dwcfa	0xc0, 5
           LDDW    .D2T1   *+SP(24),A3:A2    ; |308| 
	.dwcfa	0xc0, 2
	.dwcfa	0xc0, 3
           LDDW    .D2T1   *+SP(16),A1:A0    ; |308| 
	.dwcfa	0xc0, 0
	.dwcfa	0xc0, 1
           LDW     .D2T1   *+SP(12),A8       ; |308| 
	.dwcfa	0xc0, 8
           LDW     .D2T2   *+SP(216),B31     ; |308| 
	.dwcfa	0xc0, 68
           ADDK    .S2     216,SP            ; |308| 
	.dwcfa	0x0e, 0
           RET     .S2     IRP               ; |308| 
           NOP             5
           ; BRANCH OCCURS {IRP}             ; |308| 
	.dwattr DW$114, DW_AT_end_file("realtime.c")
	.dwattr DW$114, DW_AT_end_line(0x134)
	.dwattr DW$114, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$114

	.sect	".text"
	.global	_PerformIsr2

DW$115	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr2"), DW_AT_symbol_name("_PerformIsr2")
	.dwattr DW$115, DW_AT_low_pc(_PerformIsr2)
	.dwattr DW$115, DW_AT_high_pc(0x00)
	.dwattr DW$115, DW_AT_begin_file("realtime.c")
	.dwattr DW$115, DW_AT_begin_line(0x13f)
	.dwattr DW$115, DW_AT_begin_column(0x10)
	.dwpsn	"realtime.c",320,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _PerformIsr2                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 212 Save = 212 byte                *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_PerformIsr2:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           ADDK    .S2     -216,SP           ; |320| 
	.dwcfa	0x0e, 216
           STW     .D2T2   B31,*+SP(216)     ; |320| 
	.dwcfa	0x80, 68, 0
           STDW    .D2T2   B29:B28,*+SP(208) ; |320| 
	.dwcfa	0x80, 65, 1
	.dwcfa	0x80, 66, 2
           STDW    .D2T2   B27:B26,*+SP(200) ; |320| 
	.dwcfa	0x80, 63, 3
	.dwcfa	0x80, 64, 4
           STDW    .D2T2   B25:B24,*+SP(192) ; |320| 
	.dwcfa	0x80, 61, 5
	.dwcfa	0x80, 62, 6
           STDW    .D2T2   B23:B22,*+SP(184) ; |320| 
	.dwcfa	0x80, 59, 7
	.dwcfa	0x80, 60, 8
           STDW    .D2T2   B21:B20,*+SP(176) ; |320| 
	.dwcfa	0x80, 57, 9
	.dwcfa	0x80, 58, 10
           STDW    .D2T2   B19:B18,*+SP(168) ; |320| 
	.dwcfa	0x80, 55, 11
	.dwcfa	0x80, 56, 12
           STDW    .D2T2   B17:B16,*+SP(160) ; |320| 
	.dwcfa	0x80, 53, 13
	.dwcfa	0x80, 54, 14
           STW     .D2T2   B30,*+SP(156)     ; |320| 
	.dwcfa	0x80, 67, 15
           STW     .D2T1   A31,*+SP(152)     ; |320| 
	.dwcfa	0x80, 52, 16
           STDW    .D2T1   A29:A28,*+SP(144) ; |320| 
	.dwcfa	0x80, 49, 17
	.dwcfa	0x80, 50, 18
           STDW    .D2T1   A27:A26,*+SP(136) ; |320| 
	.dwcfa	0x80, 47, 19
	.dwcfa	0x80, 48, 20
           STDW    .D2T1   A25:A24,*+SP(128) ; |320| 
	.dwcfa	0x80, 45, 21
	.dwcfa	0x80, 46, 22
           STDW    .D2T1   A23:A22,*+SP(120) ; |320| 
	.dwcfa	0x80, 43, 23
	.dwcfa	0x80, 44, 24
           STDW    .D2T1   A21:A20,*+SP(112) ; |320| 
	.dwcfa	0x80, 41, 25
	.dwcfa	0x80, 42, 26
           STDW    .D2T1   A19:A18,*+SP(104) ; |320| 
	.dwcfa	0x80, 39, 27
	.dwcfa	0x80, 40, 28
           STDW    .D2T1   A17:A16,*+SP(96)  ; |320| 
	.dwcfa	0x80, 37, 29
	.dwcfa	0x80, 38, 30
           STW     .D2T1   A30,*+SP(92)      ; |320| 
	.dwcfa	0x80, 51, 31
           STW     .D2T2   B9,*+SP(88)       ; |320| 
	.dwcfa	0x80, 25, 32
           STDW    .D2T2   B7:B6,*+SP(80)    ; |320| 
	.dwcfa	0x80, 22, 33
	.dwcfa	0x80, 23, 34
           STDW    .D2T2   B5:B4,*+SP(72)    ; |320| 
	.dwcfa	0x80, 20, 35
	.dwcfa	0x80, 21, 36
           STDW    .D2T2   B3:B2,*+SP(64)    ; |320| 
	.dwcfa	0x80, 18, 37
	.dwcfa	0x80, 19, 38
           STDW    .D2T2   B1:B0,*+SP(56)    ; |320| 
	.dwcfa	0x80, 16, 39
	.dwcfa	0x80, 17, 40
           STW     .D2T2   B8,*+SP(52)       ; |320| 
	.dwcfa	0x80, 24, 41
           STW     .D2T1   A9,*+SP(48)       ; |320| 
	.dwcfa	0x80, 9, 42
           STDW    .D2T1   A7:A6,*+SP(40)    ; |320| 
	.dwcfa	0x80, 6, 43
	.dwcfa	0x80, 7, 44
           STDW    .D2T1   A5:A4,*+SP(32)    ; |320| 
	.dwcfa	0x80, 4, 45
	.dwcfa	0x80, 5, 46
           STDW    .D2T1   A3:A2,*+SP(24)    ; |320| 
	.dwcfa	0x80, 2, 47
	.dwcfa	0x80, 3, 48
           STDW    .D2T1   A1:A0,*+SP(16)    ; |320| 
	.dwcfa	0x80, 0, 49
	.dwcfa	0x80, 1, 50
           STW     .D2T1   A8,*+SP(12)       ; |320| 
	.dwcfa	0x80, 8, 51
	.dwpsn	"realtime.c",321,5
           MVK     .L2     2,B4              ; |321| 
           STW     .D2T2   B4,*+DP(_WhatIsrActive) ; |321| 
	.dwpsn	"realtime.c",323,5
           LDW     .D2T2   *+DP(_Isr1),B4    ; |323| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |323| 
           STW     .D2T2   B4,*+DP(_Isr1)    ; |323| 
	.dwpsn	"realtime.c",324,5
           LDW     .D2T2   *+DP(_Isr1),B4    ; |324| 
           NOP             4
           AND     .L2     7,B4,B0           ; |324| 
   [ B0]   BNOP    .S1     L13,5             ; |324| 
           ; BRANCHCC OCCURS {L13}           ; |324| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",325,9
           MVKL    .S1     _TakeALongTime,A3 ; |325| 
           MVKH    .S1     _TakeALongTime,A3 ; |325| 
           CALL    .S2X    A3                ; |325| 
           ADDKPC  .S2     RL55,B3,4         ; |325| 
RL55:      ; CALL OCCURS {_TakeALongTime}    ; |325| 
;** --------------------------------------------------------------------------*
L13:    
	.dwpsn	"realtime.c",327,5
           ZERO    .L2     B4                ; |327| 
           STW     .D2T2   B4,*+DP(_WhatIsrActive) ; |327| 
	.dwpsn	"realtime.c",328,5
           LDW     .D2T2   *+DP(_timer1value),B4 ; |328| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |328| 
           STW     .D2T2   B4,*+DP(_timer1value) ; |328| 
	.dwpsn	"realtime.c",329,1
           LDDW    .D2T2   *+SP(208),B29:B28 ; |329| 
	.dwcfa	0xc0, 65
	.dwcfa	0xc0, 66
           LDDW    .D2T2   *+SP(200),B27:B26 ; |329| 
	.dwcfa	0xc0, 63
	.dwcfa	0xc0, 64
           LDDW    .D2T2   *+SP(192),B25:B24 ; |329| 
	.dwcfa	0xc0, 61
	.dwcfa	0xc0, 62
           LDDW    .D2T2   *+SP(184),B23:B22 ; |329| 
	.dwcfa	0xc0, 59
	.dwcfa	0xc0, 60
           LDDW    .D2T2   *+SP(176),B21:B20 ; |329| 
	.dwcfa	0xc0, 57
	.dwcfa	0xc0, 58
           LDDW    .D2T2   *+SP(168),B19:B18 ; |329| 
	.dwcfa	0xc0, 55
	.dwcfa	0xc0, 56
           LDDW    .D2T2   *+SP(160),B17:B16 ; |329| 
	.dwcfa	0xc0, 53
	.dwcfa	0xc0, 54
           LDW     .D2T2   *+SP(156),B30     ; |329| 
	.dwcfa	0xc0, 67
           LDW     .D2T1   *+SP(152),A31     ; |329| 
	.dwcfa	0xc0, 52
           LDDW    .D2T1   *+SP(144),A29:A28 ; |329| 
	.dwcfa	0xc0, 49
	.dwcfa	0xc0, 50
           LDDW    .D2T1   *+SP(136),A27:A26 ; |329| 
	.dwcfa	0xc0, 47
	.dwcfa	0xc0, 48
           LDDW    .D2T1   *+SP(128),A25:A24 ; |329| 
	.dwcfa	0xc0, 45
	.dwcfa	0xc0, 46
           LDDW    .D2T1   *+SP(120),A23:A22 ; |329| 
	.dwcfa	0xc0, 43
	.dwcfa	0xc0, 44
           LDDW    .D2T1   *+SP(112),A21:A20 ; |329| 
	.dwcfa	0xc0, 41
	.dwcfa	0xc0, 42
           LDDW    .D2T1   *+SP(104),A19:A18 ; |329| 
	.dwcfa	0xc0, 39
	.dwcfa	0xc0, 40
           LDDW    .D2T1   *+SP(96),A17:A16  ; |329| 
	.dwcfa	0xc0, 37
	.dwcfa	0xc0, 38
           LDW     .D2T1   *+SP(92),A30      ; |329| 
	.dwcfa	0xc0, 51
           LDW     .D2T2   *+SP(88),B9       ; |329| 
	.dwcfa	0xc0, 25
           LDDW    .D2T2   *+SP(80),B7:B6    ; |329| 
	.dwcfa	0xc0, 22
	.dwcfa	0xc0, 23
           LDDW    .D2T2   *+SP(72),B5:B4    ; |329| 
	.dwcfa	0xc0, 20
	.dwcfa	0xc0, 21
           LDDW    .D2T2   *+SP(64),B3:B2    ; |329| 
	.dwcfa	0xc0, 18
	.dwcfa	0xc0, 19
           LDDW    .D2T2   *+SP(56),B1:B0    ; |329| 
	.dwcfa	0xc0, 16
	.dwcfa	0xc0, 17
           LDW     .D2T2   *+SP(52),B8       ; |329| 
	.dwcfa	0xc0, 24
           LDW     .D2T1   *+SP(48),A9       ; |329| 
	.dwcfa	0xc0, 9
           LDDW    .D2T1   *+SP(40),A7:A6    ; |329| 
	.dwcfa	0xc0, 6
	.dwcfa	0xc0, 7
           LDDW    .D2T1   *+SP(32),A5:A4    ; |329| 
	.dwcfa	0xc0, 4
	.dwcfa	0xc0, 5
           LDDW    .D2T1   *+SP(24),A3:A2    ; |329| 
	.dwcfa	0xc0, 2
	.dwcfa	0xc0, 3
           LDDW    .D2T1   *+SP(16),A1:A0    ; |329| 
	.dwcfa	0xc0, 0
	.dwcfa	0xc0, 1
           LDW     .D2T1   *+SP(12),A8       ; |329| 
	.dwcfa	0xc0, 8
           LDW     .D2T2   *+SP(216),B31     ; |329| 
	.dwcfa	0xc0, 68
           ADDK    .S2     216,SP            ; |329| 
	.dwcfa	0x0e, 0
           RET     .S2     IRP               ; |329| 
           NOP             5
           ; BRANCH OCCURS {IRP}             ; |329| 
	.dwattr DW$115, DW_AT_end_file("realtime.c")
	.dwattr DW$115, DW_AT_end_line(0x149)
	.dwattr DW$115, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$115

	.sect	".text"
	.global	_PerformIsr3

DW$116	.dwtag  DW_TAG_subprogram, DW_AT_name("PerformIsr3"), DW_AT_symbol_name("_PerformIsr3")
	.dwattr DW$116, DW_AT_low_pc(_PerformIsr3)
	.dwattr DW$116, DW_AT_high_pc(0x00)
	.dwattr DW$116, DW_AT_begin_file("realtime.c")
	.dwattr DW$116, DW_AT_begin_line(0x152)
	.dwattr DW$116, DW_AT_begin_column(0x10)
	.dwpsn	"realtime.c",339,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _PerformIsr3                                                *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,A24, *
;*                           A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19,B20, *
;*                           B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31      *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,B0,B1,B2,B3,B4,B5,B6,  *
;*                           B7,B8,B9,DP,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 212 Save = 212 byte                *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_PerformIsr3:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           ADDK    .S2     -216,SP           ; |339| 
	.dwcfa	0x0e, 216
           STW     .D2T2   B31,*+SP(216)     ; |339| 
	.dwcfa	0x80, 68, 0
           STDW    .D2T2   B29:B28,*+SP(208) ; |339| 
	.dwcfa	0x80, 65, 1
	.dwcfa	0x80, 66, 2
           STDW    .D2T2   B27:B26,*+SP(200) ; |339| 
	.dwcfa	0x80, 63, 3
	.dwcfa	0x80, 64, 4
           STDW    .D2T2   B25:B24,*+SP(192) ; |339| 
	.dwcfa	0x80, 61, 5
	.dwcfa	0x80, 62, 6
           STDW    .D2T2   B23:B22,*+SP(184) ; |339| 
	.dwcfa	0x80, 59, 7
	.dwcfa	0x80, 60, 8
           STDW    .D2T2   B21:B20,*+SP(176) ; |339| 
	.dwcfa	0x80, 57, 9
	.dwcfa	0x80, 58, 10
           STDW    .D2T2   B19:B18,*+SP(168) ; |339| 
	.dwcfa	0x80, 55, 11
	.dwcfa	0x80, 56, 12
           STDW    .D2T2   B17:B16,*+SP(160) ; |339| 
	.dwcfa	0x80, 53, 13
	.dwcfa	0x80, 54, 14
           STW     .D2T2   B30,*+SP(156)     ; |339| 
	.dwcfa	0x80, 67, 15
           STW     .D2T1   A31,*+SP(152)     ; |339| 
	.dwcfa	0x80, 52, 16
           STDW    .D2T1   A29:A28,*+SP(144) ; |339| 
	.dwcfa	0x80, 49, 17
	.dwcfa	0x80, 50, 18
           STDW    .D2T1   A27:A26,*+SP(136) ; |339| 
	.dwcfa	0x80, 47, 19
	.dwcfa	0x80, 48, 20
           STDW    .D2T1   A25:A24,*+SP(128) ; |339| 
	.dwcfa	0x80, 45, 21
	.dwcfa	0x80, 46, 22
           STDW    .D2T1   A23:A22,*+SP(120) ; |339| 
	.dwcfa	0x80, 43, 23
	.dwcfa	0x80, 44, 24
           STDW    .D2T1   A21:A20,*+SP(112) ; |339| 
	.dwcfa	0x80, 41, 25
	.dwcfa	0x80, 42, 26
           STDW    .D2T1   A19:A18,*+SP(104) ; |339| 
	.dwcfa	0x80, 39, 27
	.dwcfa	0x80, 40, 28
           STDW    .D2T1   A17:A16,*+SP(96)  ; |339| 
	.dwcfa	0x80, 37, 29
	.dwcfa	0x80, 38, 30
           STW     .D2T1   A30,*+SP(92)      ; |339| 
	.dwcfa	0x80, 51, 31
           STW     .D2T2   B9,*+SP(88)       ; |339| 
	.dwcfa	0x80, 25, 32
           STDW    .D2T2   B7:B6,*+SP(80)    ; |339| 
	.dwcfa	0x80, 22, 33
	.dwcfa	0x80, 23, 34
           STDW    .D2T2   B5:B4,*+SP(72)    ; |339| 
	.dwcfa	0x80, 20, 35
	.dwcfa	0x80, 21, 36
           STDW    .D2T2   B3:B2,*+SP(64)    ; |339| 
	.dwcfa	0x80, 18, 37
	.dwcfa	0x80, 19, 38
           STDW    .D2T2   B1:B0,*+SP(56)    ; |339| 
	.dwcfa	0x80, 16, 39
	.dwcfa	0x80, 17, 40
           STW     .D2T2   B8,*+SP(52)       ; |339| 
	.dwcfa	0x80, 24, 41
           STW     .D2T1   A9,*+SP(48)       ; |339| 
	.dwcfa	0x80, 9, 42
           STDW    .D2T1   A7:A6,*+SP(40)    ; |339| 
	.dwcfa	0x80, 6, 43
	.dwcfa	0x80, 7, 44
           STDW    .D2T1   A5:A4,*+SP(32)    ; |339| 
	.dwcfa	0x80, 4, 45
	.dwcfa	0x80, 5, 46
           STDW    .D2T1   A3:A2,*+SP(24)    ; |339| 
	.dwcfa	0x80, 2, 47
	.dwcfa	0x80, 3, 48
           STDW    .D2T1   A1:A0,*+SP(16)    ; |339| 
	.dwcfa	0x80, 0, 49
	.dwcfa	0x80, 1, 50
           STW     .D2T1   A8,*+SP(12)       ; |339| 
	.dwcfa	0x80, 8, 51
	.dwpsn	"realtime.c",340,5
           MVK     .L2     3,B4              ; |340| 
           STW     .D2T2   B4,*+DP(_WhatIsrActive) ; |340| 
	.dwpsn	"realtime.c",342,5
           LDW     .D2T2   *+DP(_Isr2),B4    ; |342| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |342| 
           STW     .D2T2   B4,*+DP(_Isr2)    ; |342| 
	.dwpsn	"realtime.c",343,5
           LDW     .D2T2   *+DP(_Isr2),B4    ; |343| 
           NOP             4
           AND     .L2     7,B4,B0           ; |343| 
   [ B0]   BNOP    .S1     L14,5             ; |343| 
           ; BRANCHCC OCCURS {L14}           ; |343| 
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",344,9
           MVKL    .S1     _TakeALongTime,A3 ; |344| 
           MVKH    .S1     _TakeALongTime,A3 ; |344| 
           CALL    .S2X    A3                ; |344| 
           ADDKPC  .S2     RL56,B3,4         ; |344| 
RL56:      ; CALL OCCURS {_TakeALongTime}    ; |344| 
;** --------------------------------------------------------------------------*
L14:    
	.dwpsn	"realtime.c",346,5
           ZERO    .L2     B4                ; |346| 
           STW     .D2T2   B4,*+DP(_WhatIsrActive) ; |346| 
	.dwpsn	"realtime.c",347,5
           LDW     .D2T2   *+DP(_timer2value),B4 ; |347| 
           NOP             4
           ADD     .L2     1,B4,B4           ; |347| 
           STW     .D2T2   B4,*+DP(_timer2value) ; |347| 
	.dwpsn	"realtime.c",348,1
           LDDW    .D2T2   *+SP(208),B29:B28 ; |348| 
	.dwcfa	0xc0, 65
	.dwcfa	0xc0, 66
           LDDW    .D2T2   *+SP(200),B27:B26 ; |348| 
	.dwcfa	0xc0, 63
	.dwcfa	0xc0, 64
           LDDW    .D2T2   *+SP(192),B25:B24 ; |348| 
	.dwcfa	0xc0, 61
	.dwcfa	0xc0, 62
           LDDW    .D2T2   *+SP(184),B23:B22 ; |348| 
	.dwcfa	0xc0, 59
	.dwcfa	0xc0, 60
           LDDW    .D2T2   *+SP(176),B21:B20 ; |348| 
	.dwcfa	0xc0, 57
	.dwcfa	0xc0, 58
           LDDW    .D2T2   *+SP(168),B19:B18 ; |348| 
	.dwcfa	0xc0, 55
	.dwcfa	0xc0, 56
           LDDW    .D2T2   *+SP(160),B17:B16 ; |348| 
	.dwcfa	0xc0, 53
	.dwcfa	0xc0, 54
           LDW     .D2T2   *+SP(156),B30     ; |348| 
	.dwcfa	0xc0, 67
           LDW     .D2T1   *+SP(152),A31     ; |348| 
	.dwcfa	0xc0, 52
           LDDW    .D2T1   *+SP(144),A29:A28 ; |348| 
	.dwcfa	0xc0, 49
	.dwcfa	0xc0, 50
           LDDW    .D2T1   *+SP(136),A27:A26 ; |348| 
	.dwcfa	0xc0, 47
	.dwcfa	0xc0, 48
           LDDW    .D2T1   *+SP(128),A25:A24 ; |348| 
	.dwcfa	0xc0, 45
	.dwcfa	0xc0, 46
           LDDW    .D2T1   *+SP(120),A23:A22 ; |348| 
	.dwcfa	0xc0, 43
	.dwcfa	0xc0, 44
           LDDW    .D2T1   *+SP(112),A21:A20 ; |348| 
	.dwcfa	0xc0, 41
	.dwcfa	0xc0, 42
           LDDW    .D2T1   *+SP(104),A19:A18 ; |348| 
	.dwcfa	0xc0, 39
	.dwcfa	0xc0, 40
           LDDW    .D2T1   *+SP(96),A17:A16  ; |348| 
	.dwcfa	0xc0, 37
	.dwcfa	0xc0, 38
           LDW     .D2T1   *+SP(92),A30      ; |348| 
	.dwcfa	0xc0, 51
           LDW     .D2T2   *+SP(88),B9       ; |348| 
	.dwcfa	0xc0, 25
           LDDW    .D2T2   *+SP(80),B7:B6    ; |348| 
	.dwcfa	0xc0, 22
	.dwcfa	0xc0, 23
           LDDW    .D2T2   *+SP(72),B5:B4    ; |348| 
	.dwcfa	0xc0, 20
	.dwcfa	0xc0, 21
           LDDW    .D2T2   *+SP(64),B3:B2    ; |348| 
	.dwcfa	0xc0, 18
	.dwcfa	0xc0, 19
           LDDW    .D2T2   *+SP(56),B1:B0    ; |348| 
	.dwcfa	0xc0, 16
	.dwcfa	0xc0, 17
           LDW     .D2T2   *+SP(52),B8       ; |348| 
	.dwcfa	0xc0, 24
           LDW     .D2T1   *+SP(48),A9       ; |348| 
	.dwcfa	0xc0, 9
           LDDW    .D2T1   *+SP(40),A7:A6    ; |348| 
	.dwcfa	0xc0, 6
	.dwcfa	0xc0, 7
           LDDW    .D2T1   *+SP(32),A5:A4    ; |348| 
	.dwcfa	0xc0, 4
	.dwcfa	0xc0, 5
           LDDW    .D2T1   *+SP(24),A3:A2    ; |348| 
	.dwcfa	0xc0, 2
	.dwcfa	0xc0, 3
           LDDW    .D2T1   *+SP(16),A1:A0    ; |348| 
	.dwcfa	0xc0, 0
	.dwcfa	0xc0, 1
           LDW     .D2T1   *+SP(12),A8       ; |348| 
	.dwcfa	0xc0, 8
           LDW     .D2T2   *+SP(216),B31     ; |348| 
	.dwcfa	0xc0, 68
           ADDK    .S2     216,SP            ; |348| 
	.dwcfa	0x0e, 0
           RET     .S2     IRP               ; |348| 
           NOP             5
           ; BRANCH OCCURS {IRP}             ; |348| 
	.dwattr DW$116, DW_AT_end_file("realtime.c")
	.dwattr DW$116, DW_AT_end_line(0x15c)
	.dwattr DW$116, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$116

	.sect	".text"
	.global	_TakeALongTime

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("TakeALongTime"), DW_AT_symbol_name("_TakeALongTime")
	.dwattr DW$117, DW_AT_low_pc(_TakeALongTime)
	.dwattr DW$117, DW_AT_high_pc(0x00)
	.dwattr DW$117, DW_AT_begin_file("realtime.c")
	.dwattr DW$117, DW_AT_begin_line(0x163)
	.dwattr DW$117, DW_AT_begin_column(0x06)
	.dwpsn	"realtime.c",356,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _TakeALongTime                                              *
;*                                                                            *
;*   Regs Modified     : A0,A3,SP                                             *
;*   Regs Used         : A0,A3,B3,SP                                          *
;*   Local Frame Size  : 0 Args + 4 Auto + 0 Save = 4 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_TakeALongTime:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           SUB     .L2     SP,8,SP           ; |356| 
	.dwcfa	0x0e, 8
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$118, DW_AT_type(*DW$T$73)
	.dwattr DW$118, DW_AT_location[DW_OP_reg0]
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("Output"), DW_AT_symbol_name("_Output")
	.dwattr DW$119, DW_AT_type(*DW$T$74)
	.dwattr DW$119, DW_AT_location[DW_OP_breg31 4]
	.dwpsn	"realtime.c",360,10
           ZERO    .L1     A0                ; |360| 
;*----------------------------------------------------------------------------*
;*   SOFTWARE PIPELINE INFORMATION
;*      Disqualified loop: Software pipelining disabled
;*----------------------------------------------------------------------------*
L15:    
DW$L$_TakeALongTime$2$B:
	.dwpsn	"realtime.c",361,9
           STH     .D2T1   A0,*+SP(4)        ; |361| 
	.dwpsn	"realtime.c",360,26
           ADD     .L1     1,A0,A3           ; |360| 
           EXTU    .S1     A3,16,16,A0       ; |360| 
   [!A0]   BNOP    .S1     L15,5             ; |360| 
           ; BRANCHCC OCCURS {L15}           ; |360| 
DW$L$_TakeALongTime$2$E:
;** --------------------------------------------------------------------------*
	.dwpsn	"realtime.c",362,1
           ADD     .L2     8,SP,SP           ; |362| 
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |362| 
           ; BRANCH OCCURS {B3}              ; |362| 

DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("C:\CCStudio_v3.1_EVAL\MyProjects\mandel_C6416\realtime.asm:L15:1:1142200865")
	.dwattr DW$120, DW_AT_begin_file("realtime.c")
	.dwattr DW$120, DW_AT_begin_line(0x168)
	.dwattr DW$120, DW_AT_end_line(0x169)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_TakeALongTime$2$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_TakeALongTime$2$E)
	.dwendtag DW$120

	.dwattr DW$117, DW_AT_end_file("realtime.c")
	.dwattr DW$117, DW_AT_end_line(0x16a)
	.dwattr DW$117, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$117

	.sect	".text"
	.global	_SetupInterrupts

DW$122	.dwtag  DW_TAG_subprogram, DW_AT_name("SetupInterrupts"), DW_AT_symbol_name("_SetupInterrupts")
	.dwattr DW$122, DW_AT_low_pc(_SetupInterrupts)
	.dwattr DW$122, DW_AT_high_pc(0x00)
	.dwattr DW$122, DW_AT_begin_file("realtime.c")
	.dwattr DW$122, DW_AT_begin_line(0x170)
	.dwattr DW$122, DW_AT_begin_column(0x06)
	.dwpsn	"realtime.c",369,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _SetupInterrupts                                            *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,B0,B1,B2,B3,B4,B5, *
;*                           B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,A23,  *
;*                           A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18,B19, *
;*                           B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30,B31  *
;*   Local Frame Size  : 0 Args + 0 Auto + 8 Save = 8 byte                    *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_SetupInterrupts:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(8)       ; |369| 
	.dwcfa	0x0e, 8
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A10,*+SP(4)       ; |369| 
	.dwcfa	0x80, 10, 1
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",369,3
           MVC     .S2     CSR,B4            ; |369| 
           AND     .L2     -2,B4,B4          ; |369| 
           MVC     .S2     B4,CSR            ; |369| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",370,3
           ZERO    .L2     B4                ; |370| 
           MVC     .S2     B4,IER            ; |370| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",371,3
           MVK     .L1     -1,A3             ; |371| 
           MVC     .S2X    A3,ICR            ; |371| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",320,3
           MVKL    .S1     __IRQ_eventTable,A10 ; |320| 

           MVC     .S2     IER,B4            ; |320| 
||         MVKH    .S1     __IRQ_eventTable,A10 ; |320| 

           LDW     .D1T1   *+A10(4),A3       ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           MVC     .S2     IER,B4            ; |320| 
           LDW     .D1T1   *+A10(8),A3       ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           MVKL    .S1     _IRQ_map,A3       ; |320| 
           MVKH    .S1     _IRQ_map,A3       ; |320| 
           CALL    .S2X    A3                ; |320| 
           ADDKPC  .S2     RL57,B3,2         ; |320| 
           MVK     .L2     0xd,B4            ; |320| 
           MVK     .S1     0x13,A4           ; |320| 
RL57:      ; CALL OCCURS {_IRQ_map}          ; |320| 
;** --------------------------------------------------------------------------*
           MVC     .S2     IER,B4            ; |320| 
           LDW     .D1T1   *+A10(76),A3      ; |320| 
           NOP             4
           OR      .L2X    A3,B4,B4          ; |320| 
           MVC     .S2     B4,IER            ; |320| 
           MVC     .S2     IER,B4            ; |320| 
           OR      .L2     2,B4,B4           ; |320| 
           MVC     .S2     B4,IER            ; |320| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",375,3
	.dwpsn	"realtime.c",377,1
           LDW     .D2T1   *+SP(4),A10       ; |377| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(8),B3       ; |377| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |377| 
           ; BRANCH OCCURS {B3}              ; |377| 
	.dwattr DW$122, DW_AT_end_file("realtime.c")
	.dwattr DW$122, DW_AT_end_line(0x179)
	.dwattr DW$122, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$122

	.sect	".text"
	.global	_ConfigureAllTimers

DW$123	.dwtag  DW_TAG_subprogram, DW_AT_name("ConfigureAllTimers"), DW_AT_symbol_name("_ConfigureAllTimers")
	.dwattr DW$123, DW_AT_low_pc(_ConfigureAllTimers)
	.dwattr DW$123, DW_AT_high_pc(0x00)
	.dwattr DW$123, DW_AT_begin_file("realtime.c")
	.dwattr DW$123, DW_AT_begin_line(0x17b)
	.dwattr DW$123, DW_AT_begin_column(0x06)
	.dwpsn	"realtime.c",380,1

	.dwfde DW$CIE

;******************************************************************************
;* FUNCTION NAME: _ConfigureAllTimers                                         *
;*                                                                            *
;*   Regs Modified     : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Regs Used         : A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,B0,B1,B2,B3,B4,*
;*                           B5,B6,B7,B8,B9,SP,A16,A17,A18,A19,A20,A21,A22,   *
;*                           A23,A24,A25,A26,A27,A28,A29,A30,A31,B16,B17,B18, *
;*                           B19,B20,B21,B22,B23,B24,B25,B26,B27,B28,B29,B30, *
;*                           B31                                              *
;*   Local Frame Size  : 0 Args + 0 Auto + 12 Save = 12 byte                  *
;******************************************************************************

;******************************************************************************
;*                                                                            *
;* Using -g (debug) with optimization (-o1) may disable key optimizations!    *
;*                                                                            *
;******************************************************************************
_ConfigureAllTimers:
;** --------------------------------------------------------------------------*
	.dwcfa	0x0e, 0
	.dwcfa	0x09, 126, 19
           STW     .D2T2   B3,*SP--(16)      ; |380| 
	.dwcfa	0x0e, 16
	.dwcfa	0x80, 19, 0
           STW     .D2T1   A11,*+SP(12)      ; |380| 
	.dwcfa	0x80, 11, 1
           STW     .D2T1   A10,*+SP(8)       ; |380| 
	.dwcfa	0x80, 10, 2
DW$124	.dwtag  DW_TAG_variable, DW_AT_name("timer0"), DW_AT_symbol_name("_timer0")
	.dwattr DW$124, DW_AT_type(*DW$T$28)
	.dwattr DW$124, DW_AT_location[DW_OP_reg4]
DW$125	.dwtag  DW_TAG_variable, DW_AT_name("timer1"), DW_AT_symbol_name("_timer1")
	.dwattr DW$125, DW_AT_type(*DW$T$28)
	.dwattr DW$125, DW_AT_location[DW_OP_reg20]
DW$126	.dwtag  DW_TAG_variable, DW_AT_name("timer2"), DW_AT_symbol_name("_timer2")
	.dwattr DW$126, DW_AT_type(*DW$T$28)
	.dwattr DW$126, DW_AT_location[DW_OP_reg4]
DW$127	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$127, DW_AT_type(*DW$T$21)
	.dwattr DW$127, DW_AT_location[DW_OP_reg4]
DW$128	.dwtag  DW_TAG_variable, DW_AT_name("gie"), DW_AT_symbol_name("_gie")
	.dwattr DW$128, DW_AT_type(*DW$T$19)
	.dwattr DW$128, DW_AT_location[DW_OP_reg21]
DW$129	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$129, DW_AT_type(*DW$T$21)
	.dwattr DW$129, DW_AT_location[DW_OP_reg21]
DW$130	.dwtag  DW_TAG_variable, DW_AT_name("gie"), DW_AT_symbol_name("_gie")
	.dwattr DW$130, DW_AT_type(*DW$T$19)
	.dwattr DW$130, DW_AT_location[DW_OP_reg22]
DW$131	.dwtag  DW_TAG_variable, DW_AT_name("base"), DW_AT_symbol_name("_base")
	.dwattr DW$131, DW_AT_type(*DW$T$21)
	.dwattr DW$131, DW_AT_location[DW_OP_reg3]
DW$132	.dwtag  DW_TAG_variable, DW_AT_name("gie"), DW_AT_symbol_name("_gie")
	.dwattr DW$132, DW_AT_type(*DW$T$19)
	.dwattr DW$132, DW_AT_location[DW_OP_reg20]
	.dwpsn	"realtime.c",385,5
           MVKL    .S1     _TIMER_open,A3    ; |385| 
           MVKH    .S1     _TIMER_open,A3    ; |385| 
           CALL    .S2X    A3                ; |385| 
           ADDKPC  .S2     RL58,B3,1         ; |385| 
           ZERO    .L2     B4                ; |385| 
           NOP             1
           ZERO    .L1     A4                ; |385| 
RL58:      ; CALL OCCURS {_TIMER_open}       ; |385| 
;** --------------------------------------------------------------------------*
           NOP             1
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",203,20
           LDW     .D1T1   *+A4(8),A3        ; |203| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",354,10
           MVC     .S2     CSR,B4            ; |354| 
           AND     .L2     1,B4,B4           ; |354| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",355,3
           MVC     .S2     CSR,B5            ; |355| 
           AND     .L2     -2,B5,B5          ; |355| 
           MVC     .S2     B5,CSR            ; |355| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",356,3
           ZERO    .L1     A10               ; |356| 
           STW     .D1T1   A10,*A3           ; |356| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",208,3
           MVK     .S2     4096,B5           ; |208| 
           STW     .D1T2   B5,*+A3(4)        ; |208| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",209,3
           STW     .D1T1   A10,*+A3(8)       ; |209| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",210,3
           MVK     .S1     0x2c0,A11         ; |210| 
           STW     .D1T1   A11,*A3           ; |210| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",360,3
           MVC     .S2     CSR,B5            ; |360| 

           AND     .L2     1,B4,B5           ; |360| 
||         AND     .S2     -2,B5,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           MVKL    .S1     _TIMER_open,A3    ; |360| 
           MVKH    .S1     _TIMER_open,A3    ; |360| 
           CALL    .S2X    A3                ; |360| 
           ADDKPC  .S2     RL59,B3,1         ; |360| 
           ZERO    .L2     B4                ; |360| 
           MVK     .L1     0x1,A4            ; |360| 
           NOP             1
RL59:      ; CALL OCCURS {_TIMER_open}       ; |360| 
           MV      .L2X    A4,B4             ; |360| 
           NOP             1
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",203,20
           LDW     .D2T2   *+B4(8),B5        ; |203| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",354,10
           MVC     .S2     CSR,B4            ; |354| 
           AND     .L2     1,B4,B6           ; |354| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",355,3
           MVC     .S2     CSR,B4            ; |355| 
           AND     .L2     -2,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",356,3
           STW     .D2T1   A10,*B5           ; |356| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",208,3
           MVK     .S2     256,B4            ; |208| 
           STW     .D2T2   B4,*+B5(4)        ; |208| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",209,3
           STW     .D2T1   A10,*+B5(8)       ; |209| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",210,3
           STW     .D2T1   A11,*B5           ; |210| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",360,3
           MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B6,B5           ; |360| 
||         AND     .S2     -2,B4,B4          ; |360| 

           OR      .L2     B5,B4,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
           MVKL    .S1     _TIMER_open,A3    ; |360| 
           MVKH    .S1     _TIMER_open,A3    ; |360| 
           CALL    .S2X    A3                ; |360| 
           ADDKPC  .S2     RL60,B3,0         ; |360| 
           MVK     .L1     0x2,A4            ; |360| 
           NOP             2
           ZERO    .L2     B4                ; |360| 
RL60:      ; CALL OCCURS {_TIMER_open}       ; |360| 
;** --------------------------------------------------------------------------*
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",203,20
           LDW     .D1T1   *+A4(8),A4        ; |203| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",354,10
           MVC     .S2     CSR,B4            ; |354| 
           AND     .L2     1,B4,B5           ; |354| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",355,3
           MVC     .S2     CSR,B4            ; |355| 
           AND     .L2     -2,B4,B4          ; |355| 
           MVC     .S2     B4,CSR            ; |355| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",356,3
           STW     .D1T1   A10,*A4           ; |356| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",208,3
           ZERO    .L1     A3                ; |208| 
           MVKH    .S1     0x10000,A3        ; |208| 
           STW     .D1T1   A3,*+A4(4)        ; |208| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",209,3
           STW     .D1T1   A10,*+A4(8)       ; |209| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_timer.h",210,3
           STW     .D1T1   A11,*A4           ; |210| 
	.dwpsn	"C:/CCStudio_v3.1_EVAL/C6000/csl/include/csl_irq.h",360,3
           MVC     .S2     CSR,B4            ; |360| 

           AND     .L2     1,B5,B4           ; |360| 
||         AND     .S2     -2,B4,B5          ; |360| 

           OR      .L2     B4,B5,B4          ; |360| 
           MVC     .S2     B4,CSR            ; |360| 
	.dwpsn	"realtime.c",394,1
           LDW     .D2T1   *+SP(12),A11      ; |394| 
	.dwcfa	0xc0, 11
           LDW     .D2T1   *+SP(8),A10       ; |394| 
	.dwcfa	0xc0, 10
           LDW     .D2T2   *++SP(16),B3      ; |394| 
           NOP             4
	.dwcfa	0xc0, 19
	.dwcfa	0x0e, 0
           RETNOP  .S2     B3,5              ; |394| 
           ; BRANCH OCCURS {B3}              ; |394| 
	.dwattr DW$123, DW_AT_end_file("realtime.c")
	.dwattr DW$123, DW_AT_end_line(0x18a)
	.dwattr DW$123, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$123

;******************************************************************************
;* STRINGS                                                                    *
;******************************************************************************
	.sect	".const"
SL1:	.string	10,"IMAGE COMPLETED",10,0
;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_IRQ_map
	.global	_TIMER_open
	.global	__CSL_init
	.global	_CSL6416_LIB_
	.global	_addsp
	.global	_divsp
	.global	_mpysp
	.global	_printf
	.global	_exit
	.global	__IRQ_eventTable
	.global	__fltuf
	.global	__mpyf
	.global	__subf
	.global	__cmpf

;******************************************************************************
;* TYPE INFORMATION                                                           *
;******************************************************************************

DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$133	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$134	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$135	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$35


DW$T$36	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)

DW$T$38	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$136	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$137	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$138	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$139	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$38


DW$T$41	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$40)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)

DW$T$46	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$45)
	.dwendtag DW$T$46

DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$8)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)

DW$T$49	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$T$50	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$50, DW_AT_address_class(0x20)
DW$T$51	.dwtag  DW_TAG_const_type
	.dwattr DW$T$51, DW_AT_type(*DW$T$50)
DW$T$52	.dwtag  DW_TAG_const_type
	.dwattr DW$T$52, DW_AT_type(*DW$T$45)
DW$T$53	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$53, DW_AT_address_class(0x20)
DW$T$54	.dwtag  DW_TAG_const_type
	.dwattr DW$T$54, DW_AT_type(*DW$T$53)

DW$T$55	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$52)
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$55, DW_AT_byte_size(0x20)
DW$142	.dwtag  DW_TAG_subrange_type
	.dwattr DW$142, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$55


DW$T$56	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$56, DW_AT_language(DW_LANG_C)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
	.dwendtag DW$T$56

DW$T$58	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_address_class(0x20)

DW$T$59	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$45)
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$59, DW_AT_byte_size(0x20)
DW$144	.dwtag  DW_TAG_subrange_type
	.dwattr DW$144, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$59

DW$T$73	.dwtag  DW_TAG_typedef, DW_AT_name("uint16"), DW_AT_type(*DW$T$9)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$T$74	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$74, DW_AT_type(*DW$T$73)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x04)

DW$T$76	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)

DW$T$77	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$77, DW_AT_language(DW_LANG_C)
DW$T$79	.dwtag  DW_TAG_typedef, DW_AT_name("int32"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)

DW$T$80	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$79)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$50)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$53)
	.dwendtag DW$T$80

DW$T$81	.dwtag  DW_TAG_const_type
	.dwattr DW$T$81, DW_AT_type(*DW$T$10)
DW$T$82	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$82, DW_AT_type(*DW$T$10)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x04)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$21	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$21, DW_AT_address_class(0x20)

DW$T$86	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$86, DW_AT_language(DW_LANG_C)

DW$T$88	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$87)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$88


DW$T$89	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$89, DW_AT_byte_size(0x84)
DW$150	.dwtag  DW_TAG_subrange_type
	.dwattr DW$150, DW_AT_upper_bound(0x20)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$91, DW_AT_byte_size(0x10000)
DW$151	.dwtag  DW_TAG_subrange_type
	.dwattr DW$151, DW_AT_upper_bound(0x7f)
DW$152	.dwtag  DW_TAG_subrange_type
	.dwattr DW$152, DW_AT_upper_bound(0x7f)
	.dwendtag DW$T$91

DW$T$92	.dwtag  DW_TAG_const_type
	.dwattr DW$T$92, DW_AT_type(*DW$T$19)
DW$T$93	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$93, DW_AT_type(*DW$T$11)
DW$T$96	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$96, DW_AT_type(*DW$T$95)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x04)

DW$T$105	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$153	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
DW$154	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$16)
	.dwendtag DW$T$105

DW$T$28	.dwtag  DW_TAG_typedef, DW_AT_name("TIMER_Handle"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_language(DW_LANG_C)

DW$T$107	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$19)
	.dwendtag DW$T$107

DW$T$40	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$39)
	.dwattr DW$T$40, DW_AT_address_class(0x20)
DW$T$87	.dwtag  DW_TAG_typedef, DW_AT_name("Complex"), DW_AT_type(*DW$T$32)
	.dwattr DW$T$87, DW_AT_language(DW_LANG_C)
DW$T$111	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$87)
	.dwattr DW$T$111, DW_AT_address_class(0x20)
DW$T$112	.dwtag  DW_TAG_const_type
	.dwattr DW$T$112, DW_AT_type(*DW$T$111)
DW$T$117	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$117, DW_AT_type(*DW$T$116)
DW$T$8	.dwtag  DW_TAG_base_type, DW_AT_name("short")
	.dwattr DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$8, DW_AT_byte_size(0x02)
DW$T$57	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$57, DW_AT_type(*DW$T$45)
DW$T$9	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned short")
	.dwattr DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$9, DW_AT_byte_size(0x02)
DW$T$20	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$20, DW_AT_type(*DW$T$19)
DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("uint32"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$T$27	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$27, DW_AT_address_class(0x20)
DW$T$39	.dwtag  DW_TAG_typedef, DW_AT_name("_CSL_Config"), DW_AT_type(*DW$T$31)
	.dwattr DW$T$39, DW_AT_language(DW_LANG_C)

DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("ComplexTag")
	.dwattr DW$T$32, DW_AT_byte_size(0x08)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$157, DW_AT_name("R"), DW_AT_symbol_name("_R")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$16)
	.dwattr DW$158, DW_AT_name("I"), DW_AT_symbol_name("_I")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32

DW$T$116	.dwtag  DW_TAG_typedef, DW_AT_name("ISR_LIST"), DW_AT_type(*DW$T$115)
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_byte_size(0x0c)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$159, DW_AT_name("allocated"), DW_AT_symbol_name("_allocated")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$160, DW_AT_name("eventId"), DW_AT_symbol_name("_eventId")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$161, DW_AT_name("baseAddr"), DW_AT_symbol_name("_baseAddr")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$31	.dwtag  DW_TAG_union_type
	.dwattr DW$T$31, DW_AT_byte_size(0x10)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$162, DW_AT_name("args"), DW_AT_symbol_name("_args")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$163, DW_AT_name("ret"), DW_AT_symbol_name("_ret")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$115	.dwtag  DW_TAG_enumeration_type
	.dwattr DW$T$115, DW_AT_byte_size(0x04)
DW$164	.dwtag  DW_TAG_enumerator, DW_AT_name("NoIsrActive"), DW_AT_const_value(0x00)
DW$165	.dwtag  DW_TAG_enumerator, DW_AT_name("Isr1Active"), DW_AT_const_value(0x01)
DW$166	.dwtag  DW_TAG_enumerator, DW_AT_name("Isr2Active"), DW_AT_const_value(0x02)
DW$167	.dwtag  DW_TAG_enumerator, DW_AT_name("Isr3Active"), DW_AT_const_value(0x03)
	.dwendtag DW$T$115


DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_byte_size(0x10)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("biosPresent"), DW_AT_symbol_name("_biosPresent")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$169, DW_AT_name("dispatchTable"), DW_AT_symbol_name("_dispatchTable")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$170, DW_AT_name("timerUsed"), DW_AT_symbol_name("_timerUsed")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$171, DW_AT_name("timerNum"), DW_AT_symbol_name("_timerNum")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_byte_size(0x0c)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$172, DW_AT_name("hTimer"), DW_AT_symbol_name("_hTimer")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$173, DW_AT_name("event2IntTbl"), DW_AT_symbol_name("_event2IntTbl")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$174, DW_AT_name("int2EventTbl"), DW_AT_symbol_name("_int2EventTbl")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30

DW$T$29	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$29, DW_AT_address_class(0x20)
DW$T$25	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$25, DW_AT_address_class(0x20)
DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("_IRQ_Dispatch"), DW_AT_type(*DW$T$23)
	.dwattr DW$T$24, DW_AT_language(DW_LANG_C)

DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_byte_size(0x10)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$3)
	.dwattr DW$175, DW_AT_name("funcAddr"), DW_AT_symbol_name("_funcAddr")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("ieMask"), DW_AT_symbol_name("_ieMask")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$177, DW_AT_name("ccMask"), DW_AT_symbol_name("_ccMask")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$178, DW_AT_name("funcArg"), DW_AT_symbol_name("_funcArg")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23

DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x20)

	.dwattr DW$123, DW_AT_external(0x01)
	.dwattr DW$102, DW_AT_external(0x01)
	.dwattr DW$102, DW_AT_type(*DW$T$79)
	.dwattr DW$97, DW_AT_external(0x01)
	.dwattr DW$97, DW_AT_type(*DW$T$45)
	.dwattr DW$99, DW_AT_external(0x01)
	.dwattr DW$114, DW_AT_external(0x01)
	.dwattr DW$115, DW_AT_external(0x01)
	.dwattr DW$116, DW_AT_external(0x01)
	.dwattr DW$111, DW_AT_external(0x01)
	.dwattr DW$111, DW_AT_type(*DW$T$45)
	.dwattr DW$122, DW_AT_external(0x01)
	.dwattr DW$117, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
	.dwattr DW$42, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_type(*DW$T$19)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 126
	.dwcfa	0x0c, 31, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x07, 6
	.dwcfa	0x07, 7
	.dwcfa	0x07, 8
	.dwcfa	0x07, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x08, 12
	.dwcfa	0x08, 13
	.dwcfa	0x08, 14
	.dwcfa	0x08, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x08, 26
	.dwcfa	0x08, 27
	.dwcfa	0x08, 28
	.dwcfa	0x08, 29
	.dwcfa	0x08, 30
	.dwcfa	0x08, 31
	.dwcfa	0x08, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40
	.dwcfa	0x07, 41
	.dwcfa	0x07, 42
	.dwcfa	0x07, 43
	.dwcfa	0x07, 44
	.dwcfa	0x07, 45
	.dwcfa	0x07, 46
	.dwcfa	0x07, 47
	.dwcfa	0x07, 48
	.dwcfa	0x07, 49
	.dwcfa	0x07, 50
	.dwcfa	0x07, 51
	.dwcfa	0x07, 52
	.dwcfa	0x07, 53
	.dwcfa	0x07, 54
	.dwcfa	0x07, 55
	.dwcfa	0x07, 56
	.dwcfa	0x07, 57
	.dwcfa	0x07, 58
	.dwcfa	0x07, 59
	.dwcfa	0x07, 60
	.dwcfa	0x07, 61
	.dwcfa	0x07, 62
	.dwcfa	0x07, 63
	.dwcfa	0x07, 64
	.dwcfa	0x07, 65
	.dwcfa	0x07, 66
	.dwcfa	0x07, 67
	.dwcfa	0x07, 68
	.dwcfa	0x07, 69
	.dwcfa	0x07, 70
	.dwcfa	0x07, 71
	.dwcfa	0x07, 72
	.dwcfa	0x07, 73
	.dwcfa	0x07, 74
	.dwcfa	0x07, 75
	.dwcfa	0x07, 76
	.dwcfa	0x07, 77
	.dwcfa	0x07, 78
	.dwcfa	0x07, 79
	.dwcfa	0x07, 80
	.dwcfa	0x07, 81
	.dwcfa	0x07, 82
	.dwcfa	0x07, 83
	.dwcfa	0x07, 84
	.dwcfa	0x07, 85
	.dwcfa	0x07, 86
	.dwcfa	0x07, 87
	.dwcfa	0x07, 88
	.dwcfa	0x07, 89
	.dwcfa	0x07, 90
	.dwcfa	0x07, 91
	.dwcfa	0x07, 92
	.dwcfa	0x07, 93
	.dwcfa	0x07, 94
	.dwcfa	0x07, 95
	.dwcfa	0x07, 96
	.dwcfa	0x07, 97
	.dwcfa	0x07, 98
	.dwcfa	0x07, 99
	.dwcfa	0x07, 100
	.dwcfa	0x07, 101
	.dwcfa	0x07, 102
	.dwcfa	0x07, 103
	.dwcfa	0x07, 104
	.dwcfa	0x07, 105
	.dwcfa	0x07, 106
	.dwcfa	0x07, 107
	.dwcfa	0x07, 108
	.dwcfa	0x07, 109
	.dwcfa	0x07, 110
	.dwcfa	0x07, 111
	.dwcfa	0x07, 112
	.dwcfa	0x07, 113
	.dwcfa	0x07, 114
	.dwcfa	0x07, 115
	.dwcfa	0x07, 116
	.dwcfa	0x07, 117
	.dwcfa	0x07, 118
	.dwcfa	0x07, 119
	.dwcfa	0x07, 120
	.dwcfa	0x07, 121
	.dwcfa	0x07, 122
	.dwcfa	0x07, 123
	.dwcfa	0x07, 124
	.dwcfa	0x07, 125
	.dwcfa	0x07, 126

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$179	.dwtag  DW_TAG_assign_register, DW_AT_name("A0")
	.dwattr DW$179, DW_AT_location[DW_OP_reg0]
DW$180	.dwtag  DW_TAG_assign_register, DW_AT_name("A1")
	.dwattr DW$180, DW_AT_location[DW_OP_reg1]
DW$181	.dwtag  DW_TAG_assign_register, DW_AT_name("A2")
	.dwattr DW$181, DW_AT_location[DW_OP_reg2]
DW$182	.dwtag  DW_TAG_assign_register, DW_AT_name("A3")
	.dwattr DW$182, DW_AT_location[DW_OP_reg3]
DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("A4")
	.dwattr DW$183, DW_AT_location[DW_OP_reg4]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("A5")
	.dwattr DW$184, DW_AT_location[DW_OP_reg5]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("A6")
	.dwattr DW$185, DW_AT_location[DW_OP_reg6]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("A7")
	.dwattr DW$186, DW_AT_location[DW_OP_reg7]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("A8")
	.dwattr DW$187, DW_AT_location[DW_OP_reg8]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("A9")
	.dwattr DW$188, DW_AT_location[DW_OP_reg9]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("A10")
	.dwattr DW$189, DW_AT_location[DW_OP_reg10]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("A11")
	.dwattr DW$190, DW_AT_location[DW_OP_reg11]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("A12")
	.dwattr DW$191, DW_AT_location[DW_OP_reg12]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("A13")
	.dwattr DW$192, DW_AT_location[DW_OP_reg13]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("A14")
	.dwattr DW$193, DW_AT_location[DW_OP_reg14]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("A15")
	.dwattr DW$194, DW_AT_location[DW_OP_reg15]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("B0")
	.dwattr DW$195, DW_AT_location[DW_OP_reg16]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("B1")
	.dwattr DW$196, DW_AT_location[DW_OP_reg17]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("B2")
	.dwattr DW$197, DW_AT_location[DW_OP_reg18]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("B3")
	.dwattr DW$198, DW_AT_location[DW_OP_reg19]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("B4")
	.dwattr DW$199, DW_AT_location[DW_OP_reg20]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("B5")
	.dwattr DW$200, DW_AT_location[DW_OP_reg21]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("B6")
	.dwattr DW$201, DW_AT_location[DW_OP_reg22]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("B7")
	.dwattr DW$202, DW_AT_location[DW_OP_reg23]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("B8")
	.dwattr DW$203, DW_AT_location[DW_OP_reg24]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("B9")
	.dwattr DW$204, DW_AT_location[DW_OP_reg25]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("B10")
	.dwattr DW$205, DW_AT_location[DW_OP_reg26]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("B11")
	.dwattr DW$206, DW_AT_location[DW_OP_reg27]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("B12")
	.dwattr DW$207, DW_AT_location[DW_OP_reg28]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("B13")
	.dwattr DW$208, DW_AT_location[DW_OP_reg29]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$209, DW_AT_location[DW_OP_reg30]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$210, DW_AT_location[DW_OP_reg31]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$211, DW_AT_location[DW_OP_regx 0x20]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$212, DW_AT_location[DW_OP_regx 0x21]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("IRP")
	.dwattr DW$213, DW_AT_location[DW_OP_regx 0x22]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$214, DW_AT_location[DW_OP_regx 0x23]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("NRP")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x24]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("A16")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x25]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("A17")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x26]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("A18")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x27]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("A19")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x28]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("A20")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x29]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("A21")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x2a]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("A22")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x2b]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("A23")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x2c]
DW$224	.dwtag  DW_TAG_assign_register, DW_AT_name("A24")
	.dwattr DW$224, DW_AT_location[DW_OP_regx 0x2d]
DW$225	.dwtag  DW_TAG_assign_register, DW_AT_name("A25")
	.dwattr DW$225, DW_AT_location[DW_OP_regx 0x2e]
DW$226	.dwtag  DW_TAG_assign_register, DW_AT_name("A26")
	.dwattr DW$226, DW_AT_location[DW_OP_regx 0x2f]
DW$227	.dwtag  DW_TAG_assign_register, DW_AT_name("A27")
	.dwattr DW$227, DW_AT_location[DW_OP_regx 0x30]
DW$228	.dwtag  DW_TAG_assign_register, DW_AT_name("A28")
	.dwattr DW$228, DW_AT_location[DW_OP_regx 0x31]
DW$229	.dwtag  DW_TAG_assign_register, DW_AT_name("A29")
	.dwattr DW$229, DW_AT_location[DW_OP_regx 0x32]
DW$230	.dwtag  DW_TAG_assign_register, DW_AT_name("A30")
	.dwattr DW$230, DW_AT_location[DW_OP_regx 0x33]
DW$231	.dwtag  DW_TAG_assign_register, DW_AT_name("A31")
	.dwattr DW$231, DW_AT_location[DW_OP_regx 0x34]
DW$232	.dwtag  DW_TAG_assign_register, DW_AT_name("B16")
	.dwattr DW$232, DW_AT_location[DW_OP_regx 0x35]
DW$233	.dwtag  DW_TAG_assign_register, DW_AT_name("B17")
	.dwattr DW$233, DW_AT_location[DW_OP_regx 0x36]
DW$234	.dwtag  DW_TAG_assign_register, DW_AT_name("B18")
	.dwattr DW$234, DW_AT_location[DW_OP_regx 0x37]
DW$235	.dwtag  DW_TAG_assign_register, DW_AT_name("B19")
	.dwattr DW$235, DW_AT_location[DW_OP_regx 0x38]
DW$236	.dwtag  DW_TAG_assign_register, DW_AT_name("B20")
	.dwattr DW$236, DW_AT_location[DW_OP_regx 0x39]
DW$237	.dwtag  DW_TAG_assign_register, DW_AT_name("B21")
	.dwattr DW$237, DW_AT_location[DW_OP_regx 0x3a]
DW$238	.dwtag  DW_TAG_assign_register, DW_AT_name("B22")
	.dwattr DW$238, DW_AT_location[DW_OP_regx 0x3b]
DW$239	.dwtag  DW_TAG_assign_register, DW_AT_name("B23")
	.dwattr DW$239, DW_AT_location[DW_OP_regx 0x3c]
DW$240	.dwtag  DW_TAG_assign_register, DW_AT_name("B24")
	.dwattr DW$240, DW_AT_location[DW_OP_regx 0x3d]
DW$241	.dwtag  DW_TAG_assign_register, DW_AT_name("B25")
	.dwattr DW$241, DW_AT_location[DW_OP_regx 0x3e]
DW$242	.dwtag  DW_TAG_assign_register, DW_AT_name("B26")
	.dwattr DW$242, DW_AT_location[DW_OP_regx 0x3f]
DW$243	.dwtag  DW_TAG_assign_register, DW_AT_name("B27")
	.dwattr DW$243, DW_AT_location[DW_OP_regx 0x40]
DW$244	.dwtag  DW_TAG_assign_register, DW_AT_name("B28")
	.dwattr DW$244, DW_AT_location[DW_OP_regx 0x41]
DW$245	.dwtag  DW_TAG_assign_register, DW_AT_name("B29")
	.dwattr DW$245, DW_AT_location[DW_OP_regx 0x42]
DW$246	.dwtag  DW_TAG_assign_register, DW_AT_name("B30")
	.dwattr DW$246, DW_AT_location[DW_OP_regx 0x43]
DW$247	.dwtag  DW_TAG_assign_register, DW_AT_name("B31")
	.dwattr DW$247, DW_AT_location[DW_OP_regx 0x44]
DW$248	.dwtag  DW_TAG_assign_register, DW_AT_name("AMR")
	.dwattr DW$248, DW_AT_location[DW_OP_regx 0x45]
DW$249	.dwtag  DW_TAG_assign_register, DW_AT_name("CSR")
	.dwattr DW$249, DW_AT_location[DW_OP_regx 0x46]
DW$250	.dwtag  DW_TAG_assign_register, DW_AT_name("ISR")
	.dwattr DW$250, DW_AT_location[DW_OP_regx 0x47]
DW$251	.dwtag  DW_TAG_assign_register, DW_AT_name("ICR")
	.dwattr DW$251, DW_AT_location[DW_OP_regx 0x48]
DW$252	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$252, DW_AT_location[DW_OP_regx 0x49]
DW$253	.dwtag  DW_TAG_assign_register, DW_AT_name("ISTP")
	.dwattr DW$253, DW_AT_location[DW_OP_regx 0x4a]
DW$254	.dwtag  DW_TAG_assign_register, DW_AT_name("IN")
	.dwattr DW$254, DW_AT_location[DW_OP_regx 0x4b]
DW$255	.dwtag  DW_TAG_assign_register, DW_AT_name("OUT")
	.dwattr DW$255, DW_AT_location[DW_OP_regx 0x4c]
DW$256	.dwtag  DW_TAG_assign_register, DW_AT_name("ACR")
	.dwattr DW$256, DW_AT_location[DW_OP_regx 0x4d]
DW$257	.dwtag  DW_TAG_assign_register, DW_AT_name("ADR")
	.dwattr DW$257, DW_AT_location[DW_OP_regx 0x4e]
DW$258	.dwtag  DW_TAG_assign_register, DW_AT_name("FADCR")
	.dwattr DW$258, DW_AT_location[DW_OP_regx 0x4f]
DW$259	.dwtag  DW_TAG_assign_register, DW_AT_name("FAUCR")
	.dwattr DW$259, DW_AT_location[DW_OP_regx 0x50]
DW$260	.dwtag  DW_TAG_assign_register, DW_AT_name("FMCR")
	.dwattr DW$260, DW_AT_location[DW_OP_regx 0x51]
DW$261	.dwtag  DW_TAG_assign_register, DW_AT_name("GFPGFR")
	.dwattr DW$261, DW_AT_location[DW_OP_regx 0x52]
DW$262	.dwtag  DW_TAG_assign_register, DW_AT_name("DIER")
	.dwattr DW$262, DW_AT_location[DW_OP_regx 0x53]
DW$263	.dwtag  DW_TAG_assign_register, DW_AT_name("REP")
	.dwattr DW$263, DW_AT_location[DW_OP_regx 0x54]
DW$264	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCL")
	.dwattr DW$264, DW_AT_location[DW_OP_regx 0x55]
DW$265	.dwtag  DW_TAG_assign_register, DW_AT_name("TSCH")
	.dwattr DW$265, DW_AT_location[DW_OP_regx 0x56]
DW$266	.dwtag  DW_TAG_assign_register, DW_AT_name("ARP")
	.dwattr DW$266, DW_AT_location[DW_OP_regx 0x57]
DW$267	.dwtag  DW_TAG_assign_register, DW_AT_name("ILC")
	.dwattr DW$267, DW_AT_location[DW_OP_regx 0x58]
DW$268	.dwtag  DW_TAG_assign_register, DW_AT_name("RILC")
	.dwattr DW$268, DW_AT_location[DW_OP_regx 0x59]
DW$269	.dwtag  DW_TAG_assign_register, DW_AT_name("DNUM")
	.dwattr DW$269, DW_AT_location[DW_OP_regx 0x5a]
DW$270	.dwtag  DW_TAG_assign_register, DW_AT_name("SSR")
	.dwattr DW$270, DW_AT_location[DW_OP_regx 0x5b]
DW$271	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYA")
	.dwattr DW$271, DW_AT_location[DW_OP_regx 0x5c]
DW$272	.dwtag  DW_TAG_assign_register, DW_AT_name("GPLYB")
	.dwattr DW$272, DW_AT_location[DW_OP_regx 0x5d]
DW$273	.dwtag  DW_TAG_assign_register, DW_AT_name("TSR")
	.dwattr DW$273, DW_AT_location[DW_OP_regx 0x5e]
DW$274	.dwtag  DW_TAG_assign_register, DW_AT_name("ITSR")
	.dwattr DW$274, DW_AT_location[DW_OP_regx 0x5f]
DW$275	.dwtag  DW_TAG_assign_register, DW_AT_name("NTSR")
	.dwattr DW$275, DW_AT_location[DW_OP_regx 0x60]
DW$276	.dwtag  DW_TAG_assign_register, DW_AT_name("EFR")
	.dwattr DW$276, DW_AT_location[DW_OP_regx 0x61]
DW$277	.dwtag  DW_TAG_assign_register, DW_AT_name("ECR")
	.dwattr DW$277, DW_AT_location[DW_OP_regx 0x62]
DW$278	.dwtag  DW_TAG_assign_register, DW_AT_name("IERR")
	.dwattr DW$278, DW_AT_location[DW_OP_regx 0x63]
DW$279	.dwtag  DW_TAG_assign_register, DW_AT_name("DMSG")
	.dwattr DW$279, DW_AT_location[DW_OP_regx 0x64]
DW$280	.dwtag  DW_TAG_assign_register, DW_AT_name("CMSG")
	.dwattr DW$280, DW_AT_location[DW_OP_regx 0x65]
DW$281	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_ADDR")
	.dwattr DW$281, DW_AT_location[DW_OP_regx 0x66]
DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_DATA")
	.dwattr DW$282, DW_AT_location[DW_OP_regx 0x67]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("DT_DMA_CNTL")
	.dwattr DW$283, DW_AT_location[DW_OP_regx 0x68]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("TCU_CNTL")
	.dwattr DW$284, DW_AT_location[DW_OP_regx 0x69]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_REC_CNTL")
	.dwattr DW$285, DW_AT_location[DW_OP_regx 0x6a]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_XMT_CNTL")
	.dwattr DW$286, DW_AT_location[DW_OP_regx 0x6b]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_CFG")
	.dwattr DW$287, DW_AT_location[DW_OP_regx 0x6c]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RDATA")
	.dwattr DW$288, DW_AT_location[DW_OP_regx 0x6d]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WDATA")
	.dwattr DW$289, DW_AT_location[DW_OP_regx 0x6e]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_RADDR")
	.dwattr DW$290, DW_AT_location[DW_OP_regx 0x6f]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("RTDX_WADDR")
	.dwattr DW$291, DW_AT_location[DW_OP_regx 0x70]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("MFREG0")
	.dwattr DW$292, DW_AT_location[DW_OP_regx 0x71]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("DBG_STAT")
	.dwattr DW$293, DW_AT_location[DW_OP_regx 0x72]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("BRK_EN")
	.dwattr DW$294, DW_AT_location[DW_OP_regx 0x73]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0_CNT")
	.dwattr DW$295, DW_AT_location[DW_OP_regx 0x74]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP0")
	.dwattr DW$296, DW_AT_location[DW_OP_regx 0x75]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP1")
	.dwattr DW$297, DW_AT_location[DW_OP_regx 0x76]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP2")
	.dwattr DW$298, DW_AT_location[DW_OP_regx 0x77]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("HWBP3")
	.dwattr DW$299, DW_AT_location[DW_OP_regx 0x78]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("OVERLAY")
	.dwattr DW$300, DW_AT_location[DW_OP_regx 0x79]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("PC_PROF")
	.dwattr DW$301, DW_AT_location[DW_OP_regx 0x7a]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("ATSR")
	.dwattr DW$302, DW_AT_location[DW_OP_regx 0x7b]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("TRR")
	.dwattr DW$303, DW_AT_location[DW_OP_regx 0x7c]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("TCRR")
	.dwattr DW$304, DW_AT_location[DW_OP_regx 0x7d]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$305, DW_AT_location[DW_OP_regx 0x7e]
	.dwendtag DW$CU

