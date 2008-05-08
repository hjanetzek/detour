# Makefile for detour-init

CC 	= edje_cc
COMPILE = $(CC) $(EDJE_CC_FLAGS)
SRC	= main.edc
OUT	= detour-init.edj

EDJE_CC_FLAGS = -fd $(top_srcdir)/fonts \
-id images

.SILENT :

all: version clean build install

verbose: main.edc
	$(COMPILE) -v $(SRC) -o $(OUT)

build: main.edc
	@echo "Running make..."
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-init.edj
	@echo "Running make install..."
	if [ -e $(OUT) ]; then cp $? $(HOME)/.e/e/init/; fi
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(HOME)/.e/e/init/ directory.
	@echo --------------------------------------------------
	@echo

version:
	@echo ""
	cat main.edc | head -8 | tail -1

clean:
	@echo ""
	@echo "Checking..."
	if [ -e $(OUT) ]; then rm -rf $(OUT); fi

uninstall: detour-init.edj
	@echo ""
	@echo "Removing" $(OUT)
	rm $(HOME)/.e/e/init/$(OUT)
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(HOME)/.e/e/init/ directory.
	@echo --------------------------------------------------
	@echo

