
.SUFFIXES:

################################################
#                                              #
#             CONSTANT DEFINITIONS             #
#                                              #
################################################

# Directory constants
SRCDIR := src
BINDIR := bin
OBJDIR := obj
DEPDIR := dep
RESDIR := res

# Program constants
ifneq ($(OS),Windows_NT)
    # POSIX OSes
    RM_RF := rm -rf
    MKDIR_P := mkdir -p
else
    # Windows
    RM_RF := -del /q
    MKDIR_P := -mkdir
endif

# Shortcut if you want to use a local copy of RGBDS
RGBDS   :=
RGBASM  := $(RGBDS)rgbasm
RGBLINK := $(RGBDS)rgblink
RGBFIX  := $(RGBDS)rgbfix

ROM = $(BINDIR)/$(ROMNAME).$(ROMEXT)

# Argument constants
INCDIRS  = $(SRCDIR)/ $(SRCDIR)/include/ $(SRCDIR)/res/music/hUGEDriver/
WARNINGS = all extra
ASFLAGS  = -p $(PADVALUE) $(addprefix -i,$(INCDIRS)) $(addprefix -W,$(WARNINGS))
LDFLAGS  = -p $(PADVALUE)
FIXFLAGS = -p $(PADVALUE) -v -i "$(GAMEID)" -k "$(LICENSEE)" -l $(OLDLIC) -m $(MBC) -n $(VERSION) -r $(SRAMSIZE) -t $(TITLE)

TILEDATADIR = $(RESDIR)/scenes
VWFONTDIR = $(RESDIR)/visual/variable-width-font

# The list of "root" ASM files that RGBASM will be invoked on
SRCS = $(wildcard $(SRCDIR)/*.asm)

SRCS += $(SRCDIR)/res/build_date.asm

SRCS += $(wildcard $(SRCDIR)/res/music/songs/*.asm)

## Project-specific configuration
# Use this to override the above
include project.mk

################################################
#                                              #
#                    TARGETS                   #
#                                              #
################################################

# `all` (Default target): build the ROM
all: $(ROM)
.PHONY: all

# `clean`: Clean temp and bin files
clean:
	$(RM_RF) $(BINDIR)
	$(RM_RF) $(OBJDIR)
	$(RM_RF) $(DEPDIR)
	$(RM_RF) $(RESDIR)
.PHONY: clean

# `rebuild`: Build everything from scratch
# It's important to do these two in order if we're using more than one job
rebuild:
	$(MAKE) clean
	$(MAKE) all
.PHONY: rebuild

###############################################
#                                             #
#                 COMPILATION                 #
#                                             #
###############################################

# How to build a ROM
$(BINDIR)/%.$(ROMEXT) $(BINDIR)/%.sym $(BINDIR)/%.map: $(patsubst $(SRCDIR)/%.asm,$(OBJDIR)/%.o,$(SRCS))
	@$(MKDIR_P) $(@D)
	$(RGBLINK) $(LDFLAGS) -m $(BINDIR)/$*.map -n $(BINDIR)/$*.sym -o $(BINDIR)/$*.$(ROMEXT) $^ \
	&& $(RGBFIX) -v $(FIXFLAGS) $(BINDIR)/$*.$(ROMEXT)

# `.mk` files are auto-generated dependency lists of the "root" ASM files, to save a lot of hassle.
# Also add all obj dependencies to the dep file too, so Make knows to remake it
# Caution: some of these flags were added in RGBDS 0.4.0, using an earlier version WILL NOT WORK
# (and produce weird errors)
$(OBJDIR)/%.o $(DEPDIR)/%.mk: $(SRCDIR)/%.asm
	@$(MKDIR_P) $(patsubst %/,%,$(dir $(OBJDIR)/$* $(DEPDIR)/$*))
	$(RGBASM) $(ASFLAGS) -M $(DEPDIR)/$*.mk -MG -MP -MQ $(OBJDIR)/$*.o -MQ $(DEPDIR)/$*.mk -o $(OBJDIR)/$*.o $<

ifneq ($(MAKECMDGOALS),clean)
-include $(patsubst $(SRCDIR)/%.asm,$(DEPDIR)/%.mk,$(SRCS))
endif

################################################
#                                              #
#                RESOURCE FILES                #
#                                              #
################################################

VPATH := $(SRCDIR)

# Tile compilation

MAPSDIR := $(TILEDATADIR)/tilemaps
METASETSDIR := $(TILEDATADIR)/metatilesets
SETSDIR := $(TILEDATADIR)/tilesets

TILES_CC := $(SRCDIR)/tools/compile_tiles_res.py

$(MAPSDIR)/%.asm: $(TILES_CC) $(MAPSDIR)/%.csv
	@$(MKDIR_P) $(@D)
	$^ --tilemap > $@

$(METASETSDIR)/%.asm: $(TILES_CC) $(METASETSDIR)/%.csv
	@$(MKDIR_P) $(@D)
	$^ --metatileset > $@

$(TILEDATADIR)/%.csv: $(SRCDIR)/$(TILEDATADIR)/%.tmx
	@$(MKDIR_P) $(@D)
	tiled --export-map $< $@

$(SETSDIR)/%.asm: $(TILES_CC) $(SETSDIR)/%.bin
	$^ --tileset > $@

$(SETSDIR)/%.bin: $(SRCDIR)/$(SETSDIR)/%.png
	@$(MKDIR_P) $(@D)
	rgbgfx --output $@ $<

# Font compilation

CHARDIR := $(VWFONTDIR)/chars
FONT_FILE := $(SRCDIR)/$(VWFONTDIR)/font.aseprite

ASEPRITE := aseprite

CHARS := $(addprefix $(CHARDIR)/,$(shell $(ASEPRITE) -b --list-slices $(FONT_FILE)))
CHARFILES := $(addsuffix .png,$(CHARS))

$(VWFONTDIR)/font.asm: $(SRCDIR)/tools/compile_font.py $(CHARFILES)
	$^ > $@

$(CHARFILES): $(FONT_FILE)
	$(ASEPRITE) -b $< --save-as $(CHARDIR)/{slice}.png

# Catch non-existent files
# KEEP THIS LAST!!
%:
	@false
