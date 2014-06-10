
BACKPICS	:= $(wildcard *.png)

PNGFILES	:= $(BACKPICS)
OFILES		:= $(PNGFILES:.png=.o)
TARGET		:= ../../lib/gfxdata.a

$(TARGET) : $(OFILES)
	$(AR) -crs $@ $^

GRITBASE	:= -fts -fh! -gu16

include ../../gfx_baserules

# ---------------------------------------------------------------------
# Rules
# ---------------------------------------------------------------------

$(BACKPICS:.png=.s): %.s : %.png
	$(GRIT) $< $(GRITBASE) -gzl -pe16

#$(PARTYPICS:.png=.s): %.s : %.png
#	$(GRIT) $< $(GRITBASE) -p!

#$(FOOTPRINTS:.png=.s): %.s : %.png
#	$(GRIT) $< $(GRITBASE) -gB1 -p!