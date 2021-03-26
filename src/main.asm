INCLUDE "hardware.inc"

INCLUDE "main.inc"
INCLUDE "vblank.inc"

SECTION "entry point", ROM0

init:
	di
	ld	sp, w_stack_bottom

	; TODO: Localize initialization to each module
	copy_oam_dma_routine

SECTION "stack", WRAM0[STACK_LOCATION - STACK_SIZE]

	ds	STACK_SIZE
w_stack_bottom:
