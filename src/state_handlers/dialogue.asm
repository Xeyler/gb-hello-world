INCLUDE "res/visual/variable-width-font/font.asm"

SECTION "dialogue state handler", ROM0
state_dialogue:
; Enable dialogue stat handler
	ld	a, STATF_LYC | STATF_LYCF
	ld	[rSTAT], a

	ld	a, 104
	ld	[rLYC], a
	ld	[rWY], a
	ld	a, 7
	ld	[rWX], a

	ld	a, [rIE]
	or	IEF_LCDC
	ld	[rIE], a

; Enable window
	ld	a, [h_lcdc]
	or	LCDCF_WINON | LCDCF_WIN9C00
	ld	[h_lcdc], a
	
	jp	main

init_dialogue_window:
	ld	hl, $9C00
	ld	bc, 32 - 20
	xor	a

REPT 20
	ld	[hli], a
ENDR
	add	hl, bc
	
	ld	[hli], a
	inc	a
	ld	[hli], a
REPT 17
	add	a, 2
	ld	[hli], a
ENDR
	xor	a
	ld	[hli], a
	add	hl, bc

	ld	[hli], a
REPT 18
	add	a, 2
	ld	[hli], a
ENDR
	xor	a
	ld	[hli], a
	add	hl, bc

	ld	[hli], a
	ld	a, 18 * 2 + 1
	ld	[hli], a
REPT 17
	add	a, 2
	ld	[hli], a
ENDR
	xor	a
	ld	[hli], a
	add	hl, bc

	ld	[hli], a
	ld	a, 18 * 2 + 2
	ld	[hli], a
REPT 17
	add	a, 2
	ld	[hli], a
ENDR
	xor	a
	ld	[hli], a

	ret

SECTION "dialogue stat handler", ROM0
dialogue_stat_handler::
	ld	a, [rLCDC]
	res	1, a
	res	4, a
	ld	[rLCDC], a
	reti

SECTION "dialogue init", ROM0
init_dialogue:
	ld	a, $FF
	ld	hl, $9000
	ld	b, 16
.rept:
	ld	[hli], a
	dec	b
	jp	nz, .rept

	ret
