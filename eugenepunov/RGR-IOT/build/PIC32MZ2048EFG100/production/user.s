	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.section	.text,code
.Ltext0:
	.align	2
	.globl	init_gpio
.LFB4 = .
	.file 1 "c:/users/3/desktop/lab4-uart/user.c"
	.loc 1 42 0
	.set	nomips16
	.set	nomicromips
	.ent	init_gpio
	.type	init_gpio, @function
init_gpio:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI0 = .
	sw	$fp,4($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	.loc 1 46 0
	lui	$3,%hi(ANSELB)
	lhu	$2,%lo(ANSELB)($3)
	li	$4,1			# 0x1
	ins	$2,$4,13,1
	sh	$2,%lo(ANSELB)($3)
	.loc 1 49 0
	lui	$2,%hi(ANSELG)
	lw	$2,%lo(ANSELG)($2)
	li	$4,-65536			# 0xffffffffffff0000
	ori	$4,$4,0x7fff
	and	$3,$2,$4
	lui	$2,%hi(ANSELG)
	sw	$3,%lo(ANSELG)($2)
	.loc 1 50 0
	lui	$2,%hi(ANSELB)
	lw	$2,%lo(ANSELB)($2)
	li	$4,-2049			# 0xfffffffffffff7ff
	and	$3,$2,$4
	lui	$2,%hi(ANSELB)
	sw	$3,%lo(ANSELB)($2)
	.loc 1 52 0
	lui	$2,%hi(TRISG)
	lw	$3,%lo(TRISG)($2)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7fbf
	and	$3,$3,$2
	lui	$2,%hi(TRISG)
	sw	$3,%lo(TRISG)($2)
	.loc 1 53 0
	lui	$2,%hi(TRISB)
	lw	$2,%lo(TRISB)($2)
	li	$4,-2049			# 0xfffffffffffff7ff
	and	$3,$2,$4
	lui	$2,%hi(TRISB)
	sw	$3,%lo(TRISB)($2)
	.loc 1 54 0
	lui	$2,%hi(TRISD)
	lw	$2,%lo(TRISD)($2)
	li	$4,-17			# 0xffffffffffffffef
	and	$3,$2,$4
	lui	$2,%hi(TRISD)
	sw	$3,%lo(TRISD)($2)
	.loc 1 56 0
	move	$2,$0
	lui	$4,%hi(LATG)
	lhu	$3,%lo(LATG)($4)
	ins	$3,$2,15,1
	sh	$3,%lo(LATG)($4)
	lui	$4,%hi(LATB)
	lhu	$3,%lo(LATB)($4)
	ins	$3,$2,11,1
	sh	$3,%lo(LATB)($4)
	lui	$4,%hi(LATD)
	lhu	$3,%lo(LATD)($4)
	ins	$3,$2,4,1
	sh	$3,%lo(LATD)($4)
	lui	$4,%hi(LATG)
	lhu	$3,%lo(LATG)($4)
	ins	$3,$2,6,1
	sh	$3,%lo(LATG)($4)
	.loc 1 60 0
	lui	$2,%hi(ANSELA)
	lw	$2,%lo(ANSELA)($2)
	li	$4,-33			# 0xffffffffffffffdf
	and	$3,$2,$4
	lui	$2,%hi(ANSELA)
	sw	$3,%lo(ANSELA)($2)
	.loc 1 62 0
	lui	$2,%hi(TRISA)
	lw	$2,%lo(TRISA)($2)
	ori	$3,$2,0x20
	lui	$2,%hi(TRISA)
	sw	$3,%lo(TRISA)($2)
	.loc 1 63 0
	lui	$2,%hi(TRISA)
	lw	$2,%lo(TRISA)($2)
	ori	$3,$2,0x10
	lui	$2,%hi(TRISA)
	sw	$3,%lo(TRISA)($2)
	.loc 1 67 0
	lui	$2,%hi(ANSELE)
	lw	$2,%lo(ANSELE)($2)
	li	$4,-16			# 0xfffffffffffffff0
	and	$3,$2,$4
	lui	$2,%hi(ANSELE)
	sw	$3,%lo(ANSELE)($2)
	.loc 1 69 0
	lui	$2,%hi(TRISE)
	lw	$2,%lo(TRISE)($2)
	li	$4,-16			# 0xfffffffffffffff0
	and	$3,$2,$4
	lui	$2,%hi(TRISE)
	sw	$3,%lo(TRISE)($2)
	.loc 1 71 0
	lui	$2,%hi(TRISDCLR)
	li	$3,2048			# 0x800
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 72 0
	move	$sp,$fp
.LCFI3 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	init_gpio
.LFE4:
	.size	init_gpio, .-init_gpio
	.align	2
	.globl	init_app
.LFB5 = .
	.loc 1 81 0
	.set	nomips16
	.set	nomicromips
	.ent	init_app
	.type	init_app, @function
init_app:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI4 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	.loc 1 83 0
	jal	init_gpio
	nop

	.loc 1 84 0
	jal	uart4_init
	nop

	.loc 1 85 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	init_app
.LFE5:
	.size	init_app, .-init_app
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"\015\012You choose first led!\015\012\000"
	.align	2
.LC1:
	.ascii	"\015\012LED tuned off!\015\012\000"
	.align	2
.LC2:
	.ascii	"\015\012LED tuned on!\015\012\000"
	.align	2
.LC3:
	.ascii	"\015\012Invalid command!\015\012\000"
	.align	2
.LC4:
	.ascii	"\015\012You choose second led!\015\012\000"
	.align	2
.LC5:
	.ascii	"\015\012You choose third led!\015\012\000"
	.align	2
.LC6:
	.ascii	"\015\012You choose fourth led!\015\012\000"
	.align	2
.LC7:
	.ascii	"\015\012Invalid number of LED!\015\012\000"
	.section	.text,code
	.align	2
	.globl	turn_on_off_leds
.LFB6 = .
	.loc 1 92 0
	.set	nomips16
	.set	nomicromips
	.ent	turn_on_off_leds
	.type	turn_on_off_leds, @function
turn_on_off_leds:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI8 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	.loc 1 93 0
	lui	$2,%hi(PORTE)
	lw	$2,%lo(PORTE)($2)
	ext	$2,$2,0,1
	lui	$2,%hi(PORTE)
	lw	$2,%lo(PORTE)($2)
	ext	$2,$2,1,1
	lui	$3,%hi(PORTE)
	lhu	$2,%lo(PORTE)($3)
	li	$4,1			# 0x1
	ins	$2,$4,2,1
	sh	$2,%lo(PORTE)($3)
	.loc 1 94 0
	lui	$3,%hi(PORTE)
	lhu	$2,%lo(PORTE)($3)
	ins	$2,$0,3,1
	sh	$2,%lo(PORTE)($3)
.L31:
.LBB2 = .
	.loc 1 97 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 98 0
	jal	uart4_getc
	nop

	sb	$2,16($fp)
	.loc 1 99 0
	lb	$2,16($fp)
	move	$4,$2
	jal	uart4_putc
	nop

	.loc 1 101 0
	lb	$2,16($fp)
	li	$3,50			# 0x32
	beq	$2,$3,.L5
	nop

	slt	$3,$2,51
	beq	$3,$0,.L6
	nop

	li	$3,49			# 0x31
	beq	$2,$3,.L7
	nop

	j	.L4
	nop

.L6:
	li	$3,51			# 0x33
	beq	$2,$3,.L8
	nop

	li	$3,52			# 0x34
	beq	$2,$3,.L9
	nop

	j	.L4
	nop

.L7:
	.loc 1 103 0
	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	jal	uart4_puts
	nop

	.loc 1 104 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 105 0
	j	.L10
	nop

.L14:
	.loc 1 106 0
	jal	uart4_getc
	nop

	sb	$2,16($fp)
	.loc 1 107 0
	lb	$3,16($fp)
	li	$2,48			# 0x30
	bne	$3,$2,.L11
	nop

	.loc 1 108 0
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$0,6,1
	sh	$2,%lo(LATG)($3)
	.loc 1 109 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	uart4_puts
	nop

	.loc 1 110 0
	j	.L12
	nop

.L11:
	.loc 1 111 0
	lb	$3,16($fp)
	li	$2,49			# 0x31
	bne	$3,$2,.L13
	nop

	.loc 1 113 0
	lui	$3,%hi(PORTE)
	lhu	$2,%lo(PORTE)($3)
	ins	$2,$0,3,1
	sh	$2,%lo(PORTE)($3)
	.loc 1 114 0
	lui	$3,%hi(PORTE)
	lhu	$2,%lo(PORTE)($3)
	li	$4,1			# 0x1
	ins	$2,$4,0,1
	sh	$2,%lo(PORTE)($3)
	.loc 1 115 0
	lui	$2,%hi(.LC2)
	addiu	$4,$2,%lo(.LC2)
	jal	uart4_puts
	nop

	.loc 1 116 0
	j	.L12
	nop

.L13:
	.loc 1 118 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 119 0
	lui	$2,%hi(.LC3)
	addiu	$4,$2,%lo(.LC3)
	jal	uart4_puts
	nop

.L10:
	.loc 1 105 0
	lb	$3,16($fp)
	li	$2,32			# 0x20
	beq	$3,$2,.L14
	nop

.L12:
	.loc 1 122 0
	j	.L15
	nop

.L5:
	.loc 1 124 0
	lui	$2,%hi(.LC4)
	addiu	$4,$2,%lo(.LC4)
	jal	uart4_puts
	nop

	.loc 1 125 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 126 0
	j	.L16
	nop

.L20:
	.loc 1 127 0
	jal	uart4_getc
	nop

	sb	$2,16($fp)
	.loc 1 128 0
	lb	$3,16($fp)
	li	$2,48			# 0x30
	bne	$3,$2,.L17
	nop

	.loc 1 129 0
	lui	$3,%hi(LATD)
	lhu	$2,%lo(LATD)($3)
	ins	$2,$0,4,1
	sh	$2,%lo(LATD)($3)
	.loc 1 130 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	uart4_puts
	nop

	.loc 1 131 0
	j	.L18
	nop

.L17:
	.loc 1 132 0
	lb	$3,16($fp)
	li	$2,49			# 0x31
	bne	$3,$2,.L19
	nop

	.loc 1 133 0
	lui	$3,%hi(LATD)
	lhu	$2,%lo(LATD)($3)
	li	$4,1			# 0x1
	ins	$2,$4,4,1
	sh	$2,%lo(LATD)($3)
	.loc 1 134 0
	lui	$2,%hi(.LC2)
	addiu	$4,$2,%lo(.LC2)
	jal	uart4_puts
	nop

	.loc 1 135 0
	j	.L18
	nop

.L19:
	.loc 1 137 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 138 0
	lui	$2,%hi(.LC3)
	addiu	$4,$2,%lo(.LC3)
	jal	uart4_puts
	nop

.L16:
	.loc 1 126 0
	lb	$3,16($fp)
	li	$2,32			# 0x20
	beq	$3,$2,.L20
	nop

.L18:
	.loc 1 141 0
	j	.L15
	nop

.L8:
	.loc 1 143 0
	lui	$2,%hi(.LC5)
	addiu	$4,$2,%lo(.LC5)
	jal	uart4_puts
	nop

	.loc 1 144 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 145 0
	j	.L21
	nop

.L25:
	.loc 1 146 0
	jal	uart4_getc
	nop

	sb	$2,16($fp)
	.loc 1 147 0
	lb	$3,16($fp)
	li	$2,48			# 0x30
	bne	$3,$2,.L22
	nop

	.loc 1 148 0
	lui	$3,%hi(LATB)
	lhu	$2,%lo(LATB)($3)
	ins	$2,$0,11,1
	sh	$2,%lo(LATB)($3)
	.loc 1 149 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	uart4_puts
	nop

	.loc 1 150 0
	j	.L23
	nop

.L22:
	.loc 1 151 0
	lb	$3,16($fp)
	li	$2,49			# 0x31
	bne	$3,$2,.L24
	nop

	.loc 1 152 0
	lui	$3,%hi(LATB)
	lhu	$2,%lo(LATB)($3)
	li	$4,1			# 0x1
	ins	$2,$4,11,1
	sh	$2,%lo(LATB)($3)
	.loc 1 153 0
	lui	$2,%hi(.LC2)
	addiu	$4,$2,%lo(.LC2)
	jal	uart4_puts
	nop

	.loc 1 154 0
	j	.L23
	nop

.L24:
	.loc 1 156 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 157 0
	lui	$2,%hi(.LC3)
	addiu	$4,$2,%lo(.LC3)
	jal	uart4_puts
	nop

.L21:
	.loc 1 145 0
	lb	$3,16($fp)
	li	$2,32			# 0x20
	beq	$3,$2,.L25
	nop

.L23:
	.loc 1 160 0
	j	.L15
	nop

.L9:
	.loc 1 162 0
	lui	$2,%hi(.LC6)
	addiu	$4,$2,%lo(.LC6)
	jal	uart4_puts
	nop

	.loc 1 163 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 164 0
	j	.L26
	nop

.L30:
	.loc 1 165 0
	jal	uart4_getc
	nop

	sb	$2,16($fp)
	.loc 1 166 0
	lb	$3,16($fp)
	li	$2,48			# 0x30
	bne	$3,$2,.L27
	nop

	.loc 1 167 0
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(LATG)($3)
	.loc 1 168 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	uart4_puts
	nop

	.loc 1 169 0
	j	.L28
	nop

.L27:
	.loc 1 170 0
	lb	$3,16($fp)
	li	$2,49			# 0x31
	bne	$3,$2,.L29
	nop

	.loc 1 171 0
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(LATG)($3)
	.loc 1 172 0
	lui	$2,%hi(.LC2)
	addiu	$4,$2,%lo(.LC2)
	jal	uart4_puts
	nop

	.loc 1 173 0
	j	.L28
	nop

.L29:
	.loc 1 175 0
	li	$2,32			# 0x20
	sb	$2,16($fp)
	.loc 1 176 0
	lui	$2,%hi(.LC3)
	addiu	$4,$2,%lo(.LC3)
	jal	uart4_puts
	nop

.L26:
	.loc 1 164 0
	lb	$3,16($fp)
	li	$2,32			# 0x20
	beq	$3,$2,.L30
	nop

.L28:
	.loc 1 179 0
	j	.L15
	nop

.L4:
	.loc 1 181 0
	lui	$2,%hi(.LC7)
	addiu	$4,$2,%lo(.LC7)
	jal	uart4_puts
	nop

	.loc 1 182 0
	nop
.L15:
.LBE2 = .
	.loc 1 184 0
	j	.L31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	turn_on_off_leds
.LFE6:
	.size	turn_on_off_leds, .-turn_on_off_leds
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI8-.LFB6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE4:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/proc/p32mz2048ecg100.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x959
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"user.c\000"
	.ascii	"C:/Users/3/Desktop/lab4-UART\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2961
	.4byte	0x1c3
	.uleb128 0x4
	.ascii	"ANSB0\000"
	.byte	0x2
	.2byte	0x2962
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB1\000"
	.byte	0x2
	.2byte	0x2963
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB2\000"
	.byte	0x2
	.2byte	0x2964
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB3\000"
	.byte	0x2
	.2byte	0x2965
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB4\000"
	.byte	0x2
	.2byte	0x2966
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB5\000"
	.byte	0x2
	.2byte	0x2967
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB6\000"
	.byte	0x2
	.2byte	0x2968
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB7\000"
	.byte	0x2
	.2byte	0x2969
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB8\000"
	.byte	0x2
	.2byte	0x296a
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB9\000"
	.byte	0x2
	.2byte	0x296b
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB10\000"
	.byte	0x2
	.2byte	0x296c
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB11\000"
	.byte	0x2
	.2byte	0x296d
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB12\000"
	.byte	0x2
	.2byte	0x296e
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB13\000"
	.byte	0x2
	.2byte	0x296f
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB14\000"
	.byte	0x2
	.2byte	0x2970
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB15\000"
	.byte	0x2
	.2byte	0x2971
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2973
	.4byte	0x1dd
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2974
	.4byte	0x63
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2960
	.4byte	0x1f1
	.uleb128 0x6
	.4byte	0x73
	.uleb128 0x6
	.4byte	0x1c3
	.byte	0
	.uleb128 0x7
	.ascii	"__ANSELBbits_t\000"
	.byte	0x2
	.2byte	0x2976
	.4byte	0x1dd
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x29b8
	.4byte	0x358
	.uleb128 0x4
	.ascii	"LATB0\000"
	.byte	0x2
	.2byte	0x29b9
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB1\000"
	.byte	0x2
	.2byte	0x29ba
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB2\000"
	.byte	0x2
	.2byte	0x29bb
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB3\000"
	.byte	0x2
	.2byte	0x29bc
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB4\000"
	.byte	0x2
	.2byte	0x29bd
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB5\000"
	.byte	0x2
	.2byte	0x29be
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB6\000"
	.byte	0x2
	.2byte	0x29bf
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB7\000"
	.byte	0x2
	.2byte	0x29c0
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB8\000"
	.byte	0x2
	.2byte	0x29c1
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB9\000"
	.byte	0x2
	.2byte	0x29c2
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB10\000"
	.byte	0x2
	.2byte	0x29c3
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB11\000"
	.byte	0x2
	.2byte	0x29c4
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB12\000"
	.byte	0x2
	.2byte	0x29c5
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB13\000"
	.byte	0x2
	.2byte	0x29c6
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB14\000"
	.byte	0x2
	.2byte	0x29c7
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB15\000"
	.byte	0x2
	.2byte	0x29c8
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x29ca
	.4byte	0x372
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x29cb
	.4byte	0x63
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x29b7
	.4byte	0x386
	.uleb128 0x6
	.4byte	0x208
	.uleb128 0x6
	.4byte	0x358
	.byte	0
	.uleb128 0x7
	.ascii	"__LATBbits_t\000"
	.byte	0x2
	.2byte	0x29cd
	.4byte	0x372
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2b98
	.4byte	0x4af
	.uleb128 0x4
	.ascii	"LATD0\000"
	.byte	0x2
	.2byte	0x2b99
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD1\000"
	.byte	0x2
	.2byte	0x2b9a
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD2\000"
	.byte	0x2
	.2byte	0x2b9b
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD3\000"
	.byte	0x2
	.2byte	0x2b9c
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD4\000"
	.byte	0x2
	.2byte	0x2b9d
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD5\000"
	.byte	0x2
	.2byte	0x2b9e
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD9\000"
	.byte	0x2
	.2byte	0x2ba0
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD10\000"
	.byte	0x2
	.2byte	0x2ba1
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD11\000"
	.byte	0x2
	.2byte	0x2ba2
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD12\000"
	.byte	0x2
	.2byte	0x2ba3
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD13\000"
	.byte	0x2
	.2byte	0x2ba4
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD14\000"
	.byte	0x2
	.2byte	0x2ba5
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD15\000"
	.byte	0x2
	.2byte	0x2ba6
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2ba8
	.4byte	0x4c9
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2ba9
	.4byte	0x63
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2b97
	.4byte	0x4dd
	.uleb128 0x6
	.4byte	0x39b
	.uleb128 0x6
	.4byte	0x4af
	.byte	0
	.uleb128 0x7
	.ascii	"__LATDbits_t\000"
	.byte	0x2
	.2byte	0x2bab
	.4byte	0x4c9
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2c76
	.4byte	0x5b0
	.uleb128 0x4
	.ascii	"RE0\000"
	.byte	0x2
	.2byte	0x2c77
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE1\000"
	.byte	0x2
	.2byte	0x2c78
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE2\000"
	.byte	0x2
	.2byte	0x2c79
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE3\000"
	.byte	0x2
	.2byte	0x2c7a
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE4\000"
	.byte	0x2
	.2byte	0x2c7b
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE5\000"
	.byte	0x2
	.2byte	0x2c7c
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE6\000"
	.byte	0x2
	.2byte	0x2c7d
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE7\000"
	.byte	0x2
	.2byte	0x2c7e
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE8\000"
	.byte	0x2
	.2byte	0x2c7f
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RE9\000"
	.byte	0x2
	.2byte	0x2c80
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2c82
	.4byte	0x5ca
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2c83
	.4byte	0x63
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2c75
	.4byte	0x5de
	.uleb128 0x6
	.4byte	0x4f2
	.uleb128 0x6
	.4byte	0x5b0
	.byte	0
	.uleb128 0x7
	.ascii	"__PORTEbits_t\000"
	.byte	0x2
	.2byte	0x2c85
	.4byte	0x5ca
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2e4f
	.4byte	0x6ca
	.uleb128 0x4
	.ascii	"LATG0\000"
	.byte	0x2
	.2byte	0x2e50
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG1\000"
	.byte	0x2
	.2byte	0x2e51
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG6\000"
	.byte	0x2
	.2byte	0x2e53
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG7\000"
	.byte	0x2
	.2byte	0x2e54
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG8\000"
	.byte	0x2
	.2byte	0x2e55
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG9\000"
	.byte	0x2
	.2byte	0x2e56
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG12\000"
	.byte	0x2
	.2byte	0x2e58
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG13\000"
	.byte	0x2
	.2byte	0x2e59
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG14\000"
	.byte	0x2
	.2byte	0x2e5a
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG15\000"
	.byte	0x2
	.2byte	0x2e5b
	.4byte	0x63
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2e5d
	.4byte	0x6e4
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2e5e
	.4byte	0x63
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2e4e
	.4byte	0x6f8
	.uleb128 0x6
	.4byte	0x5f4
	.uleb128 0x6
	.4byte	0x6ca
	.byte	0
	.uleb128 0x7
	.ascii	"__LATGbits_t\000"
	.byte	0x2
	.2byte	0x2e60
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x8
	.byte	0x1
	.ascii	"init_gpio\000"
	.byte	0x1
	.byte	0x2a
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.ascii	"init_app\000"
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.ascii	"turn_on_off_leds\000"
	.byte	0x1
	.byte	0x5c
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x811
	.uleb128 0xb
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xc
	.ascii	"c\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x811
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0xd
	.ascii	"ANSELA\000"
	.byte	0x2
	.2byte	0x2862
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x63
	.uleb128 0xd
	.ascii	"TRISA\000"
	.byte	0x2
	.2byte	0x2876
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.ascii	"ANSELB\000"
	.byte	0x2
	.2byte	0x295f
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii	"ANSELBbits\000"
	.byte	0x2
	.2byte	0x2977
	.ascii	"ANSELB\000"
	.4byte	0x86c
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x1f1
	.uleb128 0xd
	.ascii	"TRISB\000"
	.byte	0x2
	.2byte	0x297c
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii	"LATBbits\000"
	.byte	0x2
	.2byte	0x29ce
	.ascii	"LATB\000"
	.4byte	0x899
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x386
	.uleb128 0xd
	.ascii	"TRISD\000"
	.byte	0x2
	.2byte	0x2b60
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.ascii	"TRISDCLR\000"
	.byte	0x2
	.2byte	0x2b77
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii	"LATDbits\000"
	.byte	0x2
	.2byte	0x2bac
	.ascii	"LATD\000"
	.4byte	0x8d9
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x4dd
	.uleb128 0xd
	.ascii	"ANSELE\000"
	.byte	0x2
	.2byte	0x2c49
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.ascii	"TRISE\000"
	.byte	0x2
	.2byte	0x2c5d
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii	"PORTEbits\000"
	.byte	0x2
	.2byte	0x2c86
	.ascii	"PORTE\000"
	.4byte	0x919
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x5de
	.uleb128 0xd
	.ascii	"ANSELG\000"
	.byte	0x2
	.2byte	0x2e07
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.ascii	"TRISG\000"
	.byte	0x2
	.2byte	0x2e1b
	.4byte	0x82a
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii	"LATGbits\000"
	.byte	0x2
	.2byte	0x2e61
	.ascii	"LATG\000"
	.4byte	0x957
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x6f8
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
