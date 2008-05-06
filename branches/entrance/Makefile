fonts 	= fonts
images 	= images
CC 	= edje_cc
SRC	= main.edc
OUT	= detour-entrance.edj
COMPILE = $(CC) $(EDJE_CC_FLAGS)

EDJE_CC_FLAGS  = -fd $(fonts)/ -id $(images)/

.SILENT :

all: clean build

clean:
	@echo ""
	@echo "make clean"
	if [ -e $(OUT) ]; then rm $(OUT); fi

build: main.edc
	@echo "make"
	$(COMPILE) $(SRC) -o $(OUT)

install: entrnce.edj
	mkdir -p $(DESTDIR)/usr/share/entrance/themes/
	install -m 644 $(OUT) $(DESTDIR)/usr/share/entrance/themes/
	@echo
	@echo --------------------------------------------------
	@echo $(OUT) was removed from your
	@echo $(DESTDIR)/usr/share/entrance/themes/ directory.
	@echo --------------------------------------------------
	@echo


