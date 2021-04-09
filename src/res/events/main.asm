INCLUDE "res/scenes/scene1.asm"

SECTION "main event", ROM0
main_event::
	db	STATE_LOADING_SCENE
	db	BANK(scene1)
	dw	scene1
