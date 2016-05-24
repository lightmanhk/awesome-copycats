
.PHONY: all install uninstall reinstall update

all:

update:
	git submodule update --init --recursive

install: update
	@if [ ! -d ~/.config ]; then \
	   	mkdir -v ~/.config; \
	fi
	@if [ ! -d ~/.config/awesome ]; then \
	  	ln -vsfn ${PWD} ~/.config/awesome; \
	fi

uninstall:
	@if [ `pwd` = `readlink ~/.config/awesome` ]; then \
		rm -v ~/.config/awesome; \
	fi

reinstall: uninstall install
