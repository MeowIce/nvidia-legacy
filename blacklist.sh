#!/bin/bash
if [ "$(whoami)" = "root" ]; then
	echo "Blacklist nouveau driver to install nVIDIA driver"
	echo "Script by MeowIce"
	echo "Follow me on Github: @MeowIce"
	echo "Now working..."
	bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
	bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
echo "*** The blacklist file has been written to disk. Please update your ramdisk then restart. ***"
else
	echo "*** Please run this script as root. ***"
fi

