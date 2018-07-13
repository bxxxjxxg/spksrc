#!/bin/sh

# Package
PACKAGE="itools"
DNAME="itools"


case $1 in
    start)
        usbmuxd
        exit 0
        ;;
    stop)
        exit 0
        ;;
    status)
        ### Check package alive.
        if killall -q -0 usbmuxd; then
            exit 0
        else
            exit 1
        fi
        ;;
    log)
        exit 1
        ;;
    *)
        exit 1
        ;;
esac
