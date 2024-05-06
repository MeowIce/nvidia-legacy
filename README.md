# Patched legacy nVIDIA drivers to work with newer Linux kernels.
This repository includes patched legacy/dropped support nVIDIA drivers for newer Linux kernels.

If you found this repo helpful and saved you on a rainy day then give it a ⭐.

Downloads: [SourceForge](https://sourceforge.net/projects/nvidia-legacy/files/) | [Github Releases](https://github.com/MeowIce/nvidia-legacy/releases)
## Which versions and kernels are supported ?
- 340.108 (5.8^, 5.10, 5.15, 5.17^, 5.18/5.19, 6.0, 6.2, 6.3, 6.5, 6.6, **6.8.x**)
- 390.151 (**5.18+**)^
- 418.113 (5.8, 5.10, **5.11**)^
- 435.21 (5.4, **5.11**)^
- 515.65.01 (**6.0+**)^

***Bold**: latest patch for that kernel*

**^: Removed, you may want to look at forked to see previous versions.**
## How to use:
1. Select your driver version from the `branch` menu:
For example, I'll use 340.108:

![image](https://user-images.githubusercontent.com/70711319/168417538-97d1ae05-2877-440c-948b-08d40fb306e7.png)


2. Browse for your current kernel:
In this case, I'm running 5.17 kernel:

![image](https://user-images.githubusercontent.com/70711319/168422038-bc52e0d6-72b9-4083-84a1-985caaf3939f.png)

3. Download the blacklist file and the patched `.run` file then install it:

![image](https://user-images.githubusercontent.com/70711319/168417619-adc7a601-5ea7-4222-94af-fdde2345b2f0.png)

Press `Ctrl` + `Alt` + `F1` (any from 1 - 6).

Login with your account.

`cd` to your patched nVIDIA driver.

```
$ sudo su
# systemctl stop lightdm
# chmod +x blacklist.sh && ./blacklist.sh
# chmod +x <nvidia_filename>
# ./<nvidia_filename>
```

Reboot after installation.

*Replace `lightdm` with your window manager (GDM, LightDM, etc.).*

## Don't know if your GPU is out of date ?
See [nVIDIA Legacy GPU/Drivers list](https://www.nvidia.com/en-us/drivers/unix/legacy-gpu/)

# Known issues

## Kernel panic during installation
- Newer kernels might spam kernel panic while installing Unified Memory Modules. This is alright and will not affect to the installation progress.
If you cannot see the message box content, try pressing arrow left/right keys and it will refresh :)

## For Ubuntu 22.04+:
- The default kernel must be 5.15.
- Try with 5.15 patch first. If you booted into `Oh no` screen or at low resolution, continue reading.
#### Oh no screen:

`# apt update && apt upgrade -y`

Reboot and re-install.
If not working, try the **Low Resolution** method and replace gdm with lightdm.

#### Low resolution:
- Install 5.18 patch although you're on 5.15 (it should work).
- Delete the old `xorg.conf` and generate a new one with `nvidia-xconfig`.

## No TTY
After installing the driver. The screen will turn off and you won't be able to see anything in TTY mode, thus TTY still working and recognizes keyboard input. (login with username and password in blind then you will see HDD light blinking).
To fix this:
- Open your grub file as root (`/etc/default/grub`).
Remove the `#` in
```
#GRUB_TERMINAL=console
#GRUB_GFXMODE=640x480
```

- You can change `640x480` to your screen resolution.
- Save the file then update grub (`sudo update-grub`).

## Graphics issues after suspend (sleep)
- This is a well-known issue for nvidia drivers. You can try to suspend via power menu instead of closing the lid. If it does not fix, restart the desktop via the command `r` (`Alt` `F2`).

# Folk + Star this repo cuz I will remove old kernels support as Git LFS storage is running out.
