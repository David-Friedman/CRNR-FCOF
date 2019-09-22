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
	.file	"cutscenes.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutsceneCountDownTimer.part.0, %function
cutsceneCountDownTimer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L26
	ldr	r1, .L26+4
	ldr	r3, [r2]
	ldrh	r0, [r1, #12]
	ldr	r1, .L26+8
	add	r3, r3, #1
	push	{r4, r5, r6, lr}
	str	r3, [r2]
	str	r0, [r1]
	cmp	r3, #60
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
	.word	.L13
	.word	.L14
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L15
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L16
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L17
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L18
	.word	.L1
	.word	.L1
	.word	.L19
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L1
	.word	.L20
.L8:
	ldr	r5, .L26+12
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+20
	ldr	r0, .L26+24
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L21
	ldr	r4, .L26+32
.L23:
	mov	r3, #1088
	mov	r2, #100663296
	ldr	r1, .L26+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L26+40
	ldr	r1, .L26+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
.L22:
	mov	r3, #67108864
	mov	r2, #7424
	strh	r2, [r3]	@ movhi
.L1:
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	ldr	r4, .L26+28
	mov	r3, #0
	ldr	r2, .L26+16
	mov	r1, #10240
	ldr	r0, .L26+48
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L20:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+52
	ldr	r0, .L26+56
	ldr	r4, .L26+60
	mov	lr, pc
	bx	r4
	b	.L1
.L14:
	mov	r3, #0
	ldr	r2, .L26+16
	mov	r1, #10240
	ldr	r0, .L26+48
	ldr	r4, .L26+60
	mov	lr, pc
	bx	r4
	b	.L1
.L15:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+64
	ldr	r0, .L26+68
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L16:
	mov	r3, #0
	ldr	r2, .L26+16
	mov	r1, #28672
	ldr	r0, .L26+72
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L17:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+76
	ldr	r0, .L26+80
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L18:
	mov	r3, #0
	ldr	r2, .L26+16
	mov	r1, #30208
	ldr	r0, .L26+84
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L19:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+88
	ldr	r0, .L26+92
	ldr	r4, .L26+60
	mov	lr, pc
	bx	r4
	b	.L1
.L3:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+96
	ldr	r0, .L26+100
	ldr	r4, .L26+60
	mov	lr, pc
	bx	r4
	b	.L1
.L5:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+104
	ldr	r0, .L26+108
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L6:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+112
	ldr	r0, .L26+116
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L7:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+120
	ldr	r0, .L26+124
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L9:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+128
	ldr	r0, .L26+132
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L10:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+136
	ldr	r0, .L26+140
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L11:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+144
	ldr	r0, .L26+148
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L12:
	mov	r3, #0
	ldr	r2, .L26+16
	ldr	r1, .L26+152
	ldr	r0, .L26+156
	ldr	r4, .L26+28
	mov	lr, pc
	bx	r4
	b	.L1
.L21:
	mov	r3, #976
	mov	r2, #100663296
	ldr	r1, .L26+160
	mov	r0, #3
	ldr	r4, .L26+32
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L26+40
	ldr	r1, .L26+164
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L22
	b	.L23
.L27:
	.align	2
.L26:
	.word	countDownTime
	.word	67109120
	.word	.LANCHOR0
	.word	cheat
	.word	11025
	.word	8582
	.word	FourCountSound
	.word	playSoundA
	.word	DMANow
	.word	IdleS0WideTiles
	.word	100677632
	.word	IdleS0WideMap
	.word	NineCountSound
	.word	306556
	.word	CornerfaceChase
	.word	playSoundB
	.word	88832
	.word	CorruptionAudio0
	.word	CorruptionAudio1
	.word	25703
	.word	CorruptionAudio2
	.word	CorruptionAudio3
	.word	151833
	.word	CornerfaceAppears
	.word	151883
	.word	ChampKnockDownMusic
	.word	6613
	.word	OneCountSound
	.word	8777
	.word	TwoCountSound
	.word	8972
	.word	ThreeCountSound
	.word	8191
	.word	FiveCountSound
	.word	10405
	.word	SixCountSound
	.word	11448
	.word	SevenCountSound
	.word	12491
	.word	EightCountSound
	.word	Idle0WideTiles
	.word	Idle0WideMap
	.size	cutsceneCountDownTimer.part.0, .-cutsceneCountDownTimer.part.0
	.align	2
	.global	cheatCutscene
	.syntax unified
	.arm
	.fpu softvfp
	.type	cheatCutscene, %function
cheatCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L79
	ldr	r3, [r4]
	cmp	r3, #149
	ble	.L72
.L29:
	sub	r2, r3, #61
	cmp	r2, #238
	ldr	r5, .L79+4
	bls	.L68
	ldr	r6, .L79+8
	ldr	r9, .L79+12
	ldr	r8, .L79+16
.L30:
	cmp	r3, #292
	beq	.L73
.L34:
	cmp	r3, #340
	beq	.L74
.L35:
	ldr	r7, .L79+20
	ldr	r2, [r7]
	cmp	r2, #0
	bne	.L36
.L37:
	ldr	r2, .L79+24
	cmp	r3, r2
	bgt	.L75
.L49:
	ldr	r3, .L79+28
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r2, [r9]
	ldrh	r0, [r8]
	ldrh	r1, [r6]
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, .L79+32
	ldrh	r2, [r2]
	strh	r0, [r3, #18]	@ movhi
	strh	r1, [r3, #20]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	ldr	r3, [r5]
	add	r3, r3, #1
	cmp	r3, #20
	movgt	r3, #0
	ldr	r2, [r4]
	add	r2, r2, #1
	str	r2, [r4]
	str	r3, [r5]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L68:
	ldr	r2, [r5]
	cmp	r2, #9
	ldrgt	r2, .L79+36
	ldrle	r2, .L79+40
	ldr	r6, .L79+8
	cmp	r3, #250
	str	r2, [r6]
	beq	.L69
	ldr	r9, .L79+12
	ldr	r8, .L79+16
.L33:
	ldr	r2, .L79+44
	cmp	r3, r2
	bne	.L30
	mov	r3, #2832
	mov	r2, #100663296
	ldr	r1, .L79+48
	mov	r0, #3
	ldr	r7, .L79+52
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	ldr	r2, .L79+56
	ldr	r1, .L79+60
	mov	r0, #3
	mov	lr, pc
	bx	r7
	ldr	r3, [r4]
	cmp	r3, #292
	bne	.L34
.L73:
	mov	r2, #67108864
	mov	r3, #16
	ldr	r1, .L79+64
	strh	r3, [r2, #82]	@ movhi
	ldr	r7, .L79+52
	strh	r1, [r2, #80]	@ movhi
	mov	r3, #2464
	mov	r2, #100663296
	ldr	r1, .L79+68
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	ldr	r2, .L79+56
	ldr	r1, .L79+72
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #3056
	ldr	r2, .L79+76
	ldr	r1, .L79+80
	mov	r0, #3
	mov	lr, pc
	bx	r7
	mov	r3, #2048
	ldr	r2, .L79+84
	ldr	r1, .L79+88
	mov	r0, #3
	mov	lr, pc
	bx	r7
	ldr	r3, [r4]
	cmp	r3, #340
	bne	.L35
.L74:
	mov	r2, #1
	ldr	r7, .L79+20
	str	r2, [r7]
.L36:
	ldr	r10, .L79+92
	ldr	r2, [r10, #4]
	cmp	r2, #0
	bne	.L76
.L38:
	mov	r1, #1
	mov	r0, #67108864
	mov	fp, #512
	mov	lr, #0
	mov	ip, #40
	str	r1, [r7, #4]
	ldr	r1, [r6]
	cmp	r1, #214
	strh	fp, [r0]	@ movhi
	str	lr, [r9]
	str	ip, [r8]
	bgt	.L77
	sub	r2, r3, #900
	cmp	r2, #199
	bls	.L78
.L42:
	sub	r2, r3, #1088
	sub	r2, r2, #12
	cmp	r2, #199
	bhi	.L44
	mov	r2, #67108864
	mov	r1, #768
	ldr	r3, [r10, #4]
	strh	r1, [r2]	@ movhi
	ldr	r1, .L79+64
	strh	r1, [r2, #80]	@ movhi
	mov	r1, #67108864
	cmp	r3, #127
	addls	r3, r3, #1
	rsb	r2, r3, #128
	strls	r3, [r10, #4]
	lsr	r2, r2, #3
	lsr	r3, r3, #3
	orr	r3, r3, r2, lsl #8
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r1, #82]	@ movhi
	mov	r2, #100663296
	ldr	r3, .L79+96
	ldr	r1, .L79+100
	mov	r0, #3
	ldr	fp, .L79+52
	mov	lr, pc
	bx	fp
	mov	r3, #1024
	ldr	r2, .L79+56
	ldr	r1, .L79+104
	mov	r0, #3
	mov	lr, pc
	bx	fp
	ldr	r3, [r4]
.L44:
	sub	r2, r3, #1296
	sub	r2, r2, #4
	cmp	r2, #249
	bhi	.L37
	mov	r2, #67108864
	mov	r0, #768
	mov	r1, #175
	ldr	ip, .L79+108
	cmp	r3, ip
	strh	r0, [r2]	@ movhi
	strh	r1, [r2, #80]	@ movhi
	beq	.L53
	ldr	r2, [r10, #4]
	cmp	r2, #127
	bls	.L47
	lsr	r2, r2, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
.L48:
	mov	r1, #67108864
	strh	r2, [r1, #84]	@ movhi
	ldr	r2, .L79+24
	cmp	r3, r2
	ble	.L49
.L75:
	ldr	r3, .L79+112
	mov	lr, pc
	bx	r3
	mov	r3, #1
	str	r3, [r7, #8]
	b	.L49
.L76:
	ldr	r1, [r7, #4]
	cmp	r1, #0
	bne	.L38
	mov	r0, #67108864
	sub	r1, r2, #1
	rsb	r2, r2, #1
	lsr	ip, r2, #3
	lsr	r2, r1, #3
	orr	r2, r2, ip, lsl #8
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r1, [r10, #4]
	strh	r2, [r0, #82]	@ movhi
	sub	r2, r3, #900
	cmp	r2, #199
	bhi	.L42
.L78:
	mov	r3, #4736
	ldr	r2, .L79+76
	ldr	r1, .L79+116
	mov	r0, #3
	ldr	fp, .L79+52
	mov	lr, pc
	bx	fp
	mov	r3, #2048
	ldr	r2, .L79+84
	ldr	r1, .L79+120
	mov	r0, #3
	mov	lr, pc
	bx	fp
	mov	r2, #67108864
	ldr	r3, [r10, #4]
	cmp	r3, #0
	subne	r3, r3, #1
	strne	r3, [r10, #4]
	lsr	r3, r3, #3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #84]	@ movhi
	ldr	r3, [r4]
	b	.L42
.L69:
	mov	r3, #67108864
	mov	r1, #768
	mov	r2, #1792
	mov	lr, #10
	mov	ip, #65
	ldr	r9, .L79+12
	ldr	r8, .L79+16
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L79+124
	mov	r3, #2768
	mov	r2, #100663296
	mov	r0, #3
	ldr	r7, .L79+52
	str	lr, [r9]
	str	ip, [r8]
	mov	lr, pc
	bx	r7
	mov	r3, #1024
	ldr	r2, .L79+56
	ldr	r1, .L79+128
	mov	r0, #3
	mov	lr, pc
	bx	r7
	ldr	r3, [r4]
	b	.L33
.L72:
	ldr	r3, .L79+132
	mov	r0, #1
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #20
	bne	.L29
	mov	r3, #1
	ldr	r2, .L79+136
	ldr	r1, .L79+140
	ldr	r0, .L79+144
	ldr	r5, .L79+148
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L29
.L53:
	mov	r2, #0
	mov	r1, #1
.L46:
	str	r1, [r10, #4]
	b	.L48
.L77:
	mov	ip, #130
	ldr	lr, .L79+152
	sub	r1, r1, #1
	cmp	r1, lr
	str	r1, [r6]
	strh	ip, [r0, #80]	@ movhi
	bgt	.L41
	tst	r3, #1
	beq	.L41
	cmp	r2, #128
	addls	r2, r2, #1
	strls	r2, [r10, #4]
.L41:
	mov	r1, #67108864
	lsr	r2, r2, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #84]	@ movhi
	b	.L42
.L47:
	add	r1, r2, #1
	lsr	r2, r1, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	b	.L46
.L80:
	.align	2
.L79:
	.word	currentTime
	.word	shakeCycle
	.word	hOff1
	.word	hOff0
	.word	vOff0
	.word	.LANCHOR1
	.word	1549
	.word	waitForVBlank
	.word	vOff1
	.word	475
	.word	470
	.word	275
	.word	PlayerEyesCloseYellow0Tiles
	.word	DMANow
	.word	100677632
	.word	PlayerEyesCloseYellow0Map
	.word	11841
	.word	PlayerEyesOpenYellow0Tiles
	.word	PlayerEyesOpenYellow0Map
	.word	100679680
	.word	PlayerUltra0Tiles
	.word	100694016
	.word	PlayerUltra0Map
	.word	.LANCHOR0
	.word	6752
	.word	PlayerUltraCloseUp0Tiles
	.word	PlayerUltraCloseUp0Map
	.word	1300
	.word	hideSprites
	.word	PlayerUltra1Tiles
	.word	PlayerUltra1Map
	.word	PlayerEyesCloseTiles
	.word	PlayerEyesCloseMap
	.word	fadeInWhite
	.word	11025
	.word	1167938
	.word	UltraFightMusic
	.word	playSoundB
	.word	449
	.size	cheatCutscene, .-cheatCutscene
	.align	2
	.global	goToCheatCutscene
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCheatCutscene, %function
goToCheatCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L83
	mov	lr, pc
	bx	r3
	ldr	r3, .L83+4
	mov	lr, pc
	bx	r3
	mov	r1, #0
	mov	r4, #67108864
	mov	r2, #512
	mov	lr, #128
	ldr	r3, .L83+8
	ldr	ip, .L83+12
	str	r1, [r3]
	ldr	r0, .L83+16
	ldr	r3, .L83+20
	str	r1, [ip]
	ldr	ip, .L83+24
	str	r1, [r0]
	ldr	r5, .L83+28
	strh	r2, [r4]	@ movhi
	strh	r3, [r4, #10]	@ movhi
	mov	r2, #83886080
	str	r1, [r0, #4]
	mov	r3, #256
	ldr	r1, .L83+32
	mov	r0, #3
	str	lr, [ip, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #3056
	ldr	r2, .L83+36
	ldr	r1, .L83+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L83+44
	ldr	r1, .L83+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #500
	mov	lr, #10
	mov	ip, #65
	ldr	r1, .L83+52
	ldr	r2, .L83+56
	str	r3, [r1]
	str	lr, [r2]
	ldr	r0, .L83+60
	ldr	r2, .L83+64
	ldr	r1, .L83+68
	str	ip, [r0]
	str	r2, [r1]
	strh	r2, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L84:
	.align	2
.L83:
	.word	stopSound
	.word	hideSprites
	.word	currentTime
	.word	shakeCycle
	.word	.LANCHOR1
	.word	3844
	.word	.LANCHOR0
	.word	DMANow
	.word	BackgroundBG20Pal
	.word	100679680
	.word	PlayerKO0Tiles
	.word	100694016
	.word	PlayerKO0Map
	.word	vOff1
	.word	hOff0
	.word	vOff0
	.word	470
	.word	hOff1
	.size	goToCheatCutscene, .-goToCheatCutscene
	.align	2
	.global	goToCountDownCutscene
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToCountDownCutscene, %function
goToCountDownCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mvn	r0, #0
	mov	r4, #0
	ldr	r3, .L90
	ldr	lr, .L90+4
	ldr	ip, .L90+8
	ldr	r1, .L90+12
	ldr	r2, .L90+16
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r3, #12]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	mov	ip, #90
	ldr	r0, .L90+20
	ldr	lr, .L90+24
	ldr	r6, .L90+28
	str	ip, [r0]
	ldr	r5, .L90+32
	mov	r3, #256
	ldr	r2, .L90+36
	ldr	r1, .L90+40
	mov	r0, #3
	str	ip, [lr]
	str	r4, [r6, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	ldr	r2, .L90+44
	ldr	r1, .L90+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	r1, #7680
	mov	r2, #18176
	ldr	r4, .L90+52
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L90+56
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L86
.L88:
	mov	r3, #1088
	mov	r2, #100663296
	ldr	r1, .L90+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L90+64
	ldr	r1, .L90+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
.L87:
	mov	r4, #67108864
	ldr	r2, .L90+72
	mov	r3, #2800
	strh	r2, [r4, #10]	@ movhi
	ldr	r1, .L90+76
	ldr	r2, .L90+80
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L90+84
	ldr	r1, .L90+88
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L90+92
	mov	r3, #224
	strh	r2, [r4, #12]	@ movhi
	ldr	r1, .L90+96
	ldr	r2, .L90+100
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L90+104
	ldr	r1, .L90+108
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L90+112
	ldr	r3, .L90+116
	strh	r2, [r4, #14]	@ movhi
	ldr	r1, .L90+120
	ldr	r2, .L90+124
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L90+128
	ldr	r1, .L90+132
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r0, #460
	mov	r3, #215
	mov	r1, #100
	mov	r5, #432
	mvn	r9, #0
	mov	r2, #0
	mov	r8, #49152
	mov	r7, #132
	ldr	r10, .L90+136
	ldr	lr, .L90+140
	ldr	ip, .L90+144
	str	r0, [r10]
	str	r3, [lr]
	str	r1, [ip]
	ldr	r10, .L90+148
	ldr	lr, .L90+152
	ldr	ip, .L90+156
	str	r5, [r10]
	str	ip, [lr]
	ldr	r10, .L90+160
	ldr	lr, .L90+164
	str	lr, [r10]
	strh	r5, [r4, #16]	@ movhi
	strh	lr, [r4, #18]	@ movhi
	strh	ip, [r4, #20]	@ movhi
	strh	r0, [r4, #22]	@ movhi
	ldr	r0, .L90+168
	ldrh	r0, [r0]
	strh	r0, [r4, #24]	@ movhi
	ldr	r0, .L90+172
	strh	r3, [r4, #26]	@ movhi
	ldrh	r0, [r0]
	ldr	r3, .L90+176
	strh	r0, [r4, #28]	@ movhi
	strh	r1, [r4, #30]	@ movhi
	str	r9, [r6]
	strh	r2, [r3, #10]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	r8, [r3, #8]	@ movhi
	strh	r7, [r3, #14]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L86:
	mov	r3, #976
	mov	r2, #100663296
	ldr	r1, .L90+180
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L90+64
	ldr	r1, .L90+184
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L87
	b	.L88
.L91:
	.align	2
.L90:
	.word	.LANCHOR1
	.word	currentTime
	.word	shakeCycle
	.word	countDownTime
	.word	hideSprites
	.word	cornerfaceSpriteRow
	.word	playerSpriteRow
	.word	.LANCHOR0
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	cheat
	.word	BackgroundBG20Pal
	.word	IdleS0WideTiles
	.word	100677632
	.word	IdleS0WideMap
	.word	3908
	.word	ChampKO6Tiles
	.word	100679680
	.word	100694016
	.word	ChampKO6Map
	.word	5896
	.word	BackgroundBG20KOTiles
	.word	100696064
	.word	100710400
	.word	BackgroundBG20KOMap
	.word	7948
	.word	6192
	.word	BackgroundBG30Tiles
	.word	100712448
	.word	100726784
	.word	BackgroundBG30Map
	.word	vOff1
	.word	vOff2
	.word	vOff3
	.word	hOff0
	.word	hOff1
	.word	490
	.word	vOff0
	.word	454
	.word	hOff2
	.word	hOff3
	.word	67109120
	.word	Idle0WideTiles
	.word	Idle0WideMap
	.size	goToCountDownCutscene, .-goToCountDownCutscene
	.align	2
	.global	cutsceneCountDownTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutsceneCountDownTimer, %function
cutsceneCountDownTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #131
	ldr	r3, .L94
	ldr	r1, .L94+4
	strh	r2, [r3, #10]	@ movhi
	ldrh	r2, [r3, #12]
	ldr	r3, [r1]
	cmp	r2, r3
	bxeq	lr
	b	cutsceneCountDownTimer.part.0
.L95:
	.align	2
.L94:
	.word	67109120
	.word	.LANCHOR0
	.size	cutsceneCountDownTimer, .-cutsceneCountDownTimer
	.align	2
	.global	goToSpaceCutscene
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToSpaceCutscene, %function
goToSpaceCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	ldr	r4, .L101+4
	mov	r3, #0
	ldr	r2, .L101+8
	ldr	r1, .L101+12
	ldr	r0, .L101+16
	mov	lr, pc
	bx	r4
	mov	r4, #0
	mvn	r1, #0
	mov	r7, #200
	ldr	r5, .L101+20
	ldr	lr, .L101+24
	ldr	ip, .L101+28
	ldr	r0, .L101+32
	ldr	r2, .L101+36
	mov	r6, #140
	ldr	r3, .L101+40
	str	r1, [r2]
	str	r4, [lr]
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r5]
	str	r4, [r5, #4]
	mov	lr, pc
	bx	r3
	mov	r0, #60
	mov	r1, #1
	mov	lr, #240
	mov	ip, #40
	mov	r3, #67108864
	mov	r2, #17920
	ldr	r9, .L101+44
	str	r4, [r9]
	ldr	r9, .L101+48
	str	r4, [r9]
	ldr	r9, .L101+52
	str	r7, [r9]
	ldr	r7, .L101+56
	ldr	fp, .L101+60
	str	r6, [r7]
	ldr	r7, .L101+64
	str	r1, [fp]
	str	r0, [r7]
	ldr	r1, .L101+68
	ldr	r0, .L101+72
	ldr	r8, .L101+76
	ldr	r10, .L101+80
	ldr	r9, .L101+84
	str	lr, [r10]
	str	ip, [r9]
	str	r6, [r8]
	strh	r2, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	mov	r1, #2816	@ movhi
	ldr	r2, .L101+88
	ldr	r6, .L101+92
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	ldr	r1, .L101+96
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	str	r4, [r5, #16]
	ldr	r5, .L101+100
	str	r4, [r6, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #432
	ldr	r2, .L101+104
	ldr	r1, .L101+108
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L101+112
	ldr	r1, .L101+116
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #64
	ldr	r2, .L101+120
	ldr	r1, .L101+124
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L101+128
	ldr	r1, .L101+132
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [fp]
	cmp	r3, r4
	beq	.L100
	mov	r3, #3248
	mov	r2, #100663296
	ldr	r1, .L101+136
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #2048
	ldr	r2, .L101+140
	ldr	r1, .L101+144
	mov	r0, #3
	mov	lr, pc
	bx	r5
.L98:
	mov	r3, #67108864
	mvn	lr, #0
	mov	r1, #0
	mov	ip, #49152
	mov	r0, #132
	ldr	r2, .L101+52
	ldrh	r2, [r2]
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, .L101+44
	ldrh	r2, [r2]
	strh	r2, [r3, #18]	@ movhi
	ldr	r2, .L101+56
	ldrh	r2, [r2]
	strh	r2, [r3, #20]	@ movhi
	ldrh	r2, [r10]
	strh	r2, [r3, #22]	@ movhi
	ldrh	r2, [r9]
	strh	r2, [r3, #24]	@ movhi
	ldr	r2, .L101+48
	ldrh	r2, [r2]
	strh	r2, [r3, #26]	@ movhi
	ldrh	r2, [r8]
	ldrh	r4, [r7]
	strh	r2, [r3, #28]	@ movhi
	ldr	r2, .L101+148
	strh	r4, [r3, #30]	@ movhi
	str	lr, [r6]
	strh	r1, [r2, #10]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	strh	r1, [r2, #14]	@ movhi
	strh	ip, [r2, #8]	@ movhi
	strh	r0, [r2, #14]	@ movhi
	bx	lr
.L100:
	mov	r3, #3056
	mov	r2, #100663296
	ldr	r1, .L101+152
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L101+140
	ldr	r1, .L101+156
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L98
.L102:
	.align	2
.L101:
	.word	stopSound
	.word	playSoundB
	.word	11025
	.word	5885
	.word	RecordScratch
	.word	.LANCHOR1
	.word	currentTime
	.word	currentTime2
	.word	shakeCycle
	.word	countDownTime
	.word	hideSprites
	.word	vOff0
	.word	vOff2
	.word	hOff0
	.word	hOff1
	.word	cheat
	.word	vOff3
	.word	-27128
	.word	3844
	.word	hOff3
	.word	vOff1
	.word	hOff2
	.word	7948
	.word	.LANCHOR0
	.word	PlayerEyesTear0Pal
	.word	DMANow
	.word	100712448
	.word	StarsTiles
	.word	100726784
	.word	StarsMap
	.word	100679680
	.word	CornerfaceTiles
	.word	100694016
	.word	CornerfaceMap
	.word	PlayerUltra1WideTiles
	.word	100675584
	.word	PlayerUltra1WideMap
	.word	67109120
	.word	PlayerKO0Tiles
	.word	PlayerKO0Map
	.size	goToSpaceCutscene, .-goToSpaceCutscene
	.align	2
	.global	cutsceneSpaceTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	cutsceneSpaceTimer, %function
cutsceneSpaceTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #131
	ldr	r3, .L110
	ldr	r1, .L110+4
	strh	r2, [r3, #10]	@ movhi
	ldr	r2, [r1]
	ldrh	r0, [r3, #12]
	cmp	r0, r2
	bxeq	lr
	ldr	r0, .L110+8
	ldr	r2, [r0]
	ldrh	ip, [r3, #12]
	add	r3, r2, #1
	cmp	r3, #4
	str	ip, [r1]
	str	r3, [r0]
	bxne	lr
	push	{r4, lr}
	mov	r3, #0
	ldr	r4, .L110+12
	ldr	r2, .L110+16
	ldr	r1, .L110+20
	ldr	r0, .L110+24
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L111:
	.align	2
.L110:
	.word	67109120
	.word	.LANCHOR0
	.word	countDownTime
	.word	playSoundB
	.word	11025
	.word	2384697
	.word	ThePromise
	.size	cutsceneSpaceTimer, .-cutsceneSpaceTimer
	.align	2
	.global	spaceCutscene
	.syntax unified
	.arm
	.fpu softvfp
	.type	spaceCutscene, %function
spaceCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L179
	sub	sp, sp, #12
	bl	cutsceneSpaceTimer
	ldr	r3, [r5]
	cmp	r3, #40
	subgt	r3, r3, #1
	strgt	r3, [r5]
	ldr	r3, .L179+4
	ldr	r3, [r3]
	ldr	r9, .L179+8
	cmp	r3, #0
	ldr	r3, [r9]
	beq	.L114
	sub	r2, r3, #4
	cmp	r2, #1
	bls	.L167
	sub	r2, r3, #6
	cmp	r2, #1
	bls	.L168
.L117:
	cmp	r3, #8
	beq	.L169
.L120:
	cmp	r3, #10
	ldr	r4, .L179+12
	beq	.L161
.L178:
	ldr	r7, .L179+16
.L121:
	sub	r2, r3, #13
	cmp	r2, #2
	bhi	.L123
	ldr	r3, [r7]
	cmn	r3, #20
	blt	.L170
	mov	r2, #67108864
	mov	r1, #3584
	mov	r3, #3056
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	ldr	r2, .L179+20
	ldr	r1, .L179+24
	ldr	r6, .L179+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L179+32
	ldr	r1, .L179+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
.L125:
	ldr	r3, [r4]
	tst	r3, #1
	beq	.L165
	ldr	r3, [r7]
	cmn	r3, #64
	ldrge	r2, [r5]
	subge	r3, r3, #1
	subge	r2, r2, #1
	strge	r3, [r7]
	strge	r2, [r5]
.L165:
	ldr	r3, [r9]
.L123:
	cmp	r3, #16
	beq	.L163
	ldr	r8, .L179+40
.L128:
	cmp	r3, #17
	beq	.L171
	sub	r3, r3, #18
	cmp	r3, #3
	bhi	.L166
	ldr	r6, .L179+44
	ldr	r3, [r6]
	cmp	r3, #5
	beq	.L172
	cmp	r3, #25
	beq	.L173
.L137:
	cmp	r3, #35
	beq	.L174
.L138:
	cmp	r3, #70
	beq	.L175
.L139:
	cmp	r3, #84
	ble	.L140
	mov	r0, #67108864
	ldr	ip, .L179+48
	ldr	r2, [ip, #4]
	ldr	r1, .L179+52
	cmp	r2, #0
	strh	r1, [r0, #80]	@ movhi
	bne	.L176
.L142:
	ldr	r2, [r8]
	cmp	r2, #94
	addle	r2, r2, #1
	strle	r2, [r8]
.L144:
	add	r3, r3, #1
	str	r3, [r6]
.L166:
	ldr	r2, [r9]
	cmp	r2, #22
	beq	.L177
	ble	.L147
	ldr	r6, .L179+44
	ldr	r3, [r6]
	cmp	r3, #24
	ble	.L149
	mov	ip, #67108864
	ldr	r10, .L179+56
	ldr	fp, .L179+48
	ldr	r1, [r10, #16]
	ldr	r9, [fp, #4]
	lsl	lr, r1, #16
	lsl	r0, r9, #16
	lsr	r0, r0, #16
	lsr	lr, lr, #16
	mul	r1, lr, r0
	sub	r9, r9, #1
	str	r9, [sp, #4]
	ldr	r9, [r10, #16]
	add	r9, r9, #1
	str	r9, [r10, #16]
	lsl	r1, r1, #16
	ldr	r9, [sp, #4]
	lsr	r1, r1, #16
	str	r9, [fp, #4]
	strh	r0, [ip, #32]	@ movhi
	strh	r0, [ip, #38]	@ movhi
	strh	r1, [ip, #40]	@ movhi
	strh	lr, [ip, #44]	@ movhi
.L149:
	add	r3, r3, #1
	cmp	r2, #27
	str	r3, [r6]
	ble	.L147
	mov	r3, #67108864
	mov	r1, #0
	mov	r2, #3
	strh	r1, [r3]	@ movhi
	ldr	r3, .L179+56
	str	r2, [r3, #8]
	b	.L147
.L168:
	mov	r3, #3056
	mov	r2, #100663296
	ldr	r1, .L179+60
	mov	r0, #3
	ldr	r4, .L179+28
	ldr	r6, .L179+48
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L179+64
	ldr	r1, .L179+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r6, #4]
	cmp	r3, #0
	beq	.L118
	sub	r3, r3, #2
	str	r3, [r6, #4]
.L119:
	mov	r2, #67108864
	lsr	r3, r3, #3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [r2, #84]	@ movhi
	ldr	r3, [r9]
.L114:
	cmp	r3, #7
	bne	.L117
	mov	r2, #67108864
	mov	r1, #17920
	mov	r3, #3056
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L179+72
	ldr	r4, .L179+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+76
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r9]
	cmp	r3, #8
	bne	.L120
.L169:
	ldr	r4, .L179+28
	mov	r3, #3056
	mov	r2, #100663296
	ldr	r1, .L179+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+84
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r9]
	cmp	r3, #10
	ldr	r4, .L179+12
	bne	.L178
.L161:
	ldr	r3, [r4]
	tst	r3, #1
	ldrne	r3, [r5]
	ldrne	r7, .L179+16
	subne	r3, r3, #1
	strne	r3, [r5]
	strne	r3, [r7]
	ldr	r2, .L179+20
	mov	r3, #1120
	ldr	r1, .L179+88
	mov	r0, #3
	ldr	r6, .L179+28
	ldreq	r7, .L179+16
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L179+32
	ldr	r1, .L179+92
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r9]
	b	.L121
.L171:
	mov	r2, #0
	ldr	r3, .L179+44
	str	r2, [r3]
.L147:
	ldr	r3, .L179+96
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r2, [r5]
	ldrh	r1, [r8]
	strh	r2, [r3, #16]	@ movhi
	ldr	r2, .L179+100
	strh	r1, [r3, #18]	@ movhi
	ldrh	r1, [r2]
	ldr	r2, .L179+104
	ldr	r5, .L179+108
	ldrh	r0, [r2]
	ldr	r2, .L179+112
	strh	r1, [r3, #20]	@ movhi
	ldrh	r2, [r2]
	ldrh	r1, [r7]
	ldr	ip, [r5]
	strh	r0, [r3, #22]	@ movhi
	ldr	lr, .L179+116
	strh	r1, [r3, #24]	@ movhi
	strh	r2, [r3, #26]	@ movhi
	lsl	r2, ip, #16
	lsr	r2, r2, #16
	strh	r2, [r3, #28]	@ movhi
	ldr	r0, [lr]
	ldr	r2, [r4]
	lsl	r1, r0, #16
	add	r2, r2, #1
	lsr	r1, r1, #16
	cmp	r2, #99
	strh	r1, [r3, #30]	@ movhi
	str	r2, [r4]
	ble	.L112
	mov	r3, #0
	add	ip, ip, #1
	sub	r0, r0, #1
	str	ip, [r5]
	str	r0, [lr]
	str	r3, [r4]
.L112:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L170:
	ldr	r6, .L179+28
	mov	r3, #1120
	ldr	r2, .L179+20
	ldr	r1, .L179+88
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L179+32
	ldr	r1, .L179+92
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1888
	mov	r2, #100663296
	ldr	r1, .L179+120
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+124
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #67108864
	mov	r2, #3840
	strh	r2, [r3]	@ movhi
	b	.L125
.L177:
	mov	r1, #256
	mov	r3, #0
	ldr	r2, .L179+48
	str	r1, [r2, #4]
	ldr	r1, .L179+56
	ldr	r2, .L179+44
	str	r3, [r1, #16]
	str	r3, [r2]
	b	.L147
.L163:
	ldr	r2, .L179+44
	ldr	r3, [r2]
	cmp	r3, #14
	bgt	.L130
	add	r3, r3, #1
	cmp	r3, #15
	str	r3, [r2]
	beq	.L130
	ldr	r8, .L179+40
	b	.L166
.L140:
	cmp	r3, #35
	ble	.L144
	b	.L142
.L167:
	mov	r0, #67108864
	mov	ip, #129
	ldr	r1, .L179+48
	ldr	r2, [r1, #4]
	cmp	r2, #128
	addls	r2, r2, #2
	strh	ip, [r0, #80]	@ movhi
	strls	r2, [r1, #4]
	mov	r1, #67108864
	lsr	r2, r2, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	strh	r2, [r1, #84]	@ movhi
	sub	r2, r3, #6
	cmp	r2, #1
	bhi	.L117
	b	.L168
.L130:
	mov	lr, #10
	mov	ip, #65
	ldr	r8, .L179+40
	mov	r3, #2768
	mov	r2, #100663296
	ldr	r1, .L179+128
	mov	r0, #3
	ldr	r6, .L179+28
	str	lr, [r5]
	str	ip, [r8]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+132
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r9]
	b	.L128
.L176:
	sub	r1, r2, #1
	rsb	r2, r1, #128
	lsr	lr, r2, #3
	lsr	r2, r1, #3
	orr	r2, r2, lr, lsl #8
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r1, [ip, #4]
	strh	r2, [r0, #82]	@ movhi
	b	.L142
.L175:
	mov	r3, #3056
	mov	r2, #100663296
	ldr	r1, .L179+136
	mov	r0, #3
	ldr	r10, .L179+28
	mov	lr, pc
	bx	r10
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+140
	mov	r0, #3
	mov	lr, pc
	bx	r10
	mov	r1, #128
	ldr	r2, .L179+48
	ldr	r3, [r6]
	str	r1, [r2, #4]
	b	.L139
.L172:
	ldr	r10, .L179+28
	mov	r3, #2848
	mov	r2, #100663296
	ldr	r1, .L179+144
	mov	r0, #3
	mov	lr, pc
	bx	r10
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+148
	mov	r0, #3
	mov	lr, pc
	bx	r10
	mov	r1, #67108864
	mov	r3, #256
	mov	r2, #0
	ldr	ip, .L179+152
	ldr	r0, .L179+156
	strh	r3, [r1, #32]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	r3, [r1, #38]	@ movhi
	strh	r2, [r1, #80]	@ movhi
	mov	r3, #5312
	strh	r0, [r1, #12]	@ movhi
	ldr	r2, .L179+20
	ldr	r1, .L179+160
	mov	r0, #3
	mov	lr, pc
	bx	r10
	mov	r3, #512
	ldr	r2, .L179+164
	ldr	r1, .L179+168
	mov	r0, #3
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	cmp	r3, #25
	bne	.L137
.L173:
	mov	r3, #2880
	mov	r2, #100663296
	ldr	r1, .L179+172
	mov	r0, #3
	ldr	r10, .L179+28
	mov	lr, pc
	bx	r10
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+176
	mov	r0, #3
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	cmp	r3, #35
	bne	.L138
.L174:
	mov	r3, #2992
	mov	r2, #100663296
	ldr	r1, .L179+180
	mov	r0, #3
	ldr	r10, .L179+28
	mov	lr, pc
	bx	r10
	mov	r3, #1024
	ldr	r2, .L179+64
	ldr	r1, .L179+184
	mov	r0, #3
	mov	lr, pc
	bx	r10
	ldr	r3, [r6]
	b	.L138
.L118:
	ldr	r3, .L179+188
	mov	lr, pc
	bx	r3
	ldr	r3, [r6, #4]
	b	.L119
.L180:
	.align	2
.L179:
	.word	hOff0
	.word	cheat
	.word	countDownTime
	.word	currentTime
	.word	hOff2
	.word	100696064
	.word	PlayerSad0Tiles
	.word	DMANow
	.word	100708352
	.word	PlayerSad0Map
	.word	vOff0
	.word	currentTime2
	.word	.LANCHOR0
	.word	11841
	.word	.LANCHOR1
	.word	PlayerUltra0Tiles
	.word	100675584
	.word	PlayerUltra0Map
	.word	PlayerNeutral1Tiles
	.word	PlayerNeutral1Map
	.word	PlayerNeutral0Tiles
	.word	PlayerNeutral0Map
	.word	PlayerSad1HeadTiles
	.word	PlayerSad1HeadMap
	.word	waitForVBlank
	.word	hOff1
	.word	vOff1
	.word	hOff3
	.word	vOff2
	.word	vOff3
	.word	PlayerSad1BodyTiles
	.word	PlayerSad1BodyMap
	.word	PlayerEyesCloseTiles
	.word	PlayerEyesCloseMap
	.word	PlayerEyesTear3Tiles
	.word	PlayerEyesTear3Map
	.word	PlayerEyesTear0Tiles
	.word	PlayerEyesTear0Map
	.word	1281
	.word	22408
	.word	PlayerSad1CornerfaceFullFinalTiles
	.word	100710400
	.word	PlayerSad1CornerfaceFullFinalMap
	.word	PlayerEyesTear1Tiles
	.word	PlayerEyesTear1Map
	.word	PlayerEyesTear2Tiles
	.word	PlayerEyesTear2Map
	.word	stopSoundA
	.size	spaceCutscene, .-spaceCutscene
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playCornerfaceB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playCornerfaceB, %function
playCornerfaceB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, #0
	mov	r6, r2
	ldr	r2, .L183+8
	ldr	r2, [r2]
	ldr	r7, .L183+12
	mov	r8, r1
	mov	r9, r0
	mov	r10, r3
	str	r5, [r2, #32]
	mov	r1, r0
	ldr	r2, .L183+16
	mov	r3, #910163968
	mov	r0, #2
	ldr	r4, .L183+20
	mov	lr, pc
	bx	r4
	strh	r5, [r7, #6]	@ movhi
	mov	r1, r6
	ldr	r3, .L183+24
	mov	r0, #16777216
	mov	lr, pc
	bx	r3
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	ldr	r4, .L183+28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r0, [r7, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	mov	r0, r8
	ldr	r7, .L183+32
	str	r9, [r4]
	str	r8, [r4, #4]
	str	r6, [r4, #8]
	str	r3, [r4, #12]
	str	r10, [r4, #16]
	mov	lr, pc
	bx	r7
	ldr	r8, .L183+36
	adr	r3, .L183
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L183+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L183+44
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L184:
	.align	3
.L183:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109120
	.word	67109028
	.word	DMANow
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playCornerfaceB, .-playCornerfaceB
	.align	2
	.global	countDownCutscene
	.syntax unified
	.arm
	.fpu softvfp
	.type	countDownCutscene, %function
countDownCutscene:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L293
	ldr	r3, [r8]
	cmp	r3, #180
	sub	sp, sp, #36
	ldr	r5, .L293+4
	ble	.L186
	ldr	r3, [r5]
	cmn	r3, #1
	beq	.L279
.L186:
	ldr	r3, .L293+8
	str	r3, [sp, #24]
	ldr	r3, [r3, #12]
	ldr	r6, .L293+12
	cmp	r3, #0
	ldr	r2, [r6]
	bne	.L187
.L188:
	cmp	r2, #9
	bgt	.L189
	mov	ip, #40
	ldr	r3, .L293+16
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #2
	add	r1, r3, r3, lsl #2
	sub	r2, r2, r1, lsl #1
	lsl	r2, r2, #6
	ldr	r1, .L293+20
	add	r2, r2, #9
	orr	r2, r2, #12288
	lsl	r3, r3, #6
	add	r3, r3, #9
	ldr	r0, .L293+24
	strh	r2, [r1, #12]	@ movhi
	ldr	r2, .L293+28
	orr	r3, r3, #12288
	strh	r3, [r1, #4]	@ movhi
	strh	r0, [r1, #2]	@ movhi
	strh	r2, [r1, #10]	@ movhi
	strh	ip, [r1]	@ movhi
	strh	ip, [r1, #8]	@ movhi
.L190:
	ldr	r3, [r5]
	cmp	r3, #4
	beq	.L280
	sub	r2, r3, #4
	cmp	r2, #3
	ldr	r2, .L293+32
	ldr	fp, .L293+36
	str	r2, [sp, #16]
	bls	.L193
	ldr	r2, .L293+40
	str	r2, [sp, #12]
	ldr	r2, .L293+44
	ldr	r7, .L293+48
	str	r2, [sp, #28]
	ldr	r9, .L293+52
	ldr	r4, .L293+56
.L194:
	sub	r2, r3, #8
	cmp	r2, #2
	bhi	.L199
	mov	r1, #67108864
	mov	r2, #204
	ldr	r3, [r6, #4]
	cmp	r3, #128
	strh	r2, [r1, #80]	@ movhi
	bls	.L281
.L200:
	mov	r0, #215
	mov	r3, #100
	mov	r2, #67108864
	mov	r1, #7680
	str	r0, [fp]
	ldr	r0, [sp, #16]
	str	r3, [r0]
	strh	r1, [r2]	@ movhi
	mov	r3, #2800
	ldr	r2, .L293+60
	ldr	r1, .L293+64
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+68
	ldr	r1, .L293+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r5]
.L199:
	cmp	r3, #13
	beq	.L282
.L201:
	cmp	r3, #14
	beq	.L283
	cmp	r3, #15
	beq	.L274
	ldr	r2, .L293+76
	str	r2, [sp, #4]
	ldr	r2, .L293+80
	str	r2, [sp, #8]
	sub	r2, r3, #46
	cmp	r2, #4
	bhi	.L205
.L292:
	mov	r0, #67108864
	mov	r1, #194
	ldr	r2, [r6, #4]
	cmp	r2, #0
	strh	r1, [r0, #80]	@ movhi
	beq	.L206
	ldr	r1, [r8]
	tst	r1, #1
	beq	.L206
	mov	ip, #512
	sub	r2, r2, #1
	lsr	r1, r2, #1
	orr	r1, r1, r1, lsl #4
	lsr	lr, r2, #3
	lsl	r1, r1, #16
	lsl	lr, lr, #16
	lsr	r1, r1, #16
	lsr	lr, lr, #16
	str	r2, [r6, #4]
	strh	r1, [r0, #76]	@ movhi
	strh	ip, [r0]	@ movhi
	strh	lr, [r0, #84]	@ movhi
.L206:
	sub	r3, r3, #51
	cmp	r3, #2
	bls	.L284
.L210:
	ldr	r3, [r5]
	sub	r2, r3, #54
	cmp	r2, #1
	bls	.L285
.L216:
	sub	r2, r3, #56
	cmp	r2, #2
	bhi	.L221
	ldr	r2, [r9]
	add	r2, r2, #2
	str	r2, [r9]
.L222:
	cmp	r3, #59
	ldr	r3, [sp, #24]
	ldr	r10, [r3]
	ble	.L223
	cmp	r10, #0
	beq	.L224
.L277:
	ldr	r3, .L293+84
	ldr	r10, .L293+88
	str	r3, [sp, #20]
.L232:
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L293+92
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	mov	r1, #3840
	mov	ip, #1856
	ldr	r0, [r10]
	ldr	r2, .L293+96
	strh	r1, [r3]	@ movhi
	cmp	r0, #0
	str	r2, [r9]
	ldr	r0, .L293+100
	ldr	r1, .L293+104
	ldr	r2, .L293+108
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	beq	.L286
.L226:
	mov	r3, #1456
	mov	r2, #100663296
	ldr	r1, .L293+112
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+116
	ldr	r1, .L293+120
	mov	r0, #3
	mov	lr, pc
	bx	r4
.L234:
	mov	ip, #0
	ldr	r2, [r8]
	ldr	r3, .L293+16
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	ldr	r1, [sp, #4]
	sub	r3, r2, r3, lsl #2
	ldr	r2, [r7]
	cmp	r3, #9
	addle	r2, r2, #1
	ldr	r3, [r1]
	strle	r2, [r7]
	ldrle	r2, [sp, #4]
	addgt	r3, r3, #1
	subgt	r2, r2, #1
	suble	r3, r3, #1
	ldr	lr, [sp, #8]
	strgt	r3, [r1]
	strle	r3, [r2]
	strgt	r2, [r7]
	mov	r3, #2768
	ldr	r2, .L293+124
	ldr	r1, .L293+128
	mov	r0, #3
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L293+132
	ldr	r1, .L293+136
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	ip, #10
	ldr	r0, [fp]
	ldr	lr, [sp, #12]
	sub	r0, r0, #3
	mov	r3, #32
	ldr	r2, .L293+140
	ldr	r1, .L293+144
	str	r0, [fp]
	mov	r0, #3
	str	ip, [lr]
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+148
	ldr	r1, .L293+152
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #592
	ldr	r2, .L293+60
	ldr	r1, .L293+156
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+68
	ldr	r1, .L293+160
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L239
	mov	r1, #67108864
	sub	r3, r3, #1
	orr	r2, r3, r3, lsl #4
	ldr	r0, [sp, #20]
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	cmp	r3, #0
	str	r3, [r0]
	strh	r2, [r1, #76]	@ movhi
	beq	.L239
.L238:
	ldr	r3, [r5]
	sub	r2, r3, #66
	cmp	r2, #2
	bls	.L287
.L240:
	sub	r2, r3, #69
	cmp	r2, #1
	bls	.L288
.L241:
	cmp	r3, #70
	bgt	.L289
.L233:
	ldr	r3, .L293+164
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L293+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, [sp, #4]
	ldrh	r5, [r2]
	ldr	r2, [sp, #8]
	ldrh	r6, [r2]
	ldr	r2, [sp, #12]
	ldrh	ip, [r2]
	ldr	r2, [sp, #28]
	ldrh	r1, [r2]
	ldr	r2, [sp, #16]
	ldrh	lr, [r7]
	ldrh	r4, [r9]
	ldrh	r0, [fp]
	ldrh	r2, [r2]
	strh	lr, [r3, #16]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r5, [r3, #20]	@ movhi
	strh	r6, [r3, #22]	@ movhi
	strh	ip, [r3, #24]	@ movhi
	strh	r0, [r3, #26]	@ movhi
	strh	r1, [r3, #28]	@ movhi
	strh	r2, [r3, #30]	@ movhi
	ldr	r3, [r8]
	add	r3, r3, #1
	str	r3, [r8]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L280:
	mov	r1, #56
	mov	r2, #128
	ldr	r0, .L293+32
	ldr	fp, .L293+36
	str	r0, [sp, #16]
	str	r1, [r0]
	str	r2, [fp]
.L193:
	ldr	r7, .L293+48
	ldr	ip, .L293+40
	ldr	lr, .L293+44
	ldr	r2, [r7]
	ldr	r0, [ip]
	ldr	r1, [lr]
	sub	r2, r2, #2
	add	r0, r0, #2
	add	r1, r1, #1
	cmp	r2, #255
	str	ip, [sp, #12]
	str	lr, [sp, #28]
	str	r2, [r7]
	str	r0, [ip]
	str	r1, [lr]
	bgt	.L290
	mov	r3, #484
	ldr	r10, .L293+88
	ldr	r2, [r10]
	ldr	r9, .L293+52
	cmp	r2, #0
	str	r3, [r9]
	beq	.L196
	ldr	r4, .L293+56
.L198:
	mov	r3, #3248
	mov	r2, #100663296
	ldr	r1, .L293+168
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L293+116
	ldr	r1, .L293+172
	mov	r0, #3
	mov	lr, pc
	bx	r4
.L197:
	mov	r3, #688
	str	r3, [r7]
	ldr	r3, [r5]
	b	.L194
.L189:
	cmp	r2, #10
	beq	.L291
	cmp	r2, #11
	bne	.L190
	mov	r3, #67108864
	mov	r0, #51
	mov	r2, #40
	mov	r1, #42
	strh	r0, [r3, #76]	@ movhi
	ldr	r3, .L293+20
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r2, .L293+24
	strh	r1, [r3, #4]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	r1, .L293+28
	ldr	r2, .L293+176
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	b	.L190
.L279:
	mov	r0, #1
	ldr	r3, .L293+180
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	bne	.L186
	mov	r3, #1
	ldr	r2, .L293+8
	ldr	r6, .L293+12
	str	r2, [sp, #24]
	str	r3, [r2, #12]
	ldr	r2, [r6]
.L187:
	mov	r1, #131
	ldr	r3, .L293+184
	strh	r1, [r3, #10]	@ movhi
	ldrh	r3, [r3, #12]
	cmp	r3, r2
	beq	.L188
	bl	cutsceneCountDownTimer.part.0
	ldr	r2, [r6]
	b	.L188
.L281:
	add	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r6, #4]
	strh	r2, [r1, #84]	@ movhi
	b	.L200
.L290:
	ldr	r9, .L293+52
	ldr	r4, .L293+56
	b	.L194
.L274:
	mov	r3, #64
	ldr	r2, .L293+60
	ldr	r1, .L293+188
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+68
	ldr	r1, .L293+192
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	mov	r1, #226
	mov	r3, #128
	ldr	ip, .L293+80
	ldr	r0, .L293+76
	str	r2, [ip]
	ldr	r2, .L293+196
	str	r1, [r0]
	str	r3, [r6, #4]
	add	r1, r1, #276
	ldr	r3, .L293+200
	str	r2, [r9]
	str	r0, [sp, #4]
	str	ip, [sp, #8]
	str	r1, [r7]
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	sub	r2, r3, #46
	cmp	r2, #4
	bls	.L292
.L205:
	cmp	r3, #51
	bne	.L206
	mov	r2, #67108864
	mov	r0, #205
	mov	r3, #128
	mov	lr, #16
	ldr	r1, [r7]
	ldr	r10, .L293+204
	cmp	r1, r10
	subgt	r1, r1, #1
	strh	r0, [r2, #80]	@ movhi
	str	r3, [r6, #4]
	strh	lr, [r2, #84]	@ movhi
	strh	r0, [r2, #80]	@ movhi
	strgt	r1, [r7]
.L208:
	mov	r1, #67108864
	mov	r0, #768
	sub	r3, r3, #1
	lsr	r2, r3, #3
	lsl	r2, r2, #16
	lsr	r2, r2, #16
	str	r3, [r6, #4]
	strh	r2, [r1, #84]	@ movhi
	strh	r0, [r1]	@ movhi
	b	.L212
.L230:
	cmp	r3, #0
	str	r1, [ip]
	blt	.L231
	mov	r1, #67108864
	rsb	r3, r3, #15
	ldr	ip, [sp, #8]
	orr	r3, r3, r3, lsl #4
	lsl	r3, r3, #16
	ldr	r0, [ip]
	ldr	r2, [fp]
	lsr	r3, r3, #16
	strh	r3, [r1, #76]	@ movhi
	ldr	r3, [sp, #24]
	sub	r0, r0, #1
	sub	r2, r2, #1
	str	r0, [ip]
	str	r2, [fp]
	ldr	r10, [r3]
.L223:
	cmp	r10, #0
	beq	.L233
	b	.L277
.L221:
	cmp	r3, #59
	bne	.L222
	mov	r10, #67108864
	mov	r1, #207
	mov	ip, #16
	mov	r3, #1856
	mov	r0, #5632
	strh	r1, [r10, #80]	@ movhi
	ldr	r2, .L293+208
	ldr	r1, .L293+212
	strh	ip, [r10, #84]	@ movhi
	strh	r0, [r10]	@ movhi
	strh	r3, [r10, #8]	@ movhi
	mov	r0, #3
	strh	r2, [r10, #10]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	strh	r1, [r10, #12]	@ movhi
	ldr	r1, .L293+216
	mov	lr, pc
	bx	r4
	mov	r3, #2944
	mov	r2, #100663296
	ldr	r1, .L293+220
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+116
	ldr	r1, .L293+224
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #880
	ldr	r2, .L293+60
	ldr	r1, .L293+228
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L293+232
	ldr	r1, .L293+236
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #512
	ldr	r2, .L293+140
	ldr	r1, .L293+240
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L293+244
	ldr	r1, .L293+248
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	ip, #0
	mov	r2, #75
	mov	r3, #240
	mov	r0, #254
	mov	r1, #163
	ldr	lr, [sp, #12]
	str	ip, [lr]
	ldr	ip, [sp, #8]
	str	r2, [ip]
	ldr	ip, [sp, #4]
	str	r3, [r7]
	str	r0, [r9]
	str	r2, [fp]
	str	r1, [ip]
	strh	r3, [r10, #16]	@ movhi
	ldr	r3, [r5]
	strh	r0, [r10, #18]	@ movhi
	strh	r1, [r10, #20]	@ movhi
	strh	r2, [r10, #22]	@ movhi
	b	.L222
.L285:
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	cmp	r3, #111
	addle	r3, r3, #2
	strle	r3, [r2]
	ble	.L218
	mov	r3, #67108864
	mov	r1, #256
	mov	r2, #34560
	ldr	r10, .L293+88
	ldr	r0, [r10]
	cmp	r0, #0
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	beq	.L219
.L220:
	mov	r3, #3248
	mov	r2, #100663296
	ldr	r1, .L293+252
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L293+116
	ldr	r1, .L293+256
	mov	r0, #3
	mov	lr, pc
	bx	r4
.L218:
	ldr	r3, .L293+260
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	b	.L216
.L283:
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L293+76
	str	r3, [sp, #4]
	ldr	r3, .L293+80
	str	r3, [sp, #8]
	b	.L210
.L282:
	ldr	r3, .L293+84
	mov	r1, r3
	mov	r2, #67108864
	mov	r10, #0
	str	r1, [sp, #20]
	ldr	r3, .L293+264
	ldr	r1, [r1]
	mov	r0, #3
	add	r1, r3, r1, lsl #1
	strh	r10, [r2, #84]	@ movhi
	mov	r3, #224
	ldr	r2, .L293+124
	mov	lr, pc
	bx	r4
	ldr	r1, [sp, #20]
	ldr	r2, .L293+268
	ldr	r1, [r1]
	mov	r3, #1024
	add	r1, r2, r1, lsl #1
	mov	r0, #3
	ldr	r2, .L293+272
	mov	lr, pc
	bx	r4
	ldr	r1, [sp, #20]
	ldr	r2, .L293+276
	ldr	r1, [r1]
	ldr	r3, .L293+280
	add	r1, r2, r1, lsl #1
	mov	r0, #3
	ldr	r2, .L293+140
	mov	lr, pc
	bx	r4
	ldr	r1, [sp, #20]
	ldr	r2, .L293+284
	ldr	r1, [r1]
	mov	r3, #1024
	add	r1, r2, r1, lsl #1
	mov	r0, #3
	ldr	r2, .L293+148
	mov	lr, pc
	bx	r4
	ldr	r1, [sp, #20]
	ldr	r2, .L293+64
	ldr	r1, [r1]
	mov	r3, #2800
	add	r1, r2, r1, lsl #1
	mov	r0, #3
	ldr	r2, .L293+60
	mov	lr, pc
	bx	r4
	ldr	lr, [sp, #20]
	ldr	r2, .L293+72
	ldr	r1, [lr]
	mov	r3, #1024
	add	r1, r2, r1, lsl #1
	mov	r0, #3
	ldr	r2, .L293+68
	mov	lr, pc
	bx	r4
	ldr	lr, [sp, #20]
	ldr	ip, [lr]
	mov	r3, r10
	add	ip, ip, #1
	ldr	r2, .L293+288
	ldr	r1, .L293+292
	ldr	r0, .L293+188
	str	ip, [lr]
	bl	playCornerfaceB
	ldr	r3, [r5]
	b	.L201
.L287:
	ldr	r2, [r6, #4]
	cmp	r2, #0
	beq	.L240
	mov	r1, #67108864
	sub	r0, r2, #1
	lsr	r2, r0, #3
	orr	r2, r2, #4096
	lsl	r2, r2, #16
	ldr	ip, .L293+296
	lsr	r2, r2, #16
	strh	ip, [r1, #80]	@ movhi
	str	r0, [r6, #4]
	strh	r2, [r1, #82]	@ movhi
	b	.L240
.L291:
	mov	r3, #67108864
	mov	r1, #17
	mov	r2, #40
	strh	r1, [r3, #76]	@ movhi
	ldr	r3, .L293+20
	ldr	r0, .L293+24
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L293+28
	ldr	r2, .L293+300
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	b	.L190
.L284:
	mov	r1, #67108864
	mov	r0, #205
	ldr	r2, [r7]
	ldr	r3, .L293+204
	cmp	r2, r3
	ldr	r3, [r6, #4]
	subgt	r2, r2, #1
	strh	r0, [r1, #80]	@ movhi
	strgt	r2, [r7]
	cmp	r3, #0
	bne	.L208
.L212:
	mov	r3, #67108864
	mov	r2, #1792
	ldr	r10, .L293+88
	ldr	r1, [r10]
	cmp	r1, #0
	strh	r2, [r3, #8]	@ movhi
	beq	.L213
.L215:
	mov	r3, #1088
	mov	r2, #100663296
	ldr	r1, .L293+304
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+116
	ldr	r1, .L293+308
	mov	r0, #3
	mov	lr, pc
	bx	r4
.L214:
	ldr	r1, [sp, #4]
	ldr	r3, [r1]
	cmp	r3, #160
	ble	.L210
	ldr	r2, [r8]
	tst	r2, #1
	subne	r3, r3, #1
	strne	r3, [r1]
	b	.L210
.L196:
	mov	r3, #3056
	mov	r2, #100663296
	ldr	r1, .L293+312
	mov	r0, #3
	ldr	r4, .L293+56
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L293+116
	ldr	r1, .L293+316
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r10]
	cmp	r3, #0
	beq	.L197
	b	.L198
.L213:
	mov	r3, #976
	mov	r2, #100663296
	ldr	r1, .L293+320
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+116
	ldr	r1, .L293+324
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r10]
	cmp	r3, #0
	beq	.L214
	b	.L215
.L224:
	mov	r2, #67108864
	mov	r3, #256
	strh	r10, [r2, #84]	@ movhi
	ldr	r1, .L293+328
	ldr	r2, .L293+332
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r1, .L293+336
	ldr	r2, .L293+340
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	cmp	r3, #30
	ble	.L227
	ldr	r2, [fp]
	sub	r3, r3, #1
	str	r3, [r1]
	ldr	r3, [sp, #24]
	sub	r2, r2, #1
	str	r2, [fp]
	ldr	r10, [r3]
	b	.L223
.L239:
	mov	r3, #67108864
	mov	r2, #0
	strh	r2, [r3, #76]	@ movhi
	b	.L238
.L286:
	mov	r3, #1296
	mov	r2, #100663296
	ldr	r1, .L293+344
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L293+116
	ldr	r1, .L293+348
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r10]
	cmp	r3, #0
	beq	.L234
	b	.L226
.L289:
	mov	r3, #432
	ldr	r2, .L293+140
	ldr	r1, .L293+352
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #3
	mov	r3, #2048
	ldr	r2, .L293+148
	ldr	r1, .L293+356
	mov	lr, pc
	bx	r4
	ldr	r3, [r6, #4]
	mov	r2, #67108864
	mov	r1, #2816
	cmp	r3, #0
	movne	r0, #200
	subne	r3, r3, #1
	strh	r1, [r2]	@ movhi
	lsrne	r1, r3, #3
	lslne	r1, r1, #16
	ldrne	ip, [r5]
	ldreq	ip, [r5]
	lsrne	r1, r1, #16
	strhne	r0, [r2, #80]	@ movhi
	strne	r3, [r6, #4]
	strhne	r1, [r2, #84]	@ movhi
	cmp	ip, #73
	movgt	r3, #2
	ldrgt	r2, [sp, #24]
	strgt	r3, [r2, #8]
	b	.L233
.L227:
	mov	ip, #116
	ldr	r0, .L293+360
	ldr	r2, [r0]
	sub	lr, r2, #1
	and	r1, r2, #255
	ldr	r2, .L293+20
	cmp	lr, #49
	str	lr, [r0]
	strh	r1, [r2]	@ movhi
	strh	r10, [r2, #4]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	bgt	.L278
	ldr	ip, .L293+364
	ldr	r10, .L293+88
	ldr	r1, [ip]
	ldr	lr, [r10]
	sub	r0, r1, #8
	cmp	lr, #0
	and	r0, r0, #255
	ldr	lr, .L293+368
	strh	r0, [r2, #8]	@ movhi
	bne	.L229
	ldr	r0, .L293+372
	strh	lr, [r2, #10]	@ movhi
	strh	r0, [r2, #12]	@ movhi
.L246:
	cmp	r1, #0
	sub	r1, r1, #1
	ble	.L230
	str	r1, [ip]
.L278:
	ldr	r3, [sp, #24]
	ldr	r10, [r3]
	b	.L223
.L288:
	mov	r10, #67108864
	mov	r2, #3840
	ldr	r3, .L293+376
	strh	r2, [r10]	@ movhi
	strh	r3, [r10, #12]	@ movhi
	ldr	r2, .L293+124
	mov	r3, #32
	ldr	r1, .L293+144
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L293+152
	ldr	r2, .L293+132
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, [r6, #4]
	cmp	r3, #128
	movls	r0, #196
	addls	r2, r3, #1
	lsrls	r1, r2, #3
	lslls	r1, r1, #16
	lsrls	r1, r1, #16
	strhls	r0, [r10, #80]	@ movhi
	ldrls	r3, [r5]
	strls	r2, [r6, #4]
	ldrhi	r3, [r5]
	strhls	r1, [r10, #84]	@ movhi
	b	.L241
.L219:
	mov	r3, #3056
	mov	r2, #100663296
	ldr	r1, .L293+380
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L293+116
	ldr	r1, .L293+384
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, [r10]
	cmp	r3, #0
	beq	.L218
	b	.L220
.L229:
	ldr	r0, .L293+388
	strh	lr, [r2, #10]	@ movhi
	strh	r0, [r2, #12]	@ movhi
	b	.L246
.L231:
	mov	lr, #176
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
	mov	ip, #15
	ldr	r2, [sp, #4]
	mov	r0, #432
	mov	r1, #128
	str	lr, [r2]
	mov	r2, #1
	ldr	r3, [fp]
	sub	r3, r3, #1
	str	r3, [fp]
	ldr	r3, .L293+84
	str	ip, [r3]
	str	r3, [sp, #20]
	ldr	r3, [sp, #24]
	str	r0, [r7]
	str	r1, [r6, #4]
	str	r2, [r3]
	b	.L232
.L294:
	.align	2
.L293:
	.word	currentTime
	.word	countDownTime
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	1717986919
	.word	shadowOAM
	.word	16490
	.word	16502
	.word	vOff3
	.word	vOff2
	.word	hOff2
	.word	hOff3
	.word	hOff0
	.word	vOff0
	.word	DMANow
	.word	100679680
	.word	ChampKO6Tiles
	.word	100694016
	.word	ChampKO6Map
	.word	hOff1
	.word	vOff1
	.word	scrambleIndex
	.word	cheat
	.word	BackgroundBG20Pal
	.word	434
	.word	3908
	.word	-27064
	.word	8012
	.word	PunchRightS0Tiles
	.word	100677632
	.word	PunchRightS0Map
	.word	100696064
	.word	CloudsTiles
	.word	100708352
	.word	CloudsMap
	.word	100712448
	.word	SkyTiles
	.word	100726784
	.word	SkyMap
	.word	CornerfaceSmallTiles
	.word	CornerfaceSmallMap
	.word	waitForVBlank
	.word	PlayerUltra1WideTiles
	.word	PlayerUltra1WideMap
	.word	12317
	.word	fadeInWhite
	.word	67109120
	.word	CornerfaceTiles
	.word	CornerfaceMap
	.word	454
	.word	stopSound
	.word	462
	.word	20804
	.word	7756
	.word	StreetPal
	.word	TitleTextTiles
	.word	TitleTextMap
	.word	CityTiles
	.word	100698112
	.word	CityMap
	.word	StreetTiles
	.word	100724736
	.word	StreetMap
	.word	PlayerUltra1TallTiles
	.word	PlayerUltra1TallMap
	.word	hideSprites
	.word	BackgroundBG20KOTiles
	.word	BackgroundBG20KOMap
	.word	100710400
	.word	BackgroundBG30Tiles
	.word	6192
	.word	BackgroundBG30Map
	.word	11025
	.word	151883
	.word	2116
	.word	12873
	.word	IdleS0Tiles
	.word	IdleS0Map
	.word	PlayerKO0WideTiles
	.word	PlayerKO0WideMap
	.word	Idle0Tiles
	.word	Idle0Map
	.word	spritesheetendPal
	.word	83886592
	.word	spritesheetendTiles
	.word	100728832
	.word	PunchRight0Tiles
	.word	PunchRight0Map
	.word	StarsTiles
	.word	StarsMap
	.word	cornerfaceSpriteRow
	.word	playerSpriteRow
	.word	16499
	.word	16385
	.word	5704
	.word	PlayerKO0TallTiles
	.word	PlayerKO0TallMap
	.word	16387
	.size	countDownCutscene, .-countDownCutscene
	.comm	playerSpriteRow,4,4
	.comm	cornerfaceSpriteRow,4,4
	.comm	scrambleIndex,4,4
	.global	countDownSeconds
	.comm	countDownTime,4,4
	.global	goFlag
	.global	toggle0
	.global	trigger1
	.global	trigger0
	.global	fixedNum2
	.global	fixedNum
	.comm	shakeCycle,4,4
	.comm	currentTime2,4,4
	.comm	currentTime,4,4
	.comm	cutsceneID,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	countDownSeconds, %object
	.size	countDownSeconds, 4
countDownSeconds:
	.word	-1
	.type	fixedNum, %object
	.size	fixedNum, 4
fixedNum:
	.word	128
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	trigger0, %object
	.size	trigger0, 4
trigger0:
	.space	4
	.type	trigger1, %object
	.size	trigger1, 4
trigger1:
	.space	4
	.type	goFlag, %object
	.size	goFlag, 4
goFlag:
	.space	4
	.type	toggle0, %object
	.size	toggle0, 4
toggle0:
	.space	4
	.type	fixedNum2, %object
	.size	fixedNum2, 4
fixedNum2:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
