INCLUDE "hardware.inc"

INCLUDE "vblank.inc"
INCLUDE "util.inc"

SECTION "entry point", ROM0

init::
	copy_oam_dma_routine

