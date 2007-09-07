fonts 	= fonts
images 	= images
CC 	= edje_cc
SRC	= main.edc
OUT	= detour-init.edj
COMPILE = $(CC) $(EDJE_CC_FLAGS)

EDJE_CC_FLAGS  = -fd $(fonts)/ -id $(images)/

.SILENT :

all: clean build install

clean:
	@echo ""
	@echo "make clean"
	if [ -e $(OUT) ]; then rm $(OUT); fi

build: main.edc
	@echo "make"
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-init.edj
	@echo "make install"
	if [ -e $(OUT) ]; then cp $? $(HOME)/.e/e/init/; fi
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(HOME)/.e/e/init/ directory.
	@echo --------------------------------------------------
	@echo

uninstall: detour-init.edj
	@echo ""
	@echo "Removing" $(OUT)
	rm $(HOME)/.e/e/init/$(OUT)
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(HOME)/e/e/init/ directory.
	@echo --------------------------------------------------
	@echo

