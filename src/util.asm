INCLUDE "hardware.inc"

INCLUDE "util.inc"

SECTION "input", ROM0

; Returns input in 'a' register
; Bit 7 - Start
; Bit 6 - Select
; Bit 5 - B
; Bit 4 - A
; Bit 3 - Down
; Bit 2 - Up
; Bit 1 - Left
; Bit 0 - Right
; A value of 1 indicates a press
get_input:
	ld	hl, rP1
	ld	a, P1F_GET_BTN
	ld	[hl], a
REPT 4
	ld	a, [hl]
ENDR

	and	%00001111
	swap	a
	ld	b, a

	ld	a, P1F_GET_DPAD
	ld	[hl], a
REPT 4
	ld	a, [hl]
ENDR

	and	%00001111
	or	b
	cpl
	ret

SECTION "util functions", ROM0

; @param hl Destination pointer
; @param b Number of bytes to write (0 writes 256 bytes)
; @param a Value to write
; So cute and smol. It can only write 256 bytes at most
small_memset:
	ld	[hli], a
	dec 	b
	jr	nz, small_memset
	ret
	
; @param hl Destination pointer
; @param bc Number of bytes to write (0 writes 65536 bytes)
; @param a Value to write
memset:
	ld	d, a
.write_byte
	ld	a, d
	ld	[hli], a
	dec	bc
	ld	a, b
	or	c
	jr	nz, .write_byte
	ret
	
; @param hl Destination pointer
; @param de Source pointer
; @param c Number of bytes to write (0 writes 256 bytes)
; Also cute and smol. It can only copy 256 bytes at most.
small_memcpy:
	ld	a, [de]
	inc	de
	ld	[hli], a
	dec	c
	jr	nz, small_memcpy
	ret

memcpy:
	ld	a, [de]
	inc	de
	ld	[hli], a
	dec	bc
	ld	a, b
	or	c
	jr	nz, memcpy
	ret
