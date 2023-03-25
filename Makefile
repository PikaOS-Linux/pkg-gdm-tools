all:
	true

install:
		DESTDIR=$(DESTDIR) PREFIX=/usr ./install.sh
