
BACKPICS	:= $(wildcard *.s)

PNGFILES	:= $(BACKPICS)
OFILES		:= $(PNGFILES:.s=.o)
TARGET		:= ../../liboverworldscripts.a

$(TARGET) : $(OFILES)
	$(AR) -crs $@ $^

include ../../gfx_baserules

# ---------------------------------------------------------------------
# Rules
# ---------------------------------------------------------------------

#$(PARTYPICS:.png=.s): %.s : %.png
#	$(GRIT) $< $(GRITBASE) -p!

#$(FOOTPRINTS:.png=.s): %.s : %.png
#	$(GRIT) $< $(GRITBASE) -gB1 -p!

