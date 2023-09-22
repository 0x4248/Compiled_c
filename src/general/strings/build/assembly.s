	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 14, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	w0, #0
	str	wzr, [sp, #28]
	adrp	x8, l___const.main.x@PAGE
	add	x8, x8, l___const.main.x@PAGEOFF
	ldr	w9, [x8]
	str	w9, [sp, #20]
	ldrh	w8, [x8, #4]
	strh	w8, [sp, #24]
	adrp	x8, l___const.main.y@PAGE
	add	x8, x8, l___const.main.y@PAGEOFF
	ldr	w9, [x8]
	str	w9, [sp, #12]
	ldrh	w8, [x8, #4]
	strh	w8, [sp, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l___const.main.x:                       ; @__const.main.x
	.asciz	"Hello"

l___const.main.y:                       ; @__const.main.y
	.asciz	"World"

.subsections_via_symbols
