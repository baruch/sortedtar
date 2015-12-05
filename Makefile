DESTDIR=
PREFIX=/usr/local

all:
	@echo "Nothing to build, use 'make install' to install."

install:
	install sortedtar sortedtar-list ${DESTDIR}${PREFIX}/bin
