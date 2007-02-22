fonts 	= fonts
images 	= images
CC		= edje_cc
SRC		= main.edc
OUT		= detour-etk.edj
COMPILE 	= $(CC) $(EDJE_CC_FLAGS)

EDJE_CC_FLAGS = -fd $(fonts)/ -id $(images)/

.SILENT :

all: clean build install

clean:
	@echo ""
	@echo "make clean"
	if [ -e $(OUT) ]; then rm $(OUT); fi

build: main.edc
	@echo "make"
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-etk.edj
	@echo "make install"
	if [ -e $(OUT) ]; then cp $? $(HOME)/.e/etk/themes/; fi
	@echo ""
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(HOME)/.e/etk/themes/ directory.
	@echo --------------------------------------------------
	@echo ""

uninstall: detour-etk.edj
	@echo
	@echo Removing $(OUT)
	if [ -e $(HOME)/.e/etk/themes/$(OUT) ]; then rm $(HOME)/.e/etk/themes/$(OUT); fi
	@echo ""
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(HOME)/e/etk/themes/ directory.
	@echo --------------------------------------------------
	@echo ""
