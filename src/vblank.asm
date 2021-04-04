INCLUDE "hardware.inc"

INCLUDE "vblank.inc"
INCLUDE "rand.inc"

SECTION "vblank handler", ROM0

; Loads 'a' register into vblank flag which determines what the handler will
; do. See `vblank.inc` for the list of valid vblank flags. It is assumed that
; when the handler has finished servicing the requested actions, it will escape
; the halting loop by popping the return address off the stack.
wait_for_vblank:
	ld	a, 1
	ldh	[h_vblank_enable], a
.wait
	halt
	jr	.wait

vblank_handler:
	push	af

	ldh	a, [h_vblank_enable]
	and	a
	jp	z, .lag_frame

	; TODO: Implement vblank handler
	pop	af
.lag_frame
	pop	af
	reti

SECTION "shadow oam", WRAM0, ALIGN[8]

w_shadow_oam:
	ds	40 * 4

SECTION "oam dma routine", ROMX

oam_dma_source:
LOAD "oam dma source", HRAM
; Uses 'A' register as high byte of OAM shadow. Low byte is assumed to be $00
h_oam_dma:
	ld	[rDMA], a
	ld	a, 40
.wait
	dec	a
	jr	nz, .wait
	ret
.end
ENDL

SECTION "vblank hram", HRAM

h_vblank_enable: db
h_vblank_flag: db

h_oam_high: db

; Shadow screen registers.
h_lcdc: db
h_scy: db
h_scx: db
h_bgp: db
h_obp0: db
h_obp1: db

