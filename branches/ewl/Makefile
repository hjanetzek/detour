fonts 	        = fonts
images 	        = images
CC		= edje_cc
SRC		= main.edc
OUT		= detour-ewl.edj
COMPILE 	= $(CC) $(EDJE_CC_FLAGS)
PATH_INSTALL    = $(HOME)/.e/ewl/themes

EDJE_CC_FLAGS = -fd $(fonts)/ -id $(images)/

.SILENT :

//all: version checkdir clean build install
all: clean build 

version:
	@echo ""
	cat main.edc | head -3 | tail -1

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
	@echo $(HOME)/.ewl/themes/ directory.
	@echo --------------------------------------------------
	@echo ""

