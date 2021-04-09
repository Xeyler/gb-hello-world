
SECTION "loading scene state handler", ROM0
state_loading_scene:
; Disable the screen so we can access vram outside of vblank
	ld	a, [h_lcdc]
	res	7, a
	ld	[h_lcdc], a
	ld	a, VBLANK_FLAG_UPDATE_VARS
	ld	[h_vblank_flag], a

	call	wait_for_vblank

; Copy tileset
	ld	hl, h_event_index
	dereference_hl_into_hl
	ld	a, [hli]
	set_rom_bank_from_a
	ld	a, [hli]
	ld	e, a
	ld	a, [hli]
	ld	d, a
	
	ld	a, h
	ld	[h_event_index + 1], a
	ld	a, l
	ld	[h_event_index], a

	ld	h, d
	ld	l, e
	
	ld	c, [hl]
	inc	hl
	ld	b, [hl]
	inc	hl
	
	ld	d, h
	ld	e, l

	ld	hl, $8000

	call	memcpy

; TODO: Copy map via metatileset
	ld	hl, 4 * 64
	add	hl, de
	push	de
	ld	d, h
	ld	e, l
	pop	hl
	ld	bc, $9800
	; de contains location of tilemap
	; hl contains location of metatileset
	; bc contains vram tilemap beginning

.repeat_metatile_copy:
	ld	a, [de]
	inc	de

	push	de
	push	hl
	push	bc
	call	copy_metatile
	pop	bc
	pop	hl
	pop	de

	inc	bc
	inc	bc
	bit	5, c
	jr	z, .dont_skip_row
	ld	a, c
	add	a, 32
	ld	c, a
	jr	nc, .dont_carry
	inc	b
.dont_carry:
.dont_skip_row:

	ld	a, b
	cp	a, $9C
	jr	c, .repeat_metatile_copy

; Re-enable screen
	ld	a, [h_lcdc]
	set	7, a
	ld	[h_lcdc], a
	ld	[rLCDC], a

	jp	main

; @param a Metatile index
; @param hl Metatileset pointer
; @param bc Destination pointer
copy_metatile:
	ld	e, a
	ld	d, 0
	add	hl, de
	add	hl, de
	add	hl, de
	add	hl, de

	ld	a, [hli]
	ld	[bc], a
	inc	bc
	ld	a, [hli]
	ld	[bc], a
	
	ld	a, c
	add	a, 31
	ld	c, a
	jr	nc, .skip_carry
	inc	b
.skip_carry:
	
	ld	a, [hli]
	ld	[bc], a
	inc	bc
	ld	a, [hli]
	ld	[bc], a
	ret

