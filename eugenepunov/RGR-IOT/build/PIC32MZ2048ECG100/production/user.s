	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.align	2
	.globl	init_gpio
.LFB4 = .
	.file 1 "c:/users/3/desktop/rgr_ledstrip.x/user.c"
	.loc 1 43 0
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
	.loc 1 47 0
	lui	$3,%hi(ANSELB)
	lhu	$2,%lo(ANSELB)($3)
	li	$4,1			# 0x1
	ins	$2,$4,13,1
	sh	$2,%lo(ANSELB)($3)
	.loc 1 50 0
	lui	$2,%hi(ANSELG)
	lw	$2,%lo(ANSELG)($2)
	li	$4,-65536			# 0xffffffffffff0000
	ori	$4,$4,0x7fff
	and	$3,$2,$4
	lui	$2,%hi(ANSELG)
	sw	$3,%lo(ANSELG)($2)
	.loc 1 51 0
	lui	$2,%hi(ANSELB)
	lw	$2,%lo(ANSELB)($2)
	li	$4,-2049			# 0xfffffffffffff7ff
	and	$3,$2,$4
	lui	$2,%hi(ANSELB)
	sw	$3,%lo(ANSELB)($2)
	.loc 1 53 0
	lui	$2,%hi(TRISG)
	lw	$3,%lo(TRISG)($2)
	li	$2,-65536			# 0xffffffffffff0000
	ori	$2,$2,0x7fbf
	and	$3,$3,$2
	lui	$2,%hi(TRISG)
	sw	$3,%lo(TRISG)($2)
	.loc 1 54 0
	lui	$2,%hi(TRISB)
	lw	$2,%lo(TRISB)($2)
	li	$4,-2049			# 0xfffffffffffff7ff
	and	$3,$2,$4
	lui	$2,%hi(TRISB)
	sw	$3,%lo(TRISB)($2)
	.loc 1 55 0
	lui	$2,%hi(TRISD)
	lw	$2,%lo(TRISD)($2)
	li	$4,-17			# 0xffffffffffffffef
	and	$3,$2,$4
	lui	$2,%hi(TRISD)
	sw	$3,%lo(TRISD)($2)
	.loc 1 57 0
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
	.loc 1 61 0
	lui	$2,%hi(ANSELA)
	lw	$2,%lo(ANSELA)($2)
	li	$4,-33			# 0xffffffffffffffdf
	and	$3,$2,$4
	lui	$2,%hi(ANSELA)
	sw	$3,%lo(ANSELA)($2)
	.loc 1 63 0
	lui	$2,%hi(TRISA)
	lw	$2,%lo(TRISA)($2)
	ori	$3,$2,0x20
	lui	$2,%hi(TRISA)
	sw	$3,%lo(TRISA)($2)
	.loc 1 64 0
	lui	$2,%hi(TRISA)
	lw	$2,%lo(TRISA)($2)
	ori	$3,$2,0x10
	lui	$2,%hi(TRISA)
	sw	$3,%lo(TRISA)($2)
	.loc 1 68 0
	lui	$2,%hi(TRISE)
	lw	$2,%lo(TRISE)($2)
	li	$4,-16			# 0xfffffffffffffff0
	and	$3,$2,$4
	lui	$2,%hi(TRISE)
	sw	$3,%lo(TRISE)($2)
	.loc 1 70 0
	lui	$2,%hi(TRISDCLR)
	li	$3,2048			# 0x800
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 71 0
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
	.globl	InitTimer2AndOC5And4And8
.LFB5 = .
	.loc 1 81 0
	.set	nomips16
	.set	nomicromips
	.ent	InitTimer2AndOC5And4And8
	.type	InitTimer2AndOC5And4And8, @function
InitTimer2AndOC5And4And8:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI4 = .
	sw	$fp,4($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	.loc 1 84 0
	lui	$2,%hi(T2CON)
	sw	$0,%lo(T2CON)($2)
	.loc 1 85 0
	lui	$3,%hi(T2CON)
	lhu	$2,%lo(T2CON)($3)
	li	$4,7			# 0x7
	ins	$2,$4,4,3
	sh	$2,%lo(T2CON)($3)
	.loc 1 86 0
	lui	$2,%hi(TMR2)
	sw	$0,%lo(TMR2)($2)
	.loc 1 88 0
	lui	$2,%hi(PR2)
	li	$3,389			# 0x185
	sw	$3,%lo(PR2)($2)
	.loc 1 91 0
	lui	$2,%hi(OC8R)
	li	$3,195			# 0xc3
	sw	$3,%lo(OC8R)($2)
	.loc 1 93 0
	lui	$2,%hi(OC8RS)
	li	$3,195			# 0xc3
	sw	$3,%lo(OC8RS)($2)
	.loc 1 95 0
	lui	$3,%hi(OC8CON)
	lhu	$2,%lo(OC8CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(OC8CON)($3)
	.loc 1 96 0
	lui	$3,%hi(OC8CON)
	lhu	$2,%lo(OC8CON)($3)
	ins	$2,$0,5,1
	sh	$2,%lo(OC8CON)($3)
	.loc 1 97 0
	lui	$3,%hi(OC8CON)
	lhu	$2,%lo(OC8CON)($3)
	ins	$2,$0,3,1
	sh	$2,%lo(OC8CON)($3)
	.loc 1 98 0
	lui	$3,%hi(OC8CON)
	lhu	$2,%lo(OC8CON)($3)
	li	$4,6			# 0x6
	ins	$2,$4,0,3
	sh	$2,%lo(OC8CON)($3)
	.loc 1 100 0
	lui	$2,%hi(RPD12R)
	li	$3,12			# 0xc
	sw	$3,%lo(RPD12R)($2)
	.loc 1 103 0
	lui	$2,%hi(OC5R)
	li	$3,195			# 0xc3
	sw	$3,%lo(OC5R)($2)
	.loc 1 105 0
	lui	$2,%hi(OC5RS)
	li	$3,195			# 0xc3
	sw	$3,%lo(OC5RS)($2)
	.loc 1 107 0
	lui	$3,%hi(OC5CON)
	lhu	$2,%lo(OC5CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(OC5CON)($3)
	.loc 1 108 0
	lui	$3,%hi(OC5CON)
	lhu	$2,%lo(OC5CON)($3)
	ins	$2,$0,5,1
	sh	$2,%lo(OC5CON)($3)
	.loc 1 109 0
	lui	$3,%hi(OC5CON)
	lhu	$2,%lo(OC5CON)($3)
	ins	$2,$0,3,1
	sh	$2,%lo(OC5CON)($3)
	.loc 1 110 0
	lui	$3,%hi(OC5CON)
	lhu	$2,%lo(OC5CON)($3)
	li	$4,6			# 0x6
	ins	$2,$4,0,3
	sh	$2,%lo(OC5CON)($3)
	.loc 1 112 0
	lui	$2,%hi(RPE9R)
	li	$3,11			# 0xb
	sw	$3,%lo(RPE9R)($2)
	.loc 1 115 0
	lui	$2,%hi(OC4R)
	li	$3,195			# 0xc3
	sw	$3,%lo(OC4R)($2)
	.loc 1 117 0
	lui	$2,%hi(OC4RS)
	li	$3,195			# 0xc3
	sw	$3,%lo(OC4RS)($2)
	.loc 1 119 0
	lui	$3,%hi(OC4CON)
	lhu	$2,%lo(OC4CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(OC4CON)($3)
	.loc 1 120 0
	lui	$3,%hi(OC4CON)
	lhu	$2,%lo(OC4CON)($3)
	ins	$2,$0,5,1
	sh	$2,%lo(OC4CON)($3)
	.loc 1 121 0
	lui	$3,%hi(OC4CON)
	lhu	$2,%lo(OC4CON)($3)
	ins	$2,$0,3,1
	sh	$2,%lo(OC4CON)($3)
	.loc 1 122 0
	lui	$3,%hi(OC4CON)
	lhu	$2,%lo(OC4CON)($3)
	li	$4,6			# 0x6
	ins	$2,$4,0,3
	sh	$2,%lo(OC4CON)($3)
	.loc 1 124 0
	lui	$2,%hi(RPE5R)
	li	$3,11			# 0xb
	sw	$3,%lo(RPE5R)($2)
	.loc 1 127 0
	lui	$3,%hi(T2CON)
	lhu	$2,%lo(T2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(T2CON)($3)
	.loc 1 129 0
	lui	$2,%hi(OC8RS)
	sw	$0,%lo(OC8RS)($2)
	.loc 1 130 0
	lui	$2,%hi(OC5RS)
	sw	$0,%lo(OC5RS)($2)
	.loc 1 131 0
	lui	$2,%hi(OC4RS)
	sw	$0,%lo(OC4RS)($2)
	.loc 1 132 0
	move	$sp,$fp
.LCFI7 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	InitTimer2AndOC5And4And8
.LFE5:
	.size	InitTimer2AndOC5And4And8, .-InitTimer2AndOC5And4And8
	.align	2
	.globl	init_app
.LFB6 = .
	.loc 1 141 0
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
.LCFI8 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	.loc 1 143 0
	jal	InitTimer2AndOC5And4And8
	nop

	.loc 1 144 0
	jal	init_gpio
	nop

	.loc 1 145 0
	jal	uart4_init
	nop

	.loc 1 146 0
	move	$sp,$fp
.LCFI11 = .
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
.LFE6:
	.size	init_app, .-init_app
	.align	2
	.globl	rgb
.LFB7 = .
	.loc 1 154 0
	.set	nomips16
	.set	nomicromips
	.ent	rgb
	.type	rgb, @function
rgb:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI12 = .
	sw	$fp,4($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	.loc 1 155 0
	lw	$3,8($fp)
	lui	$2,%hi(OC8RS)
	sw	$3,%lo(OC8RS)($2)
	.loc 1 156 0
	lw	$3,12($fp)
	lui	$2,%hi(OC5RS)
	sw	$3,%lo(OC5RS)($2)
	.loc 1 157 0
	lw	$3,16($fp)
	lui	$2,%hi(OC4RS)
	sw	$3,%lo(OC4RS)($2)
	.loc 1 158 0
	move	$sp,$fp
.LCFI15 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	rgb
.LFE7:
	.size	rgb, .-rgb
	.align	2
	.globl	start_program
.LFB8 = .
	.loc 1 173 0
	.set	nomips16
	.set	nomicromips
	.ent	start_program
	.type	start_program, @function
start_program:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI16 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
.L20:
.LBB2 = .
	.loc 1 177 0
	li	$2,32			# 0x20
	sb	$2,20($fp)
	.loc 1 178 0
	sw	$0,24($fp)
	.loc 1 179 0
	sw	$0,28($fp)
	.loc 1 180 0
	sw	$0,16($fp)
	.loc 1 181 0
	sw	$0,32($fp)
	.loc 1 182 0
	jal	uart4_getc
	nop

	sb	$2,20($fp)
	.loc 1 183 0
	lb	$2,20($fp)
	li	$3,98			# 0x62
	beq	$2,$3,.L18
	nop

	slt	$3,$2,99
	beq	$3,$0,.L8
	nop

	li	$3,97			# 0x61
	beq	$2,$3,.L9
	nop

	j	.L6
	nop

.L8:
	li	$3,99			# 0x63
	beq	$2,$3,.L13
	nop

	li	$3,102			# 0x66
	beq	$2,$3,.L11
	nop

	j	.L6
	nop

.L9:
.LBB3 = .
	.loc 1 185 0
	lui	$2,%hi(OC8RS)
	li	$3,4095			# 0xfff
	sw	$3,%lo(OC8RS)($2)
	.loc 1 186 0
	lui	$2,%hi(OC5RS)
	li	$3,4095			# 0xfff
	sw	$3,%lo(OC5RS)($2)
	.loc 1 187 0
	lui	$2,%hi(OC4RS)
	li	$3,4095			# 0xfff
	sw	$3,%lo(OC4RS)($2)
	.loc 1 188 0
	j	.L12
	nop

.L11:
	.loc 1 190 0
	jal	fade
	nop

	.loc 1 191 0
	j	.L12
	nop

.L14:
.LBB4 = .
	.loc 1 195 0
	jal	uart4_getc
	nop

	move	$3,$2
	lw	$2,16($fp)
	addiu	$4,$fp,16
	addu	$2,$4,$2
	sb	$3,16($2)
	.loc 1 196 0
	li	$4,10			# 0xa
	jal	delay
	nop

.LBE4 = .
	.loc 1 194 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L13:
	lw	$2,16($fp)
	slt	$2,$2,3
	bne	$2,$0,.L14
	nop

	.loc 1 198 0
	addiu	$2,$fp,32
	move	$4,$2
	jal	atoi
	nop

	sw	$2,24($fp)
	.loc 1 199 0
	lw	$2,24($fp)
	slt	$2,$2,100
	bne	$2,$0,.L15
	nop

	lw	$2,24($fp)
	slt	$2,$2,356
	beq	$2,$0,.L15
	nop

	.loc 1 200 0
	li	$3,355			# 0x163
	lw	$2,24($fp)
	subu	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(OC8RS)
	sw	$3,%lo(OC8RS)($2)
	j	.L16
	nop

.L15:
	.loc 1 202 0
	lw	$2,24($fp)
	slt	$2,$2,356
	bne	$2,$0,.L17
	nop

	lw	$2,24($fp)
	slt	$2,$2,512
	beq	$2,$0,.L17
	nop

	.loc 1 203 0
	li	$3,511			# 0x1ff
	lw	$2,24($fp)
	subu	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(OC5RS)
	sw	$3,%lo(OC5RS)($2)
	j	.L16
	nop

.L17:
	.loc 1 205 0
	lw	$2,24($fp)
	slt	$2,$2,512
	bne	$2,$0,.L16
	nop

	lw	$2,24($fp)
	slt	$2,$2,768
	beq	$2,$0,.L16
	nop

	.loc 1 206 0
	li	$3,767			# 0x2ff
	lw	$2,24($fp)
	subu	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(OC4RS)
	sw	$3,%lo(OC4RS)($2)
.L16:
	.loc 1 209 0
	li	$2,32			# 0x20
	sb	$2,20($fp)
	.loc 1 210 0
	j	.L12
	nop

.L19:
.LBB5 = .
	.loc 1 214 0
	jal	uart4_getc
	nop

	move	$3,$2
	lw	$2,16($fp)
	addiu	$4,$fp,16
	addu	$2,$4,$2
	sb	$3,16($2)
	.loc 1 215 0
	li	$4,10			# 0xa
	jal	delay
	nop

.LBE5 = .
	.loc 1 213 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L18:
	lw	$2,16($fp)
	slt	$2,$2,3
	bne	$2,$0,.L19
	nop

	.loc 1 217 0
	addiu	$2,$fp,32
	move	$4,$2
	jal	atoi
	nop

	sw	$2,28($fp)
	.loc 1 218 0
	lw	$4,28($fp)
	jal	brightness
	nop

.L6:
	.loc 1 221 0
	li	$2,32			# 0x20
	sb	$2,20($fp)
	.loc 1 222 0
	nop
.L12:
.LBE3 = .
.LBE2 = .
	.loc 1 224 0
	j	.L20
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	start_program
.LFE8:
	.size	start_program, .-start_program
	.align	2
	.globl	fade
.LFB9 = .
	.loc 1 233 0
	.set	nomips16
	.set	nomicromips
	.ent	fade
	.type	fade, @function
fade:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI19 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI20 = .
	move	$fp,$sp
.LCFI21 = .
	.loc 1 234 0
	sw	$0,16($fp)
	.loc 1 236 0
	sw	$0,16($fp)
	j	.L22
	nop

.L23:
.LBB6 = .
	.loc 1 237 0
	lw	$3,16($fp)
	lui	$2,%hi(OC8RS)
	sw	$3,%lo(OC8RS)($2)
	.loc 1 238 0
	li	$3,255			# 0xff
	lw	$2,16($fp)
	subu	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(OC5RS)
	sw	$3,%lo(OC5RS)($2)
	.loc 1 239 0
	lui	$2,%hi(OC4RS)
	sw	$0,%lo(OC4RS)($2)
	.loc 1 240 0
	li	$4,20			# 0x14
	jal	delay
	nop

.LBE6 = .
	.loc 1 236 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L22:
	lw	$2,16($fp)
	slt	$2,$2,255
	bne	$2,$0,.L23
	nop

	.loc 1 244 0
	sw	$0,16($fp)
	j	.L24
	nop

.L25:
.LBB7 = .
	.loc 1 245 0
	li	$3,255			# 0xff
	lw	$2,16($fp)
	subu	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(OC8RS)
	sw	$3,%lo(OC8RS)($2)
	.loc 1 246 0
	lui	$2,%hi(OC5RS)
	sw	$0,%lo(OC5RS)($2)
	.loc 1 247 0
	lw	$3,16($fp)
	lui	$2,%hi(OC4RS)
	sw	$3,%lo(OC4RS)($2)
	.loc 1 248 0
	li	$4,20			# 0x14
	jal	delay
	nop

.LBE7 = .
	.loc 1 244 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L24:
	lw	$2,16($fp)
	slt	$2,$2,255
	bne	$2,$0,.L25
	nop

	.loc 1 252 0
	sw	$0,16($fp)
	j	.L26
	nop

.L27:
.LBB8 = .
	.loc 1 253 0
	lui	$2,%hi(OC8RS)
	sw	$0,%lo(OC8RS)($2)
	.loc 1 254 0
	lw	$3,16($fp)
	lui	$2,%hi(OC5RS)
	sw	$3,%lo(OC5RS)($2)
	.loc 1 255 0
	li	$3,255			# 0xff
	lw	$2,16($fp)
	subu	$2,$3,$2
	move	$3,$2
	lui	$2,%hi(OC4RS)
	sw	$3,%lo(OC4RS)($2)
	.loc 1 256 0
	li	$4,20			# 0x14
	jal	delay
	nop

.LBE8 = .
	.loc 1 252 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L26:
	lw	$2,16($fp)
	slt	$2,$2,255
	bne	$2,$0,.L27
	nop

	.loc 1 258 0
	move	$sp,$fp
.LCFI22 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	fade
.LFE9:
	.size	fade, .-fade
	.align	2
	.globl	delay
.LFB10 = .
	.loc 1 266 0
	.set	nomips16
	.set	nomicromips
	.ent	delay
	.type	delay, @function
delay:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI23 = .
	sw	$fp,12($sp)
.LCFI24 = .
	move	$fp,$sp
.LCFI25 = .
	sw	$4,16($fp)
	.loc 1 268 0
	j	.L29
	nop

.L32:
	.loc 1 269 0
	sw	$0,0($fp)
	j	.L30
	nop

.L31:
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L30:
	lw	$2,0($fp)
	sltu	$2,$2,10000
	bne	$2,$0,.L31
	nop

	.loc 1 268 0
	lw	$2,16($fp)
	addiu	$2,$2,-1
	sw	$2,16($fp)
.L29:
	lw	$2,16($fp)
	bne	$2,$0,.L32
	nop

	.loc 1 272 0
	move	$sp,$fp
.LCFI26 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	delay
.LFE10:
	.size	delay, .-delay
	.align	2
	.globl	brightness
.LFB11 = .
	.loc 1 280 0
	.set	nomips16
	.set	nomicromips
	.ent	brightness
	.type	brightness, @function
brightness:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI27 = .
	sw	$fp,4($sp)
.LCFI28 = .
	move	$fp,$sp
.LCFI29 = .
	sw	$4,8($fp)
	.loc 1 282 0
	lw	$2,8($fp)
	addiu	$2,$2,-100
	move	$3,$2
	lui	$2,%hi(OC8RS)
	sw	$3,%lo(OC8RS)($2)
	.loc 1 283 0
	lw	$2,8($fp)
	addiu	$2,$2,-100
	move	$3,$2
	lui	$2,%hi(OC5RS)
	sw	$3,%lo(OC5RS)($2)
	.loc 1 284 0
	lw	$2,8($fp)
	addiu	$2,$2,-100
	move	$3,$2
	lui	$2,%hi(OC4RS)
	sw	$3,%lo(OC4RS)($2)
	.loc 1 285 0
	move	$sp,$fp
.LCFI30 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	brightness
.LFE11:
	.size	brightness, .-brightness
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x18
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
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI12-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI16-.LFB8
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI19-.LFB9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI23-.LFB10
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI27-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE14:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x103a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"user.c\000"
	.ascii	"C:/Users/3/Desktop/RGR_LEDstrip.X\000"
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
	.2byte	0x2205
	.4byte	0xf2
	.uleb128 0x4
	.ascii	"TCS\000"
	.byte	0x2
	.2byte	0x2207
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T32\000"
	.byte	0x2
	.2byte	0x2209
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS\000"
	.byte	0x2
	.2byte	0x220a
	.4byte	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TGATE\000"
	.byte	0x2
	.2byte	0x220b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x220d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x220f
	.4byte	0x68
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
	.2byte	0x2211
	.4byte	0x13b
	.uleb128 0x4
	.ascii	"TCKPS0\000"
	.byte	0x2
	.2byte	0x2213
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS1\000"
	.byte	0x2
	.2byte	0x2214
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS2\000"
	.byte	0x2
	.2byte	0x2215
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2217
	.4byte	0x16b
	.uleb128 0x4
	.ascii	"TSIDL\000"
	.byte	0x2
	.2byte	0x2219
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TON\000"
	.byte	0x2
	.2byte	0x221b
	.4byte	0x68
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
	.2byte	0x221d
	.4byte	0x185
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x221e
	.4byte	0x68
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
	.2byte	0x2204
	.4byte	0x1a3
	.uleb128 0x6
	.4byte	0x78
	.uleb128 0x6
	.4byte	0xf2
	.uleb128 0x6
	.4byte	0x13b
	.uleb128 0x6
	.4byte	0x16b
	.byte	0
	.uleb128 0x7
	.ascii	"__T2CONbits_t\000"
	.byte	0x2
	.2byte	0x2220
	.4byte	0x185
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2537
	.4byte	0x232
	.uleb128 0x4
	.ascii	"OCM\000"
	.byte	0x2
	.2byte	0x2538
	.4byte	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x2539
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCFLT\000"
	.byte	0x2
	.2byte	0x253a
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC32\000"
	.byte	0x2
	.2byte	0x253b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x253d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x253f
	.4byte	0x68
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
	.2byte	0x2541
	.4byte	0x275
	.uleb128 0x4
	.ascii	"OCM0\000"
	.byte	0x2
	.2byte	0x2542
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCM1\000"
	.byte	0x2
	.2byte	0x2543
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCM2\000"
	.byte	0x2
	.2byte	0x2544
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2546
	.4byte	0x291
	.uleb128 0x8
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x2548
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x254a
	.4byte	0x2ab
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x254b
	.4byte	0x68
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
	.2byte	0x2536
	.4byte	0x2c9
	.uleb128 0x6
	.4byte	0x1b9
	.uleb128 0x6
	.4byte	0x232
	.uleb128 0x6
	.4byte	0x275
	.uleb128 0x6
	.4byte	0x291
	.byte	0
	.uleb128 0x7
	.ascii	"__OC4CONbits_t\000"
	.byte	0x2
	.2byte	0x254d
	.4byte	0x2ab
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x255f
	.4byte	0x359
	.uleb128 0x4
	.ascii	"OCM\000"
	.byte	0x2
	.2byte	0x2560
	.4byte	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x2561
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCFLT\000"
	.byte	0x2
	.2byte	0x2562
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC32\000"
	.byte	0x2
	.2byte	0x2563
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x2565
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x2567
	.4byte	0x68
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
	.2byte	0x2569
	.4byte	0x39c
	.uleb128 0x4
	.ascii	"OCM0\000"
	.byte	0x2
	.2byte	0x256a
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCM1\000"
	.byte	0x2
	.2byte	0x256b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCM2\000"
	.byte	0x2
	.2byte	0x256c
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x256e
	.4byte	0x3b8
	.uleb128 0x8
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x2570
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2572
	.4byte	0x3d2
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2573
	.4byte	0x68
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
	.2byte	0x255e
	.4byte	0x3f0
	.uleb128 0x6
	.4byte	0x2e0
	.uleb128 0x6
	.4byte	0x359
	.uleb128 0x6
	.4byte	0x39c
	.uleb128 0x6
	.4byte	0x3b8
	.byte	0
	.uleb128 0x7
	.ascii	"__OC5CONbits_t\000"
	.byte	0x2
	.2byte	0x2575
	.4byte	0x3d2
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x25d7
	.4byte	0x480
	.uleb128 0x4
	.ascii	"OCM\000"
	.byte	0x2
	.2byte	0x25d8
	.4byte	0x68
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x25d9
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCFLT\000"
	.byte	0x2
	.2byte	0x25da
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC32\000"
	.byte	0x2
	.2byte	0x25db
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x25dd
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x25df
	.4byte	0x68
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
	.2byte	0x25e1
	.4byte	0x4c3
	.uleb128 0x4
	.ascii	"OCM0\000"
	.byte	0x2
	.2byte	0x25e2
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCM1\000"
	.byte	0x2
	.2byte	0x25e3
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OCM2\000"
	.byte	0x2
	.2byte	0x25e4
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x25e6
	.4byte	0x4df
	.uleb128 0x8
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x25e8
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x25ea
	.4byte	0x4f9
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x25eb
	.4byte	0x68
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
	.2byte	0x25d6
	.4byte	0x517
	.uleb128 0x6
	.4byte	0x407
	.uleb128 0x6
	.4byte	0x480
	.uleb128 0x6
	.4byte	0x4c3
	.uleb128 0x6
	.4byte	0x4df
	.byte	0
	.uleb128 0x7
	.ascii	"__OC8CONbits_t\000"
	.byte	0x2
	.2byte	0x25ed
	.4byte	0x4f9
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d2a
	.4byte	0x67e
	.uleb128 0x4
	.ascii	"ANSB0\000"
	.byte	0x2
	.2byte	0x2d2b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB1\000"
	.byte	0x2
	.2byte	0x2d2c
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB2\000"
	.byte	0x2
	.2byte	0x2d2d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB3\000"
	.byte	0x2
	.2byte	0x2d2e
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB4\000"
	.byte	0x2
	.2byte	0x2d2f
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB5\000"
	.byte	0x2
	.2byte	0x2d30
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB6\000"
	.byte	0x2
	.2byte	0x2d31
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB7\000"
	.byte	0x2
	.2byte	0x2d32
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB8\000"
	.byte	0x2
	.2byte	0x2d33
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB9\000"
	.byte	0x2
	.2byte	0x2d34
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB10\000"
	.byte	0x2
	.2byte	0x2d35
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB11\000"
	.byte	0x2
	.2byte	0x2d36
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB12\000"
	.byte	0x2
	.2byte	0x2d37
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB13\000"
	.byte	0x2
	.2byte	0x2d38
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB14\000"
	.byte	0x2
	.2byte	0x2d39
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB15\000"
	.byte	0x2
	.2byte	0x2d3a
	.4byte	0x68
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
	.2byte	0x2d3c
	.4byte	0x698
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d3d
	.4byte	0x68
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
	.2byte	0x2d29
	.4byte	0x6ac
	.uleb128 0x6
	.4byte	0x52e
	.uleb128 0x6
	.4byte	0x67e
	.byte	0
	.uleb128 0x7
	.ascii	"__ANSELBbits_t\000"
	.byte	0x2
	.2byte	0x2d3f
	.4byte	0x698
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d81
	.4byte	0x813
	.uleb128 0x4
	.ascii	"LATB0\000"
	.byte	0x2
	.2byte	0x2d82
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB1\000"
	.byte	0x2
	.2byte	0x2d83
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB2\000"
	.byte	0x2
	.2byte	0x2d84
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB3\000"
	.byte	0x2
	.2byte	0x2d85
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB4\000"
	.byte	0x2
	.2byte	0x2d86
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB5\000"
	.byte	0x2
	.2byte	0x2d87
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB6\000"
	.byte	0x2
	.2byte	0x2d88
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB7\000"
	.byte	0x2
	.2byte	0x2d89
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB8\000"
	.byte	0x2
	.2byte	0x2d8a
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB9\000"
	.byte	0x2
	.2byte	0x2d8b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB10\000"
	.byte	0x2
	.2byte	0x2d8c
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB11\000"
	.byte	0x2
	.2byte	0x2d8d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB12\000"
	.byte	0x2
	.2byte	0x2d8e
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB13\000"
	.byte	0x2
	.2byte	0x2d8f
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB14\000"
	.byte	0x2
	.2byte	0x2d90
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB15\000"
	.byte	0x2
	.2byte	0x2d91
	.4byte	0x68
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
	.2byte	0x2d93
	.4byte	0x82d
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d94
	.4byte	0x68
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
	.2byte	0x2d80
	.4byte	0x841
	.uleb128 0x6
	.4byte	0x6c3
	.uleb128 0x6
	.4byte	0x813
	.byte	0
	.uleb128 0x7
	.ascii	"__LATBbits_t\000"
	.byte	0x2
	.2byte	0x2d96
	.4byte	0x82d
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2fd9
	.4byte	0x96a
	.uleb128 0x4
	.ascii	"LATD0\000"
	.byte	0x2
	.2byte	0x2fda
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD1\000"
	.byte	0x2
	.2byte	0x2fdb
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD2\000"
	.byte	0x2
	.2byte	0x2fdc
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD3\000"
	.byte	0x2
	.2byte	0x2fdd
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD4\000"
	.byte	0x2
	.2byte	0x2fde
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD5\000"
	.byte	0x2
	.2byte	0x2fdf
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD9\000"
	.byte	0x2
	.2byte	0x2fe1
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD10\000"
	.byte	0x2
	.2byte	0x2fe2
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD11\000"
	.byte	0x2
	.2byte	0x2fe3
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD12\000"
	.byte	0x2
	.2byte	0x2fe4
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD13\000"
	.byte	0x2
	.2byte	0x2fe5
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD14\000"
	.byte	0x2
	.2byte	0x2fe6
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD15\000"
	.byte	0x2
	.2byte	0x2fe7
	.4byte	0x68
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
	.2byte	0x2fe9
	.4byte	0x984
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2fea
	.4byte	0x68
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
	.2byte	0x2fd8
	.4byte	0x998
	.uleb128 0x6
	.4byte	0x856
	.uleb128 0x6
	.4byte	0x96a
	.byte	0
	.uleb128 0x7
	.ascii	"__LATDbits_t\000"
	.byte	0x2
	.2byte	0x2fec
	.4byte	0x984
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x3332
	.4byte	0xa83
	.uleb128 0x4
	.ascii	"LATG0\000"
	.byte	0x2
	.2byte	0x3333
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG1\000"
	.byte	0x2
	.2byte	0x3334
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG6\000"
	.byte	0x2
	.2byte	0x3336
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG7\000"
	.byte	0x2
	.2byte	0x3337
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG8\000"
	.byte	0x2
	.2byte	0x3338
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG9\000"
	.byte	0x2
	.2byte	0x3339
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG12\000"
	.byte	0x2
	.2byte	0x333b
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG13\000"
	.byte	0x2
	.2byte	0x333c
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG14\000"
	.byte	0x2
	.2byte	0x333d
	.4byte	0x68
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG15\000"
	.byte	0x2
	.2byte	0x333e
	.4byte	0x68
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
	.2byte	0x3340
	.4byte	0xa9d
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x3341
	.4byte	0x68
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
	.2byte	0x3331
	.4byte	0xab1
	.uleb128 0x6
	.4byte	0x9ad
	.uleb128 0x6
	.4byte	0xa83
	.byte	0
	.uleb128 0x7
	.ascii	"__LATGbits_t\000"
	.byte	0x2
	.2byte	0x3343
	.4byte	0xa9d
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
	.uleb128 0x9
	.ascii	"__uint32_t\000"
	.byte	0x3
	.byte	0x33
	.4byte	0x68
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0x1
	.ascii	"InitTimer2AndOC5And4And8\000"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.ascii	"init_app\000"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.ascii	"rgb\000"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xc10
	.uleb128 0xd
	.ascii	"red\000"
	.byte	0x1
	.byte	0x99
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.ascii	"green\000"
	.byte	0x1
	.byte	0x99
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xd
	.ascii	"blue\000"
	.byte	0x1
	.byte	0x99
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"start_program\000"
	.byte	0x1
	.byte	0xac
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xcec
	.uleb128 0xf
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x10
	.ascii	"cmd\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0xcec
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.ascii	"color\000"
	.byte	0x1
	.byte	0xb2
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x10
	.ascii	"bright\000"
	.byte	0x1
	.byte	0xb3
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb4
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.ascii	"rgb\000"
	.byte	0x1
	.byte	0xb5
	.4byte	0xcf4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xf
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x11
	.byte	0x1
	.ascii	"fade\000"
	.byte	0x1
	.byte	0xbe
	.4byte	0xae7
	.byte	0x1
	.4byte	0xca0
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0xda
	.4byte	0xae7
	.byte	0x1
	.4byte	0xcb3
	.uleb128 0x12
	.byte	0
	.uleb128 0x14
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0xcd0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0xc4
	.4byte	0xae7
	.byte	0x1
	.uleb128 0x12
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0xc4
	.4byte	0xae7
	.byte	0x1
	.uleb128 0x12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x16
	.4byte	0xcec
	.4byte	0xd04
	.uleb128 0x17
	.4byte	0xd04
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0xe
	.byte	0x1
	.ascii	"fade\000"
	.byte	0x1
	.byte	0xe8
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xd88
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.byte	0xea
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x14
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0xd51
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0xc4
	.4byte	0xae7
	.byte	0x1
	.uleb128 0x12
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0xd6e
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0xc4
	.4byte	0xae7
	.byte	0x1
	.uleb128 0x12
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0xc4
	.4byte	0xae7
	.byte	0x1
	.uleb128 0x12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x109
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xdbc
	.uleb128 0x19
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x109
	.4byte	0xb31
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10b
	.4byte	0xdbc
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.4byte	0xb31
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xded
	.uleb128 0x19
	.ascii	"bright\000"
	.byte	0x1
	.2byte	0x117
	.4byte	0xae7
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x1c
	.ascii	"RPD12R\000"
	.byte	0x2
	.2byte	0x5ba
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x68
	.uleb128 0x1c
	.ascii	"RPE5R\000"
	.byte	0x2
	.2byte	0x5d2
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"RPE9R\000"
	.byte	0x2
	.2byte	0x5de
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"T2CON\000"
	.byte	0x2
	.2byte	0x2203
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"T2CONbits\000"
	.byte	0x2
	.2byte	0x2221
	.ascii	"T2CON\000"
	.4byte	0xe4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x1a3
	.uleb128 0x1c
	.ascii	"TMR2\000"
	.byte	0x2
	.2byte	0x2226
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"PR2\000"
	.byte	0x2
	.2byte	0x222b
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"OC4CONbits\000"
	.byte	0x2
	.2byte	0x254e
	.ascii	"OC4CON\000"
	.4byte	0xe8b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x2c9
	.uleb128 0x1c
	.ascii	"OC4R\000"
	.byte	0x2
	.2byte	0x2553
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"OC4RS\000"
	.byte	0x2
	.2byte	0x2558
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"OC5CONbits\000"
	.byte	0x2
	.2byte	0x2576
	.ascii	"OC5CON\000"
	.4byte	0xecb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x3f0
	.uleb128 0x1c
	.ascii	"OC5R\000"
	.byte	0x2
	.2byte	0x257b
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"OC5RS\000"
	.byte	0x2
	.2byte	0x2580
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"OC8CONbits\000"
	.byte	0x2
	.2byte	0x25ee
	.ascii	"OC8CON\000"
	.4byte	0xf0b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x517
	.uleb128 0x1c
	.ascii	"OC8R\000"
	.byte	0x2
	.2byte	0x25f3
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"OC8RS\000"
	.byte	0x2
	.2byte	0x25f8
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"ANSELA\000"
	.byte	0x2
	.2byte	0x2be9
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"TRISA\000"
	.byte	0x2
	.2byte	0x2bfd
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"ANSELB\000"
	.byte	0x2
	.2byte	0x2d28
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"ANSELBbits\000"
	.byte	0x2
	.2byte	0x2d40
	.ascii	"ANSELB\000"
	.4byte	0xf7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x6ac
	.uleb128 0x1c
	.ascii	"TRISB\000"
	.byte	0x2
	.2byte	0x2d45
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"LATBbits\000"
	.byte	0x2
	.2byte	0x2d97
	.ascii	"LATB\000"
	.4byte	0xfaa
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x841
	.uleb128 0x1c
	.ascii	"TRISD\000"
	.byte	0x2
	.2byte	0x2fa1
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"TRISDCLR\000"
	.byte	0x2
	.2byte	0x2fb8
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"LATDbits\000"
	.byte	0x2
	.2byte	0x2fed
	.ascii	"LATD\000"
	.4byte	0xfea
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x998
	.uleb128 0x1c
	.ascii	"TRISE\000"
	.byte	0x2
	.2byte	0x30ca
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"ANSELG\000"
	.byte	0x2
	.2byte	0x32ea
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"TRISG\000"
	.byte	0x2
	.2byte	0x32fe
	.4byte	0xdfe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.ascii	"LATGbits\000"
	.byte	0x2
	.2byte	0x3344
	.ascii	"LATG\000"
	.4byte	0x1038
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0xab1
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF2:
	.ascii	"brightness\000"
.LASF0:
	.ascii	"OCTSEL\000"
.LASF3:
	.ascii	"delay\000"
.LASF1:
	.ascii	"OCSIDL\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
