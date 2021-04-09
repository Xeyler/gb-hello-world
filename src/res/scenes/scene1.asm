
SECTION "scene1", ROMX
scene1::
.tileset_length::
	dw	.tileset_end - .tileset
.tileset::
	INCLUDE	"res/scenes/tilesets/test.asm"
.tileset_end::
.metatileset::
	INCLUDE "res/scenes/metatilesets/metatiles.asm"
.tilemap::
	INCLUDE "res/scenes/tilemaps/map.asm"

