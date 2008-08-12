# Makefile for detour-e17

CC		= edje_cc
COMPILE		= $(CC) $(EDJE_CC_FLAGS)
SRC		= main.edc
OUT		= detour-e17.edj
PATH_INSTALL    = $(HOME)/.e/e/themes
INIT_PATH	= $(HOME)/.e/e/init

EDJE_CC_FLAGS = -fd $(top_srcdir)/fonts \
-id images \
-id icons \
-id custom \
-id clock

.SILENT :

all: version clean build install

verbose: main.edc
	$(COMPILE) -v $(SRC) -o $(OUT)

build: main.edc
	@echo "Running make..."
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-e17.edj
	@echo "Running make install..."
	if [ -e $(OUT) ]; then cp $? $(PATH_INSTALL)/; fi
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(PATH_INSTALL)/ directory.
	@echo --------------------------------------------------
	@echo
	@echo Some systems dont support symbolic links.
	@echo
	@echo Please manually create a symbolic link from
	@echo $(PATH_INSTALL)/$(OUT) to $(INIT_PATH)/
	@echo if you want to use the Init edje shipped with $(OUT)
	@echo

version:
	@echo
	cat main.edc | head -14 | tail -1
	cat main.edc | head -15 | tail -1

clean:
	@echo 
	@echo Note: init Edje is now part of detour-e17.edj 
	@echo
	@echo "Checking..."
	if [ -e $(OUT) ]; then rm -rf $(OUT); fi

uninstall: detour-e17.edj
	@echo
	@echo "Removing" $(OUT)
	rm -rf $(PATH_INSTALL)/$(OUT)
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(PATH_INSTALL)/ directory.
	@echo --------------------------------------------------
	@echo

