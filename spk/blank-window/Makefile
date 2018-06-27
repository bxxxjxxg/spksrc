SPK_NAME = blank_window
SPK_VERS = 1.0
SPK_REV = 1
SPK_ICON = src/PACKAGE_ICON.png
DSM_UI_DIR = app

DEPENDS = 
WHEELS = src/requirements.txt

MAINTAINER = BingJing
DESCRIPTION = This is an empty package with blank app window.
RELOAD_UI = yes
STARTABLE = yes
DISPLAY_NAME = Blank Window
CHANGELOG = "none."

HOMEPAGE = http://www.synology.com
LICENSE  = GPLv2/GPLv3

INSTALL_PREFIX = /usr/local/$(SPK_NAME)
POST_STRIP_TARGET = blank_window_extra_install

override ARCH=

include ../../mk/spksrc.spk.mk

.PHONY: blank_window_extra_install
blank_window_extra_install:
	install -m 755 -d $(STAGING_DIR)/var
	install -m 755 -d $(STAGING_DIR)/app
	install -m 755 -d $(STAGING_DIR)/app/images
	install -m 644 src/settings.json $(STAGING_DIR)/var/settings.json
	install -m 644 src/app/config $(STAGING_DIR)/app/config
	install -m 644 src/app/blank-window.js $(STAGING_DIR)/app/blank-window.js
	install -m 644 src/app/images/* $(STAGING_DIR)/app/images/
