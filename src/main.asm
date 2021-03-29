INCLUDE "hardware.inc"

INCLUDE "main.inc"
INCLUDE "vblank.inc"

SECTION "init", ROM0

init:
	di
	ld	sp, w_stack_bottom

; Call all necessary initialization functions
	copy_oam_dma_routine

	ld	a, IEF_VBLANK
	ld	[rIE], a

	xor	a
	ld	[rIF], a

	ei

	jp	main

SECTION "main", ROM0

main:
; Update sound
	ld	a, [w_current_song_bank]
	set_rom_bank_from_a
	call	_hUGE_dosound

; Get input state
	; hold last input state in register c
	ld	a, [w_input_held]
	ld	c, a

	; save new input state to ram
	call	get_input
	ld	[w_input_held], a

	; compute and save newly pressed buttons
	ld	b, a
	xor	c
	and	b
	ld	[w_input_pressed], a

; TODO: Logic and scripting
	call	update_song

; Wait for vblank to update screen and repeat
	ld	a, VBLANK_FLAG_NOP
	ld	[h_vblank_flag], a
	call	wait_for_vblank

	jp	main

update_song:
	bit	4, a
	jp	z, .skip_uwu
	ld	hl, song_table.uwu
	jp	init_song
.skip_uwu
	bit	5, a
	jp	z, .skip_ryukenden
	ld	hl, song_table.ryukenden
	jp	init_song
.skip_ryukenden
	ret

init_song:
	set_rom_bank BANK(song_table)
	ld	a, [hli]
	ld	[w_current_song_bank], a
	set_rom_bank_from_a

	dereference_hl_into_hl

	call	hUGE_init

	ret

SECTION "stack", WRAM0[STACK_LOCATION - STACK_SIZE]

	ds	STACK_SIZE
w_stack_bottom:

SECTION "main variables", WRAM0

w_input_held: db
w_input_pressed: db

w_current_song_bank: db
