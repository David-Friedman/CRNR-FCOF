	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseTimer.part.0, %function
loseTimer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L20
	ldr	r1, .L20+4
	ldr	r3, [r2]
	ldrh	r0, [r1, #12]
	ldr	r1, .L20+8
	cmp	r3, #10
	str	r0, [r1]
	bxgt	lr
	ldr	r1, .L20+12
	ldr	r1, [r1]
	cmp	r1, #0
	bxne	lr
	add	r1, r3, #1
	push	{r4, lr}
	str	r1, [r2]
	cmp	r3, #10
	ldrls	pc, [pc, r3, asl #2]
	b	.L1
.L4:
	.word	.L3
	.word	.L5
	.word	.L6
	.word	.L7
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
.L14:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+20
	ldr	r0, .L20+24
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
.L1:
	pop	{r4, lr}
	bx	lr
.L3:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+32
	ldr	r0, .L20+36
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L5:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+40
	ldr	r0, .L20+44
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L6:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+48
	ldr	r0, .L20+52
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L7:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+56
	ldr	r0, .L20+60
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L8:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+64
	ldr	r0, .L20+68
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L9:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+72
	ldr	r0, .L20+76
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L10:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+80
	ldr	r0, .L20+84
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L11:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+88
	ldr	r0, .L20+92
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L12:
	mov	r3, #0
	ldr	r2, .L20+16
	mov	r1, #10240
	ldr	r0, .L20+96
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L13:
	mov	r3, #0
	ldr	r2, .L20+16
	ldr	r1, .L20+100
	ldr	r0, .L20+104
	ldr	r4, .L20+28
	mov	lr, pc
	bx	r4
	b	.L1
.L21:
	.align	2
.L20:
	.word	loseTime
	.word	67109120
	.word	second
	.word	goTime
	.word	11025
	.word	23383
	.word	KnockoutCountSound
	.word	playSoundA
	.word	6613
	.word	OneCountSound
	.word	8777
	.word	TwoCountSound
	.word	8972
	.word	ThreeCountSound
	.word	8582
	.word	FourCountSound
	.word	8191
	.word	FiveCountSound
	.word	10405
	.word	SixCountSound
	.word	11448
	.word	SevenCountSound
	.word	12491
	.word	EightCountSound
	.word	NineCountSound
	.word	15382
	.word	TenCountSound
	.size	loseTimer.part.0, .-loseTimer.part.0
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L32
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L23
	ldr	r3, .L32+4
.L25:
	mov	r1, #67108864
	mov	r0, #175
	mov	r2, #128
	strh	r0, [r1, #80]	@ movhi
	str	r2, [r3]
.L24:
	mov	r5, #67108864
	mov	r0, #0
	mov	r1, #5888
	ldr	r2, .L32+8
	ldr	r4, .L32+12
	str	r0, [r2]
	mov	r3, #256
	strh	r1, [r5]	@ movhi
	ldr	r2, .L32+16
	ldr	r1, .L32+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L32+24
	ldr	r1, .L32+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1792
	ldr	r2, .L32+32
	ldr	r1, .L32+36
	strh	r3, [r5, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r5, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r5, #12]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L32+40
	mov	lr, pc
	bx	r4
	mov	r3, #2944
	mov	r2, #100663296
	ldr	r1, .L32+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L32+48
	ldr	r1, .L32+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #880
	ldr	r2, .L32+56
	ldr	r1, .L32+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L32+64
	ldr	r1, .L32+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #512
	ldr	r2, .L32+72
	ldr	r1, .L32+76
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L32+80
	ldr	r1, .L32+84
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #240
	ldr	r1, [r6]
	ldr	r3, .L32+88
	cmp	r1, #1
	str	r2, [r3]
	movne	r3, #70
	moveq	r3, #254
	mov	r5, #0
	mov	ip, #75
	ldrne	r2, .L32+92
	ldreq	r2, .L32+92
	movne	lr, r3
	str	r3, [r2]
	moveq	lr, r3
	mov	r0, #67108864
	mov	r1, #233
	mov	r3, #240
	ldr	r2, .L32+96
	str	r5, [r2]
	ldr	r2, .L32+100
	str	ip, [r2]
	ldr	r2, .L32+104
	str	ip, [r2]
	ldr	r2, .L32+108
	str	r1, [r2]
	strh	r3, [r0, #16]	@ movhi
	mov	r2, #117440512
	strh	lr, [r0, #18]	@ movhi
	mov	r3, #512
	strh	r1, [r0, #20]	@ movhi
	strh	ip, [r0, #22]	@ movhi
	ldr	r1, .L32+112
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+116
	mov	lr, pc
	bx	r3
	mov	r0, #1
	ldr	lr, .L32+120
	ldr	ip, .L32+124
	ldr	r1, .L32+128
	ldr	r3, .L32+132
	ldr	r2, .L32+136
	str	r5, [lr]
	str	r5, [ip]
	str	r5, [r1]
	str	r5, [r3]
	ldr	r4, .L32+140
	ldr	lr, .L32+144
	str	r5, [r2]
	ldr	ip, .L32+148
	ldr	r1, .L32+152
	ldr	r3, .L32+156
	ldr	r2, .L32+160
	str	r5, [r4]
	str	r5, [lr]
	str	r5, [ip]
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	ldr	r3, .L32+164
	mov	lr, pc
	bx	r3
	ldr	r4, .L32+168
	ldr	r2, .L32+172
	ldr	r1, .L32+176
	ldr	r0, .L32+180
	mov	r3, #1
	mov	lr, pc
	bx	r4
	ldr	r3, .L32+184
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r1, #16
	mov	lr, #223
	mov	ip, #128
	mov	r2, #0
	ldr	r0, .L32+188
	strh	lr, [r3, #80]	@ movhi
	str	ip, [r0]
	strh	r1, [r3, #84]	@ movhi
	ldr	r1, [r6]
	ldr	r3, .L32+4
	cmp	r1, #1
	str	r2, [r3]
	bne	.L24
	b	.L25
.L33:
	.align	2
.L32:
	.word	winCount
	.word	fpaNum2
	.word	cheatRedo
	.word	DMANow
	.word	83886592
	.word	menuspritesheetPal
	.word	100728832
	.word	menuspritesheetTiles
	.word	20740
	.word	7692
	.word	StreetPal
	.word	TitleTextTiles
	.word	100677632
	.word	TitleTextMap
	.word	100679680
	.word	CityTiles
	.word	100698112
	.word	CityMap
	.word	100712448
	.word	StreetTiles
	.word	100724736
	.word	StreetMap
	.word	hOff0
	.word	vOff0
	.word	hOff2
	.word	vOff2
	.word	vOff1
	.word	hOff1
	.word	shadowOAM
	.word	waitForVBlank
	.word	timeVar
	.word	timeVar2
	.word	vOffmenu
	.word	frameNum
	.word	cheat
	.word	lossCount
	.word	goTime
	.word	sliderNum
	.word	menuNum
	.word	state
	.word	start
	.word	stopSound
	.word	playSoundB
	.word	11025
	.word	1709020
	.word	TitleMusic2
	.word	hideSprites
	.word	.LANCHOR0
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, lr}
	ldr	r2, .L36
	ldr	r3, .L36+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L36+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L37:
	.align	2
.L36:
	.word	winCount
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	ldr	r2, .L42
	push	{r7, lr}
	ldr	r3, .L42+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L42+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L42+12
	mov	lr, pc
	bx	r3
	ldr	r9, .L42+16
	ldr	r8, .L42+20
	ldr	r10, .L42+24
	ldr	r6, .L42+28
	ldr	r7, .L42+32
	ldr	r4, .L42+36
	ldr	r5, .L42+40
.L40:
	ldr	r3, [r9]
	cmp	r3, r8
	ldrhne	r1, [r6]
	strhne	r1, [r10]	@ movhi
	ldrh	r2, [r4]
	ldrhne	r1, [r5, #48]
	strh	r2, [r7]	@ movhi
	strhne	r1, [r6]	@ movhi
	ldrh	r2, [r5, #48]
	strh	r2, [r4]	@ movhi
	mov	lr, pc
	bx	r3
	b	.L40
.L43:
	.align	2
.L42:
	.word	winCount
	.word	setupSounds
	.word	setupInterrupts
	.word	goToStart
	.word	state
	.word	pause
	.word	gameOldButtons
	.word	gameButtons
	.word	oldButtons
	.word	buttons
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L57
	ldr	r3, .L57+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, .L57+8
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #1
	add	r1, r2, r2, lsl #3
	sub	r2, r3, r1
	cmp	r2, #3
	cmpne	r3, r1
	moveq	r1, #1
	movne	r1, #0
	cmp	r2, #6
	movne	r2, r1
	orreq	r2, r1, #1
	cmp	r2, #0
	beq	.L45
	mov	r0, #67108864
	ldr	lr, .L57+12
	ldr	ip, .L57+16
	ldr	r1, [lr]
	ldr	r2, [ip]
	add	r1, r1, #1
	sub	r2, r2, #1
	str	r1, [lr]
	str	r2, [ip]
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	strh	r1, [r0, #28]	@ movhi
	strh	r2, [r0, #30]	@ movhi
.L45:
	add	r3, r3, #1
	cmp	r3, #400
	str	r3, [r4]
	beq	.L56
.L46:
	cmp	r3, #400
	ble	.L44
	mov	r3, #191
	mov	r1, #67108864
	ldr	r0, .L57+20
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.L49
	ldr	r3, .L57+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L44
	ldr	r3, .L57+28
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L44
	pop	{r4, r5, r6, lr}
	b	goToStart
.L49:
	sub	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r0]
	strh	r2, [r1, #84]	@ movhi
.L44:
	pop	{r4, r5, r6, lr}
	bx	lr
.L56:
	mov	r3, #0
	ldr	r2, .L57+32
	ldr	r1, .L57+36
	ldr	r0, .L57+40
	ldr	r5, .L57+44
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L46
.L58:
	.align	2
.L57:
	.word	timeVar
	.word	waitForVBlank
	.word	954437177
	.word	hOffmenu
	.word	vOffmenu
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	76534
	.word	VictoryMusic
	.word	playSoundB
	.size	win, .-win
	.align	2
	.global	trueWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	trueWin, %function
trueWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L96
	ldr	r3, [r6]
	sub	r2, r3, #31
	cmp	r2, #268
	bhi	.L60
	mov	r1, #67108864
	ldr	r2, .L96+4
	ldr	r0, .L96+8
	strh	r2, [r1, #80]	@ movhi
	ldr	r2, [r0]
	cmp	r2, #128
	bhi	.L62
	tst	r3, #1
	beq	.L62
	add	r2, r2, #1
	lsr	ip, r2, #3
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	str	r2, [r0]
	strh	ip, [r1, #82]	@ movhi
.L62:
	sub	r2, r3, #420
	sub	r2, r2, #1
	cmp	r2, #128
	bhi	.L64
	mov	r1, #67108864
	ldr	r2, .L96+12
	ldr	r0, .L96+8
	strh	r2, [r1, #80]	@ movhi
	ldr	r2, [r0]
	cmp	r2, #128
	bls	.L88
.L92:
	ldr	r5, .L96+16
	ldr	r7, .L96+20
.L70:
	cmp	r3, #1840
	bne	.L67
.L93:
	mov	r3, #67108864
	mov	r2, #16
	strh	r2, [r3, #84]	@ movhi
.L71:
	ldr	r4, .L96+24
	ldr	r3, [r4]
	cmp	r3, #0
	ldr	r3, [r5]
	addeq	r3, r3, #1
	streq	r3, [r5]
	cmp	r3, #3
	movgt	r3, #0
	strgt	r3, [r5]
	ble	.L95
.L75:
	mov	r3, #0
	str	r3, [r7]
.L76:
	ldr	r3, .L96+28
	mov	lr, pc
	bx	r3
	ldr	r5, .L96+32
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L96+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #6
	str	r3, [r4]
	movgt	r3, #0
	ldr	r2, [r6]
	add	r2, r2, #1
	str	r2, [r6]
	strgt	r3, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L95:
	cmp	r3, #1
	ble	.L75
	mov	r3, #2
	str	r3, [r7]
	b	.L76
.L60:
	cmp	r3, #300
	bne	.L62
	mov	r1, #0
	ldr	r2, .L96+8
	ldr	r5, .L96+16
	str	r1, [r2]
	ldr	r7, .L96+20
.L63:
	ldr	r2, .L96+40
	cmp	r3, r2
	bne	.L70
.L94:
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #84]	@ movhi
	b	.L71
.L88:
	tst	r3, #1
	movne	lr, #3072
	addne	r2, r2, #1
	lsrne	ip, r2, #3
	lslne	ip, ip, #16
	lsrne	ip, ip, #16
	strne	r2, [r0]
	strhne	ip, [r1, #82]	@ movhi
	strhne	lr, [r1]	@ movhi
	b	.L92
.L64:
	ldr	r2, .L96+44
	cmp	r3, r2
	bne	.L66
	mov	ip, #0
	mov	r2, #67108864
	ldr	r0, .L96+8
	ldr	r1, .L96+48
	str	ip, [r0]
	ldr	r5, .L96+16
	strh	r1, [r2, #80]	@ movhi
	ldr	r7, .L96+20
.L67:
	ldr	r2, .L96+52
	cmp	r3, r2
	beq	.L94
	ldr	r2, .L96+56
	cmp	r3, r2
	beq	.L93
	b	.L69
.L66:
	ble	.L92
	ldr	r0, .L96+8
	ldr	r2, [r0]
	cmp	r2, #128
	bhi	.L68
	tst	r3, #1
	beq	.L68
	mov	ip, #67108864
	mov	lr, #7168
	add	r2, r2, #1
	lsr	r1, r2, #3
	lsl	r1, r1, #16
	lsr	r1, r1, #16
	str	r2, [r0]
	strh	r1, [ip, #82]	@ movhi
	strh	lr, [ip]	@ movhi
.L68:
	ldr	r5, .L96+16
	ldr	r2, [r5]
	ldr	r7, .L96+20
	lsl	r2, r2, #7
	ldr	r0, [r7]
	ldr	r1, .L96+36
	add	r2, r2, #2
	orr	r2, r2, #4096
	ldr	ip, .L96+60
	add	r0, r0, #115
	strh	r2, [r1, #4]	@ movhi
	ldr	r2, .L96+64
	orr	r0, r0, #1024
	cmp	r3, ip
	strh	r0, [r1, #40]	@ movhi
	ldr	ip, .L96+68
	ldr	r0, .L96+72
	strh	r2, [r1, #2]	@ movhi
	ldr	r2, .L96+76
	strh	ip, [r1]	@ movhi
	strh	r0, [r1, #42]	@ movhi
	strh	r2, [r1, #44]	@ movhi
	bne	.L63
	mov	r2, #67108864
	mov	r0, #175
	mov	r1, #16
	strh	r0, [r2, #80]	@ movhi
	strh	r1, [r2, #84]	@ movhi
.L69:
	ldr	r2, .L96+80
	cmp	r3, r2
	ble	.L71
	bl	goToStart
	b	.L71
.L97:
	.align	2
.L96:
	.word	timeVar
	.word	8264
	.word	fpaNum2
	.word	8260
	.word	frameNum
	.word	sliderNum
	.word	timeVar2
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	1820
	.word	550
	.word	8272
	.word	1860
	.word	1880
	.word	1800
	.word	-32598
	.word	-31629
	.word	16434
	.word	4164
	.word	1890
	.size	trueWin, .-trueWin
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #512
	mov	ip, #133
	mov	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L156
	ldr	r3, .L156+4
	ldr	r2, [r4]
	smull	r6, r7, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r7, asr #3
	add	r3, r3, r3, lsl #2
	sub	r2, r2, r3, lsl #2
	cmp	r2, #9
	ldr	r3, .L156+8
	ldrgt	r2, .L156+12
	ldrle	r2, .L156+16
	ldr	r5, .L156+20
	strh	r2, [r3, #10]	@ movhi
	ldr	r2, [r5]
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	r1, [r3, #40]	@ movhi
	ldrgt	r1, .L156+24
	ldrle	r1, .L156+28
	cmp	r2, #0
	strh	ip, [r3]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r0, [r3, #12]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	beq	.L101
	ldr	r7, .L156+32
	ldr	r6, .L156+36
.L102:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L151
.L109:
	ldr	r3, .L156+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, .L156+44
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #1
	add	r1, r2, r2, lsl #3
	sub	r2, r3, r1
	cmp	r2, #3
	cmpne	r3, r1
	moveq	r3, #1
	movne	r3, #0
	cmp	r2, #6
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L119
	mov	r1, #67108864
	ldr	ip, .L156+48
	ldr	r0, .L156+52
	ldr	r2, [ip]
	ldr	r3, [r0]
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r2, [ip]
	str	r3, [r0]
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r2, [r1, #28]	@ movhi
	strh	r3, [r1, #30]	@ movhi
.L119:
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L120
	ldr	r3, .L156+56
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r2, .L156+60
	ldr	r3, [r2]
	add	r3, r3, #2
	str	r3, [r2]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	ldr	r3, [r5]
	sub	r3, r3, #2
	str	r3, [r5]
.L120:
	cmp	r3, #0
	blt	.L152
.L121:
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L156+8
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L101:
	ldr	r8, .L156+64
	ldr	r2, [r8]
	cmp	r2, #0
	moveq	r2, #512
	strheq	r2, [r3, #8]	@ movhi
	beq	.L104
	cmp	r2, #3
	moveq	r2, #512
	strheq	r2, [r3]	@ movhi
.L104:
	ldr	r7, .L156+32
	ldr	r3, [r7]
	ldr	r1, .L156+68
	cmp	r3, #0
	ldr	r3, [r1]
	beq	.L143
	ldr	r6, .L156+36
.L105:
	mov	r0, #67108864
	mov	r2, #255
	cmp	r3, #128
	strh	r2, [r0, #80]	@ movhi
	bhi	.L118
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r1]
	strh	r2, [r0, #84]	@ movhi
	b	.L109
.L143:
	mov	r0, #67108864
	mov	r2, #191
	cmp	r3, #0
	strh	r2, [r0, #80]	@ movhi
	bne	.L106
	ldr	r9, .L156+72
	ldrh	r2, [r9]
	tst	r2, #8
	beq	.L108
	ldr	r3, .L156+76
	ldrh	r3, [r3]
	tst	r3, #8
	bne	.L108
.L110:
	mov	r3, #0
	ldr	r2, .L156+80
	ldr	r1, .L156+84
	ldr	r0, .L156+88
	ldr	r6, .L156+92
	mov	lr, pc
	bx	r6
	mov	r3, #1
	ldrh	r2, [r9]
	str	r3, [r7]
.L111:
	tst	r2, #16
	beq	.L150
	ldr	r3, .L156+76
	ldrh	r3, [r3]
	ands	r3, r3, #16
	bne	.L150
	ldr	r1, [r8]
	cmp	r1, #2
	bgt	.L150
	ldr	r2, .L156+80
	ldr	r1, .L156+96
	ldr	r0, .L156+100
	ldr	r6, .L156+92
	mov	lr, pc
	bx	r6
	ldr	r3, [r8]
	cmp	r3, #1
	beq	.L153
	cmp	r3, #2
	beq	.L147
	ldr	r6, .L156+36
.L114:
	mov	r1, #256
	add	r3, r3, #1
	str	r3, [r8]
	ldrh	r2, [r9]
	str	r1, [r5]
	b	.L112
.L151:
	ldr	r1, .L156+68
	ldr	r3, [r1]
	b	.L105
.L152:
	ldr	r3, .L156+56
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	ldr	r2, .L156+60
	ldr	r3, [r2]
	sub	r3, r3, #2
	str	r3, [r2]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	ldr	r3, [r5]
	add	r3, r3, #2
	str	r3, [r5]
	b	.L121
.L106:
	sub	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r1]
	ldr	r6, .L156+36
	strh	r2, [r0, #84]	@ movhi
	b	.L109
.L108:
	tst	r2, #2
	beq	.L111
	ldr	r3, .L156+76
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L111
	b	.L110
.L150:
	ldr	r6, .L156+36
.L112:
	tst	r2, #32
	beq	.L102
	ldr	r3, .L156+76
	ldrh	r3, [r3]
	ands	r3, r3, #32
	bne	.L102
	ldr	r2, [r8]
	cmp	r2, #0
	ble	.L102
	ldr	r2, .L156+80
	ldr	r1, .L156+96
	ldr	r0, .L156+100
	ldr	r9, .L156+92
	mov	lr, pc
	bx	r9
	ldr	r3, [r8]
	cmp	r3, #1
	beq	.L154
	cmp	r3, #2
	beq	.L155
.L117:
	mvn	r2, #255
	sub	r3, r3, #1
	str	r3, [r8]
	str	r2, [r5]
	b	.L102
.L118:
	bl	goToStart
	b	.L109
.L154:
	ldr	r3, .L156+104
	mov	r2, #100663296
	ldr	r1, .L156+108
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #2048
	ldr	r2, .L156+112
	ldr	r1, .L156+116
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r8]
	b	.L117
.L155:
	ldr	r3, .L156+120
	mov	r2, #100663296
	ldr	r1, .L156+124
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #2048
	ldr	r2, .L156+112
	ldr	r1, .L156+128
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r8]
	b	.L117
.L153:
	ldr	r3, .L156+120
	mov	r2, #100663296
	ldr	r1, .L156+124
	mov	r0, #3
	ldr	r6, .L156+36
	mov	lr, pc
	bx	r6
	mov	r3, #2048
	ldr	r2, .L156+112
	ldr	r1, .L156+128
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r8]
	b	.L114
.L147:
	mov	r3, #10240
	mov	r2, #100663296
	ldr	r1, .L156+132
	mov	r0, #3
	ldr	r6, .L156+36
	mov	lr, pc
	bx	r6
	mov	r3, #2048
	ldr	r2, .L156+112
	ldr	r1, .L156+136
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r8]
	b	.L114
.L157:
	.align	2
.L156:
	.word	timeVar
	.word	1717986919
	.word	shadowOAM
	.word	16396
	.word	16397
	.word	sliderNum
	.word	20692
	.word	20691
	.word	goTime
	.word	DMANow
	.word	waitForVBlank
	.word	954437177
	.word	hOffmenu
	.word	vOffmenu
	.word	hideSprites
	.word	hOffmenu2
	.word	menuNum
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	5746
	.word	StartSound
	.word	playSoundA
	.word	2523
	.word	SelectSound
	.word	8560
	.word	TutorialBoards0Tiles
	.word	100694016
	.word	TutorialBoards0Map
	.word	9376
	.word	TutorialBoards1Tiles
	.word	TutorialBoards1Map
	.word	TutorialBoards2Tiles
	.word	TutorialBoards2Map
	.size	instructions, .-instructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L160
	ldr	r8, .L160+4
	ldr	r4, .L160+8
	ldr	r5, .L160+12
	mov	r3, #256
	ldr	r2, .L160+16
	ldr	r1, .L160+20
	mov	r0, #3
	str	ip, [lr]
	str	ip, [r4]
	str	ip, [r8]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	ldr	r2, .L160+24
	ldr	r1, .L160+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L160+32
	mov	r0, #3
	mov	r4, #67108864
	mov	lr, pc
	bx	r5
	mov	r2, #7936
	mov	r6, #8
	mov	r7, #128
	ldr	r3, .L160+36
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #12]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	ldr	r1, .L160+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #240
	ldr	r2, .L160+44
	ldr	r1, .L160+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L160+52
	ldr	r1, .L160+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L160+60
	ldr	r3, .L160+64
	ldr	r0, .L160+68
	str	r6, [r2]
	str	r7, [r3]
	ldr	r2, .L160+72
	strh	r6, [r4, #24]	@ movhi
	ldr	r3, .L160+76
	strh	r7, [r4, #26]	@ movhi
	ldr	r1, .L160+80
	strh	r0, [r4, #14]	@ movhi
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L160+84
	ldr	r1, .L160+88
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r1, #56
	mov	r0, #1792
	ldr	r2, .L160+92
	ldr	r3, .L160+96
	str	r6, [r2]
	str	r1, [r3]
	mov	r2, #100663296
	strh	r6, [r4, #28]	@ movhi
	mov	r3, #976
	strh	r1, [r4, #30]	@ movhi
	strh	r0, [r4, #8]	@ movhi
	ldr	r1, .L160+100
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L160+104
	ldr	r1, .L160+108
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #432
	ldr	ip, .L160+112
	ldr	r1, .L160+116
	ldr	r3, .L160+120
	ldr	r0, .L160+124
	str	r2, [ip]
	str	r1, [r3]
	strh	r2, [r4, #16]	@ movhi
	mov	r3, #3008
	strh	r1, [r4, #18]	@ movhi
	ldr	r2, .L160+128
	strh	r0, [r4, #10]	@ movhi
	ldr	r1, .L160+132
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L160+136
	ldr	r1, .L160+140
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r2, #460
	ldr	r0, .L160+144
	ldr	r3, .L160+148
	ldr	r1, .L160+152
	str	r2, [r0]
	str	r3, [r1]
	strh	r2, [r4, #20]	@ movhi
	ldr	r1, .L160+156
	strh	r3, [r4, #22]	@ movhi
	mov	lr, pc
	bx	r1
	ldr	r3, .L160+160
	mov	lr, pc
	bx	r3
	mov	r0, #159
	mov	r1, #16
	ldr	r3, .L160+164
	ldr	r2, .L160+168
	strh	r0, [r4, #80]	@ movhi
	str	r7, [r8]
	strh	r1, [r4, #84]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L161:
	.align	2
.L160:
	.word	timeVar
	.word	.LANCHOR0
	.word	smoothOffset
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	shadowOAM
	.word	7948
	.word	BackgroundBG20Pal
	.word	100712448
	.word	BackgroundBG20Tiles
	.word	100726784
	.word	BackgroundBG20Map
	.word	hOff2
	.word	vOff2
	.word	5896
	.word	100696064
	.word	6192
	.word	BackgroundBG30Tiles
	.word	100710400
	.word	BackgroundBG30Map
	.word	hOff3
	.word	vOff3
	.word	Idle0Tiles
	.word	100677632
	.word	Idle0Map
	.word	hOff0
	.word	454
	.word	vOff0
	.word	3844
	.word	100679680
	.word	ChampIdle0Tiles
	.word	100694016
	.word	ChampIdle0Map
	.word	hOff1
	.word	490
	.word	vOff1
	.word	initGame
	.word	waitForVBlank
	.word	state
	.word	game
	.size	goToGame, .-goToGame
	.align	2
	.global	stats
	.syntax unified
	.arm
	.fpu softvfp
	.type	stats, %function
stats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L203
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L164
	mov	r3, #191
	mov	r1, #67108864
	ldr	r0, .L203+4
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.L197
.L164:
	ldr	r4, .L203+8
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L166
.L199:
	sub	r3, r3, #1
	str	r3, [r4]
	ldr	r7, .L203+12
.L167:
	ldr	r3, .L203+16
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L172
	ldr	r2, .L203+20
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L172
.L173:
	ldr	r5, .L203+24
	ldr	r3, [r5]
	cmp	r3, #400
	movgt	r3, #1
	strgt	r3, [r6]
	ble	.L174
.L175:
	mov	r3, #191
	mov	r1, #67108864
	ldr	r0, .L203+4
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [r0]
	cmp	r3, #128
	bhi	.L198
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r0]
	strh	r2, [r1, #84]	@ movhi
.L176:
	ldr	r3, .L203+28
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r4]
	ldr	r2, .L203+32
	strh	r1, [r3, #16]	@ movhi
	ldrh	r0, [r2]
	ldrh	r1, [r7]
	ldr	r2, .L203+36
	strh	r0, [r3, #18]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L203+40
	strh	r1, [r3, #22]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L203+44
	strh	r1, [r3, #24]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L203+48
	ldrh	r2, [r2]
	strh	r1, [r3, #26]	@ movhi
	ldr	r1, .L203+52
	strh	r2, [r3, #28]	@ movhi
	ldr	r2, [r5]
	ldrh	r1, [r1]
	add	r2, r2, #1
	strh	r1, [r3, #30]	@ movhi
	str	r2, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L172:
	tst	r3, #8
	bne	.L193
.L196:
	ldr	r5, .L203+24
.L174:
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L176
	b	.L175
.L193:
	ldr	r3, .L203+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L173
	b	.L196
.L197:
	ldr	r4, .L203+8
	sub	r3, r3, #1
	lsr	r2, r3, #3
	str	r3, [r0]
	ldr	r3, [r4]
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r3, #0
	strh	r2, [r1, #84]	@ movhi
	bgt	.L199
.L166:
	ldr	r7, .L203+12
	ldr	r3, [r7]
	cmp	r3, #512
	bge	.L167
	ldr	r2, .L203+56
	cmp	r3, r2
	beq	.L200
.L168:
	add	r3, r3, #1
	str	r3, [r7]
	b	.L167
.L198:
	bl	goToGame
	b	.L176
.L200:
	mov	r2, #67108864
	mov	r1, #1792
	ldr	r3, .L203+60
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r1, .L203+64
	smull	r2, r3, r0, r1
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r0, r3
	ldr	r5, .L203+68
	cmp	r3, #0
	str	r3, [r5]
	beq	.L201
.L169:
	cmp	r3, #1
	beq	.L202
.L170:
	cmp	r3, #2
	beq	.L171
.L195:
	ldr	r3, [r7]
	b	.L168
.L201:
	mov	r3, #2064
	ldr	r2, .L203+72
	ldr	r1, .L203+76
	mov	r0, #3
	ldr	r8, .L203+80
	mov	lr, pc
	bx	r8
	mov	r3, #2048
	ldr	r2, .L203+84
	ldr	r1, .L203+88
	mov	r0, #3
	mov	lr, pc
	bx	r8
	ldr	r3, [r5]
	b	.L169
.L171:
	mov	r3, #1728
	ldr	r2, .L203+72
	ldr	r1, .L203+92
	mov	r0, #3
	ldr	r5, .L203+80
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L203+84
	ldr	r1, .L203+96
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L195
.L202:
	mov	r3, #1872
	ldr	r2, .L203+72
	ldr	r1, .L203+100
	mov	r0, #3
	ldr	r8, .L203+80
	mov	lr, pc
	bx	r8
	mov	r3, #2048
	ldr	r2, .L203+84
	ldr	r1, .L203+104
	mov	r0, #3
	mov	lr, pc
	bx	r8
	ldr	r3, [r5]
	b	.L170
.L204:
	.align	2
.L203:
	.word	sliderNum
	.word	.LANCHOR0
	.word	hOff0
	.word	hOff1
	.word	oldButtons
	.word	buttons
	.word	timeVar
	.word	waitForVBlank
	.word	vOff0
	.word	vOff1
	.word	hOff2
	.word	vOff2
	.word	hOff3
	.word	vOff3
	.word	365
	.word	rand
	.word	1431655766
	.word	menuNum
	.word	100696064
	.word	VersusScreen2Quote0Tiles
	.word	DMANow
	.word	100708352
	.word	VersusScreen2Quote0Map
	.word	VersusScreen2Quote2Tiles
	.word	VersusScreen2Quote2Map
	.word	VersusScreen2Quote1Tiles
	.word	VersusScreen2Quote1Map
	.size	stats, .-stats
	.align	2
	.global	continueGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	continueGame, %function
continueGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #7936
	mov	r5, #67108864
	ldr	r3, .L207
	ldr	r4, .L207+4
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	ldr	r1, .L207+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #240
	ldr	r2, .L207+12
	ldr	r1, .L207+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L207+20
	ldr	r1, .L207+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L207+28
	ldr	r3, .L207+32
	strh	r2, [r5, #14]	@ movhi
	ldr	r1, .L207+36
	ldr	r2, .L207+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L207+44
	ldr	r1, .L207+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1792
	mov	r3, #976
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L207+52
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L207+56
	ldr	r1, .L207+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L207+64
	mov	r3, #3008
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L207+68
	ldr	r2, .L207+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L207+76
	ldr	r1, .L207+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L207+84
	ldr	r1, .L207+88
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L207+92
	ldr	r1, .L207+96
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L207+100
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	ip, .L207+104
	ldr	r0, .L207+108
	ldr	r2, .L207+112
	ldr	r1, .L207+116
	strh	r3, [ip]	@ movhi
	strh	r3, [r0]	@ movhi
	str	r1, [r2]
	pop	{r4, r5, r6, lr}
	bx	lr
.L208:
	.align	2
.L207:
	.word	7948
	.word	DMANow
	.word	BackgroundBG20Pal
	.word	100712448
	.word	BackgroundBG20Tiles
	.word	100726784
	.word	BackgroundBG20Map
	.word	5896
	.word	6192
	.word	BackgroundBG30Tiles
	.word	100696064
	.word	100710400
	.word	BackgroundBG30Map
	.word	Idle0Tiles
	.word	100677632
	.word	Idle0Map
	.word	3844
	.word	ChampIdle0Tiles
	.word	100679680
	.word	100694016
	.word	ChampIdle0Map
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	waitForVBlank
	.word	gameOldButtons
	.word	gameButtons
	.word	state
	.word	game
	.size	continueGame, .-continueGame
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L290
	ldr	r0, [r5]
	cmp	r0, #0
	ldr	r3, .L290+4
	bne	.L210
	ldr	r2, .L290+8
	strh	r2, [r3]	@ movhi
.L211:
	ldr	r4, .L290+12
	ldr	r2, .L290+16
	ldr	r1, [r4]
	smull	r6, r7, r1, r2
	asr	r2, r1, #31
	rsb	r2, r2, r7, asr #3
	add	r2, r2, r2, lsl #2
	sub	r2, r1, r2, lsl #2
	ldr	r1, .L290+20
	cmp	r2, #9
	strh	r1, [r3, #4]	@ movhi
	bgt	.L213
	ldr	r2, .L290+24
	ldr	r2, [r2]
	cmp	r2, #0
	mov	r2, #129
	ldrgt	r1, .L290+28
	ldrle	r1, .L290+32
	strh	r2, [r3, #18]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	ldr	r2, .L290+36
	ldr	r1, .L290+40
	cmp	r0, #0
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	beq	.L215
.L216:
	ldr	r1, .L290+44
	ldr	r2, .L290+48
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #20]	@ movhi
.L218:
	ldr	r1, .L290+52
	ldr	r2, .L290+40
	cmp	r0, #1
	strh	r1, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	beq	.L280
.L219:
	ldr	r2, .L290+56
	strh	r2, [r3, #28]	@ movhi
.L221:
	ldr	r3, .L290+60
	mov	lr, pc
	bx	r3
	ldr	r6, .L290+64
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L290+4
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4]
	ldr	r2, .L290+68
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #1
	add	r1, r2, r2, lsl #3
	sub	r2, r3, r1
	cmp	r2, #3
	cmpne	r3, r1
	moveq	r1, #1
	movne	r1, #0
	cmp	r2, #6
	movne	r2, r1
	orreq	r2, r1, #1
	cmp	r2, #0
	beq	.L222
	mov	r0, #67108864
	ldr	lr, .L290+72
	ldr	ip, .L290+76
	ldr	r1, [lr]
	ldr	r2, [ip]
	add	r1, r1, #1
	sub	r2, r2, #1
	str	r1, [lr]
	str	r2, [ip]
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	strh	r1, [r0, #28]	@ movhi
	strh	r2, [r0, #30]	@ movhi
.L222:
	ldr	r6, .L290+80
	ldrh	r2, [r6]
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r4]
	beq	.L223
	ldr	r3, .L290+84
	ldrh	r3, [r3]
	ands	r3, r3, #8
	beq	.L281
.L223:
	tst	r2, #1
	beq	.L224
	ldr	r4, .L290+84
	ldrh	r3, [r4]
	tst	r3, #1
	beq	.L282
	tst	r2, #2
	beq	.L279
.L241:
	tst	r3, #2
	bne	.L240
.L236:
	ldr	r2, .L290+88
	mov	r3, #0
	ldr	r1, .L290+92
	ldr	r0, .L290+96
	ldr	r7, .L290+100
	mov	lr, pc
	bx	r7
	bl	continueGame
	ldrh	r2, [r6]
	tst	r2, #1
	beq	.L227
.L240:
	ldrh	r3, [r4]
	tst	r3, #1
	bne	.L279
.L228:
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L283
.L279:
	ldrh	r2, [r6]
.L227:
	tst	r2, #4
	beq	.L230
	ldr	r3, .L290+84
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L284
.L230:
	tst	r2, #128
	beq	.L232
	ldr	r3, .L290+84
	ldrh	r3, [r3]
	ands	r4, r3, #128
	beq	.L285
.L232:
	tst	r2, #64
	beq	.L209
	ldr	r3, .L290+84
	ldrh	r3, [r3]
	ands	r3, r3, #64
	bne	.L209
	ldr	r2, [r5]
	cmp	r2, #0
	bgt	.L286
	beq	.L287
.L209:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L213:
	mov	r2, #129
	ldr	r1, .L290+28
	strh	r2, [r3, #18]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	ldr	r2, .L290+36
	ldr	r1, .L290+40
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	b	.L216
.L210:
	cmp	r0, #1
	ldreq	r2, .L290+104
	strheq	r2, [r3]	@ movhi
	beq	.L211
	cmp	r0, #2
	ldreq	r2, .L290+108
	strheq	r2, [r3]	@ movhi
	b	.L211
.L224:
	tst	r2, #2
	beq	.L227
	ldr	r4, .L290+84
	ldrh	r3, [r4]
	tst	r3, #2
	bne	.L227
	b	.L236
.L282:
	ldr	r1, [r5]
	cmp	r1, #0
	beq	.L236
	tst	r2, #2
	bne	.L241
	b	.L228
.L215:
	ldr	r1, .L290+112
	ldr	r2, .L290+116
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	b	.L218
.L285:
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L288
	cmp	r3, #1
	bne	.L232
	ldr	r2, .L290+88
	mov	r3, r4
	ldr	r1, .L290+120
	ldr	r0, .L290+124
	ldr	r7, .L290+100
	mov	lr, pc
	bx	r7
	str	r4, [r5]
	ldrh	r2, [r6]
	b	.L232
.L284:
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L289
	cmp	r3, #0
	bgt	.L230
	mov	r3, r4
	ldr	r2, .L290+88
	ldr	r1, .L290+120
	ldr	r0, .L290+124
	ldr	r4, .L290+100
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	ldrh	r2, [r6]
	b	.L230
.L280:
	ldr	r1, [r4]
	ldr	r2, .L290+16
	smull	r6, r7, r1, r2
	asr	r2, r1, #31
	rsb	r2, r2, r7, asr #3
	add	r2, r2, r2, lsl #2
	sub	r2, r1, r2, lsl #2
	cmp	r2, #9
	bgt	.L219
	ldr	r2, .L290+128
	strh	r2, [r3, #28]	@ movhi
	b	.L221
.L281:
	ldr	r2, .L290+88
	ldr	r1, .L290+92
	ldr	r0, .L290+96
	ldr	r4, .L290+100
	mov	lr, pc
	bx	r4
	bl	continueGame
	ldrh	r2, [r6]
	b	.L223
.L286:
	ldr	r4, .L290+100
	ldr	r2, .L290+88
	ldr	r1, .L290+120
	ldr	r0, .L290+124
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	sub	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L287:
	mov	r3, r2
	ldr	r1, .L290+120
	ldr	r2, .L290+88
	ldr	r0, .L290+124
	ldr	r4, .L290+100
	mov	lr, pc
	bx	r4
	mov	r3, #1
	str	r3, [r5]
	b	.L209
.L288:
	mov	r3, r4
	ldr	r2, .L290+88
	ldr	r1, .L290+120
	ldr	r0, .L290+124
	ldr	r4, .L290+100
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	add	r3, r3, #1
	ldrh	r2, [r6]
	str	r3, [r5]
	b	.L232
.L289:
	ldr	r2, .L290+88
	mov	r3, r4
	ldr	r1, .L290+120
	ldr	r0, .L290+124
	ldr	r7, .L290+100
	mov	lr, pc
	bx	r7
	str	r4, [r5]
	ldrh	r2, [r6]
	b	.L230
.L283:
	mov	r3, #0
	ldr	r2, .L290+88
	ldr	r1, .L290+92
	ldr	r0, .L290+96
	ldr	r4, .L290+100
	mov	lr, pc
	bx	r4
	bl	goToStart
	b	.L279
.L291:
	.align	2
.L290:
	.word	menuNum
	.word	shadowOAM
	.word	16465
	.word	timeVar
	.word	1717986919
	.word	4100
	.word	goTime
	.word	-32708
	.word	-32709
	.word	16469
	.word	16481
	.word	4232
	.word	4236
	.word	16484
	.word	4296
	.word	waitForVBlank
	.word	DMANow
	.word	954437177
	.word	hOffmenu
	.word	vOffmenu
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	5746
	.word	StartSound
	.word	playSoundA
	.word	16480
	.word	16500
	.word	4264
	.word	4268
	.word	2523
	.word	SelectSound
	.word	4328
	.size	pause, .-pause
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r0, #6144
	mov	r3, #0
	ldr	r1, .L294
	push	{r4, lr}
	ldr	ip, .L294+4
	ldr	lr, .L294+8
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #14]	@ movhi
	ldr	r0, .L294+12
	ldr	r1, .L294+16
	ldr	r2, .L294+20
	str	r3, [lr]
	str	r3, [ip]
	ldr	r4, .L294+24
	str	r3, [r0]
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L294+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #80
	ldr	r2, .L294+32
	ldr	r1, .L294+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L294+40
	ldr	r1, .L294+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L294+48
	ldr	r1, .L294+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L294+56
	ldr	r1, .L294+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L294+64
	ldr	r2, .L294+68
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L295:
	.align	2
.L294:
	.word	7948
	.word	hOffmenu
	.word	vOffmenu
	.word	timeVar
	.word	menuNum
	.word	hideSprites
	.word	DMANow
	.word	PolkaBluePal
	.word	100712448
	.word	LogicalOrangeTiles
	.word	100726784
	.word	LogicalOrangeMap
	.word	83886592
	.word	menuspritesheetPal
	.word	100728832
	.word	menuspritesheetTiles
	.word	state
	.word	pause
	.size	goToPause, .-goToPause
	.align	2
	.global	loseTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	loseTimer, %function
loseTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #131
	ldr	r3, .L298
	ldr	r1, .L298+4
	strh	r2, [r3, #10]	@ movhi
	ldrh	r2, [r3, #12]
	ldr	r3, [r1]
	cmp	r2, r3
	bxeq	lr
	b	loseTimer.part.0
.L299:
	.align	2
.L298:
	.word	67109120
	.word	second
	.size	loseTimer, .-loseTimer
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #0
	ldr	r2, .L302
	ldr	r1, .L302+4
	ldr	r0, .L302+8
	ldr	r4, .L302+12
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #6144
	ldr	r2, .L302+16
	ldr	r4, .L302+20
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	ldr	r1, .L302+24
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #64
	ldr	r2, .L302+28
	ldr	r1, .L302+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L302+36
	ldr	r1, .L302+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L302+44
	ldr	r1, .L302+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L302+52
	ldr	r1, .L302+56
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L302+60
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mvn	ip, #0
	mov	r0, #49152
	mov	lr, #132
	ldr	r1, .L302+64
	ldr	r2, .L302+68
	str	r3, [r1]
	ldr	r1, .L302+72
	str	r3, [r2]
	str	r3, [r1]
	ldr	r2, .L302+76
	ldr	r1, .L302+80
	str	r3, [r2]
	str	r3, [r1]
	ldr	r2, .L302+84
	ldr	r1, .L302+88
	str	r3, [r2]
	str	ip, [r1]
	ldr	r2, .L302+92
	ldr	r1, .L302+96
	strh	r3, [r2, #10]	@ movhi
	strh	r3, [r2, #14]	@ movhi
	ldr	r3, [r1]
	strh	r0, [r2, #8]	@ movhi
	ldr	ip, .L302+100
	ldr	r0, .L302+104
	add	r3, r3, #1
	str	r3, [r1]
	strh	lr, [r2, #14]	@ movhi
	str	ip, [r0]
	pop	{r4, lr}
	bx	lr
.L303:
	.align	2
.L302:
	.word	11025
	.word	151488
	.word	PlayerKnockDownMusic
	.word	playSoundB
	.word	7948
	.word	DMANow
	.word	PolkaBluePal
	.word	100712448
	.word	BudsDarkTiles
	.word	100726784
	.word	BudsDarkMap
	.word	83886592
	.word	menuspritesheetPal
	.word	100728832
	.word	menuspritesheetTiles
	.word	hideSprites
	.word	vOffmenu
	.word	hOffmenu
	.word	timeVar
	.word	menuNum
	.word	goTime
	.word	loseTime
	.word	second
	.word	67109120
	.word	lossCount
	.word	lose
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L306
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	lr, #1792
	mov	ip, #0
	mov	r0, #7168
	ldr	r2, .L306+4
	ldr	r3, .L306+8
	strh	lr, [r1, #12]	@ movhi
	ldr	lr, .L306+12
	strh	r2, [r1, #14]	@ movhi
	strh	r0, [r1]	@ movhi
	ldr	r2, .L306+16
	str	ip, [r3]
	ldr	r0, .L306+20
	ldr	r3, .L306+24
	str	ip, [lr]
	ldr	lr, .L306+28
	str	ip, [r0]
	str	ip, [r2]
	str	ip, [r3]
	ldr	r4, .L306+32
	strh	ip, [r1, #24]	@ movhi
	mov	r3, #256
	strh	ip, [r1, #26]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L306+36
	mov	r0, #3
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #64
	ldr	r2, .L306+40
	ldr	r1, .L306+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L306+48
	ldr	r1, .L306+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L306+56
	mov	r2, #100663296
	ldr	r1, .L306+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L306+64
	ldr	r1, .L306+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L306+72
	ldr	r2, .L306+76
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L307:
	.align	2
.L306:
	.word	hideSprites
	.word	7948
	.word	vOffmenu
	.word	hOffmenu
	.word	hOff2
	.word	timeVar
	.word	vOff2
	.word	winCount
	.word	DMANow
	.word	ChampionBeltPal
	.word	100712448
	.word	BudsGreenTiles
	.word	100726784
	.word	BudsGreenMap
	.word	4720
	.word	ChampionBeltTiles
	.word	100677632
	.word	ChampionBeltMap
	.word	state
	.word	win
	.size	goToWin, .-goToWin
	.align	2
	.global	goToTrueWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToTrueWin, %function
goToTrueWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L310
	mov	lr, pc
	bx	r3
	mov	ip, #67108864
	mov	r3, #1792
	mov	r0, #2048
	mov	lr, #0
	mov	r2, #240
	mov	r1, #254
	mov	r4, #1
	strh	r3, [ip, #12]	@ movhi
	strh	r0, [ip]	@ movhi
	ldr	r3, .L310+4
	ldr	r0, .L310+8
	strh	r3, [ip, #14]	@ movhi
	str	lr, [r0]
	ldr	r3, .L310+12
	ldr	r0, .L310+16
	str	lr, [r3]
	str	lr, [r0]
	ldr	r3, .L310+20
	ldr	r0, .L310+24
	str	lr, [r3]
	str	lr, [r0]
	ldr	r3, .L310+28
	ldr	r0, .L310+32
	str	r2, [r3]
	str	r2, [r0]
	ldr	r3, .L310+36
	ldr	r0, .L310+40
	str	r1, [r3]
	str	r1, [r0]
	ldr	r3, .L310+44
	ldr	r0, .L310+48
	str	r4, [r3]
	strh	r2, [ip, #24]	@ movhi
	ldr	r4, .L310+52
	strh	r1, [ip, #26]	@ movhi
	mov	r3, #256
	strh	r2, [ip, #28]	@ movhi
	strh	r1, [ip, #30]	@ movhi
	ldr	r2, .L310+56
	strh	r0, [ip, #80]	@ movhi
	ldr	r1, .L310+60
	strh	lr, [ip, #82]	@ movhi
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L310+64
	ldr	r1, .L310+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L310+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2768
	ldr	r2, .L310+76
	ldr	r1, .L310+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L310+84
	ldr	r1, .L310+88
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r2, #100663296
	ldr	r1, .L310+92
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L310+96
	ldr	r1, .L310+100
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L310+104
	ldr	r2, .L310+108
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L311:
	.align	2
.L310:
	.word	hideSprites
	.word	7948
	.word	vOffmenu
	.word	hOffmenu
	.word	timeVar
	.word	sliderNum
	.word	fpaNum2
	.word	hOff2
	.word	hOff3
	.word	vOff2
	.word	vOff3
	.word	winCount
	.word	8264
	.word	DMANow
	.word	83886592
	.word	menuspritesheetPal
	.word	100728832
	.word	menuspritesheetTiles
	.word	TitleTextEndPal
	.word	100712448
	.word	TitleTextEndTiles
	.word	100726784
	.word	TitleTextEndMap
	.word	EndTextTiles
	.word	100677632
	.word	EndTextMap
	.word	state
	.word	trueWin
	.size	goToTrueWin, .-goToTrueWin
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L314
	mov	lr, pc
	bx	r3
	ldr	r4, .L314+4
	mov	r3, #1
	ldr	r2, .L314+8
	ldr	r1, .L314+12
	ldr	r0, .L314+16
	mov	lr, pc
	bx	r4
	mov	r6, #67108864
	mov	r4, #0
	mvn	r0, #0
	mov	r2, #7168
	mov	r3, #20224
	ldr	r7, .L314+20
	ldr	r5, .L314+24
	ldr	lr, .L314+28
	ldr	ip, .L314+32
	ldr	r1, .L314+36
	strh	r4, [r6, #24]	@ movhi
	strh	r4, [r6, #26]	@ movhi
	strh	r4, [r6, #28]	@ movhi
	strh	r4, [r6, #30]	@ movhi
	str	r4, [r5]
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r7]
	ldr	lr, .L314+40
	ldr	ip, .L314+44
	ldr	r7, .L314+48
	ldr	r5, .L314+52
	ldr	r1, .L314+56
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r5]
	str	r0, [r1]
	ldr	r5, .L314+60
	mov	r1, r7
	strh	r2, [r6]	@ movhi
	strh	r3, [r6, #12]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L314+64
	mov	r2, #100663296
	ldr	r1, .L314+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L314+72
	ldr	r1, .L314+76
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L314+80
	ldr	lr, .L314+84
	ldr	ip, .L314+88
	ldr	r8, .L314+92
	strh	r3, [r6, #14]	@ movhi
	mov	r1, r7
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r8]
	mov	lr, pc
	bx	r5
	mov	r3, #144
	ldr	r2, .L314+96
	ldr	r1, .L314+100
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L314+104
	ldr	r1, .L314+108
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #256
	ldr	r2, .L314+112
	ldr	r1, .L314+116
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L314+120
	mov	r3, #16384
	ldr	r1, .L314+124
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L314+128
	mov	lr, pc
	bx	r3
	ldr	r3, .L314+132
	ldr	r2, .L314+136
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3]
	bx	lr
.L315:
	.align	2
.L314:
	.word	stopSound
	.word	playSoundB
	.word	11025
	.word	389543
	.word	InstructionsMusic
	.word	sliderNum
	.word	goTime
	.word	menuNum
	.word	hOffmenu2
	.word	vOffmenu2
	.word	hOff3
	.word	vOff3
	.word	PolkaBluePal
	.word	vOff2
	.word	hOff2
	.word	DMANow
	.word	8560
	.word	TutorialBoards0Tiles
	.word	100694016
	.word	TutorialBoards0Map
	.word	7948
	.word	hOffmenu
	.word	timeVar
	.word	vOffmenu
	.word	100712448
	.word	PolkaBlueTiles
	.word	100726784
	.word	PolkaBlueMap
	.word	83886592
	.word	menuspritesheetPal
	.word	100728832
	.word	menuspritesheetTiles
	.word	hideSprites
	.word	state
	.word	instructions
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToIntro
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToIntro, %function
goToIntro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	r3, .L318
	ldr	r0, .L318+4
	ldr	ip, .L318+8
	ldr	r1, .L318+12
	ldr	r2, .L318+16
	str	r4, [r3]
	ldr	r0, [r0]
	ldr	r3, .L318+20
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	mov	r0, #67108864
	mov	r1, #1792
	mov	r3, #256
	ldr	ip, .L318+24
	ldr	r2, .L318+28
	strh	r1, [r0, #8]	@ movhi
	strh	ip, [r0, #10]	@ movhi
	ldr	r1, .L318+32
	strh	r2, [r0, #12]	@ movhi
	ldr	r2, .L318+36
	strh	r1, [r0, #14]	@ movhi
	strh	r3, [r0]	@ movhi
	ldr	ip, .L318+40
	str	r4, [r2]
	ldr	r1, .L318+44
	ldr	r2, .L318+48
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r2]
	ldr	lr, .L318+52
	ldr	ip, .L318+56
	ldr	r1, .L318+60
	ldr	r2, .L318+64
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r1]
	str	r4, [r2]
	ldr	r1, .L318+68
	strh	r4, [r0, #16]	@ movhi
	mov	r2, #83886080
	strh	r4, [r0, #18]	@ movhi
	strh	r4, [r0, #20]	@ movhi
	strh	r4, [r0, #22]	@ movhi
	strh	r4, [r0, #24]	@ movhi
	strh	r4, [r0, #26]	@ movhi
	strh	r4, [r0, #28]	@ movhi
	strh	r4, [r0, #30]	@ movhi
	ldr	r4, .L318+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L318+76
	mov	r2, #100663296
	ldr	r1, .L318+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L318+84
	ldr	r1, .L318+88
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L318+92
	ldr	r4, .L318+96
	ldr	r1, .L318+100
	ldr	r0, .L318+104
	mov	lr, pc
	bx	r4
	ldr	r3, .L318+108
	ldr	r2, .L318+112
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L319:
	.align	2
.L318:
	.word	winCount
	.word	seed
	.word	timeVar
	.word	menuNum
	.word	fpaNum2
	.word	srand
	.word	3844
	.word	7948
	.word	5896
	.word	vOff0
	.word	hOff1
	.word	vOff1
	.word	hOff2
	.word	hOff0
	.word	vOff2
	.word	hOff3
	.word	vOff3
	.word	Belt0WithTextPal
	.word	DMANow
	.word	5104
	.word	Belt0WithTextTiles
	.word	100677632
	.word	Belt0WithTextMap
	.word	11025
	.word	playSoundB
	.word	1005408
	.word	SpreadWings
	.word	state
	.word	intro
	.size	goToIntro, .-goToIntro
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L437
	ldr	r4, .L437+4
	ldr	r3, [r2]
	ldr	r0, [r4]
	ldr	r5, .L437+8
	add	r3, r3, #1
	cmp	r0, #1
	str	r3, [r2]
	ldr	r1, [r5]
	beq	.L429
.L321:
	cmp	r1, #0
	beq	.L418
.L427:
	ldr	r10, .L437+12
.L323:
	cmp	r1, #0
	ble	.L428
	mov	r0, #67108864
	mov	lr, #191
	ldr	r2, .L437+16
	ldr	r3, [r2]
	ldr	ip, .L437+20
	add	r3, r3, #2
	str	r3, [r2]
	ldr	r3, [ip]
	add	r1, r1, #1
	cmp	r3, #128
	str	r1, [r5]
	strh	lr, [r0, #80]	@ movhi
	bhi	.L344
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [ip]
	strh	r2, [r0, #84]	@ movhi
	ldr	r0, [r4]
.L324:
	ldr	r7, .L437+24
	ldr	r3, [r7]
	ldr	r4, .L437+28
	cmp	r3, #253
	addle	r3, r3, #1
	strle	r3, [r7]
	ldr	r3, [r4]
	cmp	r3, #3
	cmpne	r3, #0
	bne	.L348
	cmp	r1, #0
	bne	.L348
	ldr	r9, .L437+32
	ldr	r2, [r9]
	cmp	r3, #0
	add	r3, r2, #1
	ldr	ip, .L437+36
	str	r3, [r9]
	beq	.L430
	ldr	r2, [ip]
	lsl	r2, r2, #7
	ldr	r3, .L437+40
	add	r2, r2, #2
	cmp	r0, #0
	ldr	r0, .L437+44
	orr	r2, r2, #4096
	strh	r2, [r3, #4]	@ movhi
	strh	r0, [r3]	@ movhi
	bne	.L431
	mov	r2, #112
	ldr	r8, .L437+48
	b	.L368
.L418:
	ldr	r3, .L437+52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L367
	ldr	r10, .L437+12
	b	.L324
.L344:
	bl	goToIntro
	ldr	r1, [r5]
.L428:
	ldr	r0, [r4]
.L328:
	cmp	r1, #0
	bge	.L324
	mov	ip, #67108864
	mov	r6, #191
	ldr	r2, .L437+16
	ldr	r3, [r2]
	ldr	lr, .L437+20
	add	r3, r3, #2
	str	r3, [r2]
	ldr	r3, [lr]
	sub	r1, r1, #1
	cmp	r3, #128
	str	r1, [r5]
	strh	r6, [ip, #80]	@ movhi
	bhi	.L345
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [lr]
	strh	r2, [ip, #84]	@ movhi
	b	.L324
.L430:
	ldr	r2, [ip]
	ldr	r8, .L437+48
	lsl	r2, r2, #7
	ldr	r3, .L437+40
	add	r2, r2, #2
	ldr	lr, [r8]
	orr	r2, r2, #4096
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, .L437+44
	cmp	r0, #0
	add	r0, lr, #1
	str	r0, [r8]
	strh	r2, [r3]	@ movhi
	mov	r2, r1
	beq	.L350
.L351:
	add	r0, r2, #170
	cmp	r1, #0
	lsl	r1, r0, #16
	asr	r1, r1, #16
	ldr	lr, .L437+56
	orrlt	r1, r1, #36864
	strh	lr, [r3]	@ movhi
	strhlt	r1, [r3, #2]	@ movhi
	blt	.L355
.L374:
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	strh	r1, [r3, #2]	@ movhi
.L355:
	ldr	lr, .L437+60
	add	r2, r2, #50
	lsl	r2, r2, #23
	ldr	r1, [lr]
	lsr	r2, r2, #23
	orr	r2, r2, #16384
	add	r1, r1, #115
	strh	r2, [r3, #42]	@ movhi
	ldr	r2, .L437+64
	orr	r1, r1, #1024
	strh	r1, [r3, #40]	@ movhi
	strh	r2, [r3, #44]	@ movhi
.L353:
	ldr	r6, .L437+68
	ldr	r2, .L437+72
	ldr	fp, [r6]
	smull	r0, r1, fp, r2
	asr	r2, fp, #31
	rsb	r1, r2, r1, asr #3
	add	r1, r1, r1, lsl #2
	sub	r2, fp, r1, lsl #2
	ldr	r1, .L437+76
	ldr	fp, .L437+80
	ldr	r0, .L437+84
	cmp	r2, #9
	ldr	r2, [r10]
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	ldr	r1, .L437+88
	strh	fp, [r3, #10]	@ movhi
	sub	fp, fp, #120
	ldr	r10, .L437+92
	strh	r0, [r3, #12]	@ movhi
	strh	fp, [r3, #18]	@ movhi
	ldr	r0, .L437+96
	ldr	fp, .L437+100
	strh	r1, [r3, #20]	@ movhi
	ldr	r1, .L437+104
	strh	r10, [r3, #28]	@ movhi
	strh	r1, [r3, #26]	@ movhi
	strh	r0, [r3, #32]	@ movhi
	strh	fp, [r3, #36]	@ movhi
	bgt	.L356
	ldr	r1, [r5]
	cmp	r1, #0
	bne	.L356
	cmp	r2, #0
	ldreq	r2, .L437+108
	ldrne	r1, .L437+112
	ldrne	r2, .L437+116
	ldreq	r1, .L437+120
	strheq	r2, [r3, #34]	@ movhi
	ldreq	r2, .L437+124
	strhne	r1, [r3, #34]	@ movhi
	strhne	r2, [r3, #12]	@ movhi
	strheq	r1, [r3, #20]	@ movhi
	strheq	r2, [r3, #28]	@ movhi
.L359:
	ldr	r3, [r4]
	cmp	r3, #0
	ldr	r3, [ip]
	addeq	r3, r3, #1
	streq	r3, [ip]
	cmp	r3, #3
	movgt	r3, #0
	strgt	r3, [ip]
	ble	.L432
.L363:
	mov	r3, #0
	str	r3, [lr]
.L364:
	ldr	r3, .L437+128
	mov	lr, pc
	bx	r3
	ldr	r5, .L437+132
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L437+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	ldr	r2, .L437+136
	ldrh	r2, [r2]
	ldrh	r0, [r7]
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, .L437+140
	ldrh	r1, [r8]
	strh	r0, [r3, #18]	@ movhi
	ldrh	r0, [r2]
	ldr	r2, .L437+144
	strh	r1, [r3, #20]	@ movhi
	ldrh	r2, [r2]
	ldrh	r1, [r9]
	strh	r0, [r3, #22]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	ldr	r3, [r4]
	add	r3, r3, #1
	cmp	r3, #6
	str	r3, [r4]
	movgt	r3, #0
	ldr	r2, [r6]
	add	r2, r2, #1
	str	r2, [r6]
	strgt	r3, [r4]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L356:
	ldr	r1, .L437+16
	cmp	r2, #0
	ldrh	r2, [r1]
	addne	r2, r2, #135
	addeq	r2, r2, #15
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	strh	r2, [r3, #34]	@ movhi
	b	.L359
.L348:
	ldr	ip, .L437+36
	ldr	r2, [ip]
	lsl	r2, r2, #7
	ldr	r3, .L437+40
	add	r2, r2, #2
	orr	r2, r2, #4096
	cmp	r0, #0
	ldr	r0, .L437+44
	strh	r2, [r3, #4]	@ movhi
	lsl	r2, r1, #16
	strh	r0, [r3]	@ movhi
	lsr	r2, r2, #16
	beq	.L420
	ldr	r9, .L437+32
	ldr	r8, .L437+48
	b	.L351
.L432:
	cmp	r3, #1
	ble	.L363
	mov	r3, #2
	str	r3, [lr]
	b	.L364
.L429:
	mov	r3, #175
	mov	lr, #67108864
	ldr	ip, .L437+52
	strh	r3, [lr, #80]	@ movhi
	ldr	r3, [ip]
	cmp	r3, #0
	beq	.L322
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	sub	r3, r3, #1
	strh	r2, [lr, #84]	@ movhi
	str	r3, [ip]
	b	.L321
.L420:
	add	r2, r2, #112
	lsl	r2, r2, #23
	cmp	r1, #0
	lsr	r2, r2, #23
	bge	.L433
	orr	r2, r2, #36864
	strh	r2, [r3, #2]	@ movhi
	ldr	r9, .L437+32
	ldr	r8, .L437+48
	ldr	lr, .L437+60
	b	.L353
.L322:
	cmp	r1, #0
	bne	.L427
.L367:
	mov	r3, #255
	mov	r1, #67108864
	ldr	r0, .L437+20
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.L325
	ldr	r6, .L437+148
	ldrh	r2, [r6]
	ands	r1, r2, #8
	beq	.L434
	ldr	r3, .L437+152
	ldrh	r0, [r3]
	tst	r0, #8
	bne	.L435
	ldr	r10, .L437+12
	ldr	r3, [r10]
	cmp	r3, #1
	bne	.L334
.L366:
	mov	r3, #0
	ldr	r2, .L437+156
	ldr	r1, .L437+160
	ldr	r0, .L437+164
	ldr	r7, .L437+168
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	add	r3, r3, #1
	ldrh	r2, [r6]
	str	r3, [r5]
	b	.L333
.L345:
	cmp	r0, #1
	moveq	r3, #2
	streq	r3, [r4]
	bl	goToInstructions
	ldr	r0, [r4]
	ldr	r1, [r5]
	b	.L324
.L433:
	ldr	r9, .L437+32
	ldr	r8, .L437+48
.L368:
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	lr, .L437+60
	strh	r2, [r3, #2]	@ movhi
	b	.L353
.L350:
	mov	r2, #112
	b	.L368
.L325:
	sub	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r0]
	ldr	r10, .L437+12
	strh	r2, [r1, #84]	@ movhi
	ldr	r0, [r4]
	ldr	r1, [r5]
	b	.L328
.L431:
	ldr	r0, .L437+56
	mov	r2, r1
	strh	r0, [r3]	@ movhi
	mov	r1, #170
	ldr	r8, .L437+48
	b	.L374
.L434:
	tst	r2, #1
	ldrne	r3, .L437+152
	beq	.L425
.L369:
	ldrh	r0, [r3]
	tst	r0, #1
	bne	.L331
	ldr	r10, .L437+12
	ldr	r0, [r10]
	cmp	r0, #1
	beq	.L366
	cmp	r1, #0
	bne	.L372
.L335:
	ldr	r3, [r10]
.L334:
	cmp	r3, #0
	bne	.L333
	ldr	r2, .L437+156
	ldr	r1, .L437+160
	ldr	r0, .L437+164
	ldr	r7, .L437+168
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	sub	r3, r3, #1
	ldrh	r2, [r6]
	str	r3, [r5]
	b	.L333
.L435:
	tst	r2, #1
	bne	.L369
.L425:
	ldr	r10, .L437+12
.L333:
	tst	r2, #4
	beq	.L336
	ldr	r3, .L437+152
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L336
.L337:
	mov	r3, #0
	ldr	r2, .L437+156
	ldr	r1, .L437+172
	ldr	r0, .L437+176
	ldr	r6, .L437+168
	mov	lr, pc
	bx	r6
	ldr	r3, [r10]
	eor	r3, r3, #1
	str	r3, [r10]
.L426:
	ldr	r1, [r5]
	b	.L323
.L336:
	tst	r2, #32
	beq	.L338
	ldr	r3, .L437+152
	ldrh	r3, [r3]
	tst	r3, #32
	beq	.L337
.L338:
	tst	r2, #16
	beq	.L339
	ldr	r3, .L437+152
	ldrh	r3, [r3]
	tst	r3, #16
	beq	.L337
.L339:
	tst	r2, #64
	bne	.L436
.L340:
	tst	r2, #128
	beq	.L426
	ldr	r3, .L437+152
	ldrh	r3, [r3]
	tst	r3, #128
	bne	.L426
	b	.L337
.L436:
	ldr	r3, .L437+152
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L337
	b	.L340
.L331:
	cmp	r1, #0
	beq	.L425
	ldr	r10, .L437+12
.L372:
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L335
	tst	r3, #1
	beq	.L335
	b	.L333
.L438:
	.align	2
.L437:
	.word	seed
	.word	winCount
	.word	goTime
	.word	menuNum
	.word	vOffmenu
	.word	.LANCHOR0
	.word	vOff0
	.word	timeVar
	.word	hOff2
	.word	frameNum
	.word	shadowOAM
	.word	-32653
	.word	hOff1
	.word	fpaNum2
	.word	-31629
	.word	sliderNum
	.word	4164
	.word	timeVar2
	.word	1717986919
	.word	16533
	.word	16544
	.word	4104
	.word	4168
	.word	4172
	.word	16529
	.word	4100
	.word	16456
	.word	-32752
	.word	-32632
	.word	4136
	.word	4200
	.word	4204
	.word	waitForVBlank
	.word	DMANow
	.word	hOff0
	.word	vOff1
	.word	vOff2
	.word	oldButtons
	.word	buttons
	.word	11025
	.word	5746
	.word	StartSound
	.word	playSoundA
	.word	2523
	.word	SelectSound
	.size	start, .-start
	.align	2
	.global	goToStats
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStats, %function
goToStats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r2, #67108864
	mov	ip, #1280
	ldr	r0, .L448
	ldr	r1, .L448+4
	push	{r4, r5, r6, lr}
	str	r3, [r0]
	str	r3, [r1]
	ldr	lr, .L448+8
	ldr	r0, .L448+12
	ldr	r1, .L448+16
	ldr	r5, .L448+20
	ldr	r4, .L448+24
	str	r3, [r5]
	strh	lr, [r2, #8]	@ movhi
	strh	ip, [r2]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r2, #12]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L448+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L448+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L440
	ldr	r3, .L448+36
	mov	lr, pc
	bx	r3
	ldr	r1, .L448+40
	smull	r2, r3, r0, r1
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r3, r0, r3
	cmp	r3, #0
	str	r3, [r5]
	beq	.L445
	cmp	r3, #1
	beq	.L446
.L442:
	cmp	r3, #2
	beq	.L447
.L443:
	mov	r3, #384
	ldr	r2, .L448+44
	ldr	r1, .L448+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L448+52
	ldr	r1, .L448+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #0
	mov	r2, #144
	mov	ip, #67108864
	ldr	lr, .L448+60
	ldr	r3, .L448+64
	ldr	r1, .L448+68
	str	r2, [lr]
	str	r0, [r3]
	str	r0, [r1]
	ldr	lr, .L448+72
	ldr	r3, .L448+76
	ldr	r1, .L448+80
	str	r0, [lr]
	str	r0, [r3]
	str	r0, [r1]
	ldr	lr, .L448+84
	ldr	r1, .L448+88
	ldr	r3, .L448+92
	str	r0, [lr]
	str	r1, [r3]
	ldr	r4, .L448+96
	strh	r2, [ip, #16]	@ movhi
	mov	r3, r0
	strh	r0, [ip, #18]	@ movhi
	ldr	r2, .L448+100
	strh	r1, [ip, #20]	@ movhi
	strh	r0, [ip, #22]	@ movhi
	ldr	r1, .L448+104
	strh	r0, [ip, #24]	@ movhi
	strh	r0, [ip, #26]	@ movhi
	strh	r0, [ip, #28]	@ movhi
	strh	r0, [ip, #30]	@ movhi
	ldr	r0, .L448+108
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L448+100
	ldr	r4, .L448+112
	ldr	r1, .L448+116
	ldr	r0, .L448+120
	mov	lr, pc
	bx	r4
	ldr	r3, .L448+124
	ldr	r2, .L448+128
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L440:
	mov	r3, #7552
	mov	r2, #100663296
	ldr	r1, .L448+132
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L448+136
	ldr	r1, .L448+140
	mov	r0, #3
	mov	lr, pc
	bx	r4
	b	.L443
.L445:
	mov	r3, #6656
	mov	r2, #100663296
	ldr	r1, .L448+144
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L448+136
	ldr	r1, .L448+148
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L442
.L446:
	mov	r3, #5632
	mov	r2, #100663296
	ldr	r1, .L448+152
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L448+136
	ldr	r1, .L448+156
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #2
	bne	.L443
.L447:
	mov	r3, #6784
	mov	r2, #100663296
	ldr	r1, .L448+160
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L448+136
	ldr	r1, .L448+164
	mov	r0, #3
	mov	lr, pc
	bx	r4
	b	.L443
.L449:
	.align	2
.L448:
	.word	sliderNum
	.word	timeVar
	.word	18816
	.word	22024
	.word	7692
	.word	menuNum
	.word	DMANow
	.word	VersusIconPal
	.word	cheat
	.word	rand
	.word	1431655766
	.word	100712448
	.word	VersusIconTiles
	.word	100724736
	.word	VersusIconMap
	.word	hOff0
	.word	vOff0
	.word	vOff1
	.word	hOff2
	.word	vOff2
	.word	hOff3
	.word	vOff3
	.word	365
	.word	hOff1
	.word	playSoundA
	.word	11025
	.word	92736
	.word	IntroMontage
	.word	playSoundB
	.word	60458
	.word	AudienceSounds
	.word	state
	.word	stats
	.word	VersusScreen1QuoteSTiles
	.word	100681728
	.word	VersusScreen1QuoteSMap
	.word	VersusScreen1Quote0Tiles
	.word	VersusScreen1Quote0Map
	.word	VersusScreen1Quote1Tiles
	.word	VersusScreen1Quote1Map
	.word	VersusScreen1Quote2Tiles
	.word	VersusScreen1Quote2Map
	.size	goToStats, .-goToStats
	.align	2
	.global	intro
	.syntax unified
	.arm
	.fpu softvfp
	.type	intro, %function
intro:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r10, .L546
	ldr	r4, [r10]
	cmp	r4, #0
	bne	.L451
	mov	r1, #67108864
	mov	r2, #191
	ldr	r5, .L546+4
	ldr	r3, [r5]
	cmp	r3, #0
	strh	r2, [r1, #80]	@ movhi
	beq	.L540
	sub	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r5]
	ldr	r9, .L546+8
	strh	r2, [r1, #84]	@ movhi
	ldr	r8, .L546+12
	ldr	r7, .L546+16
	ldr	r6, .L546+20
.L473:
	ldr	r4, .L546+24
	ldr	r3, [r4]
	ldr	r2, .L546+28
	add	r3, r3, #1
	str	r3, [r4]
	mov	lr, pc
	bx	r2
	mov	r3, #67108864
	ldrh	r2, [r9]
	ldrh	r1, [r7]
	ldrh	ip, [r8]
	ldrh	r0, [r6]
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, .L546+32
	strh	ip, [r3, #18]	@ movhi
	strh	r0, [r3, #20]	@ movhi
	strh	r1, [r3, #22]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L546+36
	ldrh	r2, [r2]
	strh	r1, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	ldr	r2, .L546+40
	ldrh	r1, [r4]
	ldrh	r2, [r2]
	strh	r1, [r3, #28]	@ movhi
	strh	r2, [r3, #30]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L451:
	cmp	r4, #1
	beq	.L541
	cmp	r4, #2
	bne	.L461
	ldr	r5, .L546+4
	ldr	r9, .L546+8
.L489:
	mov	r1, #67108864
	mov	r2, #255
	ldr	r3, [r5]
	cmp	r3, #0
	strh	r2, [r1, #80]	@ movhi
	beq	.L462
	sub	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r5]
	strh	r2, [r1, #84]	@ movhi
.L463:
	ldr	r4, [r10]
.L468:
	cmp	r4, #4
	beq	.L534
	ldr	r8, .L546+12
	ldr	r7, .L546+16
	ldr	r6, .L546+20
.L470:
	cmp	r4, #5
	bne	.L473
	ldr	r5, .L546+4
.L487:
	mov	r1, #67108864
	mov	r2, #191
	ldr	r3, [r5]
	cmp	r3, #128
	strh	r2, [r1, #80]	@ movhi
	bhi	.L488
	add	r3, r3, #1
.L538:
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r5]
	strh	r2, [r1, #84]	@ movhi
	b	.L473
.L540:
	ldr	r2, .L546+44
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L454
	ldr	r1, .L546+48
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L454
.L456:
	mov	r0, #1
	mov	r2, #67108864
	mov	r1, #255
	str	r0, [r10]
	strh	r1, [r2, #80]	@ movhi
.L458:
	mov	r1, #67108864
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r5]
	ldr	r4, [r10]
	strh	r2, [r1, #84]	@ movhi
.L461:
	cmp	r4, #3
	ldrne	r9, .L546+8
	bne	.L468
	mov	r2, #67108864
	mov	r1, #255
	ldr	r5, .L546+4
	ldr	r3, [r5]
	cmp	r3, #128
	strh	r1, [r2, #80]	@ movhi
	bhi	.L469
	ldr	r9, .L546+8
.L467:
	mov	r1, #67108864
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r5]
	ldr	r8, .L546+12
	strh	r2, [r1, #84]	@ movhi
	ldr	r4, [r10]
	ldr	r7, .L546+16
	ldr	r6, .L546+20
	b	.L470
.L534:
	ldr	r5, .L546+4
	ldr	r8, .L546+12
	ldr	r7, .L546+16
	ldr	r6, .L546+20
.L471:
	mov	r1, #67108864
	mov	r2, #255
	ldr	r3, [r5]
	cmp	r3, #0
	strh	r2, [r1, #80]	@ movhi
	subne	r3, r3, #1
	bne	.L538
	ldr	fp, .L546+52
	ldr	r3, [fp]
	cmp	r3, #40
	beq	.L542
.L474:
	cmp	r3, #60
	beq	.L543
.L475:
	cmp	r3, #80
	beq	.L544
.L476:
	cmp	r3, #120
	ble	.L537
	ldr	r2, [r6]
	cmp	r2, #255
	ble	.L545
	ldr	r0, .L546+56
	ldr	r2, [r0]
	cmp	r2, #127
	bhi	.L480
	mov	ip, #67108864
	add	r1, r2, #1
	rsb	r2, r1, #128
	lsr	lr, r2, #3
	lsr	r2, r1, #3
	orr	r2, r2, lr, lsl #8
	str	r1, [r0]
	lsl	r2, r2, #16
	ldr	r1, .L546+60
	lsr	r2, r2, #16
	strh	r1, [ip, #80]	@ movhi
	ldr	r4, [r10]
	strh	r2, [ip, #82]	@ movhi
.L481:
	mov	r2, #67108864
	mov	r1, #1792
	strh	r1, [r2]	@ movhi
	b	.L478
.L541:
	mov	r2, #67108864
	mov	r1, #255
	ldr	r5, .L546+4
	ldr	r3, [r5]
	cmp	r3, #128
	strh	r1, [r2, #80]	@ movhi
	bls	.L458
	mov	r3, #2816
	mov	ip, #32
	ldr	r9, .L546+8
	ldr	r4, .L546+64
	strh	r3, [r2]	@ movhi
	ldr	r1, .L546+68
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	str	ip, [r9]
	mov	lr, pc
	bx	r4
	mov	r3, #1440
	ldr	r2, .L546+72
	ldr	r1, .L546+76
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L546+80
	ldr	r1, .L546+84
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2704
	mov	r2, #100663296
	ldr	r1, .L546+88
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L546+92
	ldr	r1, .L546+96
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #432
	ldr	r2, .L546+100
	ldr	r1, .L546+104
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L546+108
	ldr	r1, .L546+112
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2
	str	r3, [r10]
	b	.L489
.L462:
	ldr	r2, .L546+44
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L464
	ldr	r1, .L546+48
	ldrh	r1, [r1]
	tst	r1, #1
	beq	.L465
.L464:
	tst	r2, #8
	beq	.L466
	ldr	r1, .L546+48
	ldrh	r1, [r1]
	tst	r1, #8
	bne	.L466
.L465:
	mov	r0, #3
	mov	r2, #67108864
	mov	r1, #255
	str	r0, [r10]
	strh	r1, [r2, #80]	@ movhi
	b	.L467
.L454:
	tst	r2, #8
	beq	.L457
	ldr	r1, .L546+48
	ldrh	r1, [r1]
	tst	r1, #8
	beq	.L456
.L457:
	tst	r2, #16
	beq	.L539
	ldr	r2, .L546+48
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L456
.L539:
	ldr	r9, .L546+8
	ldr	r8, .L546+12
	ldr	r7, .L546+16
	ldr	r6, .L546+20
	b	.L473
.L469:
	mov	r3, #1536
	mov	r1, #240
	mov	r0, #8
	mov	lr, #230
	mov	ip, #210
	ldr	r9, .L546+8
	ldr	r8, .L546+12
	ldr	r7, .L546+16
	ldr	r6, .L546+20
	strh	r3, [r2]	@ movhi
	ldr	fp, .L546+64
	mov	r3, #256
	mov	r2, #83886080
	str	r1, [r9]
	str	r0, [r8]
	ldr	r1, .L546+116
	mov	r0, r4
	str	lr, [r7]
	str	ip, [r6]
	mov	lr, pc
	bx	fp
	mov	r3, #2784
	ldr	r2, .L546+72
	ldr	r1, .L546+120
	mov	r0, r4
	mov	lr, pc
	bx	fp
	mov	r3, #1024
	ldr	r2, .L546+80
	ldr	r1, .L546+124
	mov	r0, r4
	mov	lr, pc
	bx	fp
	mov	r3, #2432
	mov	r2, #100663296
	ldr	r1, .L546+128
	mov	r0, r4
	mov	lr, pc
	bx	fp
	mov	r3, #1024
	ldr	r2, .L546+92
	ldr	r1, .L546+132
	mov	r0, r4
	mov	lr, pc
	bx	fp
	mov	r3, #32
	ldr	r2, .L546+136
	ldr	r1, .L546+140
	mov	r0, r4
	mov	lr, pc
	bx	fp
	mov	r3, #1024
	mov	r0, r4
	ldr	r2, .L546+144
	ldr	r1, .L546+148
	mov	lr, pc
	bx	fp
	mov	r3, #4
	str	r3, [r10]
	b	.L471
.L466:
	tst	r2, #16
	beq	.L463
	ldr	r2, .L546+48
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L463
	b	.L465
.L488:
	bl	goToStats
	b	.L473
.L545:
	add	r2, r2, #1
	str	r2, [r6]
.L537:
	ldr	r4, [r10]
.L478:
	add	r3, r3, #1
	str	r3, [fp]
	b	.L470
.L543:
	mov	r3, #2896
	ldr	r2, .L546+72
	ldr	r1, .L546+152
	mov	r0, #3
	ldr	r4, .L546+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L546+80
	ldr	r1, .L546+156
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [fp]
	b	.L475
.L542:
	mov	r3, #2544
	ldr	r2, .L546+72
	ldr	r1, .L546+160
	mov	r0, #3
	ldr	r4, .L546+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L546+80
	ldr	r1, .L546+164
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [fp]
	b	.L474
.L544:
	mov	r3, #2864
	ldr	r2, .L546+72
	ldr	r1, .L546+168
	mov	r0, #3
	ldr	r4, .L546+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L546+80
	ldr	r1, .L546+172
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [fp]
	b	.L476
.L480:
	ldr	r2, .L546+44
	ldrh	r2, [r2]
	tst	r2, #1
	beq	.L482
	ldr	r1, .L546+48
	ldrh	r1, [r1]
	tst	r1, #1
	bne	.L482
.L483:
	mov	r0, #5
	mov	r2, #67108864
	mov	r1, #1792
	add	r3, r3, #1
	str	r0, [r10]
	strh	r1, [r2]	@ movhi
	str	r3, [fp]
	b	.L487
.L482:
	tst	r2, #8
	beq	.L484
	ldr	r1, .L546+48
	ldrh	r1, [r1]
	tst	r1, #8
	beq	.L483
.L484:
	tst	r2, #16
	beq	.L486
	ldr	r2, .L546+48
	ldrh	r2, [r2]
	tst	r2, #16
	beq	.L483
.L486:
	ldr	r4, [r10]
	b	.L481
.L547:
	.align	2
.L546:
	.word	menuNum
	.word	.LANCHOR0
	.word	hOff0
	.word	vOff0
	.word	vOff1
	.word	hOff1
	.word	hOff3
	.word	waitForVBlank
	.word	hOff2
	.word	vOff2
	.word	vOff3
	.word	oldButtons
	.word	buttons
	.word	timeVar
	.word	fpaNum2
	.word	1089
	.word	DMANow
	.word	Belt1Pal
	.word	100679680
	.word	Belt1Tiles
	.word	100694016
	.word	Belt1Map
	.word	Belt1BGTextTiles
	.word	100677632
	.word	Belt1BGTextMap
	.word	100696064
	.word	Belt1StarBackdropTiles
	.word	100710400
	.word	Belt1StarBackdropMap
	.word	BackgroundBG20Pal
	.word	PlayerHoodie0ShadowTiles
	.word	PlayerHoodie0ShadowMap
	.word	PlayerHoodieTextTiles
	.word	PlayerHoodieTextMap
	.word	100712448
	.word	BlueBackTiles
	.word	100726784
	.word	BlueBackMap
	.word	PlayerHoodie1Tiles
	.word	PlayerHoodie1Map
	.word	PlayerHoodie1ShadowTiles
	.word	PlayerHoodie1ShadowMap
	.word	PlayerHoodie2Tiles
	.word	PlayerHoodie2Map
	.size	intro, .-intro
	.align	2
	.global	goToCutscenes
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCutscenes, %function
goToCutscenes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L556
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L553
	cmp	r3, #1
	beq	.L554
.L550:
	cmp	r3, #2
	beq	.L555
.L548:
	pop	{r4, lr}
	bx	lr
.L553:
	ldr	r1, .L556+4
	ldr	r2, .L556+8
	str	r3, [r1]
	mov	lr, pc
	bx	r2
	mov	r0, #1
	ldr	r3, .L556+12
	ldr	r2, .L556+16
	str	r2, [r3]
	ldr	r3, [r4]
	ldr	r1, .L556+20
	cmp	r3, #1
	str	r0, [r1]
	bne	.L550
.L554:
	mov	r1, #0
	ldr	r2, .L556+4
	ldr	r3, .L556+24
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	ldr	r2, .L556+12
	ldr	r1, .L556+16
	cmp	r3, #2
	str	r1, [r2]
	bne	.L548
.L555:
	ldr	r3, .L556+28
	mov	lr, pc
	bx	r3
	mov	r0, #0
	ldr	r1, .L556+4
	ldr	r3, .L556+12
	ldr	r2, .L556+16
	str	r0, [r1]
	str	r2, [r3]
	pop	{r4, lr}
	bx	lr
.L557:
	.align	2
.L556:
	.word	cutsceneID
	.word	goFlag
	.word	goToCheatCutscene
	.word	state
	.word	updateCutscenes
	.word	cheat
	.word	goToCountDownCutscene
	.word	goToSpaceCutscene
	.size	goToCutscenes, .-goToCutscenes
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r3, .L600
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #1040
	ldr	r3, .L600+4
	strh	r1, [r2, #82]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r2, .L600+8
	ldr	r1, .L600+12
	ldr	r3, [r2]
	ldr	r1, [r1]
	sub	r0, r3, #7
	cmp	r0, r1
	ble	.L559
	ldr	ip, .L600+16
	ldr	r0, [ip]
.L560:
	sub	lr, r3, #8
	cmp	r1, lr
	bge	.L561
	sub	r3, r3, #1
	tst	r3, #1
	subne	r0, r0, #1
	str	r3, [r2]
	strne	r0, [ip]
.L561:
	ldr	r5, .L600+20
	ldr	ip, [r5, #20]
	cmp	ip, #0
	add	r6, ip, #3
	movge	r6, ip
	mov	r1, #67108864
	ldr	r4, .L600+24
	ldr	r2, [r4, #20]
	cmp	r2, #0
	add	lr, r2, #3
	movge	lr, r2
	ldr	ip, [r5, #4]
	rsb	ip, ip, #884
	sub	ip, ip, r6, asr #2
	lsl	ip, ip, #16
	lsr	ip, ip, #16
	ldr	r2, [r5, #16]
	strh	ip, [r1, #16]	@ movhi
	ldr	ip, [r5]
	add	ip, ip, r2
	ldr	r2, [r4, #4]
	rsb	r2, r2, #460
	rsb	ip, ip, #900
	sub	r2, r2, lr, asr #2
	lsl	ip, ip, #16
	lsl	r2, r2, #16
	lsr	ip, ip, #16
	lsr	r2, r2, #16
	strh	ip, [r1, #18]	@ movhi
	strh	r2, [r1, #20]	@ movhi
	ldr	ip, [r4, #16]
	ldr	r2, [r4]
	add	r2, r2, ip
	rsb	r2, r2, #488
	add	r2, r2, #2
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #22]	@ movhi
	lsl	r3, r3, #16
	ldr	r2, .L600+28
	lsr	r3, r3, #16
	strh	r3, [r1, #24]	@ movhi
	ldrh	r3, [r2]
	strh	r3, [r1, #26]	@ movhi
	ldr	r3, .L600+32
	ldr	r2, [r5, #44]
	lsl	r0, r0, #16
	ldrh	r3, [r3]
	lsr	r0, r0, #16
	cmp	r2, #8
	strh	r0, [r1, #28]	@ movhi
	strh	r3, [r1, #30]	@ movhi
	bgt	.L562
	ldr	r6, .L600+36
	ldr	r3, [r6]
	cmp	r3, #1
	beq	.L596
.L563:
	ldr	r3, [r5, #28]
	cmp	r3, #8
	beq	.L568
.L565:
	ldr	r3, .L600+40
	ldr	r3, [r3]
	cmp	r3, #40
	ble	.L568
.L599:
	ldr	r3, [r6]
	cmp	r3, #1
	moveq	r3, #67108864
	moveq	r2, #0
	strheq	r2, [r3, #84]	@ movhi
.L571:
	ldr	r3, [r4, #44]
	cmp	r3, #8
	bgt	.L572
	ldr	r3, [r4, #28]
	cmp	r3, #8
	beq	.L597
.L572:
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L600+44
	mov	r0, #3
	ldr	r4, .L600+48
	mov	lr, pc
	bx	r4
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L575
	mov	r3, #191
	mov	r1, #67108864
	ldr	r0, .L600+52
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L558
	sub	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r0]
	strh	r2, [r1, #84]	@ movhi
.L558:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L568:
	mov	r3, #255
	mov	r1, #67108864
	ldr	r0, .L600+52
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [r0]
	cmp	r3, #128
	bhi	.L598
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r0]
	strh	r2, [r1, #84]	@ movhi
	b	.L571
.L562:
	ldr	r3, [r4, #44]
	cmp	r3, #8
	ldr	r6, .L600+36
	bgt	.L565
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L565
	ldr	r7, .L600+56
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L593
	ldr	r8, .L600+60
.L566:
	mov	r3, #0
	ldr	r2, .L600+64
	ldr	r1, .L600+68
	ldr	r0, .L600+72
	mov	lr, pc
	bx	r8
.L567:
	mov	r2, #3
	ldr	r3, [r5, #44]
	str	r2, [r6]
.L564:
	cmp	r3, #8
	ble	.L563
	ldr	r3, .L600+40
	ldr	r3, [r3]
	cmp	r3, #40
	ble	.L568
	b	.L599
.L559:
	ldr	ip, .L600+16
	add	r3, r3, #1
	ldr	r0, [ip]
	tst	r3, #1
	addne	r0, r0, #1
	str	r3, [r2]
	strne	r0, [ip]
	b	.L560
.L575:
	cmp	r3, #1
	bne	.L558
	mov	r2, #67108864
	ldr	r1, .L600+76
	ldr	r3, .L600+80
	strh	r1, [r2, #80]	@ movhi
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L558
	ldr	r3, .L600+84
	ldrh	r3, [r3]
	ands	r3, r3, #8
	bne	.L558
	ldr	r2, [r5, #44]
	cmp	r2, #8
	ble	.L558
	ldr	r4, .L600+88
	ldr	r2, .L600+64
	ldr	r1, .L600+92
	ldr	r0, .L600+96
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, r7, r8, lr}
	b	goToPause
.L598:
	bl	goToLose
	b	.L571
.L596:
	mov	r3, #0
	ldr	r2, .L600+64
	ldr	r1, .L600+100
	ldr	r0, .L600+104
	ldr	r7, .L600+88
	mov	lr, pc
	bx	r7
	mov	r2, #2
	ldr	r3, [r5, #44]
	str	r2, [r6]
	b	.L564
.L597:
	mov	r3, #191
	mov	r1, #67108864
	ldr	r0, .L600+52
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [r0]
	cmp	r3, #128
	bhi	.L573
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r0]
	strh	r2, [r1, #84]	@ movhi
	b	.L572
.L573:
	ldr	r3, .L600+56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L574
	mov	r2, #1
	ldr	r3, .L600+108
	str	r2, [r3]
	bl	goToCutscenes
	b	.L572
.L593:
	ldr	r2, .L600+64
	ldr	r1, .L600+100
	ldr	r0, .L600+104
	ldr	r8, .L600+60
	mov	lr, pc
	bx	r8
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L567
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L567
	b	.L566
.L574:
	bl	goToWin
	b	.L572
.L601:
	.align	2
.L600:
	.word	updateGame
	.word	waitForVBlank
	.word	hOff2
	.word	smoothOffset
	.word	hOff3
	.word	player
	.word	champ
	.word	vOff2
	.word	vOff3
	.word	gameplayState
	.word	timeUpTime
	.word	shadowOAM
	.word	DMANow
	.word	.LANCHOR0
	.word	cheat
	.word	playSoundB
	.word	11025
	.word	82304
	.word	CheatKOSound
	.word	3649
	.word	oldButtons
	.word	buttons
	.word	playSoundA
	.word	5746
	.word	StartSound
	.word	16645
	.word	KOSound
	.word	cutsceneID
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L722
	ldr	r3, [r6]
	cmp	r3, #10
	bgt	.L603
	ldr	r1, .L722+4
	mov	lr, #40
	mov	ip, r1
	ldr	r2, .L722+8
	smull	r4, r5, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r5, asr #2
	lsl	r0, r2, #6
	add	r0, r0, #16
	add	r2, r2, r2, lsl #2
	sub	r3, r3, r2, lsl #1
	orr	r2, r0, #4096
	strh	r2, [r1, #4]	@ movhi
	ldr	r2, .L722+12
	lsl	r3, r3, #6
	strh	r2, [r1, #2]	@ movhi
	strh	lr, [r1]	@ movhi
	add	r3, r3, #16
	strh	lr, [ip, #8]!	@ movhi
	add	r2, r2, #12
	orr	r3, r3, #4096
	strh	r2, [ip, #2]	@ movhi
	strh	r3, [r1, #12]	@ movhi
.L604:
	ldr	r7, .L722+16
	ldr	ip, [r7]
	cmp	ip, #0
	ldr	r3, .L722+20
	bne	.L605
	ldr	r2, .L722+24
	strh	r2, [r3]	@ movhi
.L606:
	ldr	r4, .L722+28
	ldr	r2, .L722+8
	ldr	lr, [r4]
	smull	r0, r1, lr, r2
	asr	r2, lr, #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	sub	r2, lr, r2, lsl #2
	ldr	r1, .L722+32
	ldr	r5, .L722+36
	cmp	r2, #9
	strh	r1, [r3, #4]	@ movhi
	ldr	r2, [r5]
	bgt	.L608
	cmp	r2, #0
	ble	.L609
	add	r2, r2, #60
	mvn	r2, r2, lsl #17
	mov	r1, #129
	mvn	r2, r2, lsr #17
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	r2, .L722+40
	cmp	ip, #0
.L707:
	ldr	r1, .L722+44
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	bne	.L611
	ldr	r1, .L722+48
	ldr	r2, .L722+52
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #20]	@ movhi
	b	.L613
.L603:
	cmp	r3, #11
	bne	.L604
	mov	ip, #512
	ldr	r3, .L722+4
	ldr	r0, .L722+56
	ldr	r1, .L722+60
	ldr	r2, .L722+64
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	b	.L604
.L608:
	add	r2, r2, #60
	mvn	r2, r2, lsl #17
	mov	r1, #129
	mvn	r2, r2, lsr #17
	strh	r1, [r3, #18]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	r1, .L722+44
	ldr	r2, .L722+40
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	r2, [r3, #16]	@ movhi
.L611:
	ldr	r1, .L722+68
	ldr	r2, .L722+72
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #20]	@ movhi
.L613:
	ldr	r1, .L722+76
	ldr	r2, .L722+44
	cmp	ip, #1
	strh	r1, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	beq	.L711
.L614:
	ldr	r2, .L722+80
	strh	r2, [r3, #28]	@ movhi
.L616:
	ldr	r8, .L722+84
	ldr	r2, [r8]
	cmp	r2, #0
	bne	.L618
	ldr	r2, .L722+88
	ldr	r2, [r2]
	cmp	r2, #1
	ble	.L618
	ldr	r2, .L722+92
	ldr	r1, .L722+96
	strh	r2, [r3, #32]	@ movhi
	ldr	r2, .L722+100
	cmp	ip, #2
	strh	r1, [r3, #34]	@ movhi
	strh	r2, [r3, #36]	@ movhi
	beq	.L712
.L618:
	ldr	r3, .L722+104
	mov	lr, pc
	bx	r3
	ldr	r9, .L722+108
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L722+20
	mov	r0, #3
	mov	lr, pc
	bx	r9
	ldr	r3, [r4]
	ldr	r2, .L722+112
	smull	r0, r1, r3, r2
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #1
	add	r1, r2, r2, lsl #3
	sub	r2, r3, r1
	cmp	r2, #3
	cmpne	r3, r1
	moveq	r1, #1
	movne	r1, #0
	cmp	r2, #6
	movne	r2, r1
	orreq	r2, r1, #1
	cmp	r2, #0
	beq	.L620
	mov	r0, #67108864
	ldr	lr, .L722+116
	ldr	ip, .L722+120
	ldr	r1, [lr]
	ldr	r2, [ip]
	add	r1, r1, #1
	sub	r2, r2, #1
	str	r1, [lr]
	str	r2, [ip]
	lsl	r1, r1, #16
	lsl	r2, r2, #16
	lsr	r1, r1, #16
	lsr	r2, r2, #16
	strh	r1, [r0, #28]	@ movhi
	strh	r2, [r0, #30]	@ movhi
.L620:
	ldr	r2, [r5]
	add	r3, r3, #1
	cmp	r2, #0
	str	r3, [r4]
	ble	.L622
	ldr	r3, [r7]
	add	r2, r2, #2
	cmp	r3, #0
	str	r2, [r5]
	bne	.L623
	mov	r1, #67108864
	mov	r2, #191
	ldr	r4, .L722+124
	ldr	r3, [r4]
	cmp	r3, #128
	strh	r2, [r1, #80]	@ movhi
	bhi	.L713
.L708:
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r4]
	strh	r2, [r1, #84]	@ movhi
.L622:
	ldr	r3, [r6]
	cmp	r3, #10
	ble	.L629
	mov	r1, #67108864
	mov	r2, #255
	ldr	r4, .L722+124
	ldr	r3, [r4]
	cmp	r3, #128
	strh	r2, [r1, #80]	@ movhi
	addls	r3, r3, #1
	bhi	.L714
.L710:
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r4]
	strh	r2, [r1, #84]	@ movhi
.L602:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L605:
	cmp	ip, #1
	ldreq	r2, .L722+128
	strheq	r2, [r3]	@ movhi
	beq	.L606
	cmp	ip, #2
	ldreq	r2, .L722+132
	strheq	r2, [r3]	@ movhi
	b	.L606
.L629:
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L602
	ldr	r4, .L722+124
.L658:
	mov	r1, #67108864
	mov	r2, #255
	ldr	r3, [r4]
	cmp	r3, #0
	strh	r2, [r1, #80]	@ movhi
	bne	.L715
	mov	r2, #131
	ldr	r3, .L722+136
	ldr	r1, .L722+140
	strh	r2, [r3, #10]	@ movhi
	ldrh	r2, [r3, #12]
	ldr	r3, [r1]
	cmp	r2, r3
	blne	loseTimer.part.0
.L635:
	ldr	r3, [r6]
	cmp	r3, #9
	bgt	.L602
	ldr	r3, .L722+144
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L636
	ldr	r2, .L722+148
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L636
.L637:
	ldr	r2, [r5]
	add	r2, r2, #1
	str	r2, [r5]
.L638:
	ldr	r2, .L722+88
	ldr	r1, [r2]
	cmp	r1, #1
	and	r2, r3, #4
	and	r0, r3, #128
	ble	.L639
	cmp	r2, #0
	beq	.L641
	ldr	r2, .L722+148
	ldrh	r2, [r2]
	tst	r2, #4
	bne	.L642
	ldr	r2, [r7]
	cmp	r2, #2
	beq	.L716
	cmp	r2, #1
	ble	.L717
.L660:
	ldr	r2, [r7]
	cmp	r2, #0
	ble	.L718
	cmp	r2, #1
	beq	.L719
.L642:
	cmp	r1, #1
	bgt	.L641
.L650:
	cmp	r0, #0
	beq	.L651
	ldr	r2, .L722+148
.L652:
	ldrh	r2, [r2]
	tst	r2, #128
	beq	.L663
.L651:
	tst	r3, #64
	beq	.L602
	ldr	r3, .L722+148
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L602
	ldr	r3, [r7]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r7]
	bgt	.L602
	bne	.L602
	ldr	r2, [r8]
	cmp	r1, #1
	movle	r3, #0
	movgt	r3, #1
	cmp	r2, #0
	movne	r3, #0
	cmp	r3, #0
	movne	r3, #2
	moveq	r3, #1
	str	r3, [r7]
	b	.L602
.L623:
	cmp	r3, #1
	bne	.L625
	mov	r1, #67108864
	mov	r2, #255
	ldr	r4, .L722+124
	ldr	r3, [r4]
	cmp	r3, #128
	strh	r2, [r1, #80]	@ movhi
	bls	.L708
	bl	goToStart
	b	.L622
.L711:
	ldr	lr, [r4]
	ldr	r2, .L722+8
	smull	r0, r1, lr, r2
	asr	r2, lr, #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	sub	r2, lr, r2, lsl #2
	cmp	r2, #9
	bgt	.L614
	ldr	r2, .L722+152
	strh	r2, [r3, #28]	@ movhi
	b	.L616
.L609:
	mov	r2, #129
	ldr	r1, .L722+156
	strh	r2, [r3, #18]	@ movhi
	cmp	ip, #0
	ldr	r2, .L722+40
	strh	r1, [r3, #2]	@ movhi
	b	.L707
.L714:
	bl	goToStart
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L602
	ldr	r3, [r6]
	cmp	r3, #10
	bgt	.L602
	b	.L658
.L625:
	cmp	r3, #2
	bne	.L622
	mov	r1, #67108864
	mov	r2, #191
	ldr	r4, .L722+124
	ldr	r3, [r4]
	cmp	r3, #128
	strh	r2, [r1, #80]	@ movhi
	bls	.L708
	mov	r1, #1
	mov	r2, #0
	ldr	r3, .L722+160
	str	r1, [r8]
	str	r2, [r3]
	bl	goToCutscenes
	b	.L622
.L715:
	sub	r3, r3, #1
	b	.L710
.L712:
	ldr	ip, [r4]
	ldr	r2, .L722+8
	smull	r0, r1, ip, r2
	asr	r2, ip, #31
	rsb	r2, r2, r1, asr #3
	add	r2, r2, r2, lsl #2
	sub	r2, ip, r2, lsl #2
	cmp	r2, #9
	ldrle	r2, .L722+164
	strhle	r2, [r3, #36]	@ movhi
	b	.L618
.L636:
	tst	r3, #1
	beq	.L638
	ldr	r2, .L722+148
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L638
	b	.L637
.L719:
	ldr	ip, [r8]
	cmp	r1, #1
	movgt	r2, #0
	movle	r2, #1
	cmp	ip, #0
	movne	r2, #1
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r7]
	bne	.L642
.L641:
	cmp	r0, #0
	beq	.L651
	ldr	r2, .L722+148
	ldrh	r0, [r2]
	tst	r0, #128
	bne	.L652
	ldr	r2, [r7]
	cmp	r2, #1
	ble	.L720
	cmp	r2, #2
	bne	.L663
	ldr	r2, [r8]
	cmp	r2, #0
	streq	r2, [r7]
.L663:
	ldr	r2, [r7]
	cmp	r2, #0
	ble	.L721
	cmp	r2, #1
	bne	.L651
	ldr	r0, [r8]
	cmp	r1, #1
	movgt	r2, #0
	movle	r2, #1
	cmp	r0, #0
	movne	r2, #1
	cmp	r2, #0
	movne	r2, #0
	strne	r2, [r7]
	b	.L651
.L713:
	bl	goToStats
	b	.L622
.L639:
	cmp	r2, #0
	beq	.L650
	ldr	r2, .L722+148
	ldrh	r2, [r2]
	tst	r2, #4
	bne	.L642
	b	.L660
.L721:
	ldr	ip, [r8]
	cmp	r1, #1
	movgt	r0, #0
	movle	r0, #1
	cmp	ip, #0
	movne	r0, #1
	cmp	r0, #0
	addne	r2, r2, #1
	strne	r2, [r7]
	b	.L651
.L718:
	ldr	lr, [r8]
	cmp	r1, #1
	movgt	ip, #0
	movle	ip, #1
	cmp	lr, #0
	movne	ip, #1
	cmp	ip, #0
	addne	r2, r2, #1
	strne	r2, [r7]
	b	.L642
.L720:
	ldr	r0, [r8]
	cmp	r0, #0
	addeq	r2, r2, #1
	streq	r2, [r7]
	b	.L663
.L717:
	ldr	ip, [r8]
	cmp	ip, #0
	bne	.L660
	add	r2, r2, #1
.L709:
	str	r2, [r7]
	b	.L660
.L716:
	ldr	r2, [r8]
	cmp	r2, #0
	bne	.L660
	b	.L709
.L723:
	.align	2
.L722:
	.word	loseTime
	.word	shadowOAM+1000
	.word	1717986919
	.word	16490
	.word	menuNum
	.word	shadowOAM
	.word	17489
	.word	timeVar
	.word	4100
	.word	goTime
	.word	17493
	.word	16481
	.word	4264
	.word	4268
	.word	16424
	.word	-32662
	.word	4114
	.word	4232
	.word	4236
	.word	17508
	.word	4296
	.word	cheat
	.word	lossCount
	.word	17523
	.word	-16287
	.word	4360
	.word	waitForVBlank
	.word	DMANow
	.word	954437177
	.word	hOffmenu
	.word	vOffmenu
	.word	.LANCHOR0
	.word	17504
	.word	17524
	.word	67109120
	.word	second
	.word	oldButtons
	.word	buttons
	.word	4328
	.word	-32709
	.word	cutsceneID
	.word	4488
	.size	lose, .-lose
	.align	2
	.global	updateCutscenes
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCutscenes, %function
updateCutscenes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L736
	ldr	r2, [r5]
	ldr	r4, .L736+4
	cmp	r2, #0
	ldr	r3, [r4]
	bne	.L725
	cmp	r3, #0
	beq	.L732
.L726:
	cmp	r3, #1
	beq	.L733
.L728:
	cmp	r3, #2
	beq	.L734
.L729:
	cmp	r3, #3
	beq	.L735
.L724:
	pop	{r4, r5, r6, lr}
	bx	lr
.L732:
	ldr	r3, .L736+8
	mov	lr, pc
	bx	r3
	ldr	r2, [r5]
	ldr	r3, [r4]
.L725:
	cmp	r2, #1
	bne	.L727
	cmp	r3, #0
	bne	.L726
	ldr	r3, .L736+12
	mov	lr, pc
	bx	r3
	ldr	r2, [r5]
	ldr	r3, [r4]
.L727:
	cmp	r2, #2
	bne	.L726
	cmp	r3, #0
	bne	.L726
	ldr	r3, .L736+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L728
.L733:
	bl	goToGame
	ldr	r3, [r4]
	cmp	r3, #2
	bne	.L729
.L734:
	str	r3, [r5]
	bl	goToCutscenes
	ldr	r3, [r4]
	cmp	r3, #3
	bne	.L724
.L735:
	pop	{r4, r5, r6, lr}
	b	goToTrueWin
.L737:
	.align	2
.L736:
	.word	cutsceneID
	.word	goFlag
	.word	cheatCutscene
	.word	countDownCutscene
	.word	spaceCutscene
	.size	updateCutscenes, .-updateCutscenes
	.align	2
	.global	fadeOut
	.syntax unified
	.arm
	.fpu softvfp
	.type	fadeOut, %function
fadeOut:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r3, #255
	ldr	ip, .L741
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [ip]
	cmp	r3, #128
	addls	r3, r3, r0
	lsrls	r2, r3, #3
	lslls	r2, r2, #16
	lsrls	r2, r2, #16
	strls	r3, [ip]
	movls	r0, #1
	strhls	r2, [r1, #84]	@ movhi
	movhi	r0, #0
	bx	lr
.L742:
	.align	2
.L741:
	.word	.LANCHOR0
	.size	fadeOut, .-fadeOut
	.align	2
	.global	fadeIn
	.syntax unified
	.arm
	.fpu softvfp
	.type	fadeIn, %function
fadeIn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r3, #255
	ldr	ip, .L746
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [ip]
	cmp	r3, #0
	subne	r3, r3, r0
	lsrne	r2, r3, #3
	lslne	r2, r2, #16
	lsrne	r2, r2, #16
	strne	r3, [ip]
	movne	r0, #1
	strhne	r2, [r1, #84]	@ movhi
	moveq	r0, r3
	bx	lr
.L747:
	.align	2
.L746:
	.word	.LANCHOR0
	.size	fadeIn, .-fadeIn
	.align	2
	.global	fadeOutWhite
	.syntax unified
	.arm
	.fpu softvfp
	.type	fadeOutWhite, %function
fadeOutWhite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r3, #191
	ldr	ip, .L751
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [ip]
	cmp	r3, #128
	addls	r3, r3, r0
	lsrls	r2, r3, #3
	lslls	r2, r2, #16
	lsrls	r2, r2, #16
	strls	r3, [ip]
	movls	r0, #1
	strhls	r2, [r1, #84]	@ movhi
	movhi	r0, #0
	bx	lr
.L752:
	.align	2
.L751:
	.word	.LANCHOR0
	.size	fadeOutWhite, .-fadeOutWhite
	.align	2
	.global	fadeInWhite
	.syntax unified
	.arm
	.fpu softvfp
	.type	fadeInWhite, %function
fadeInWhite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	mov	r3, #191
	ldr	ip, .L756
	strh	r3, [r1, #80]	@ movhi
	ldr	r3, [ip]
	cmp	r3, #0
	subne	r3, r3, r0
	lsrne	r2, r3, #3
	lslne	r2, r2, #16
	lsrne	r2, r2, #16
	strne	r3, [ip]
	movne	r0, #1
	strhne	r2, [r1, #84]	@ movhi
	moveq	r0, r3
	bx	lr
.L757:
	.align	2
.L756:
	.word	.LANCHOR0
	.size	fadeInWhite, .-fadeInWhite
	.align	2
	.global	setTint
	.syntax unified
	.arm
	.fpu softvfp
	.type	setTint, %function
setTint:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	mov	ip, #223
	lsr	r3, r0, #3
	ldr	r1, .L759
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	ip, [r2, #80]	@ movhi
	str	r0, [r1]
	strh	r3, [r2, #84]	@ movhi
	bx	lr
.L760:
	.align	2
.L759:
	.word	.LANCHOR0
	.size	setTint, .-setTint
	.align	2
	.global	setTintWhite
	.syntax unified
	.arm
	.fpu softvfp
	.type	setTintWhite, %function
setTintWhite:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
	mov	ip, #159
	lsr	r3, r0, #3
	ldr	r1, .L762
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	ip, [r2, #80]	@ movhi
	str	r0, [r1]
	strh	r3, [r2, #84]	@ movhi
	bx	lr
.L763:
	.align	2
.L762:
	.word	.LANCHOR0
	.size	setTintWhite, .-setTintWhite
	.comm	second,4,4
	.comm	loseTime,4,4
	.comm	smoothOffset,4,4
	.comm	cheat,4,4
	.comm	goTime,4,4
	.comm	hOffmenu2,4,4
	.comm	vOffmenu2,4,4
	.comm	hOffmenu,4,4
	.comm	vOffmenu,4,4
	.comm	sliderNum,4,4
	.comm	menuNum,4,4
	.comm	pauseBlink,4,4
	.comm	frameNum,4,4
	.comm	timeVar2,4,4
	.comm	timeVar,4,4
	.comm	seed,4,4
	.comm	gameOldButtons,2,2
	.comm	gameButtons,2,2
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	winCount,4,4
	.comm	lossCount,4,4
	.comm	cutsceneID,4,4
	.comm	fpaNum2,4,4
	.global	fadeNum
	.comm	hOff3,4,4
	.comm	vOff3,4,4
	.comm	hOff2,4,4
	.comm	vOff2,4,4
	.comm	hOff1,4,4
	.comm	vOff1,4,4
	.comm	hOff0,4,4
	.comm	vOff0,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	fadeNum, %object
	.size	fadeNum, 4
fadeNum:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
