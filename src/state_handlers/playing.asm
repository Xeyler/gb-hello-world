SECTION "playing state handler", ROM0
state_playing:
	ld	a, [h_scene_bank]
	set_rom_bank_from_a

; Get input
	ld	a, [w_input_held]
	ld	c, a
	
	call	get_input
	ld	[w_input_held], a
	ld	d, a
	
	ld	b, a
	xor	c
	and	b
	ld	[w_input_pressed], a

	ld	hl, h_scene_map
	ld	c, [hl]
	inc	hl
	ld	b, [hl]

	ld	a, [h_player_y]
	ld	h, a
	ld	a, [h_player_x]
	ld	l, a

	push	hl

; Move actor
	bit	3, d
	jp	z, .dont_move_down

	ld	a, l
	sub	a, 7
	ld	l, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_down

	ld	a, l
	add	a, 6
	ld	l, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_down

	ld	a, h
	inc	a
	ld	[h_player_y], a

.dont_move_down:
	bit	2, d
	jp	z, .dont_move_up

	ld	a, l
	sub	a, 7
	ld	l, a

	ld	a, h
	sub	a, 5
	ld	h, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_up

	ld	a, l
	add	a, 6
	ld	l, a

	ld	a, h
	sub	a, 5
	ld	h, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_up

	ld	a, h
	dec	a
	ld	[h_player_y], a

.dont_move_up:
	bit	1, d
	jp	z, .dont_move_left

	ld	a, l
	sub	a, 8
	ld	l, a

	ld	a, h
	sub	a, 1
	ld	h, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_left
	
	ld	a, l
	sub	a, 8
	ld	l, a

	ld	a, h
	sub	a, 4
	ld	h, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_left

	ld	a, l
	dec	a
	ld	[h_player_x], a

.dont_move_left:
	bit	0, d
	jp	z, .dont_move_right

	ld	a, l
	add	a, 7
	ld	l, a

	ld	a, h
	sub	a, 1
	ld	h, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_right
	
	ld	a, l
	add	a, 7
	ld	l, a

	ld	a, h
	sub	a, 4
	ld	h, a

	call	get_tile_index_at_location

	pop	hl
	push	hl

	cp	a, $20
	jp	c, .dont_move_right

	ld	a, l
	inc	a
	ld	[h_player_x], a

.dont_move_right:

	pop	hl

; Check for events

; Update player location
	ld	a, [h_player_y]
	ld	hl, w_shadow_oam
	ld	[hli], a
	ld	a, [h_player_x]
	ld	[hli], a

	inc	hl
	inc	hl

	ld	a, [h_player_y]
	ld	[hli], a
	ld	a, [h_player_x]
	add	8
	ld	[hl], a

; Signal vblank to update
	ld	a, VBLANK_FLAG_OAM_DMA
	ld	[h_vblank_flag], a

	call	wait_for_vblank
	
	jp	state_playing


; @param h y position
; @param l x position
; @param bc tilemap pointer
; This function assumes the necessary ROM bank has already been set
get_tile_index_at_location:
	srl	l
	srl	l
	srl	l
	srl	l
	srl	h
	srl	h
	srl	h
	srl	h
	swap	h
	xor	a
	or	l
	or	h

	; a now contains tile location

	ld	l, a
	xor	a
	ld	h, a
	add	hl, bc
	ld	a, [hl]
	ret

SECTION "playing hram variables", HRAM
h_player_x: db
h_player_y: db
