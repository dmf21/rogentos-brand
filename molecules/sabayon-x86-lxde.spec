# Use abs path, otherwise daily builds automagic won't work
%import /sabayon/molecules/lxde.common

# Release Version
release_version: 8

# Release Version string description
release_desc: x86 LXDE

# 32bit chroot
prechroot: linux32

# Path to source ISO file (MANDATORY)
source_iso: /sabayon/iso/Sabayon_Linux_SpinBase_DAILY_x86.iso

# Destination ISO image name, call whatever you want.iso, not mandatory
destination_iso_image_name: Sabayon_Linux_8_x86_LXDE.iso
