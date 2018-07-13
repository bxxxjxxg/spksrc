#!/bin/sh

# Package
PACKAGE="itools"
DNAME="itools"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"


preinst ()
{
    exit 0
}

postinst ()
{
    # Link
    ln -s ${SYNOPKG_PKGDEST} ${INSTALL_DIR}

    # Put tmux in the PATH
    mkdir -p /usr/local/bin
    ln -s ${INSTALL_DIR}/bin/idevicebackup /usr/local/bin/idevicebackup
    ln -s ${INSTALL_DIR}/bin/idevicebackup2 /usr/local/bin/idevicebackup2
    ln -s ${INSTALL_DIR}/bin/idevicecrashreport /usr/local/bin/idevicecrashreport
    ln -s ${INSTALL_DIR}/bin/idevicedate /usr/local/bin/idevicedate
    ln -s ${INSTALL_DIR}/bin/idevicedebug /usr/local/bin/idevicedebug
    ln -s ${INSTALL_DIR}/bin/idevicedebugserverproxy /usr/local/bin/idevicedebugserverproxy
    ln -s ${INSTALL_DIR}/bin/idevicediagnostics /usr/local/bin/idevicediagnostics
    ln -s ${INSTALL_DIR}/bin/ideviceenterrecovery /usr/local/bin/ideviceenterrecovery
    ln -s ${INSTALL_DIR}/bin/idevice_id /usr/local/bin/idevice_id
    ln -s ${INSTALL_DIR}/bin/ideviceimagemounter /usr/local/bin/ideviceimagemounter
    ln -s ${INSTALL_DIR}/bin/ideviceinfo /usr/local/bin/ideviceinfo
    ln -s ${INSTALL_DIR}/bin/idevicename /usr/local/bin/idevicename
    ln -s ${INSTALL_DIR}/bin/idevicenotificationproxy /usr/local/bin/idevicenotificationproxy
    ln -s ${INSTALL_DIR}/bin/idevicepair /usr/local/bin/idevicepair
    ln -s ${INSTALL_DIR}/bin/ideviceprovision /usr/local/bin/ideviceprovision
    ln -s ${INSTALL_DIR}/bin/idevicescreenshot /usr/local/bin/idevicescreenshot
    ln -s ${INSTALL_DIR}/bin/idevicesyslog /usr/local/bin/idevicesyslog
    ln -s ${INSTALL_DIR}/bin/ifuse /usr/local/bin/ifuse
    ln -s ${INSTALL_DIR}/bin/iproxy /usr/local/bin/iproxy
    ln -s ${INSTALL_DIR}/bin/plistutil /usr/local/bin/plistutil
    ln -s ${INSTALL_DIR}/sbin/usbmuxd /usr/local/bin/usbmuxd

    exit 0
}

preuninst ()
{
    exit 0
}

postuninst ()
{
    # Remove link
    rm -f ${INSTALL_DIR}
    rm -f /usr/local/bin/idevicebackup
    rm -f /usr/local/bin/idevicebackup2
    rm -f /usr/local/bin/idevicecrashreport
    rm -f /usr/local/bin/idevicedate
    rm -f /usr/local/bin/idevicedebug
    rm -f /usr/local/bin/idevicedebugserverproxy
    rm -f /usr/local/bin/idevicediagnostics
    rm -f /usr/local/bin/ideviceenterrecovery
    rm -f /usr/local/bin/idevice_id
    rm -f /usr/local/bin/ideviceimagemounter
    rm -f /usr/local/bin/ideviceinfo
    rm -f /usr/local/bin/idevicename
    rm -f /usr/local/bin/idevicenotificationproxy
    rm -f /usr/local/bin/idevicepair
    rm -f /usr/local/bin/ideviceprovision
    rm -f /usr/local/bin/idevicescreenshot
    rm -f /usr/local/bin/idevicesyslog
    rm -f /usr/local/bin/ifuse
    rm -f /usr/local/bin/iproxy
    rm -f /usr/local/bin/plistutil
    rm -f /usr/local/bin/usbmuxd

    exit 0
}

preupgrade ()
{
    exit 0
}

postupgrade ()
{
    exit 0
}
