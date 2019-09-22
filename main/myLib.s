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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel3, %function
setPixel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel3, .-setPixel3
	.align	2
	.global	setPixel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	ip, [r3]
	add	r0, r0, r0, lsr #31
	bic	r0, r0, #1
	ldrh	r3, [ip, r0]
	tst	r1, #1
	andne	r3, r3, #255
	andeq	r3, r3, #65280
	orrne	r2, r3, r2, lsl #8
	orreq	r2, r3, r2
	strh	r2, [ip, r0]	@ movhi
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, lr}
	mov	lr, #0
	ldr	r4, .L18
	add	r2, r0, r2
	rsb	ip, r2, r2, lsl #4
	rsb	r0, r0, r0, lsl #4
	ldr	r2, [r4]
	add	ip, r1, ip, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r0, [r4, #4]
	orr	r3, r3, #-2130706432
	add	ip, r2, ip, lsl #1
	add	r1, r2, r1, lsl #1
.L12:
	add	r2, sp, #8
	str	lr, [r0, #44]
	str	r2, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #480
	cmp	r1, ip
	str	r3, [r0, #44]
	bne	.L12
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	ldrb	lr, [sp, #56]	@ zero_extendqisi2
	cmp	r2, #0
	orr	ip, ip, lr, lsl #8
	strh	ip, [sp, #14]	@ movhi
	ble	.L20
	add	r6, r0, r2
	add	r2, r3, r3, lsr #31
	asr	r9, r3, #1
	asr	r2, r2, #1
	ldr	lr, .L38
	add	r8, r1, r3
	sub	ip, r9, #1
	orr	r2, r2, #-2130706432
	rsb	r6, r6, r6, lsl #4
	rsb	r0, r0, r0, lsl #4
	sub	r8, r8, #1
	str	r2, [sp]
	orr	r2, ip, #-2130706432
	add	r6, r1, r6, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	r5, [lr]
	ldr	r4, [lr, #4]
	str	r2, [sp, #4]
	orr	r9, r9, #-2130706432
	and	r8, r8, #1
	and	r1, r1, #1
	and	r7, r3, #1
	add	r10, sp, #14
	sub	fp, r3, #1
	b	.L32
.L37:
	add	r2, r0, r0, lsr #31
	bic	r2, r2, #1
	cmp	r7, #0
	ldrb	ip, [r5, r2]	@ zero_extendqisi2
	ldrb	lr, [sp, #56]	@ zero_extendqisi2
	beq	.L23
	orr	ip, ip, lr, lsl #8
	cmp	r3, #1
	strh	ip, [r5, r2]	@ movhi
	ble	.L24
	mov	ip, #0
	add	r2, r0, #1
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	ip, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	str	r9, [r4, #44]
.L24:
	add	r0, r0, #240
	cmp	r6, r0
	beq	.L20
.L32:
	cmp	r1, #0
	bne	.L37
	cmp	r7, #0
	beq	.L28
	cmp	r3, #1
	ble	.L29
	add	r2, r0, r0, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	r1, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	str	r9, [r4, #44]
.L29:
	add	r2, fp, r0
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	ldrh	lr, [r5, r2]
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	cmp	r8, #0
	andne	lr, lr, #255
	andeq	lr, lr, #65280
	and	ip, ip, #255
	add	r0, r0, #240
	orrne	lr, lr, ip, lsl #8
	orreq	lr, lr, ip
	cmp	r6, r0
	strh	lr, [r5, r2]	@ movhi
	bne	.L32
.L20:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L28:
	add	r2, r0, r0, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	r7, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	ldr	r2, [sp]
	str	r2, [r4, #44]
	b	.L24
.L23:
	orr	ip, ip, lr, lsl #8
	cmp	r3, #2
	strh	ip, [r5, r2]	@ movhi
	ble	.L29
	add	r2, r0, #1
	add	r2, r2, r2, lsr #31
	bic	r2, r2, #1
	add	r2, r5, r2
	str	r7, [r4, #44]
	str	r10, [r4, #36]
	str	r2, [r4, #40]
	ldr	r2, [sp, #4]
	str	r2, [r4, #44]
	b	.L29
.L39:
	.align	2
.L38:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen3
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen3, %function
fillScreen3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #8
	ldr	r1, .L42
	add	r2, sp, #8
	strh	r0, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L42+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.word	-2130668032
	.size	fillScreen3, .-fillScreen3
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #16
	strb	r0, [sp, #7]
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldr	r1, .L46
	add	r2, sp, #16
	orr	r3, r3, r0, lsl #8
	strh	r3, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L46+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L47:
	.align	2
.L46:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r5, .L56
	add	r2, r0, r2
	rsb	lr, r2, r2, lsl #4
	rsb	r0, r0, r0, lsl #4
	ldr	r2, [r5]
	add	lr, r1, lr, lsl #4
	ldr	ip, [sp, #12]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r5, #4]
	add	lr, r2, lr, lsl #1
	add	r1, r2, r1, lsl #1
	orr	r2, r3, #-2147483648
	lsl	r3, r3, #1
.L50:
	str	r4, [r0, #44]
	str	ip, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #480
	cmp	r1, lr
	str	r2, [r0, #44]
	add	ip, ip, r3
	bne	.L50
	pop	{r4, r5, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	cmp	r2, #0
	ldr	r6, [sp, #24]
	ble	.L58
	mov	ip, #0
	mov	r8, ip
	ldr	lr, .L63
	add	r4, r0, r2
	add	r5, r3, r3, lsr #31
	rsb	r4, r4, r4, lsl #4
	rsb	r0, r0, r0, lsl #4
	asr	r5, r5, #1
	ldm	lr, {r7, lr}
	add	r4, r1, r4, lsl #4
	orr	r5, r5, #-2147483648
	add	r1, r1, r0, lsl #4
.L60:
	add	r0, ip, ip, lsr #31
	add	r2, r1, r1, lsr #31
	bic	r0, r0, #1
	bic	r2, r2, #1
	add	r1, r1, #240
	add	r0, r6, r0
	add	r2, r7, r2
	cmp	r4, r1
	str	r8, [lr, #44]
	add	ip, ip, r3
	str	r0, [lr, #36]
	str	r2, [lr, #40]
	str	r5, [lr, #44]
	bne	.L60
.L58:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage3, %function
drawFullscreenImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L66
	ldr	r1, .L66+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.word	-2147445248
	.size	drawFullscreenImage3, .-drawFullscreenImage3
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L69
	ldr	r1, .L69+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.word	-2147464448
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L72:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L72
	mov	r2, #67108864
.L73:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L73
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r3, [r3]
	tst	r3, #16
	moveq	r1, #100663296
	ldrne	r2, .L80
	ldreq	r2, .L80
	ldrne	r1, .L80+4
	str	r1, [r2]
	mov	r2, #67108864
	eor	r3, r3, #16
	strh	r3, [r2]	@ movhi
	bx	lr
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.word	100704256
	.size	flipPage, .-flipPage
	.align	2
	.global	DMANow
	.syntax unified
	.arm
	.fpu softvfp
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L84
	add	r0, r0, r0, lsl #1
	ldr	lr, [ip, #4]
	lsl	r0, r0, #2
	add	ip, lr, r0
	orr	r3, r3, #-2147483648
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	pop	{r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #4]
	ldr	ip, [sp, #12]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r0
	ble	.L90
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, lr
	bgt	.L92
.L90:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L92:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #16]
	add	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	ble	.L90
	add	r0, r1, r3
	ldr	r3, [sp, #8]
	sub	r0, r0, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	hideSprites
	.syntax unified
	.arm
	.fpu softvfp
	.type	hideSprites, %function
hideSprites:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #512
	ldr	r3, .L97
	add	r2, r3, #1024
.L94:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L94
	bx	lr
.L98:
	.align	2
.L97:
	.word	shadowOAM
	.size	hideSprites, .-hideSprites
	.align	2
	.global	setupSounds
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L100
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L101:
	.align	2
.L100:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_idiv
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r2
	mov	r5, #0
	mov	r8, r0
	ldr	r2, .L104+8
	ldr	ip, .L104+12
	ldr	r2, [r2, #4]
	ldr	r7, .L104+16
	ldr	r0, .L104+20
	str	r5, [r2, #20]
	mov	r9, r1
	str	r5, [r2, #20]
	mov	r1, r6
	str	r8, [r2, #12]
	str	ip, [r2, #16]
	str	r0, [r2, #20]
	strh	r5, [r7, #2]	@ movhi
	ldr	r2, .L104+24
	mov	r0, #16777216
	mov	r10, r3
	mov	lr, pc
	bx	r2
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	ldr	r4, .L104+28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r0, [r7]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	mov	r0, r9
	str	r8, [r4]
	ldr	r7, .L104+32
	str	r9, [r4, #4]
	str	r6, [r4, #8]
	str	r3, [r4, #12]
	str	r10, [r4, #16]
	mov	lr, pc
	bx	r7
	ldr	r8, .L104+36
	adr	r3, .L104
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L104+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L104+44
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L105:
	.align	3
.L104:
	.word	1443109011
	.word	1078844686
	.word	.LANCHOR0
	.word	67109024
	.word	67109120
	.word	-1237319680
	.word	__aeabi_idiv
	.word	soundA
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r2
	mov	r5, #0
	mov	r8, r0
	ldr	r2, .L108+8
	ldr	ip, .L108+12
	ldr	r2, [r2, #4]
	ldr	r7, .L108+16
	ldr	r0, .L108+20
	str	r5, [r2, #32]
	mov	r9, r1
	str	r5, [r2, #32]
	mov	r1, r6
	str	r8, [r2, #24]
	str	ip, [r2, #28]
	str	r0, [r2, #32]
	strh	r5, [r7, #6]	@ movhi
	ldr	r2, .L108+24
	mov	r0, #16777216
	mov	r10, r3
	mov	lr, pc
	bx	r2
	mov	r2, #128
	mov	r3, #1
	rsb	r0, r0, #0
	ldr	r4, .L108+28
	lsl	r0, r0, #16
	lsr	r0, r0, #16
	strh	r0, [r7, #4]	@ movhi
	strh	r2, [r7, #6]	@ movhi
	mov	r0, r9
	str	r8, [r4]
	ldr	r7, .L108+32
	str	r9, [r4, #4]
	str	r6, [r4, #8]
	str	r3, [r4, #12]
	str	r10, [r4, #16]
	mov	lr, pc
	bx	r7
	ldr	r8, .L108+36
	adr	r3, .L108
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r8
	mov	r8, r0
	mov	r0, r6
	mov	r9, r1
	mov	lr, pc
	bx	r7
	ldr	r6, .L108+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	mov	lr, pc
	bx	r6
	ldr	r3, .L108+44
	mov	lr, pc
	bx	r3
	str	r5, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L109:
	.align	3
.L108:
	.word	1443109011
	.word	1078844686
	.word	.LANCHOR0
	.word	67109028
	.word	67109120
	.word	-1237319680
	.word	__aeabi_idiv
	.word	soundB
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	__aeabi_d2iz
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L129
	ldrh	r1, [r3, #2]
	tst	r1, #1
	strh	r2, [r3, #8]	@ movhi
	beq	.L124
	ldr	r0, .L129+4
	ldr	r3, [r0, #12]
	cmp	r3, r2
	push	{r4, lr}
	beq	.L113
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r1, r3, #3
	cmp	r1, r2
	add	r3, r3, #1
	str	r3, [r0, #28]
	blt	.L113
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L127
	ldr	r1, .L129+8
	ldr	r2, .L129+12
	ldr	r1, [r1, #4]
	str	r3, [r0, #12]
	str	r3, [r1, #20]
	strh	r3, [r2, #2]	@ movhi
.L113:
	ldr	r0, .L129+16
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r0, #28]
	ldr	r2, [r0, #20]
	add	r1, r3, #3
	cmp	r1, r2
	add	r3, r3, #1
	str	r3, [r0, #28]
	blt	.L117
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bne	.L128
	ldr	r1, .L129+8
	ldr	r2, .L129+12
	ldr	r1, [r1, #4]
	str	r3, [r0, #12]
	str	r3, [r1, #32]
	strh	r3, [r2, #6]	@ movhi
.L117:
	mov	r2, #1
	ldr	r3, .L129
	strh	r2, [r3, #2]	@ movhi
	mov	r2, #1
	ldr	r3, .L129
	pop	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L124:
	mov	r2, #1
	ldr	r3, .L129
	strh	r2, [r3, #8]	@ movhi
	bx	lr
.L127:
	ldm	r0, {r0, r1, r2}
	bl	playSoundA
	b	.L113
.L128:
	ldm	r0, {r0, r1, r2}
	bl	playSoundB
	b	.L117
.L130:
	.align	2
.L129:
	.word	67109376
	.word	soundA
	.word	.LANCHOR0
	.word	67109120
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldrh	r1, [r0, #4]
	ldr	r3, .L133
	orr	r1, r1, #8
	ldrh	r2, [r3]
	ldr	ip, .L133+4
	strh	r1, [r0, #4]	@ movhi
	ldr	r1, .L133+8
	orr	r2, r2, lr
	strh	lr, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [ip, #4092]
	bx	lr
.L134:
	.align	2
.L133:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L136
	ldr	r0, .L136+4
	ldr	r1, .L136+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L137:
	.align	2
.L136:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L139
	ldr	ip, .L139+4
	ldr	r0, .L139+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L140:
	.align	2
.L139:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L142
	ldr	r1, .L142+4
	ldr	r2, [r2, #4]
	ldr	ip, .L142+8
	ldr	r0, .L142+12
	str	r3, [ip, #12]
	str	r3, [r0, #12]
	strh	r3, [r1, #2]	@ movhi
	str	r3, [r2, #20]
	strh	r3, [r1, #6]	@ movhi
	str	r3, [r2, #32]
	bx	lr
.L143:
	.align	2
.L142:
	.word	.LANCHOR0
	.word	67109120
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.align	2
	.global	stopSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSoundA, %function
stopSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L145
	ldr	r0, .L145+4
	ldr	r2, [r2, #4]
	ldr	r1, .L145+8
	strh	r3, [r0, #2]	@ movhi
	str	r3, [r1, #12]
	str	r3, [r2, #20]
	bx	lr
.L146:
	.align	2
.L145:
	.word	.LANCHOR0
	.word	67109120
	.word	soundA
	.size	stopSoundA, .-stopSoundA
	.align	2
	.global	stopSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSoundB, %function
stopSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L148
	ldr	r0, .L148+4
	ldr	r2, [r2, #4]
	ldr	r1, .L148+8
	strh	r3, [r0, #6]	@ movhi
	str	r3, [r1, #12]
	str	r3, [r2, #32]
	bx	lr
.L149:
	.align	2
.L148:
	.word	.LANCHOR0
	.word	67109120
	.word	soundB
	.size	stopSoundB, .-stopSoundB
	.global	timefactors
	.global	dma
	.global	videoBuffer
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	3
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.type	timefactors, %object
	.size	timefactors, 32
timefactors:
	.word	1567353825
	.word	1068401770
	.word	2439541424
	.word	1074691309
	.word	2783138808
	.word	1076790427
	.word	1614907703
	.word	1078833381
	.ident	"GCC: (devkitARM release 47) 7.1.0"
