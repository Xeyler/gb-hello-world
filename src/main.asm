INCLUDE "defines.asm"

SECTION "entry point", ROM0

init::
	call	copy_oam_dma_routine

