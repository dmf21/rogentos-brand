#!/bin/sh
PKGS_DIR="/sabayon/pkgcache"
CHROOT_PKGS_DIR="${CHROOT_DIR}/var/lib/entropy/client/packages"

# load common stuff
. /sabayon/scripts/remaster_post_common.sh

cp /sabayon/remaster/rogentos/xfce-configs/xfce4-desktop.xml ${CHROOT_DIR}/home/rogentosuser/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml

# make sure to not leak /proc
umount "${CHROOT_DIR}/proc" &> /dev/null
umount "${CHROOT_DIR}/proc" &> /dev/null
umount "${CHROOT_DIR}/proc" &> /dev/null

echo "Umounting bind to ${CHROOT_PKGS_DIR}"
umount "${CHROOT_PKGS_DIR}" || exit 1

exit 0
