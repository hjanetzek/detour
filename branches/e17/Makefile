# Makefile for seek

IMAGES 	= images
ICONS	= icons
CUSTOM	= custom
CLOCK	= clock

EDJE_CC_FLAGS = -fd $(top_srcdir)/fonts \
-id $(IMAGES) \
-id $(ICONS) \
-id $(CUSTOM) \
-id $(CLOCK)

CC 	= edje_cc
COMPILE = $(CC) $(EDJE_CC_FLAGS)
SRC	= main.edc
OUT	= detour-e17.edj

.SILENT :

all: version clean build install

version:
	@echo ""
	cat main.edc | head -13 | tail -1

build: main.edc
	@echo "Running make..."
	$(COMPILE) $(SRC) -o $(OUT)

verbose: main.edc
	$(COMPILE) -v $(SRC) -o $(OUT)

install: detour-e17.edj
	@echo "Running make install..."
	if [ -e $(OUT) ]; then cp $? $(HOME)/.e/e/themes/; fi
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(HOME)/.e/e/themes/ directory.
	@echo --------------------------------------------------
	@echo

clean:
	@echo ""
	@echo "Running make clean..."
	if [ -e $(OUT) ]; then rm -rf $(OUT); fi

uninstall: detour-e17.edj
	@echo ""
	@echo "Removing" $(OUT)
	rm $(HOME)/.e/e/themes/$(OUT)
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(HOME)/e/e/themes/ directory.
	@echo --------------------------------------------------
	@echo

