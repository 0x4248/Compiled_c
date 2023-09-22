	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 14, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	wzr, [sp, #20]
	adrp	x8, l___const.main.x@PAGE
	add	x8, x8, l___const.main.x@PAGEOFF
	ldr	x9, [x8]
	add	x0, sp, #24
	str	x9, [sp, #24]
	ldrh	w8, [x8, #8]
	strh	w8, [sp, #32]
	adrp	x8, l___const.main.y@PAGE
	add	x8, x8, l___const.main.y@PAGEOFF
	ldr	w9, [x8]
	add	x1, sp, #12
	str	w9, [sp, #12]
	ldrb	w8, [x8, #4]
	strb	w8, [sp, #16]
	mov	x2, #10
	bl	___strcat_chk
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	bl	___stack_chk_fail
LBB0_2:
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
l___const.main.x:                       ; @__const.main.x
	.asciz	"Hello\000\000\000\000"

l___const.main.y:                       ; @__const.main.y
	.ascii	"World"

.subsections_via_symbols
