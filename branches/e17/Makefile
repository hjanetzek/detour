# Makefile for detour-e17

CC 	= edje_cc
COMPILE = $(CC) $(EDJE_CC_FLAGS)
SRC	= main.edc
OUT	= detour-e17.edj

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
	if [ -e $(OUT) ]; then cp $? $(HOME)/.e/e/themes/; fi
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(HOME)/.e/e/themes/ directory.
	@echo --------------------------------------------------
	@echo

version:
	@echo ""
	cat main.edc | head -13 | tail -1

clean:
	@echo ""
	@echo "Checking..."
	if [ -e $(OUT) ]; then rm -rf $(OUT); fi

uninstall: detour-e17.edj
	@echo ""
	@echo "Removing" $(OUT)
	rm $(HOME)/.e/e/themes/$(OUT)
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(HOME)/.e/e/themes/ directory.
	@echo --------------------------------------------------
	@echo

