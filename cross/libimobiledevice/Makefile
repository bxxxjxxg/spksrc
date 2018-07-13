PKG_NAME = libimobiledevice
PKG_VERS = 1.2.1
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/bxxxjxxg/$(PKG_NAME)/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/libplist cross/libusbmuxd cross/openssl

HOMEPAGE = https://github.com/bxxxjxxg/libimobiledevice/
COMMENT  = A library to communicate with services of Apple iOS devices using native protocols.
LICENSE  = LGPL-2.1

GNU_CONFIGURE = 1
PRE_CONFIGURE_TARGET = myPreConfigure
INSTALL_TARGET = myInstall
CONFIGURE_ARGS = --disable-largefile --without-cython --enable-debug-code

include ../../mk/spksrc.cross-cc.mk

myPreConfigure:
	$(RUN) ; ./autogen.sh --disable-largefile --without-cython --enable-debug-code

myInstall:
	$(RUN) $(MAKE) install DESTDIR=$(INSTALL_DIR)
