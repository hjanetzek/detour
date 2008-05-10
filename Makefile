# Makefile for detour-ewl

CC		= edje_cc
COMPILE		= $(CC) $(EDJE_CC_FLAGS)
SRC		= main.edc
OUT		= detour-ewl.edj
PATH_INSTALL    = $(HOME)/.ewl/themes

EDJE_CC_FLAGS = -fd $(top_srcdir)/fonts \
-id images

.SILENT :

all: version checkdir clean build install

version:
	@echo ""
	cat main.edc | head -6 | tail -1

checkdir:
	if [ ! -d $(PATH_INSTALL) ]; then mkdir -p $(PATH_INSTALL); fi

clean:
	@echo ""
	@echo "make clean"
	if [ -e $(OUT) ]; then rm $(OUT); fi

build: main.edc
	@echo "make"
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-ewl.edj
	@echo "make install"
	if [ -e $(OUT) ]; then cp $? $(PATH_INSTALL); fi
	@echo ""
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(PATH_INSTALL)/ directory.
	@echo --------------------------------------------------
	@echo ""

uninstall: detour-ewl.edj
	@echo
	@echo Removing $(OUT)
	if [ -e $(PATH_INSTALL)/$(OUT) ]; then rm $(PATH_INSTALL)/$(OUT); fi
	@echo ""
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(PATH_INSTALL)/ directory.
	@echo --------------------------------------------------
	@echo ""

