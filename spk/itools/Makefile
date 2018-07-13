SPK_NAME = itools
SPK_VERS = 1.0
SPK_REV = 1
SPK_ICON = src/itools.png

DEPENDS = cross/usbmuxd cross/ifuse
UNSUPPORTED_ARCHS = $(ARM_ARCHES) $(PPC_ARCHES)

MAINTAINER = BingJing
MAINTAINER_URL = https://www.linkedin.com/in/bingjing-chang/
DISTRIBUTOR = SynoCommunity
DISTRIBUTOR_URL = https://synocommunity.com
DESCRIPTION = A collection toolkit for connecting iOS devices.
RELOAD_UI = n
DISPLAY_NAME = iTools
STARTABLE = no
BETA = 1
CHANGELOG = First Release

HOMEPAGE   = https://www.libimobiledevice.org
LICENSE    = LGPL 2.1

INSTALLER_SCRIPT = src/installer.sh
SSS_SCRIPT       = src/dsm-control.sh

INSTALL_PREFIX = /usr/local/$(SPK_NAME)

include ../../mk/spksrc.spk.mk
