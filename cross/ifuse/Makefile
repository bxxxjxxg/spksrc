PKG_NAME = ifuse
PKG_VERS = 1.1.4
PKG_EXT = tar.gz
PKG_DIST_NAME = $(PKG_VERS).$(PKG_EXT)
PKG_DIST_SITE = https://github.com/bxxxjxxg/$(PKG_NAME)/archive
PKG_DIR = $(PKG_NAME)-$(PKG_VERS)

DEPENDS = cross/libplist cross/libimobiledevice cross/fuse

HOMEPAGE = https://github.com/bxxxjxxg/ifuse/
COMMENT  = A fuse filesystem implementation to access the contents of iOS devices.
LICENSE  = LGPL-2.1

GNU_CONFIGURE = 1
PRE_CONFIGURE_TARGET = myPreConfigure
INSTALL_TARGET = myInstall

include ../../mk/spksrc.cross-cc.mk

myPreConfigure:
	$(RUN) ; ./autogen.sh

myInstall:
	$(RUN) $(MAKE) install DESTDIR=$(INSTALL_DIR)
