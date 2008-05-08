# Makefile for detour-etk

CC		= edje_cc
COMPILE		= $(CC) $(EDJE_CC_FLAGS)
SRC		= main.edc
OUT		= detour-etk.edj
PATH_INSTALL    = $(HOME)/.e/etk/themes

EDJE_CC_FLAGS = -fd $(top_srcdir)/fonts \
-id images

.SILENT :

all: checkdir version clean build install

checkdir:
	if [ ! -d $(PATH_INSTALL) ]; then mkdir -p $(PATH_INSTALL); fi

verbose: main.edc
	$(COMPILE) -v $(SRC) -o $(OUT)

build: main.edc
	@echo "Running make..."
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-etk.edj
	@echo "Running make install..."
	if [ -e $(OUT) ]; then cp $? $(PATH_INSTALL); fi
	@echo ""
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(PATH_INSTALL)/ directory.
	@echo --------------------------------------------------
	@echo ""

version:
	@echo ""
	cat main.edc | head -14 | tail -1

clean:
	@echo ""
	@echo "Checking..."
	if [ -e $(OUT) ]; then rm $(OUT); fi

uninstall: detour-etk.edj
	@echo
	@echo Removing $(OUT)
	if [ -e $(PATH_INSTALL)/$(OUT) ]; then rm $(PATH_INSTALL)/$(OUT); fi
	@echo ""
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(PATH_INSTALL)/ directory.
	@echo --------------------------------------------------
	@echo ""

