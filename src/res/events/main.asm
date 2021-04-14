SECTION "main event", ROM0
main_event::
	db	STATE_LOADING_SCENE
	db	BANK(scene1)
	dw	scene1
	db	25
	db	25
	db	STATE_DIALOGUE
	db	STATE_PLAYING
