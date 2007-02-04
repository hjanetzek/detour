# Makefile for Seek

fonts 	= fonts
images 	= images
icons	= icons
CC	= edje_cc
SRC	= main.edc
OUT	= detour-e17.edj
COMPILE = $(CC) $(EDJE_CC_FLAGS)

EDJE_CC_FLAGS = -fd $(fonts)/ -id $(images)/ -id $(icons)

.SILENT :

all: version clean build install

version:
	@echo ""
	grep "version" main.edc

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
	@echo $(HOME)/e/e/themes/ directory.
	@echo --------------------------------------------------
	@echo

# composite:
#	@echo Note: If you are running a Composite Manager
#	@echo set main.edc:6 to 1
#	@echo

# todo add uninstall
