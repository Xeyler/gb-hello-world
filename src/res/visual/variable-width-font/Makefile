CHARDIR := chars

ASEPRITE := aseprite

FONT_FILE := font.aseprite

CHARS := $(shell $(ASEPRITE) -b --list-slices $(FONT_FILE))
CHARFILES := $(patsubst %,$(CHARDIR)/%.png,$(CHARS))

$(info $(CHARS))

all: font.asm
.PHONY: all

clean:
	rm font.asm
	rm -rf $(CHARDIR)
.PHONY: clean

font.asm: chars
	python3 compile_font.py $(CHARFILES) > font.asm

chars: $(FONT_FILE)
	$(ASEPRITE) -b $(FONT_FILE) --save-as $(CHARDIR)/{slice}.png
.PHONY: chars

