PKG_NAME = libusbmuxd
PKG_VERS = 1.0.11
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/bxxxjxxg/$(PKG_NAME)/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/libplist

HOMEPAGE = https://github.com/bxxxjxxg/libusbmuxd/
COMMENT  = A client library to multiplex connections from and to iOS devices by connecting to a socket provided by a usbmuxd daemon.
LICENSE  = LGPL-2.1

GNU_CONFIGURE = 1
PRE_CONFIGURE_TARGET = myPreConfigure
INSTALL_TARGET = myInstall
CONFIGURE_ARGS = ac_cv_func_malloc_0_nonnull=yes ac_cv_func_realloc_0_nonnull=yes

include ../../mk/spksrc.cross-cc.mk

myPreConfigure:
	$(RUN) ; ./autogen.sh

myInstall:
	$(RUN) $(MAKE) install DESTDIR=$(INSTALL_DIR)
