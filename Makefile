# Makefile for detour-entrance

CC		= edje_cc
COMPILE		= $(CC) $(EDJE_CC_FLAGS)
SRC		= main.edc
OUT		= detour-entrance.edj
PATH_INSTALL	= /usr/local/share/entrance/themes

EDJE_CC_FLAGS = -fd $(top_srcdir)/fonts \
-id images

.SILENT :

all: checkdir version clean build install

checkdir:
	if [ ! -d $(PATH_INSTALL) ]; then sudo mkdir -p $(PATH_INSTALL); fi

verbose: main.edc
	$(COMPILE) -v $(SRC) -o $(OUT)

build: main.edc
	@echo "Running make..."
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-entrance.edj
	@echo "Running make install..."
	if [ -e $(OUT) ]; then sudo cp $? $(PATH_INSTALL); fi
	@echo ""
	@echo --------------------------------------------------
	@echo $(OUT) was installed in your
	@echo $(PATH_INSTALL)/ directory.
	@echo --------------------------------------------------
	@echo ""

version:
	@echo ""
	cat main.edc | head -7 | tail -1

clean:
	@echo ""
	@echo "Checking..."
	if [ -e $(OUT) ]; then rm -rf $(OUT); fi

