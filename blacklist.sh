#!/bin/bash
echo "Blacklist nouveau driver to install nVIDIA driver"
echo "Script by MeowIce"
echo "Follow me on Github: @MeowIce"
echo "Now working..."
bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
update-initramfs -u
sleep 2
echo "Now it is safe to restart you computer ;)"

