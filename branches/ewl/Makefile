# Makefile

fonts   = fonts
images  = images
CC              = edje_cc
SRC             = main.edc
OUT             = detour-ewl.edj
COMPILE         = $(CC) $(EDJE_CC_FLAGS)

EDJE_CC_FLAGS = -fd $(fonts)/ -id $(images)/ -v

.SILENT :

all: build install

build: main.edc
	$(COMPILE) $(SRC) -o $(OUT)

install: detour-ewl.edj
	echo " * $(OUT) installed in current directory"

