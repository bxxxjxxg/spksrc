PKG_NAME = libplist
PKG_VERS = 2.0.0
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/bxxxjxxg/$(PKG_NAME)/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS =

HOMEPAGE = https://github.com/bxxxjxxg/libplist/
COMMENT  = A small portable C library to handle Apple Property List files in binary or XML.
LICENSE  = LGPL-2.1

GNU_CONFIGURE = 1
PRE_CONFIGURE_TARGET = myPreConfigure
INSTALL_TARGET = myInstall
CONFIGURE_ARGS = --without-cython

include ../../mk/spksrc.cross-cc.mk

myPreConfigure:
	$(RUN) ; ./autogen.sh --without-cython

myInstall:
	$(RUN) $(MAKE) install DESTDIR=$(INSTALL_DIR)
