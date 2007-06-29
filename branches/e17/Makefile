# Makefile for seek

fonts 	= fonts
images 	= images
icons	= icons
CC 	= edje_cc
SRC	= main.edc
OUT	= detour-e17.edj
COMPILE = $(CC) $(EDJE_CC_FLAGS)

EDJE_CC_FLAGS  = -fd $(fonts)/ -id $(images)/ -id $(icons)

.SILENT :

all: version clean build install

version:
	@echo ""
	cat main.edc | head -9 | tail -1

clean:
	@echo ""
	@echo "make clean"
	if [ -e $(OUT) ]; then rm $(OUT); fi

build: main.edc
	@echo "make"
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-e17.edj
	@echo "make install"
	if [ -e $(OUT) ]; then cp $? $(HOME)/.e/e/themes/; fi
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(HOME)/.e/e/themes/ directory.
	@echo --------------------------------------------------
	@echo

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

