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
	.file	"game.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTime.part.0, %function
updateTime.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L6
	ldr	r1, .L6+4
	ldrh	r0, [r2, #12]
	ldr	r3, [r1]
	cmp	r0, r3
	cmnne	r3, #1
	bne	.L2
	ldrh	ip, [r2, #12]
	subs	r0, ip, r3
	movne	r0, #1
	cmn	r3, #1
	movne	r0, #0
	cmp	r0, #0
	ldrhne	r3, [r2, #12]
	strne	r3, [r1]
	bx	lr
.L2:
	ldr	r0, .L6+8
	ldr	r3, [r0]
	ldrh	ip, [r2, #12]
	sub	r3, r3, #1
	str	r3, [r0]
	str	ip, [r1]
	ldrh	r3, [r2, #12]
	bx	lr
.L7:
	.align	2
.L6:
	.word	67109120
	.word	.LANCHOR0
	.word	gameTime
	.size	updateTime.part.0, .-updateTime.part.0
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	mov	r1, #170
	push	{r4, r5, r6, r7, lr}
	mov	r7, #99
	mvn	r6, #0
	mov	r5, #61
	mov	r0, #80
	mov	r4, #49152
	mov	lr, #132
	mov	ip, #2
	ldr	r2, .L10
	str	r3, [r2]
	ldr	r2, .L10+4
	str	r3, [r2]
	ldr	r2, .L10+8
	str	r1, [r2, #20]
	ldr	r1, .L10+12
	str	r7, [r1]
	ldr	r1, .L10+16
	str	r5, [r1, #4]
	str	r6, [r1]
	ldr	r5, .L10+20
	ldr	r1, .L10+24
	str	r5, [r1]
	sub	r5, r5, #8
	str	r0, [r2, #44]
	str	r0, [r2, #48]
	str	r0, [r1, #44]
	str	r5, [r1, #4]
	str	r0, [r1, #48]
	ldr	r5, .L10+28
	ldr	r0, .L10+32
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #28]
	str	r3, [r2, #36]
	str	r3, [r2, #68]
	str	r3, [r1, #28]
	str	r3, [r1, #36]
	str	r3, [r1, #76]
	str	r5, [r1, #20]
	str	ip, [r1, #52]
	strh	r3, [r0, #10]	@ movhi
	str	ip, [r2, #52]
	strh	r3, [r0, #14]	@ movhi
	strh	r4, [r0, #8]	@ movhi
	strh	lr, [r0, #14]	@ movhi
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	gameplayState
	.word	barCounter
	.word	champ
	.word	gameTime
	.word	.LANCHOR0
	.word	450
	.word	player
	.word	-340
	.word	67109120
	.size	initGame, .-initGame
	.align	2
	.global	initTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTimer, %function
initTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mvn	lr, #0
	mov	r0, #49152
	mov	r1, #132
	ldr	r3, .L14
	ldr	ip, .L14+4
	str	lr, [ip]
	strh	r2, [r3, #10]	@ movhi
	ldr	lr, [sp], #4
	strh	r2, [r3, #14]	@ movhi
	strh	r0, [r3, #8]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	bx	lr
.L15:
	.align	2
.L14:
	.word	67109120
	.word	.LANCHOR0
	.size	initTimer, .-initTimer
	.align	2
	.global	updateGameStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGameStart, %function
updateGameStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L27
	ldr	r1, .L27+4
	ldr	r3, [r4, #20]
	ldr	r2, [r1, #20]
	sub	r3, r3, #1
	add	r2, r2, #2
	cmp	r3, #130
	str	r3, [r4, #20]
	str	r2, [r1, #20]
	beq	.L24
.L17:
	cmp	r3, #0
	bne	.L18
	ldr	r3, .L27+8
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L25
	ldr	r2, [r3, #4]
	cmp	r2, #0
	moveq	r2, #1
	streq	r2, [r3, #4]
	bne	.L26
.L21:
	mov	r2, #1
	ldr	r3, .L27+12
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L25:
	mov	r3, #1
	ldr	r2, .L27+16
	ldr	r1, .L27+20
	ldr	r0, .L27+24
	ldr	r5, .L27+28
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #20]
.L18:
	cmp	r3, #0
	ble	.L21
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	mov	r3, #0
	ldr	r2, .L27+16
	mov	r1, #19456
	ldr	r0, .L27+32
	ldr	r5, .L27+36
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #20]
	b	.L17
.L26:
	mov	r3, #1
	ldr	r2, .L27+16
	ldr	r1, .L27+40
	ldr	r0, .L27+44
	ldr	r5, .L27+28
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #20]
	b	.L18
.L28:
	.align	2
.L27:
	.word	champ
	.word	player
	.word	.LANCHOR1
	.word	gameplayState
	.word	11025
	.word	685237
	.word	MatchFightMusic
	.word	playSoundB
	.word	ReadyFightSound
	.word	playSoundA
	.word	1167938
	.word	UltraFightMusic
	.size	updateGameStart, .-updateGameStart
	.align	2
	.global	updateTime
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTime, %function
updateTime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #131
	ldr	r3, .L31
	ldr	r3, [r3]
	ldr	r2, .L31+4
	cmp	r3, #1
	strh	r1, [r2, #10]	@ movhi
	bxne	lr
	b	updateTime.part.0
.L32:
	.align	2
.L31:
	.word	gameplayState
	.word	67109120
	.size	updateTime, .-updateTime
	.align	2
	.global	updateSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSprites, %function
updateSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L69
	sub	sp, sp, #36
	mov	lr, pc
	bx	r3
	ldr	r4, .L69+4
	mov	r3, #256
	ldr	r2, .L69+8
	ldr	r1, .L69+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L69+16
	ldr	r1, .L69+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L69+24
	add	r3, r2, #44
	ldm	r3, {r3, r8}
	cmp	r8, r3
	ble	.L34
	ldr	r3, .L69+28
	ldr	r1, [r3]
	str	r3, [sp, #28]
	ldr	r3, .L69+32
	tst	r1, #3
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	ldr	r9, [r3, #48]
	beq	.L66
.L35:
	cmp	r8, #0
	add	r6, r8, #7
	movge	r6, r8
	rsbs	r2, r8, #0
	and	r2, r2, #7
	and	r3, r8, #7
	rsbpl	r3, r2, #0
	ldr	r2, .L69+24
	ldr	r5, [r2, #52]
	lsl	r4, r3, #5
	lsl	r5, r5, #28
	add	r4, r4, #4
	orr	r4, r4, r5, asr #16
	ldr	r2, .L69+36
	orr	r4, r4, #1024
	orr	r5, r5, #83886080
	asr	r6, r6, #3
	lsl	r4, r4, #16
	orr	r5, r5, #262144
	lsr	r4, r4, #16
	lsr	r5, r5, #16
	sub	r10, r6, #1
	mov	r3, r2
	mov	r0, r2
	mov	r1, #0
	mov	r7, #4
	b	.L37
.L40:
	cmp	ip, r10
	moveq	ip, r4
	movne	ip, r5
	lsl	lr, r1, #3
	strh	ip, [r0, #4]	@ movhi
	strh	r7, [r0]	@ movhi
	strh	lr, [r0, #2]	@ movhi
	add	r0, r0, #8
.L37:
	cmp	r6, r1
	add	r1, r1, #1
	sub	ip, r1, #1
	bgt	.L40
	cmp	r9, #0
	add	r4, r9, #7
	movge	r4, r9
	asr	r4, r4, #3
	cmp	r4, #0
	ble	.L41
	mov	r0, #0
	mov	fp, #4
	mov	r1, #224
	subs	lr, r0, r9
	and	lr, lr, #7
	and	ip, r9, #7
	rsbpl	ip, lr, #0
	ldr	lr, [sp, #4]
	ldr	lr, [lr, #52]
	lsl	ip, ip, #5
	lsl	lr, lr, #28
	add	ip, ip, fp
	orr	ip, ip, lr, asr #16
	orr	ip, ip, #1024
	orr	lr, lr, #83886080
	lsl	ip, ip, #16
	orr	lr, lr, #262144
	lsr	ip, ip, #16
	lsr	lr, lr, #16
	sub	r10, r4, #1
.L44:
	cmp	r0, r10
	moveq	r6, ip
	movne	r6, lr
	add	r0, r0, #1
	sub	r7, r1, #8
	orr	r5, r1, #4096
	cmp	r4, r0
	lsl	r1, r7, #16
	strh	fp, [r2, #80]	@ movhi
	strh	r6, [r2, #84]	@ movhi
	strh	r5, [r2, #82]	@ movhi
	lsr	r1, r1, #16
	add	r2, r2, #8
	bne	.L44
.L41:
	mov	ip, #64
	mov	r7, #152
	ldr	r2, .L69+40
	mov	r4, #0
	mov	r5, #8
	mov	r0, #48
	mov	lr, #72
	mov	r1, #4
	mov	r6, r2
	strh	ip, [r3, #194]	@ movhi
	ldr	ip, .L69+44
	strh	r7, [r3, #242]	@ movhi
	strh	ip, [r3, #178]	@ movhi
	add	r7, r7, #4016
	sub	ip, ip, #12224
	strh	r4, [r3, #162]	@ movhi
	strh	r5, [r3, #170]	@ movhi
	ldr	r4, .L69+48
	ldr	r5, .L69+52
	strh	r0, [r3, #186]	@ movhi
	strh	lr, [r3, #234]	@ movhi
	ldr	r0, .L69+56
	ldr	lr, .L69+60
	strh	r7, [r3, #202]	@ movhi
	strh	ip, [r3, #210]	@ movhi
	add	r7, r7, #12224
	ldr	ip, .L69+64
	strh	r7, [r3, #218]	@ movhi
	add	r7, r7, #32
	strh	r1, [r3, #160]	@ movhi
	strh	r1, [r3, #168]	@ movhi
	strh	r1, [r3, #192]	@ movhi
	strh	r1, [r3, #200]	@ movhi
	strh	r1, [r3, #208]	@ movhi
	strh	r1, [r3, #232]	@ movhi
	strh	r1, [r3, #240]	@ movhi
	strh	r0, [r3, #176]	@ movhi
	strh	r0, [r3, #184]	@ movhi
	strh	r0, [r3, #216]	@ movhi
	strh	r0, [r3, #224]	@ movhi
	strh	ip, [r3, #220]	@ movhi
	strh	ip, [r3, #228]	@ movhi
	strh	ip, [r3, #236]	@ movhi
	strh	r7, [r3, #226]	@ movhi
	strh	r4, [r3, #164]	@ movhi
	strh	r4, [r3, #212]	@ movhi
	strh	r5, [r3, #172]	@ movhi
	strh	r5, [r3, #204]	@ movhi
	strh	lr, [r3, #180]	@ movhi
	strh	lr, [r3, #188]	@ movhi
	strh	lr, [r3, #196]	@ movhi
	strh	r4, [r3, #244]	@ movhi
	strh	r1, [r6, #32]!	@ movhi
	str	r6, [sp, #16]
	mov	r6, r2
	mov	r7, r2
	strh	r0, [r6, #40]!	@ movhi
	str	r6, [sp, #20]
	mov	r6, r2
	strh	r0, [r7, #8]!	@ movhi
	mov	r10, r2
	str	r7, [sp, #12]
	mov	fp, r2
	mov	r7, r2
	strh	r0, [r6, #48]!	@ movhi
	strh	r0, [r2]	@ movhi
	mov	r0, #200	@ movhi
	strh	r1, [r10, #16]!	@ movhi
	strh	r1, [r7, #24]!	@ movhi
	strh	r1, [fp, #56]!	@ movhi
	strh	r1, [r3, #248]	@ movhi
	ldr	r1, .L69+68
	strh	ip, [r2, #44]	@ movhi
	strh	ip, [r2, #52]	@ movhi
	strh	ip, [r2, #60]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	ldr	ip, [sp, #12]
	mov	r1, #216	@ movhi
	strh	r0, [ip, #2]	@ movhi
	mov	ip, #224	@ movhi
	strh	r1, [r10, #2]	@ movhi
	ldr	r1, .L69+72
	strh	ip, [fp, #2]	@ movhi
	ldr	ip, [r1]
	str	r6, [sp, #24]
	cmp	ip, #0
	ldr	r6, [sp, #16]
	ldr	ip, .L69+76
	ldr	r0, .L69+80
	strh	ip, [r6, #2]	@ movhi
	ldr	r6, [sp, #20]
	strh	r0, [r7, #2]	@ movhi
	add	r0, r0, #12224
	strh	r5, [r3, #252]	@ movhi
	strh	r5, [r2, #28]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	strh	lr, [r2, #12]	@ movhi
	strh	lr, [r2, #20]	@ movhi
	strh	r4, [r2, #36]	@ movhi
	strh	r0, [r6, #2]	@ movhi
	mov	r0, #160	@ movhi
	ldr	ip, .L69+84
	ldr	r6, [sp, #24]
	strh	r0, [r3, #250]	@ movhi
	strh	ip, [r6, #2]	@ movhi
	bne	.L45
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	sub	r0, r3, #41
	cmp	r0, #18
	bhi	.L46
	ldr	r0, .L69+88
	rsb	r3, r3, #62
.L64:
	orr	r3, r0, r3, lsl #2
	add	r0, r2, #760
	ldr	ip, .L69+92
	strh	r3, [r0, #2]	@ movhi
	ldr	r3, .L69+96
	add	r2, r2, #764
	strh	ip, [r0]	@ movhi
	strh	r3, [r2]	@ movhi
.L45:
	ldr	r3, .L69+100
	ldr	r0, [r3]
	cmp	r0, #0
	ble	.L67
.L49:
	ldr	r1, .L69+104
	mov	r5, #4
	mov	r4, r1
	mov	lr, r1
	mov	ip, r1
	ldr	r6, .L69+108
	smull	r10, fp, r0, r6
	asr	r2, r0, #31
	rsb	r3, r2, fp, asr #2
	add	r2, r3, r3, lsl #2
	lsl	r3, r3, #6
	add	r3, r3, #9
	orr	r3, r3, #12288
	strh	r3, [r1, #4]	@ movhi
	ldr	r3, .L69+112
	sub	r2, r0, r2, lsl #1
	lsl	r2, r2, #6
	strh	r3, [r1, #2]	@ movhi
	ldr	r3, .L69+116
	add	r2, r2, #9
	orr	r2, r2, #12288
	strh	r3, [r1, #-20]	@ movhi
	add	r3, r3, #128
	strh	r5, [r4, #8]!	@ movhi
	strh	r2, [r1, #12]	@ movhi
	strh	r3, [r1, #-12]	@ movhi
	ldr	r2, .L69+120
	ldr	r3, .L69+124
	strh	r2, [lr, #-24]!	@ movhi
	strh	r2, [ip, #-16]!	@ movhi
	strh	r3, [r4, #2]	@ movhi
	ldr	r2, .L69+128
	ldr	r3, .L69+132
	cmp	r8, #47
	strh	r5, [r1]	@ movhi
	strh	r2, [lr, #2]	@ movhi
	strh	r3, [ip, #2]	@ movhi
	bgt	.L54
	cmp	r8, #25
	movgt	r3, #1
	movle	r3, #0
	ldr	r2, .L69+24
	str	r3, [r2, #52]
.L54:
	cmp	r9, #47
	bgt	.L58
	cmp	r9, #25
	movgt	r3, #1
	movle	r3, #0
	ldr	r2, [sp, #4]
	str	r3, [r2, #52]
.L58:
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #28]
	add	r3, r3, #1
	str	r3, [r2]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L34:
	ldr	r3, .L69+32
	str	r3, [sp, #4]
	add	r3, r3, #44
	ldm	r3, {r3, r9}
	ldr	r2, .L69+28
	cmp	r9, r3
	ldr	r3, [r2]
	str	r2, [sp, #28]
	str	r3, [sp, #8]
	ble	.L35
	tst	r3, #3
	ldreq	r3, [sp, #4]
	subeq	r9, r9, #1
	streq	r9, [r3, #48]
	b	.L35
.L46:
	sub	r0, r3, #21
	cmp	r0, #19
	bls	.L68
	cmp	r3, #20
	bgt	.L45
	ldr	r0, .L69+88
	rsb	r3, r3, #42
	b	.L64
.L66:
	ldr	r3, [r3, #44]
	sub	r8, r8, #1
	cmp	r9, r3
	str	r8, [r2, #48]
	ldrgt	r3, [sp, #4]
	subgt	r9, r9, #1
	strgt	r9, [r3, #48]
	b	.L35
.L67:
	ldr	r2, .L69+136
	ldr	r3, [r2, #4]
	cmp	r3, #0
	ble	.L50
	mov	ip, #3
	sub	r3, r3, #1
	cmp	r3, #40
	str	r3, [r2, #4]
	str	ip, [r1]
	ble	.L51
	ldr	r2, .L69+140
	mov	r1, #48
	mov	ip, r2
	ldr	r4, .L69+88
	ldr	lr, .L69+92
	strh	r1, [ip, #8]!	@ movhi
	rsb	r1, r3, #76
	rsb	r3, r3, #60
	orr	r3, r4, r3, lsl #2
	lsl	r1, r1, #2
	strh	lr, [r2]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldr	lr, .L69+144
	ldr	r3, .L69+148
	orr	r1, r1, #16384
	strh	r1, [ip, #2]	@ movhi
	strh	lr, [r2, #4]	@ movhi
	strh	r3, [r2, #12]	@ movhi
	b	.L49
.L68:
	ldr	r0, .L69+92
	add	r3, r2, #760
	ldr	ip, .L69+152
	strh	r0, [r3]	@ movhi
	ldr	r0, .L69+96
	add	r2, r2, #764
	strh	ip, [r3, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	b	.L45
.L50:
	mov	r3, #3
	str	r3, [r1]
.L51:
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #40
	bgt	.L49
	ldr	r3, .L69+140
	mov	ip, #48
	mov	r2, r3
	ldr	r1, .L69+92
	strh	r1, [r3]	@ movhi
	ldr	r1, .L69+156
	strh	r1, [r3, #2]	@ movhi
	ldr	r1, .L69+144
	strh	r1, [r3, #4]	@ movhi
	add	r1, r1, #8
	strh	ip, [r2, #8]!	@ movhi
	strh	r1, [r3, #12]	@ movhi
	ldr	r3, .L69+160
	strh	r3, [r2, #2]	@ movhi
	b	.L49
.L70:
	.align	2
.L69:
	.word	hideSprites
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	player
	.word	barCounter
	.word	champ
	.word	shadowOAM
	.word	shadowOAM+256
	.word	16400
	.word	12326
	.word	12325
	.word	16388
	.word	12293
	.word	12357
	.word	16552
	.word	gameplayState
	.word	4328
	.word	4320
	.word	16576
	.word	-16384
	.word	16432
	.word	12299
	.word	gameTime
	.word	shadowOAM+1000
	.word	1717986919
	.word	16490
	.word	12311
	.word	16397
	.word	16502
	.word	-16376
	.word	-16209
	.word	.LANCHOR0
	.word	shadowOAM+960
	.word	12427
	.word	12435
	.word	-16296
	.word	-16304
	.word	16528
	.size	updateSprites, .-updateSprites
	.align	2
	.global	goToPlayerIdle
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerIdle, %function
goToPlayerIdle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L72
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #20]
	str	r2, [r3, #76]
	bx	lr
.L73:
	.align	2
.L72:
	.word	player
	.size	goToPlayerIdle, .-goToPlayerIdle
	.align	2
	.global	playerIdle
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerIdle, %function
playerIdle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L95
	ldr	r1, [r5]
	ldr	r4, .L95+4
	ldr	r3, .L95+8
	ldr	r2, .L95+12
	cmp	r1, #0
	stm	r4, {r2, r3}
	ldr	r3, [r4, #36]
	bne	.L75
	cmp	r3, #5
	bgt	.L90
.L77:
	sub	r2, r3, #5
	cmp	r2, #33
	bhi	.L91
.L78:
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L75
.L79:
	cmp	r3, #19
	ldr	r2, [r4, #20]
	ble	.L82
.L93:
	add	r2, r2, #1
	cmp	r3, #37
	str	r2, [r4, #20]
	movgt	r3, #1
	ble	.L89
	str	r3, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	cmp	r3, #5
	bgt	.L92
.L81:
	sub	r2, r3, #5
	cmp	r2, #33
	bls	.L79
.L94:
	mov	r3, #1088
	mov	r2, #100663296
	ldr	r1, .L95+16
	mov	r0, #3
	ldr	r5, .L95+20
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #36]
	cmp	r3, #19
	ldr	r2, [r4, #20]
	bgt	.L93
.L82:
	sub	r2, r2, #1
	str	r2, [r4, #20]
.L89:
	add	r3, r3, #1
	str	r3, [r4, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	mov	r3, #976
	mov	r2, #100663296
	ldr	r1, .L95+32
	mov	r0, #3
	ldr	r6, .L95+20
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	cmp	r3, #20
	ble	.L77
	mov	r3, #976
	mov	r2, #100663296
	ldr	r1, .L95+40
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	cmp	r3, #30
	ble	.L77
	mov	r3, #992
	mov	r2, #100663296
	ldr	r1, .L95+48
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+52
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	sub	r2, r3, #5
	cmp	r2, #33
	bls	.L78
.L91:
	mov	r3, #976
	mov	r2, #100663296
	ldr	r1, .L95+40
	mov	r0, #3
	ldr	r6, .L95+20
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #36]
	b	.L78
.L92:
	mov	r3, #1120
	mov	r2, #100663296
	ldr	r1, .L95+56
	mov	r0, #3
	ldr	r5, .L95+20
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #36]
	cmp	r3, #20
	ble	.L81
	mov	r3, #1088
	mov	r2, #100663296
	ldr	r1, .L95+16
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #36]
	cmp	r3, #30
	ble	.L81
	mov	r3, #1152
	mov	r2, #100663296
	ldr	r1, .L95+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L95+24
	ldr	r1, .L95+68
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #36]
	sub	r2, r3, #5
	cmp	r2, #33
	bls	.L79
	b	.L94
.L96:
	.align	2
.L95:
	.word	.LANCHOR1
	.word	player
	.word	442
	.word	450
	.word	IdleS0Tiles
	.word	DMANow
	.word	100677632
	.word	IdleS0Map
	.word	Idle1Tiles
	.word	Idle1Map
	.word	Idle0Tiles
	.word	Idle0Map
	.word	Idle2Tiles
	.word	Idle2Map
	.word	IdleS1Tiles
	.word	IdleS1Map
	.word	IdleS2Tiles
	.word	IdleS2Map
	.size	playerIdle, .-playerIdle
	.align	2
	.global	playerBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerBlock, %function
playerBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, .L103
	ldr	r1, [r6]
	ldr	r4, .L103+4
	ldr	r2, .L103+8
	ldr	r3, .L103+12
	cmp	r1, #0
	stm	r4, {r2, r3}
	beq	.L98
	ldr	r5, .L103+16
.L100:
	mov	r3, #992
	mov	r2, #100663296
	ldr	r1, .L103+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L103+24
	ldr	r1, .L103+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
.L99:
	ldr	r3, [r4, #44]
	cmp	r3, #8
	bgt	.L97
	mov	r1, #0
	mov	r2, #8
	ldr	r3, .L103+32
	str	r1, [r4, #24]
	str	r2, [r4, #28]
	str	r3, [r4]
.L97:
	pop	{r4, r5, r6, lr}
	bx	lr
.L98:
	mov	r3, #928
	mov	r2, #100663296
	ldr	r1, .L103+36
	mov	r0, #3
	ldr	r5, .L103+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L103+24
	ldr	r1, .L103+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L99
	b	.L100
.L104:
	.align	2
.L103:
	.word	.LANCHOR1
	.word	player
	.word	455
	.word	442
	.word	DMANow
	.word	BlockS0Tiles
	.word	100677632
	.word	BlockS0Map
	.word	422
	.word	Block0Tiles
	.word	Block0Map
	.size	playerBlock, .-playerBlock
	.align	2
	.global	playerDodgeLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerDodgeLeft, %function
playerDodgeLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L137
	ldr	r3, [r5]
	ldr	r4, .L137+4
	cmp	r3, #0
	ldr	r3, [r4, #24]
	bne	.L106
	cmp	r3, #2
	bgt	.L136
.L110:
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L106
.L111:
	ldr	r2, .L137+8
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L115
	ldr	r1, .L137+12
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r1, #4
	streq	r1, [r4, #76]
.L115:
	tst	r2, #1
	beq	.L116
	ldr	r2, .L137+12
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L116
	mov	r2, #5
	cmp	r3, #25
	str	r2, [r4, #76]
	bgt	.L117
.L135:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L116:
	cmp	r3, #25
	ble	.L135
	ldr	r2, [r4, #76]
	cmp	r2, #0
	bne	.L120
	ldr	r1, [r5, #8]
	add	r3, r3, #1
	add	r1, r1, #8
	str	r2, [r4, #28]
	str	r1, [r5, #8]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	cmp	r3, #2
	ble	.L111
	mov	r3, #1600
	mov	r2, #100663296
	ldr	r1, .L137+16
	mov	r0, #3
	ldr	r6, .L137+20
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+28
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #5
	ble	.L111
	mov	r3, #1216
	mov	r2, #100663296
	ldr	r1, .L137+32
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #10
	ble	.L111
	mov	r3, #1216
	mov	r2, #100663296
	ldr	r1, .L137+40
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #15
	ble	.L111
	mov	r3, #1184
	mov	r2, #100663296
	ldr	r1, .L137+48
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+52
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #20
	ble	.L111
	mov	r3, #1184
	mov	r2, #100663296
	ldr	r1, .L137+56
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+60
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	b	.L111
.L120:
	cmp	r2, #4
	bne	.L121
	mov	r3, #0
	ldr	r1, .L137+64
	str	r3, [r4, #76]
	str	r3, [r4, #56]
	str	r3, [r1, #72]
	mov	r3, #1
	str	r2, [r4, #28]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L121:
	cmp	r2, #5
	bne	.L135
.L117:
	mov	r2, #0
	mov	r1, #5
	mov	r3, #1
	ldr	r0, .L137+64
	str	r2, [r4, #76]
	str	r2, [r4, #56]
	str	r1, [r4, #28]
	str	r3, [r4, #24]
	str	r2, [r0, #72]
	pop	{r4, r5, r6, lr}
	bx	lr
.L136:
	mov	r3, #1440
	mov	r2, #100663296
	ldr	r1, .L137+68
	mov	r0, #3
	ldr	r6, .L137+20
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+72
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #5
	ble	.L110
	mov	r3, #1120
	mov	r2, #100663296
	ldr	r1, .L137+76
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+80
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #10
	ble	.L110
	mov	r3, #1136
	mov	r2, #100663296
	ldr	r1, .L137+84
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+88
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #15
	ble	.L110
	mov	r3, #1120
	mov	r2, #100663296
	ldr	r1, .L137+92
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+96
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #20
	ble	.L110
	mov	r3, #1104
	mov	r2, #100663296
	ldr	r1, .L137+100
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L137+24
	ldr	r1, .L137+104
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	b	.L110
.L138:
	.align	2
.L137:
	.word	.LANCHOR1
	.word	player
	.word	gameOldButtons
	.word	gameButtons
	.word	LeftS0Tiles
	.word	DMANow
	.word	100677632
	.word	LeftS0Map
	.word	LeftS1Tiles
	.word	LeftS1Map
	.word	LeftS2Tiles
	.word	LeftS2Map
	.word	LeftS3Tiles
	.word	LeftS3Map
	.word	LeftS4Tiles
	.word	LeftS4Map
	.word	champ
	.word	Left0Tiles
	.word	Left0Map
	.word	Left1Tiles
	.word	Left1Map
	.word	Left2Tiles
	.word	Left2Map
	.word	Left3Tiles
	.word	Left3Map
	.word	Left4Tiles
	.word	Left4Map
	.size	playerDodgeLeft, .-playerDodgeLeft
	.align	2
	.global	goToPlayerDodgeLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerDodgeLeft, %function
goToPlayerDodgeLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L144
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L140
	ldr	r5, .L144+4
.L142:
	mov	r3, #0
	ldr	r2, .L144+8
	ldr	r1, .L144+12
	ldr	r0, .L144+16
	mov	lr, pc
	bx	r5
.L141:
	mov	r2, #0
	mov	r0, #2
	ldr	r1, [r4, #8]
	sub	r1, r1, #8
	ldr	r3, .L144+20
	ldr	lr, .L144+24
	str	r1, [r4, #8]
	ldr	ip, .L144+28
	ldr	r1, .L144+32
	str	r2, [lr, #72]
	str	r2, [r3, #76]
	str	r2, [r3, #24]
	str	ip, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L140:
	ldr	r2, .L144+8
	ldr	r1, .L144+36
	ldr	r0, .L144+40
	ldr	r5, .L144+4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L141
	b	.L142
.L145:
	.align	2
.L144:
	.word	.LANCHOR1
	.word	playSoundA
	.word	11025
	.word	4634
	.word	CheatDodgeSound
	.word	player
	.word	champ
	.word	455
	.word	410
	.word	3511
	.word	PlayerDodgeSound
	.size	goToPlayerDodgeLeft, .-goToPlayerDodgeLeft
	.align	2
	.global	playerDodgeRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerDodgeRight, %function
playerDodgeRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L176
	ldr	r3, [r5]
	ldr	r4, .L176+4
	cmp	r3, #0
	ldr	r3, [r4, #24]
	bne	.L147
	cmp	r3, #2
	bgt	.L175
.L150:
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L147
.L151:
	ldr	r2, .L176+8
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L154
	ldr	r1, .L176+12
	ldrh	r1, [r1]
	tst	r1, #2
	moveq	r1, #4
	streq	r1, [r4, #76]
.L154:
	tst	r2, #1
	beq	.L155
	ldr	r2, .L176+12
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L155
	mov	r2, #5
	cmp	r3, #25
	str	r2, [r4, #76]
	bgt	.L156
.L174:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L155:
	cmp	r3, #25
	ble	.L174
	ldr	r2, [r4, #76]
	cmp	r2, #0
	bne	.L159
	ldr	r1, [r5, #8]
	add	r3, r3, #1
	sub	r1, r1, #8
	str	r2, [r4, #28]
	str	r1, [r5, #8]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L147:
	cmp	r3, #2
	ble	.L151
	mov	r3, #1680
	mov	r2, #100663296
	ldr	r1, .L176+16
	mov	r0, #3
	ldr	r6, .L176+20
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+28
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #5
	ble	.L151
	mov	r3, #1248
	mov	r2, #100663296
	ldr	r1, .L176+32
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #10
	ble	.L151
	mov	r3, #1184
	mov	r2, #100663296
	ldr	r1, .L176+40
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #15
	ble	.L151
	mov	r3, #1264
	mov	r2, #100663296
	ldr	r1, .L176+48
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+52
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	b	.L151
.L159:
	cmp	r2, #4
	bne	.L160
	mov	r3, #0
	ldr	r1, .L176+56
	str	r3, [r4, #76]
	str	r3, [r4, #56]
	str	r3, [r1, #72]
	mov	r3, #1
	str	r2, [r4, #28]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L160:
	cmp	r2, #5
	bne	.L174
.L156:
	mov	r2, #0
	mov	r1, #5
	mov	r3, #1
	ldr	r0, .L176+56
	str	r2, [r4, #76]
	str	r2, [r4, #56]
	str	r1, [r4, #28]
	str	r3, [r4, #24]
	str	r2, [r0, #72]
	pop	{r4, r5, r6, lr}
	bx	lr
.L175:
	mov	r3, #1328
	mov	r2, #100663296
	ldr	r1, .L176+60
	mov	r0, #3
	ldr	r6, .L176+20
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+64
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #5
	ble	.L150
	mov	r3, #1120
	mov	r2, #100663296
	ldr	r1, .L176+68
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+72
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #10
	ble	.L150
	mov	r3, #992
	mov	r2, #100663296
	ldr	r1, .L176+76
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+80
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #15
	ble	.L150
	mov	r3, #1152
	mov	r2, #100663296
	ldr	r1, .L176+84
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L176+24
	ldr	r1, .L176+88
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	b	.L150
.L177:
	.align	2
.L176:
	.word	.LANCHOR1
	.word	player
	.word	gameOldButtons
	.word	gameButtons
	.word	RightS0Tiles
	.word	DMANow
	.word	100677632
	.word	RightS0Map
	.word	RightS1Tiles
	.word	RightS1Map
	.word	RightS2Tiles
	.word	RightS2Map
	.word	RightS3Tiles
	.word	RightS3Map
	.word	champ
	.word	Right0Tiles
	.word	Right0Map
	.word	Right1Tiles
	.word	Right1Map
	.word	Right2Tiles
	.word	Right2Map
	.word	Right3Tiles
	.word	Right3Map
	.size	playerDodgeRight, .-playerDodgeRight
	.align	2
	.global	goToPlayerDodgeRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerDodgeRight, %function
goToPlayerDodgeRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L183
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L179
	ldr	r5, .L183+4
.L181:
	mov	r3, #0
	ldr	r2, .L183+8
	ldr	r1, .L183+12
	ldr	r0, .L183+16
	mov	lr, pc
	bx	r5
.L180:
	mov	r2, #0
	mov	r0, #3
	ldr	r1, [r4, #8]
	add	r1, r1, #8
	ldr	r3, .L183+20
	ldr	lr, .L183+24
	str	r1, [r4, #8]
	ldr	ip, .L183+28
	ldr	r1, .L183+32
	str	r2, [lr, #72]
	str	r2, [r3, #76]
	str	r2, [r3, #24]
	str	ip, [r3]
	str	r1, [r3, #4]
	str	r0, [r3, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L179:
	ldr	r2, .L183+8
	ldr	r1, .L183+36
	ldr	r0, .L183+40
	ldr	r5, .L183+4
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L180
	b	.L181
.L184:
	.align	2
.L183:
	.word	.LANCHOR1
	.word	playSoundA
	.word	11025
	.word	4634
	.word	CheatDodgeSound
	.word	player
	.word	champ
	.word	463
	.word	442
	.word	3511
	.word	PlayerDodgeSound
	.size	goToPlayerDodgeRight, .-goToPlayerDodgeRight
	.align	2
	.global	playerPunchLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerPunchLeft, %function
playerPunchLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L249
	ldr	r3, [r4, #24]
	ldr	r1, .L249+4
	ldr	r2, .L249+8
	cmp	r3, #10
	stm	r4, {r1, r2}
	beq	.L186
	ldr	r5, .L249+12
	ldr	r2, [r5]
.L187:
	cmp	r2, #0
	beq	.L202
.L203:
	cmp	r3, #8
	bgt	.L221
.L210:
	ldr	r2, [r4, #56]
	add	r1, r2, #17
	cmp	r1, r3
	blt	.L239
.L211:
	add	r1, r2, #15
	cmp	r1, r3
	ldrlt	r1, .L249+4
	strlt	r1, [r4]
	add	r1, r2, #23
	cmp	r1, r3
	blt	.L240
.L213:
	add	r1, r2, #27
	cmp	r1, r3
	blt	.L241
.L209:
	ldr	r1, .L249+16
	ldrh	r1, [r1]
	tst	r1, #32
	beq	.L214
	ldr	r0, .L249+20
	ldrh	r0, [r0]
	tst	r0, #32
	moveq	r0, #2
	streq	r0, [r4, #76]
.L214:
	tst	r1, #16
	add	r2, r2, #30
	beq	.L215
	ldr	r1, .L249+20
	ldrh	r1, [r1]
	tst	r1, #16
	bne	.L215
	mov	r1, #3
	cmp	r3, r2
	str	r1, [r4, #76]
	ble	.L217
.L216:
	bl	goToPlayerDodgeRight
	ldr	r3, [r4, #24]
.L217:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L200:
	ldr	r2, .L249+24
	ldr	r1, .L249+28
	ldr	r0, .L249+32
	ldr	r7, .L249+36
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L201
	mov	r1, #1
	mov	r2, #10
	str	r3, [r6, #24]
	str	r1, [r6, #28]
	str	r2, [r4, #56]
	ldr	r3, [r4, #24]
.L202:
	cmp	r3, #8
	bgt	.L222
	ldr	r2, [r4, #56]
	add	r1, r2, #17
	cmp	r1, r3
	blt	.L242
.L205:
	add	r1, r2, #15
	cmp	r1, r3
	ldrlt	r1, .L249+4
	strlt	r1, [r4]
	add	r1, r2, #23
	cmp	r1, r3
	blt	.L243
.L207:
	add	r2, r2, #27
	cmp	r2, r3
	blt	.L244
.L208:
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L203
.L237:
	ldr	r2, [r4, #56]
	b	.L209
.L215:
	cmp	r3, r2
	ble	.L217
	ldr	r2, [r4, #76]
	cmp	r2, #0
	streq	r2, [r4, #28]
	beq	.L217
	cmp	r2, #2
	beq	.L245
	cmp	r2, #3
	beq	.L216
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L186:
	ldr	r6, .L249+40
	ldr	r2, [r6, #28]
	cmp	r2, #1
	beq	.L188
	sub	r3, r2, #4
	cmp	r3, #1
	bls	.L246
	cmp	r2, #0
	bne	.L190
	ldr	r3, .L249+44
	mov	lr, pc
	bx	r3
	ldr	r3, .L249+48
	smull	r8, r9, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r9, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r0, r3, lsl #1
	beq	.L247
	ldr	r2, [r6, #28]
	ldr	r5, .L249+12
	cmp	r2, #0
	ldr	r3, [r5]
	bne	.L248
	cmp	r3, #0
	beq	.L200
	ldr	r7, .L249+36
.L201:
	mov	r3, #0
	ldr	r2, .L249+24
	ldr	r1, .L249+52
	ldr	r0, .L249+56
	mov	lr, pc
	bx	r7
	mov	r2, #0
	mov	r3, #1
	str	r2, [r6, #24]
	str	r3, [r6, #28]
	ldr	r2, [r5]
	ldr	r3, [r4, #24]
.L199:
	mov	r1, #10
	str	r1, [r4, #56]
	b	.L187
.L246:
	ldr	r3, [r6, #24]
	cmp	r3, #32
	ble	.L190
	ldr	r5, .L249+12
	ldr	r2, [r6, #44]
	ldr	r3, [r5]
	sub	r2, r2, #5
	cmp	r3, #0
	str	r2, [r6, #44]
	beq	.L191
	ldr	r7, .L249+36
.L193:
	mov	r3, #0
	ldr	r2, .L249+24
	ldr	r1, .L249+60
	ldr	r0, .L249+64
	mov	lr, pc
	bx	r7
.L192:
	mov	r2, #6
	mov	r1, #0
	ldr	r3, [r5, #8]
	add	r3, r3, #20
	str	r3, [r5, #8]
	str	r2, [r6, #28]
	str	r1, [r6, #24]
	ldr	r3, [r4, #24]
	ldr	r2, [r5]
	b	.L187
.L190:
	ldr	r5, .L249+12
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L221
.L222:
	ldr	ip, .L249+68
	mov	r3, #1200
	mov	r2, #100663296
	ldr	r1, .L249+72
	mov	r0, #3
	ldr	r6, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+84
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, [r4, #56]
	ldr	r3, [r4, #24]
	add	r1, r2, #17
	cmp	r1, r3
	bge	.L205
.L242:
	mov	ip, #432
	mov	r3, #1168
	mov	r2, #100663296
	ldr	r1, .L249+88
	mov	r0, #3
	ldr	r6, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+92
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, [r4, #56]
	ldr	r3, [r4, #24]
	b	.L205
.L244:
	ldr	ip, .L249+96
	mov	r3, #896
	mov	r2, #100663296
	ldr	r1, .L249+100
	mov	r0, #3
	ldr	r6, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+104
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	b	.L208
.L241:
	ldr	ip, .L249+96
	mov	r3, #1056
	mov	r2, #100663296
	ldr	r1, .L249+108
	mov	r0, #3
	ldr	r5, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+112
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L237
.L240:
	ldr	ip, .L249+4
	mov	r3, #1088
	mov	r2, #100663296
	ldr	r1, .L249+116
	mov	r0, #3
	ldr	r5, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+120
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #56]
	b	.L213
.L243:
	ldr	ip, .L249+4
	mov	r3, #1024
	mov	r2, #100663296
	ldr	r1, .L249+124
	mov	r0, #3
	ldr	r6, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+128
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #56]
	b	.L207
.L239:
	mov	ip, #432
	mov	r3, #1216
	mov	r2, #100663296
	ldr	r1, .L249+132
	mov	r0, #3
	ldr	r5, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+136
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #56]
	ldr	r3, [r4, #24]
	b	.L211
.L188:
	ldr	r5, .L249+12
	ldr	r2, [r5]
	cmp	r2, #0
	str	r3, [r4, #56]
	beq	.L222
.L221:
	ldr	ip, .L249+68
	mov	r3, #1312
	mov	r2, #100663296
	ldr	r1, .L249+140
	mov	r0, #3
	ldr	r5, .L249+76
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L249+80
	ldr	r1, .L249+144
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L210
.L245:
	bl	goToPlayerDodgeLeft
	ldr	r3, [r4, #24]
	b	.L217
.L247:
	ldr	r5, .L249+12
	ldr	r2, [r6, #44]
	ldr	r3, [r5]
	sub	r2, r2, #5
	cmp	r3, #0
	str	r2, [r6, #44]
	beq	.L195
	ldr	r7, .L249+36
.L197:
	ldr	r2, .L249+24
	mov	r3, #0
	ldr	r1, .L249+60
	ldr	r0, .L249+64
	mov	lr, pc
	bx	r7
	ldr	r2, [r5]
.L196:
	mov	r0, #0
	mov	r1, #6
	ldr	r3, [r5, #8]
	add	r3, r3, #20
	str	r3, [r5, #8]
	str	r0, [r6, #24]
	str	r1, [r6, #28]
	ldr	r3, [r4, #24]
	b	.L187
.L191:
	ldr	r2, .L249+24
	ldr	r1, .L249+148
	ldr	r0, .L249+152
	ldr	r7, .L249+36
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L192
	b	.L193
.L195:
	ldr	r2, .L249+24
	ldr	r1, .L249+156
	ldr	r0, .L249+160
	ldr	r7, .L249+36
	mov	lr, pc
	bx	r7
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L196
	b	.L197
.L248:
	cmp	r2, #1
	mov	r2, r3
	ldr	r3, [r4, #24]
	bne	.L187
	b	.L199
.L250:
	.align	2
.L249:
	.word	player
	.word	461
	.word	442
	.word	.LANCHOR1
	.word	gameOldButtons
	.word	gameButtons
	.word	11025
	.word	5156
	.word	BlockSound
	.word	playSoundA
	.word	champ
	.word	rand
	.word	1717986919
	.word	2177
	.word	CheatBlockSound
	.word	14885
	.word	CheatPunchSound
	.word	430
	.word	PunchLeft0Tiles
	.word	DMANow
	.word	100677632
	.word	PunchLeft0Map
	.word	PunchLeft1Tiles
	.word	PunchLeft1Map
	.word	458
	.word	PunchLeft3Tiles
	.word	PunchLeft3Map
	.word	PunchLeftS3Tiles
	.word	PunchLeftS3Map
	.word	PunchLeftS2Tiles
	.word	PunchLeftS2Map
	.word	PunchLeft2Tiles
	.word	PunchLeft2Map
	.word	PunchLeftS1Tiles
	.word	PunchLeftS1Map
	.word	PunchLeftS0Tiles
	.word	PunchLeftS0Map
	.word	7876
	.word	PlayerPunchSound2
	.word	5151
	.word	PlayerPunchSound1
	.size	playerPunchLeft, .-playerPunchLeft
	.align	2
	.global	goToPlayerPunchLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerPunchLeft, %function
goToPlayerPunchLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #4
	ldr	r3, .L252
	ldr	r0, .L252+4
	str	r2, [r3, #76]
	str	r2, [r0, #72]
	str	r2, [r3, #24]
	str	r2, [r3, #56]
	str	r1, [r3, #28]
	bx	lr
.L253:
	.align	2
.L252:
	.word	player
	.word	champ
	.size	goToPlayerPunchLeft, .-goToPlayerPunchLeft
	.align	2
	.global	playerPunchRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerPunchRight, %function
playerPunchRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L321
	ldr	r3, [r4, #24]
	ldr	r2, .L321+4
	cmp	r3, #10
	str	r2, [r4, #4]
	beq	.L255
	ldr	r5, .L321+8
	ldr	r2, [r5]
.L256:
	cmp	r2, #0
	beq	.L271
.L272:
	cmp	r3, #8
	bgt	.L293
.L280:
	ldr	r2, [r4, #56]
	add	r1, r2, #13
	cmp	r1, r3
	blt	.L312
.L281:
	add	r1, r2, #18
	cmp	r1, r3
	ldreq	r1, .L321+12
	streq	r1, [r4]
	beq	.L283
	blt	.L313
.L283:
	add	r1, r2, #23
	cmp	r1, r3
	ldreq	r1, .L321+16
	streq	r1, [r4]
	beq	.L279
	bge	.L279
	ldr	ip, .L321+16
	mov	r3, #1136
	mov	r2, #100663296
	ldr	r1, .L321+20
	mov	r0, #3
	ldr	r5, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #56]
	ldr	r3, [r4, #24]
	b	.L279
.L269:
	ldr	r2, .L321+36
	ldr	r1, .L321+40
	ldr	r0, .L321+44
	ldr	r7, .L321+48
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L270
	mov	r1, #1
	mov	r2, #10
	str	r3, [r6, #24]
	str	r1, [r6, #28]
	str	r2, [r4, #56]
	ldr	r3, [r4, #24]
.L271:
	cmp	r3, #8
	bgt	.L291
	ldr	r2, [r4, #56]
	add	r1, r2, #13
	cmp	r1, r3
	blt	.L314
.L274:
	add	r1, r2, #18
	cmp	r1, r3
	ldreq	r1, .L321+12
	streq	r1, [r4]
	beq	.L276
	blt	.L315
.L276:
	add	r2, r2, #23
	cmp	r2, r3
	ldreq	r2, .L321+16
	streq	r2, [r4]
	beq	.L278
	blt	.L316
.L278:
	ldr	r2, [r5]
	cmp	r2, #0
	bne	.L272
	ldr	r2, [r4, #56]
.L279:
	ldr	r1, .L321+52
	ldrh	r1, [r1]
	tst	r1, #32
	beq	.L285
	ldr	r0, .L321+56
	ldrh	r0, [r0]
	tst	r0, #32
	moveq	r0, #2
	streq	r0, [r4, #76]
.L285:
	tst	r1, #16
	add	r2, r2, #30
	beq	.L286
	ldr	r1, .L321+56
	ldrh	r1, [r1]
	tst	r1, #16
	bne	.L286
	mov	r1, #3
	cmp	r3, r2
	str	r1, [r4, #76]
	ble	.L288
.L287:
	bl	goToPlayerDodgeRight
	ldr	r3, [r4, #24]
.L288:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L286:
	cmp	r3, r2
	ble	.L288
	ldr	r2, [r4, #76]
	cmp	r2, #0
	streq	r2, [r4, #28]
	beq	.L288
	cmp	r2, #2
	beq	.L317
	cmp	r2, #3
	beq	.L287
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L255:
	ldr	r6, .L321+60
	ldr	r2, [r6, #28]
	cmp	r2, #1
	beq	.L257
	sub	r3, r2, #4
	cmp	r3, #1
	bls	.L318
	cmp	r2, #0
	bne	.L259
	ldr	r3, .L321+64
	mov	lr, pc
	bx	r3
	ldr	r3, .L321+68
	smull	r8, r9, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r9, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r0, r3, lsl #1
	beq	.L319
	ldr	r2, [r6, #28]
	ldr	r5, .L321+8
	cmp	r2, #0
	ldr	r3, [r5]
	bne	.L320
	cmp	r3, #0
	beq	.L269
	ldr	r7, .L321+48
.L270:
	mov	r3, #0
	ldr	r2, .L321+36
	ldr	r1, .L321+72
	ldr	r0, .L321+76
	mov	lr, pc
	bx	r7
	mov	r2, #0
	mov	r3, #1
	str	r2, [r6, #24]
	str	r3, [r6, #28]
	ldr	r2, [r5]
	ldr	r3, [r4, #24]
.L268:
	mov	r1, #10
	str	r1, [r4, #56]
	b	.L256
.L316:
	ldr	ip, .L321+16
	mov	r3, #992
	mov	r2, #100663296
	ldr	r1, .L321+80
	mov	r0, #3
	ldr	r6, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+84
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	b	.L278
.L315:
	ldr	ip, .L321+12
	mov	r3, #1040
	mov	r2, #100663296
	ldr	r1, .L321+88
	mov	r0, #3
	ldr	r6, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+92
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #56]
	b	.L276
.L313:
	ldr	ip, .L321+12
	mov	r3, #1232
	mov	r2, #100663296
	ldr	r1, .L321+96
	mov	r0, #3
	ldr	r5, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+100
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #56]
	b	.L283
.L318:
	ldr	r3, [r6, #24]
	cmp	r3, #32
	ble	.L259
	ldr	r5, .L321+8
	ldr	r2, [r6, #44]
	ldr	r3, [r5]
	sub	r2, r2, #5
	cmp	r3, #0
	str	r2, [r6, #44]
	beq	.L260
	ldr	r7, .L321+48
.L262:
	mov	r3, #0
	ldr	r2, .L321+36
	ldr	r1, .L321+104
	ldr	r0, .L321+108
	mov	lr, pc
	bx	r7
.L261:
	mov	r2, #7
	mov	r1, #0
	ldr	r3, [r5, #8]
	sub	r3, r3, #20
	str	r3, [r5, #8]
	str	r2, [r6, #28]
	str	r1, [r6, #24]
	ldr	r3, [r4, #24]
	ldr	r2, [r5]
	b	.L256
.L259:
	ldr	r5, .L321+8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L293
.L291:
	mov	ip, #432
	mov	r3, #1296
	mov	r2, #100663296
	ldr	r1, .L321+112
	mov	r0, #3
	ldr	r6, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+116
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r2, [r4, #56]
	ldr	r3, [r4, #24]
	add	r1, r2, #13
	cmp	r1, r3
	bge	.L274
.L314:
	ldr	ip, .L321+120
	mov	r3, #1216
	mov	r2, #100663296
	ldr	r1, .L321+124
	mov	r0, #3
	ldr	r6, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+128
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #56]
	b	.L274
.L312:
	ldr	ip, .L321+120
	mov	r3, #1328
	mov	r2, #100663296
	ldr	r1, .L321+132
	mov	r0, #3
	ldr	r5, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+136
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #56]
	b	.L281
.L257:
	ldr	r5, .L321+8
	ldr	r2, [r5]
	cmp	r2, #0
	str	r3, [r4, #56]
	beq	.L291
.L293:
	mov	ip, #432
	mov	r3, #1456
	mov	r2, #100663296
	ldr	r1, .L321+140
	mov	r0, #3
	ldr	r5, .L321+24
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L321+28
	ldr	r1, .L321+144
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L280
.L317:
	bl	goToPlayerDodgeLeft
	ldr	r3, [r4, #24]
	b	.L288
.L319:
	ldr	r5, .L321+8
	ldr	r2, [r6, #44]
	ldr	r3, [r5]
	sub	r2, r2, #5
	cmp	r3, #0
	str	r2, [r6, #44]
	beq	.L264
	ldr	r7, .L321+48
.L266:
	ldr	r2, .L321+36
	mov	r3, #0
	ldr	r1, .L321+104
	ldr	r0, .L321+108
	mov	lr, pc
	bx	r7
	ldr	r2, [r5]
.L265:
	mov	r0, #0
	mov	r1, #7
	ldr	r3, [r5, #8]
	sub	r3, r3, #20
	str	r3, [r5, #8]
	str	r0, [r6, #24]
	str	r1, [r6, #28]
	ldr	r3, [r4, #24]
	b	.L256
.L260:
	ldr	r2, .L321+36
	ldr	r1, .L321+148
	ldr	r0, .L321+152
	ldr	r7, .L321+48
	mov	lr, pc
	bx	r7
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L261
	b	.L262
.L264:
	ldr	r2, .L321+36
	ldr	r1, .L321+156
	ldr	r0, .L321+160
	ldr	r7, .L321+48
	mov	lr, pc
	bx	r7
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L265
	b	.L266
.L320:
	cmp	r2, #1
	mov	r2, r3
	ldr	r3, [r4, #24]
	bne	.L256
	b	.L268
.L322:
	.align	2
.L321:
	.word	player
	.word	442
	.word	.LANCHOR1
	.word	450
	.word	451
	.word	PunchRightS3Tiles
	.word	DMANow
	.word	100677632
	.word	PunchRightS3Map
	.word	11025
	.word	5156
	.word	BlockSound
	.word	playSoundA
	.word	gameOldButtons
	.word	gameButtons
	.word	champ
	.word	rand
	.word	1717986919
	.word	2177
	.word	CheatBlockSound
	.word	PunchRight3Tiles
	.word	PunchRight3Map
	.word	PunchRight2Tiles
	.word	PunchRight2Map
	.word	PunchRightS2Tiles
	.word	PunchRightS2Map
	.word	14885
	.word	CheatPunchSound
	.word	PunchRight0Tiles
	.word	PunchRight0Map
	.word	425
	.word	PunchRight1Tiles
	.word	PunchRight1Map
	.word	PunchRightS1Tiles
	.word	PunchRightS1Map
	.word	PunchRightS0Tiles
	.word	PunchRightS0Map
	.word	7876
	.word	PlayerPunchSound2
	.word	5151
	.word	PlayerPunchSound1
	.size	playerPunchRight, .-playerPunchRight
	.align	2
	.global	goToPlayerPunchRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerPunchRight, %function
goToPlayerPunchRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #5
	ldr	r3, .L324
	ldr	r0, .L324+4
	str	r2, [r3, #76]
	str	r2, [r0, #72]
	str	r2, [r3, #56]
	str	r2, [r3, #24]
	str	r1, [r3, #28]
	bx	lr
.L325:
	.align	2
.L324:
	.word	player
	.word	champ
	.size	goToPlayerPunchRight, .-goToPlayerPunchRight
	.align	2
	.global	playerHitLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerHitLeft, %function
playerHitLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L337
	ldr	r3, [r4, #24]
	ldr	r2, .L337+4
	cmp	r3, #0
	str	r2, [r4]
	bgt	.L336
.L334:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L336:
	mov	r3, #1088
	mov	r2, #100663296
	ldr	r1, .L337+8
	mov	r0, #3
	ldr	r5, .L337+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L337+16
	ldr	r1, .L337+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #4
	ble	.L334
	mov	r3, #1424
	mov	r2, #100663296
	ldr	r1, .L337+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L337+16
	ldr	r1, .L337+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #8
	ble	.L334
	mov	r3, #1200
	mov	r2, #100663296
	ldr	r1, .L337+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L337+16
	ldr	r1, .L337+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #12
	ble	.L334
	mov	r3, #1136
	mov	r2, #100663296
	ldr	r1, .L337+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L337+16
	ldr	r1, .L337+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #16
	ble	.L334
	mov	r3, #1168
	mov	r2, #100663296
	ldr	r1, .L337+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L337+16
	ldr	r1, .L337+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #30
	ble	.L334
	ldr	r2, [r4, #44]
	cmp	r2, #8
	movgt	r2, #0
	movle	r1, #8
	movle	r3, #1
	ldrle	r2, .L337+56
	addgt	r3, r3, #1
	strgt	r2, [r4, #28]
	strle	r1, [r4, #28]
	strle	r2, [r4]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L338:
	.align	2
.L337:
	.word	player
	.word	470
	.word	PlayerHitLeft0Tiles
	.word	DMANow
	.word	100677632
	.word	PlayerHitLeft0Map
	.word	PlayerHitLeft1Tiles
	.word	PlayerHitLeft1Map
	.word	PlayerHitLeft2Tiles
	.word	PlayerHitLeft2Map
	.word	PlayerHitLeft3Tiles
	.word	PlayerHitLeft3Map
	.word	PlayerHitLeft4Tiles
	.word	PlayerHitLeft4Map
	.word	422
	.size	playerHitLeft, .-playerHitLeft
	.align	2
	.global	goToPlayerHitLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerHitLeft, %function
goToPlayerHitLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	mov	r0, #6
	ldr	r1, .L340
	ldr	r3, [r1, #8]
	ldr	r2, .L340+4
	add	r3, r3, #13
	str	r3, [r1, #8]
	str	ip, [r2, #24]
	str	r0, [r2, #28]
	bx	lr
.L341:
	.align	2
.L340:
	.word	.LANCHOR1
	.word	player
	.size	goToPlayerHitLeft, .-goToPlayerHitLeft
	.align	2
	.global	playerHitRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerHitRight, %function
playerHitRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L352
	ldr	r3, [r4, #24]
	ldr	r2, .L352+4
	cmp	r3, #0
	str	r2, [r4]
	bgt	.L351
.L349:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L351:
	mov	r3, #1008
	mov	r2, #100663296
	ldr	r1, .L352+8
	mov	r0, #3
	ldr	r5, .L352+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L352+16
	ldr	r1, .L352+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #4
	ble	.L349
	mov	r3, #1408
	mov	r2, #100663296
	ldr	r1, .L352+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L352+16
	ldr	r1, .L352+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #8
	ble	.L349
	mov	r3, #1344
	mov	r2, #100663296
	ldr	r1, .L352+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L352+16
	ldr	r1, .L352+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #12
	ble	.L349
	mov	r3, #1344
	mov	r2, #100663296
	ldr	r1, .L352+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L352+16
	ldr	r1, .L352+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #30
	ble	.L349
	ldr	r2, [r4, #44]
	cmp	r2, #8
	movgt	r2, #0
	movle	r1, #8
	movle	r3, #1
	ldrle	r2, .L352+48
	addgt	r3, r3, #1
	strgt	r2, [r4, #28]
	strle	r1, [r4, #28]
	strle	r2, [r4]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L353:
	.align	2
.L352:
	.word	player
	.word	470
	.word	PlayerHitRight0Tiles
	.word	DMANow
	.word	100677632
	.word	PlayerHitRight0Map
	.word	PlayerHitRight1Tiles
	.word	PlayerHitRight1Map
	.word	PlayerHitRight2Tiles
	.word	PlayerHitRight2Map
	.word	PlayerHitRight3Tiles
	.word	PlayerHitRight3Map
	.word	422
	.size	playerHitRight, .-playerHitRight
	.align	2
	.global	goToPlayerHitRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerHitRight, %function
goToPlayerHitRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	mov	r0, #7
	ldr	r1, .L355
	ldr	r3, [r1, #8]
	ldr	r2, .L355+4
	sub	r3, r3, #13
	str	r3, [r1, #8]
	str	ip, [r2, #24]
	str	r0, [r2, #28]
	bx	lr
.L356:
	.align	2
.L355:
	.word	.LANCHOR1
	.word	player
	.size	goToPlayerHitRight, .-goToPlayerHitRight
	.align	2
	.global	playerKO
	.syntax unified
	.arm
	.fpu softvfp
	.type	playerKO, %function
playerKO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L362
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bgt	.L361
.L359:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L361:
	ldr	lr, .L362+4
	ldr	ip, .L362+8
	mov	r3, #3056
	mov	r2, #100663296
	ldr	r1, .L362+12
	mov	r0, #3
	ldr	r5, .L362+16
	str	lr, [r4]
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L362+20
	ldr	r1, .L362+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #6
	ble	.L359
	mov	ip, #364
	mov	r3, #3248
	mov	r2, #100663296
	ldr	r1, .L362+28
	mov	r0, #3
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L362+20
	ldr	r1, .L362+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #18
	ble	.L359
	mov	ip, #432
	mov	r3, #2624
	mov	r2, #100663296
	ldr	r1, .L362+36
	mov	r0, #3
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L362+20
	ldr	r1, .L362+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L363:
	.align	2
.L362:
	.word	player
	.word	422
	.word	394
	.word	PlayerKO0Tiles
	.word	DMANow
	.word	100677632
	.word	PlayerKO0Map
	.word	PlayerKO1Tiles
	.word	PlayerKO1Map
	.word	PlayerKO2Tiles
	.word	PlayerKO2Map
	.size	playerKO, .-playerKO
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L429
	ldr	r3, [r4, #28]
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L365
.L367:
	.word	.L366
	.word	.L368
	.word	.L369
	.word	.L370
	.word	.L371
	.word	.L372
	.word	.L373
	.word	.L374
	.word	.L375
.L375:
	bl	playerKO
.L365:
	ldr	r5, .L429+4
	ldr	r3, [r5, #28]
	cmp	r3, #8
	beq	.L364
	ldr	r3, .L429+8
	ldr	r2, [r3]
	cmp	r2, #1
	beq	.L423
.L364:
	pop	{r4, r5, r6, lr}
	bx	lr
.L423:
	ldr	r0, [r4, #28]
	ldr	r6, .L429+12
	cmp	r0, #1
	ldrh	r3, [r6]
	ldr	r1, [r4, #60]
	bls	.L424
.L379:
	tst	r3, #32
	beq	.L389
	ldr	r2, .L429+16
	ldrh	r2, [r2]
	tst	r2, #32
	bne	.L389
	ldr	r2, [r4, #28]
	cmp	r2, #1
	bls	.L425
.L389:
	tst	r3, #16
	beq	.L390
	ldr	r2, .L429+16
	ldrh	r2, [r2]
	tst	r2, #16
	bne	.L390
	ldr	r2, [r4, #28]
	cmp	r2, #1
	bls	.L426
.L390:
	tst	r3, #2
	and	r3, r3, #1
	beq	.L391
	ldr	r2, .L429+16
	ldrh	r2, [r2]
	ands	r0, r2, #2
	bne	.L391
	ldr	ip, [r4, #28]
	cmp	ip, #1
	bls	.L427
.L391:
	cmp	r3, #0
	beq	.L394
	ldr	r3, .L429+16
	ldrh	r3, [r3]
	tst	r3, #1
	bne	.L394
.L395:
	ldr	r3, [r4, #28]
	cmp	r3, #1
	bls	.L428
.L394:
	cmp	r1, #0
	ble	.L364
.L392:
	sub	r1, r1, #1
	str	r1, [r4, #60]
	pop	{r4, r5, r6, lr}
	bx	lr
.L366:
	bl	playerIdle
	b	.L365
.L368:
	bl	playerBlock
	b	.L365
.L369:
	bl	playerDodgeLeft
	b	.L365
.L370:
	bl	playerDodgeRight
	b	.L365
.L371:
	bl	playerPunchLeft
	b	.L365
.L372:
	bl	playerPunchRight
	b	.L365
.L373:
	bl	playerHitLeft
	b	.L365
.L374:
	bl	playerHitRight
	b	.L365
.L424:
	ldr	ip, .L429+20
	ldr	ip, [ip]
	cmp	ip, #0
	bne	.L379
	ldr	ip, .L429+24
	ldrh	ip, [ip, #48]
	tst	ip, #64
	and	ip, r3, #64
	bne	.L380
	cmp	ip, #0
	str	r2, [r4, #28]
	beq	.L381
.L387:
	ldr	r3, .L429+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L422
	cmp	r1, #0
	movle	r3, #0
	strle	r3, [r4, #28]
.L422:
	ldrh	r3, [r6]
	b	.L379
.L425:
	cmp	r1, #0
	bgt	.L389
	bl	goToPlayerDodgeLeft
	ldrh	r3, [r6]
	ldr	r1, [r4, #60]
	b	.L389
.L426:
	cmp	r1, #0
	bgt	.L390
	bl	goToPlayerDodgeRight
	ldrh	r3, [r6]
	ldr	r1, [r4, #60]
	b	.L390
.L427:
	cmp	r1, #0
	bgt	.L392
	mov	ip, #4
	cmp	r3, #0
	str	r0, [r5, #72]
	str	r0, [r4, #76]
	str	r0, [r4, #24]
	str	r0, [r4, #56]
	str	ip, [r4, #28]
	beq	.L364
	tst	r2, #1
	beq	.L395
	b	.L364
.L428:
	cmp	r1, #0
	bgt	.L392
	mov	r3, #0
	mov	r2, #5
	str	r3, [r5, #72]
	str	r3, [r4, #76]
	str	r3, [r4, #56]
	str	r3, [r4, #24]
	str	r2, [r4, #28]
	b	.L364
.L380:
	cmp	ip, #0
	bne	.L386
.L381:
	ldr	r2, .L429+16
	ldrh	r2, [r2]
	tst	r2, #64
	beq	.L385
	cmp	r1, #0
	movle	r2, #0
	strle	r2, [r4, #28]
	ble	.L379
.L385:
	ldr	r0, [r4, #28]
.L386:
	cmp	r0, #1
	bne	.L379
	b	.L387
.L430:
	.align	2
.L429:
	.word	player
	.word	champ
	.word	gameplayState
	.word	gameOldButtons
	.word	gameButtons
	.word	.LANCHOR1
	.word	67109120
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	goToPlayerKO
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPlayerKO, %function
goToPlayerKO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	mov	r2, #8
	ldr	r3, .L432
	ldr	r1, .L432+4
	str	r0, [r3, #24]
	str	r1, [r3]
	str	r2, [r3, #28]
	bx	lr
.L433:
	.align	2
.L432:
	.word	player
	.word	422
	.size	goToPlayerKO, .-goToPlayerKO
	.align	2
	.global	champAI
	.syntax unified
	.arm
	.fpu softvfp
	.type	champAI, %function
champAI:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L453
	ldr	r3, [r3, #28]
	cmp	r3, #8
	bxeq	lr
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L453+4
	ldr	r3, [r4, #48]
	cmp	r3, #48
	str	r2, [r4, #64]
	bgt	.L451
	cmp	r3, #26
	ldr	r5, .L453+8
	ble	.L438
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #3
	and	r0, r0, #3
	rsbpl	r0, r3, #0
	cmp	r0, #1
	movgt	r3, #1
	strgt	r3, [r4, #72]
	mov	lr, pc
	bx	r5
	tst	r0, #1
	bne	.L440
.L437:
	mov	r2, #0
	mov	r3, #5
	str	r2, [r4, #24]
	str	r3, [r4, #28]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L451:
	ldr	r3, .L453+8
	mov	lr, pc
	bx	r3
	tst	r0, #1
	beq	.L437
.L440:
	mov	r2, #0
	mov	r3, #4
	str	r2, [r4, #24]
	str	r3, [r4, #28]
.L452:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L438:
	mov	lr, pc
	bx	r5
	ldr	r3, .L453+12
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #1
	str	r3, [r4, #72]
	mov	lr, pc
	bx	r5
	tst	r0, #1
	beq	.L437
	mov	r2, #0
	mov	r3, #4
	str	r2, [r4, #24]
	str	r3, [r4, #28]
	b	.L452
.L454:
	.align	2
.L453:
	.word	player
	.word	champ
	.word	rand
	.word	1717986919
	.size	champAI, .-champAI
	.align	2
	.global	champIdle
	.syntax unified
	.arm
	.fpu softvfp
	.type	champIdle, %function
champIdle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L477
	ldr	r3, [r4, #36]
	cmp	r3, #9
	str	r2, [r4]
	str	r2, [r4, #4]
	ble	.L475
	cmp	r3, #19
	ble	.L464
	cmp	r3, #29
	ble	.L463
	cmp	r3, #39
	ble	.L462
	cmp	r3, #49
	ble	.L476
	cmp	r3, #59
	ble	.L462
	cmp	r3, #69
	ble	.L463
	cmp	r3, #80
	bgt	.L457
.L464:
	mov	r3, #3088
	ldr	r2, .L477+4
	ldr	r1, .L477+8
	mov	r0, #3
	ldr	r5, .L477+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L477+16
	ldr	r1, .L477+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
.L457:
	ldr	r3, .L477+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L477+28
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	cmp	r0, r3, lsl #2
	beq	.L465
	ldr	r3, [r4, #68]
	cmp	r3, #200
	ble	.L466
.L465:
	ldr	r3, .L477+32
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L467
.L474:
	ldr	r3, [r4, #68]
.L466:
	ldr	r2, [r4, #36]
	cmp	r2, #79
	movgt	r2, #2
	addle	r2, r2, #1
	add	r3, r3, #1
	str	r3, [r4, #68]
	str	r2, [r4, #36]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L475:
	mov	r3, #3120
	ldr	r2, .L477+4
	ldr	r1, .L477+36
	mov	r0, #3
	ldr	r5, .L477+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L477+16
	ldr	r1, .L477+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L457
.L476:
	mov	r3, #2864
	ldr	r2, .L477+4
	ldr	r1, .L477+44
	mov	r0, #3
	ldr	r5, .L477+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L477+16
	ldr	r1, .L477+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L457
.L463:
	mov	r3, #3008
	ldr	r2, .L477+4
	ldr	r1, .L477+52
	mov	r0, #3
	ldr	r5, .L477+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L477+16
	ldr	r1, .L477+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L457
.L467:
	mov	r3, #0
	str	r3, [r4, #68]
	bl	champAI
	b	.L474
.L462:
	mov	r3, #2800
	ldr	r2, .L477+4
	ldr	r1, .L477+60
	mov	r0, #3
	ldr	r5, .L477+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L477+16
	ldr	r1, .L477+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L457
.L478:
	.align	2
.L477:
	.word	champ
	.word	100679680
	.word	ChampIdle2Tiles
	.word	DMANow
	.word	100694016
	.word	ChampIdle2Map
	.word	rand
	.word	1374389535
	.word	gameplayState
	.word	ChampIdle1Tiles
	.word	ChampIdle1Map
	.word	ChampIdle4Tiles
	.word	ChampIdle4Map
	.word	ChampIdle0Tiles
	.word	ChampIdle0Map
	.word	ChampIdle3Tiles
	.word	ChampIdle3Map
	.size	champIdle, .-champIdle
	.align	2
	.global	goToChampIdle
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChampIdle, %function
goToChampIdle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L480
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #20]
	str	r2, [r3, #68]
	bx	lr
.L481:
	.align	2
.L480:
	.word	champ
	.size	goToChampIdle, .-goToChampIdle
	.align	2
	.global	champBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	champBlock, %function
champBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, #0
	mov	r2, #15
	ldr	r4, .L488
	ldr	r3, [r4, #24]
	cmp	r3, r5
	stm	r4, {r2, r5}
	bgt	.L486
.L483:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L486:
	mov	r3, #2800
	ldr	r2, .L488+4
	ldr	r1, .L488+8
	mov	r0, #3
	ldr	r6, .L488+12
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L488+16
	ldr	r1, .L488+20
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r4, #24]
	cmp	r3, #10
	ble	.L483
	ldr	r3, .L488+24
	mov	lr, pc
	bx	r3
	ldr	r1, .L488+28
	smull	r2, r3, r0, r1
	sub	r3, r3, r0, asr #31
	add	r3, r3, r3, lsl #1
	sub	r0, r0, r3
	cmp	r0, r5
	bgt	.L487
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r5, [r4, #28]
	str	r5, [r4, #36]
	str	r5, [r4, #20]
	str	r5, [r4, #68]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L487:
	bl	champAI
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L489:
	.align	2
.L488:
	.word	champ
	.word	100679680
	.word	ChampBlock0Tiles
	.word	DMANow
	.word	100694016
	.word	ChampBlock0Map
	.word	rand
	.word	1431655766
	.size	champBlock, .-champBlock
	.align	2
	.global	goToChampBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChampBlock, %function
goToChampBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	mov	r2, #1
	ldr	r3, .L491
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	bx	lr
.L492:
	.align	2
.L491:
	.word	champ
	.size	goToChampBlock, .-goToChampBlock
	.align	2
	.global	champDodgeLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	champDodgeLeft, %function
champDodgeLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	champDodgeLeft, .-champDodgeLeft
	.align	2
	.global	champDodgeRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	champDodgeRight, %function
champDodgeRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	champDodgeRight, .-champDodgeRight
	.align	2
	.global	champPunchLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	champPunchLeft, %function
champPunchLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #10
	mvn	r3, #39
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L522
	ldr	r2, [r4, #24]
	cmp	r2, #1
	stm	r4, {r1, r3}
	bne	.L496
	ldr	r3, [r4, #72]
	cmp	r3, #0
	ldr	r2, .L522+4
	mov	r3, #0
	ldrgt	r1, .L522+8
	ldrgt	r0, .L522+12
	ldrle	r1, .L522+16
	ldrle	r0, .L522+20
	ldr	r5, .L522+24
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
.L496:
	cmp	r2, #4
	ble	.L517
	cmp	r2, #29
	ble	.L518
	cmp	r2, #34
	ble	.L519
	cmp	r2, #64
	ble	.L520
	cmp	r2, #75
	bgt	.L499
	mov	lr, #0
	mov	ip, #20
	mov	r3, #2800
	ldr	r2, .L522+28
	ldr	r1, .L522+32
	mov	r0, #3
	ldr	r5, .L522+36
	str	lr, [r4, #4]
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	ldr	r2, .L522+40
	mov	r3, #1024
	ldr	r1, .L522+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	b	.L499
.L518:
	mov	r3, #2832
	ldr	r2, .L522+28
	ldr	r1, .L522+48
	mov	r0, #3
	ldr	r5, .L522+36
	mov	lr, pc
	bx	r5
	ldr	r2, .L522+40
	mov	r3, #1024
	ldr	r1, .L522+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
.L499:
	cmp	r2, #10
	beq	.L521
	cmp	r2, #12
	bne	.L507
	ldr	r3, [r4, #72]
	cmp	r3, #0
	ble	.L505
	mov	r2, #5
	str	r2, [r4, #28]
	mov	r2, #0
	sub	r3, r3, #1
	str	r3, [r4, #72]
.L506:
	ldr	r3, .L522+56
	ldr	r3, [r3, #28]
	sub	r3, r3, #2
	cmp	r3, #1
	movls	r3, #0
	strls	r3, [r4, #72]
.L505:
	add	r2, r2, #1
	str	r2, [r4, #24]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L521:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	bne	.L505
	mov	r5, #0
	ldr	r2, .L522+4
	mov	r3, r5
	ldr	r1, .L522+8
	ldr	r0, .L522+12
	ldr	r6, .L522+24
	str	r5, [r4, #64]
	mov	lr, pc
	bx	r6
	mov	r3, #5
	mov	r2, r5
	str	r3, [r4, #28]
	b	.L506
.L517:
	mov	r3, #3120
	ldr	r2, .L522+28
	ldr	r1, .L522+60
	mov	r0, #3
	ldr	r5, .L522+36
	mov	lr, pc
	bx	r5
	ldr	r2, .L522+40
	mov	r3, #1024
	ldr	r1, .L522+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	b	.L499
.L507:
	cmp	r2, #20
	bne	.L508
	ldr	r3, .L522+68
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L505
	bl	goToPlayerDodgeLeft
	ldr	r2, [r4, #24]
.L508:
	cmp	r2, #32
	bne	.L503
	ldr	r5, .L522+56
	ldr	r3, [r5, #28]
	sub	r1, r3, #1
	cmp	r1, #1
	bls	.L509
	ldr	r6, .L522+68
	ldr	r7, [r6]
	cmp	r7, #0
	bne	.L505
	mov	r3, r7
	ldr	r2, .L522+4
	ldr	r1, .L522+72
	ldr	r0, .L522+76
	ldr	r8, .L522+24
	mov	lr, pc
	bx	r8
	mov	r0, #6
	ldr	r1, [r6, #8]
	ldr	r3, [r5, #44]
	ldr	r2, [r4, #24]
	add	r1, r1, #13
	sub	r3, r3, #17
	cmp	r2, r0
	str	r7, [r5, #24]
	str	r1, [r6, #8]
	str	r3, [r5, #44]
	str	r0, [r5, #28]
	ble	.L505
.L510:
	cmp	r2, #74
	movgt	r3, #0
	strgt	r3, [r4, #28]
	strgt	r3, [r4, #36]
	strgt	r3, [r4, #20]
	strgt	r3, [r4, #68]
	b	.L505
.L519:
	mov	r3, #3616
	ldr	r2, .L522+28
	ldr	r1, .L522+80
	mov	r0, #3
	ldr	r5, .L522+36
	mov	lr, pc
	bx	r5
	ldr	r2, .L522+40
	mov	r3, #1024
	ldr	r1, .L522+84
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	b	.L499
.L509:
	cmp	r3, #1
	bne	.L505
	ldr	r3, .L522+68
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L505
	ldr	ip, [r5, #44]
	ldr	r2, .L522+4
	sub	ip, ip, #5
	ldr	r1, .L522+88
	ldr	r0, .L522+92
	ldr	r6, .L522+24
	str	ip, [r5, #44]
	mov	lr, pc
	bx	r6
	mov	r3, #43
	ldr	r2, [r4, #24]
	str	r3, [r5, #60]
.L503:
	cmp	r2, #6
	ble	.L506
	b	.L510
.L520:
	mvn	ip, #9
	mov	r3, #2464
	ldr	r2, .L522+28
	ldr	r1, .L522+96
	mov	r0, #3
	ldr	r5, .L522+36
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r5
	ldr	r2, .L522+40
	mov	r3, #1024
	ldr	r1, .L522+100
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	cmp	r2, #64
	bne	.L499
	mov	r1, #20
	mov	r3, #0
	stm	r4, {r1, r3}
	b	.L505
.L523:
	.align	2
.L522:
	.word	champ
	.word	11025
	.word	5170
	.word	ChampFeintSound
	.word	2958
	.word	ChampWindSound
	.word	playSoundA
	.word	100679680
	.word	ChampLeftPunch4Tiles
	.word	DMANow
	.word	100694016
	.word	ChampLeftPunch4Map
	.word	ChampLeftPunch1Tiles
	.word	ChampLeftPunch1Map
	.word	player
	.word	ChampLeftPunch0Tiles
	.word	ChampLeftPunch0Map
	.word	.LANCHOR1
	.word	6971
	.word	ChampPunchSound0
	.word	ChampLeftPunch2Tiles
	.word	ChampLeftPunch2Map
	.word	5156
	.word	BlockSound
	.word	ChampLeftPunch3Tiles
	.word	ChampLeftPunch3Map
	.size	champPunchLeft, .-champPunchLeft
	.align	2
	.global	goToChampPunchLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChampPunchLeft, %function
goToChampPunchLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	mov	r2, #4
	ldr	r3, .L525
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	bx	lr
.L526:
	.align	2
.L525:
	.word	champ
	.size	goToChampPunchLeft, .-goToChampPunchLeft
	.align	2
	.global	champPunchRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	champPunchRight, %function
champPunchRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #20
	mov	r3, #34
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L561
	ldr	r2, [r4, #24]
	cmp	r2, #1
	stm	r4, {r1, r3}
	bne	.L528
	ldr	r3, [r4, #72]
	cmp	r3, #0
	ldr	r2, .L561+4
	mov	r3, #0
	ldrgt	r1, .L561+8
	ldrgt	r0, .L561+12
	ldrle	r1, .L561+16
	ldrle	r0, .L561+20
	ldr	r5, .L561+24
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
.L528:
	cmp	r2, #4
	ble	.L554
	cmp	r2, #9
	ble	.L555
	cmp	r2, #29
	ble	.L556
	cmp	r2, #34
	ble	.L557
	cmp	r2, #64
	ble	.L558
	cmp	r2, #75
	bgt	.L531
	mov	lr, #0
	mov	ip, #20
	mov	r3, #2960
	ldr	r2, .L561+28
	ldr	r1, .L561+32
	mov	r0, #3
	ldr	r5, .L561+36
	str	lr, [r4, #4]
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	ldr	r2, .L561+40
	mov	r3, #1024
	ldr	r1, .L561+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	b	.L531
.L555:
	mov	r3, #2752
	ldr	r2, .L561+28
	ldr	r1, .L561+48
	mov	r0, #3
	ldr	r5, .L561+36
	mov	lr, pc
	bx	r5
	ldr	r2, .L561+40
	mov	r3, #1024
	ldr	r1, .L561+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
.L531:
	cmp	r2, #10
	beq	.L559
	cmp	r2, #12
	bne	.L540
	ldr	r3, [r4, #72]
	cmp	r3, #0
	ble	.L537
	mov	r2, #4
	str	r2, [r4, #28]
	mov	r2, #0
	sub	r3, r3, #1
	str	r3, [r4, #72]
.L539:
	ldr	r3, .L561+56
	ldr	r3, [r3, #28]
	sub	r3, r3, #2
	cmp	r3, #1
	movls	r3, #0
	strls	r3, [r4, #72]
.L537:
	add	r2, r2, #1
	str	r2, [r4, #24]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L559:
	ldr	r3, [r4, #64]
	cmp	r3, #1
	bne	.L537
	mov	r5, #0
	ldr	r2, .L561+4
	mov	r3, r5
	ldr	r1, .L561+8
	ldr	r0, .L561+12
	ldr	r6, .L561+24
	str	r5, [r4, #64]
	mov	lr, pc
	bx	r6
	mov	r3, #4
	mov	r2, r5
	str	r3, [r4, #28]
	b	.L539
.L554:
	mov	ip, #30
	mov	r3, #2112
	ldr	r2, .L561+28
	ldr	r1, .L561+60
	mov	r0, #3
	ldr	r5, .L561+36
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	ldr	r2, .L561+40
	mov	r3, #1024
	ldr	r1, .L561+64
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	b	.L531
.L540:
	cmp	r2, #20
	bne	.L541
	ldr	r5, .L561+68
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L537
	bl	goToPlayerDodgeRight
	ldr	r2, [r4, #24]
.L541:
	cmp	r2, #32
	bne	.L534
	ldr	r6, .L561+56
	ldr	r3, [r6, #28]
	bic	r1, r3, #2
	cmp	r1, #1
	beq	.L542
	ldr	r5, .L561+68
	ldr	r7, [r5]
	cmp	r7, #0
	beq	.L560
	cmp	r3, #1
	beq	.L545
	add	r2, r2, #1
	str	r2, [r4, #24]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L558:
	mvn	ip, #49
	mov	r6, #0
	mov	r3, #2736
	ldr	r2, .L561+28
	ldr	r1, .L561+72
	mov	r0, #3
	ldr	r5, .L561+36
	stm	r4, {r6, ip}
	mov	lr, pc
	bx	r5
	ldr	r2, .L561+40
	mov	r3, #1024
	ldr	r1, .L561+76
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	cmp	r2, #64
	bne	.L531
	mov	r3, #20
	stm	r4, {r3, r6}
	b	.L537
.L542:
	cmp	r3, #1
	bne	.L537
	ldr	r5, .L561+68
.L545:
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L537
	ldr	ip, [r6, #44]
	ldr	r2, .L561+4
	sub	ip, ip, #5
	ldr	r1, .L561+80
	ldr	r0, .L561+84
	ldr	r5, .L561+24
	str	ip, [r6, #44]
	mov	lr, pc
	bx	r5
	mov	r3, #43
	ldr	r2, [r4, #24]
	str	r3, [r6, #60]
.L534:
	cmp	r2, #6
	ble	.L539
.L544:
	cmp	r2, #74
	movgt	r3, #0
	strgt	r3, [r4, #28]
	strgt	r3, [r4, #36]
	strgt	r3, [r4, #20]
	strgt	r3, [r4, #68]
	b	.L537
.L556:
	mov	r3, #2544
	ldr	r2, .L561+28
	ldr	r1, .L561+88
	mov	r0, #3
	ldr	r5, .L561+36
	mov	lr, pc
	bx	r5
	ldr	r2, .L561+40
	mov	r3, #1024
	ldr	r1, .L561+92
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	cmp	r2, #29
	bne	.L531
	mov	r1, #10
	mvn	r3, #49
	stm	r4, {r1, r3}
	b	.L537
.L557:
	mvn	lr, #49
	mov	ip, #10
	ldr	r3, .L561+96
	ldr	r2, .L561+28
	ldr	r1, .L561+100
	mov	r0, #3
	ldr	r5, .L561+36
	str	lr, [r4, #4]
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	ldr	r2, .L561+40
	mov	r3, #1024
	ldr	r1, .L561+104
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #24]
	b	.L531
.L560:
	mov	r3, r7
	ldr	r2, .L561+4
	ldr	r1, .L561+108
	ldr	r0, .L561+112
	ldr	r8, .L561+24
	mov	lr, pc
	bx	r8
	mov	r0, #7
	ldr	r1, [r5, #8]
	ldr	r3, [r6, #44]
	ldr	r2, [r4, #24]
	sub	r1, r1, #13
	sub	r3, r3, #17
	cmp	r2, #6
	str	r7, [r6, #24]
	str	r1, [r5, #8]
	str	r3, [r6, #44]
	str	r0, [r6, #28]
	ble	.L537
	b	.L544
.L562:
	.align	2
.L561:
	.word	champ
	.word	11025
	.word	5170
	.word	ChampFeintSound
	.word	2958
	.word	ChampWindSound
	.word	playSoundA
	.word	100679680
	.word	ChampRightPunch5Tiles
	.word	DMANow
	.word	100694016
	.word	ChampRightPunch5Map
	.word	ChampRightPunch1Tiles
	.word	ChampRightPunch1Map
	.word	player
	.word	ChampRightPunch0Tiles
	.word	ChampRightPunch0Map
	.word	.LANCHOR1
	.word	ChampRightPunch4Tiles
	.word	ChampRightPunch4Map
	.word	5156
	.word	BlockSound
	.word	ChampRightPunch2Tiles
	.word	ChampRightPunch2Map
	.word	4176
	.word	ChampRightPunch3Tiles
	.word	ChampRightPunch3Map
	.word	6971
	.word	ChampPunchSound0
	.size	champPunchRight, .-champPunchRight
	.align	2
	.global	goToChampPunchRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChampPunchRight, %function
goToChampPunchRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	mov	r2, #5
	ldr	r3, .L564
	str	r1, [r3, #24]
	str	r2, [r3, #28]
	bx	lr
.L565:
	.align	2
.L564:
	.word	champ
	.size	goToChampPunchRight, .-goToChampPunchRight
	.align	2
	.global	champHitLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	champHitLeft, %function
champHitLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L578
	ldr	r3, [r4, #24]
	cmp	r3, r2
	str	r2, [r4]
	str	r2, [r4, #4]
	bne	.L567
	mov	r2, #11
	mov	r3, #1
	str	r2, [r4]
.L568:
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L567:
	ble	.L569
	cmp	r3, #4
	ble	.L575
	cmp	r3, #9
	ble	.L576
	cmp	r3, #20
	ble	.L577
.L569:
	cmp	r3, #19
	addle	r3, r3, #1
	ble	.L568
	ldr	r2, [r4, #44]
	cmp	r2, #8
	movle	r1, #8
	mov	r2, #0
	movle	r3, #1
	addgt	r3, r3, #1
	strgt	r2, [r4, #28]
	strgt	r2, [r4, #36]
	strgt	r2, [r4, #20]
	strgt	r2, [r4, #68]
	strle	r2, [r4]
	strle	r2, [r4, #4]
	strle	r1, [r4, #28]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L575:
	mov	ip, #11
	mov	r3, #2624
	ldr	r2, .L578+4
	ldr	r1, .L578+8
	mov	r0, #3
	ldr	r5, .L578+12
	str	ip, [r4]
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L578+16
	ldr	r1, .L578+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L569
.L577:
	mov	r3, #2880
	ldr	r2, .L578+4
	ldr	r1, .L578+24
	mov	r0, #3
	ldr	r5, .L578+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L578+16
	ldr	r1, .L578+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L569
.L576:
	mov	r3, #3360
	ldr	r2, .L578+4
	ldr	r1, .L578+32
	mov	r0, #3
	ldr	r5, .L578+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L578+16
	ldr	r1, .L578+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L569
.L579:
	.align	2
.L578:
	.word	champ
	.word	100679680
	.word	ChampHitLeft0Tiles
	.word	DMANow
	.word	100694016
	.word	ChampHitLeft0Map
	.word	ChampHitLeft2Tiles
	.word	ChampHitLeft2Map
	.word	ChampHitLeft1Tiles
	.word	ChampHitLeft1Map
	.size	champHitLeft, .-champHitLeft
	.align	2
	.global	goToChampHitLeft
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChampHitLeft, %function
goToChampHitLeft:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	mov	r0, #6
	ldr	r1, .L581
	ldr	r3, [r1, #8]
	ldr	r2, .L581+4
	add	r3, r3, #20
	str	r3, [r1, #8]
	str	ip, [r2, #24]
	str	r0, [r2, #28]
	bx	lr
.L582:
	.align	2
.L581:
	.word	.LANCHOR1
	.word	champ
	.size	goToChampHitLeft, .-goToChampHitLeft
	.align	2
	.global	champHitRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	champHitRight, %function
champHitRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	mvn	r2, #9
	push	{r4, r5, r6, lr}
	ldr	r4, .L593
	ldr	r3, [r4, #24]
	sub	r0, r3, #5
	cmp	r0, #8
	stm	r4, {r1, r2}
	bhi	.L592
.L584:
	mov	r3, #2848
	ldr	r2, .L593+4
	ldr	r1, .L593+8
	mov	r0, #3
	ldr	r5, .L593+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L593+16
	ldr	r1, .L593+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
.L586:
	cmp	r3, #19
	addle	r3, r3, #1
	ble	.L589
	ldr	r2, [r4, #44]
	cmp	r2, #8
	movle	r1, #8
	mov	r2, #0
	movle	r3, #1
	strgt	r2, [r4, #28]
	strgt	r2, [r4, #36]
	strgt	r2, [r4, #20]
	strgt	r2, [r4, #68]
	strle	r2, [r4]
	strle	r2, [r4, #4]
	strle	r1, [r4, #28]
	addgt	r3, r3, #1
.L589:
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L592:
	mov	r2, #10
	cmp	r3, #4
	str	r2, [r4]
	bgt	.L585
	mov	r3, #2880
	ldr	r2, .L593+4
	ldr	r1, .L593+24
	mov	r0, #3
	ldr	r5, .L593+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L593+16
	ldr	r1, .L593+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L586
.L585:
	cmp	r3, #14
	ble	.L584
	cmp	r3, #20
	bgt	.L586
	mov	r3, #3040
	ldr	r2, .L593+4
	ldr	r1, .L593+32
	mov	r0, #3
	ldr	r5, .L593+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L593+16
	ldr	r1, .L593+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L586
.L594:
	.align	2
.L593:
	.word	champ
	.word	100679680
	.word	ChampHitRight1Tiles
	.word	DMANow
	.word	100694016
	.word	ChampHitRight1Map
	.word	ChampHitRight0Tiles
	.word	ChampHitRight0Map
	.word	ChampHitRight2Tiles
	.word	ChampHitRight2Map
	.size	champHitRight, .-champHitRight
	.align	2
	.global	goToChampHitRight
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChampHitRight, %function
goToChampHitRight:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	mov	r0, #7
	ldr	r1, .L596
	ldr	r3, [r1, #8]
	ldr	r2, .L596+4
	sub	r3, r3, #20
	str	r3, [r1, #8]
	str	ip, [r2, #24]
	str	r0, [r2, #28]
	bx	lr
.L597:
	.align	2
.L596:
	.word	.LANCHOR1
	.word	champ
	.size	goToChampHitRight, .-goToChampHitRight
	.align	2
	.global	champKO
	.syntax unified
	.arm
	.fpu softvfp
	.type	champKO, %function
champKO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L611
	ldr	r3, [r4, #24]
	cmp	r3, #4
	ble	.L606
	cmp	r3, #9
	ble	.L607
	cmp	r3, #14
	ble	.L608
	cmp	r3, #19
	ble	.L609
	cmp	r3, #24
	ble	.L610
	cmp	r3, #29
	bgt	.L600
	mov	r3, #1056
	ldr	r2, .L611+4
	ldr	r1, .L611+8
	mov	r0, #3
	ldr	r5, .L611+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L611+16
	ldr	r1, .L611+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	b	.L600
.L606:
	mov	r3, #2320
	ldr	r2, .L611+4
	ldr	r1, .L611+24
	mov	r0, #3
	ldr	r5, .L611+12
	mov	lr, pc
	bx	r5
	ldr	r2, .L611+16
	mov	r3, #1024
	ldr	r1, .L611+28
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #4
	moveq	r2, #20
	streq	r2, [r4]
.L600:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L607:
	ldr	r5, .L611+12
	mov	r3, #2432
	ldr	r2, .L611+4
	ldr	r1, .L611+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L611+16
	ldr	r1, .L611+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L610:
	mov	r3, #2320
	ldr	r2, .L611+4
	ldr	r1, .L611+40
	mov	r0, #3
	ldr	r5, .L611+12
	mov	lr, pc
	bx	r5
	ldr	r2, .L611+16
	mov	r3, #1024
	ldr	r1, .L611+44
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #24
	moveq	r2, #50
	streq	r2, [r4]
	b	.L600
.L608:
	ldr	r5, .L611+12
	mov	r3, #2816
	ldr	r2, .L611+4
	ldr	r1, .L611+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L611+16
	ldr	r1, .L611+52
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L609:
	ldr	r5, .L611+12
	mov	r3, #2064
	ldr	r2, .L611+4
	ldr	r1, .L611+56
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r2, .L611+16
	mov	r3, #1024
	ldr	r1, .L611+60
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #24]
	cmp	r3, #19
	moveq	r2, #35
	add	r3, r3, #1
	streq	r2, [r4]
	str	r3, [r4, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L612:
	.align	2
.L611:
	.word	champ
	.word	100679680
	.word	ChampKO5Tiles
	.word	DMANow
	.word	100694016
	.word	ChampKO5Map
	.word	ChampKO0Tiles
	.word	ChampKO0Map
	.word	ChampKO1Tiles
	.word	ChampKO1Map
	.word	ChampKO4Tiles
	.word	ChampKO4Map
	.word	ChampKO2Tiles
	.word	ChampKO2Map
	.word	ChampKO3Tiles
	.word	ChampKO3Map
	.size	champKO, .-champKO
	.align	2
	.global	updateChamp
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateChamp, %function
updateChamp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L623
	ldr	r3, [r3, #28]
	cmp	r3, #8
	ldrls	pc, [pc, r3, asl #2]
	b	.L613
.L616:
	.word	.L615
	.word	.L617
	.word	.L613
	.word	.L613
	.word	.L618
	.word	.L619
	.word	.L620
	.word	.L621
	.word	.L622
.L620:
	b	champHitLeft
.L615:
	b	champIdle
.L617:
	b	champBlock
.L622:
	b	champKO
.L621:
	b	champHitRight
.L618:
	b	champPunchLeft
.L619:
	b	champPunchRight
.L613:
	bx	lr
.L624:
	.align	2
.L623:
	.word	champ
	.size	updateChamp, .-updateChamp
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L631
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L629
	cmp	r3, #1
	beq	.L630
.L627:
	bl	updatePlayer
	bl	updateChamp
	pop	{r4, lr}
	b	updateSprites
.L629:
	bl	updateGameStart
	ldr	r3, [r4]
	cmp	r3, #1
	bne	.L627
.L630:
	mov	r2, #131
	ldr	r3, .L631+4
	strh	r2, [r3, #10]	@ movhi
	bl	updateTime.part.0
	bl	updatePlayer
	bl	updateChamp
	pop	{r4, lr}
	b	updateSprites
.L632:
	.align	2
.L631:
	.word	gameplayState
	.word	67109120
	.size	updateGame, .-updateGame
	.align	2
	.global	goToChampKO
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToChampKO, %function
goToChampKO:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #8
	ldr	r3, .L634
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #24]
	str	r1, [r3, #28]
	bx	lr
.L635:
	.align	2
.L634:
	.word	champ
	.size	goToChampKO, .-goToChampKO
	.global	cheatRedo
	.global	timeUpTime
	.global	second
	.comm	loseTime,4,4
	.comm	gameTime,4,4
	.comm	gameplayState,4,4
	.global	smoothOffset
	.comm	shadowOAM,1024,4
	.global	cheat
	.comm	lives,4,4
	.comm	changeShoot,4,4
	.comm	foundShoot,4,4
	.comm	enemiesLeft,4,4
	.comm	enemyOffset,4,4
	.comm	enemyDir,4,4
	.comm	enemySpeed,4,4
	.comm	enemyDelay,4,4
	.global	vOff0
	.global	hOff0
	.comm	barCounter,4,4
	.comm	gameFrames,4,4
	.comm	champ,80,4
	.comm	player,80,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	second, %object
	.size	second, 4
second:
	.word	-1
	.type	timeUpTime, %object
	.size	timeUpTime, 4
timeUpTime:
	.word	61
	.type	hOff0, %object
	.size	hOff0, 4
hOff0:
	.word	80
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	cheat, %object
	.size	cheat, 4
cheat:
	.space	4
	.type	cheatRedo, %object
	.size	cheatRedo, 4
cheatRedo:
	.space	4
	.type	smoothOffset, %object
	.size	smoothOffset, 4
smoothOffset:
	.space	4
	.type	vOff0, %object
	.size	vOff0, 4
vOff0:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
