fonts = fonts
images = images
CC = edje_cc
EDJE_CC_FLAGS = -fd $(fonts)/ -id $(images)/
COMPILE = $(CC) -v $(EDJE_CC_FLAGS)

all: main.edc
	$(COMPILE) main.edc -o detour-etk.edj

clean:
	rm -f *.edj

#install:
#	cp detour-etk.edj ~/.e/etk/
