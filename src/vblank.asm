INCLUDE "hardware.inc"

INCLUDE "vblank.inc"

SECTION UNION "shadow oam", WRAM0, ALIGN[8]

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

h_vblank_ready_flag: db

h_oam_high: db

; Shadow screen registers.
h_lcdc: db
h_scy: db
h_scx: db
h_bgp: db
h_obp0: db
h_obp1: db

