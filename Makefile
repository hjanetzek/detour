fonts = fonts
images = images
CC = edje_cc
EDJE_CC_FLAGS = -fd $(fonts)/ -id $(images)/
COMPILE = $(CC) $(EDJE_CC_FLAGS)

.SILENT :

all: clean build

build: main.edc
	$(COMPILE) main.edc -o detour-etk.edj

clean:
	rm -f *.edj

install:
	cp detour-etk.edj $(HOME)/.etk/themes/
