# Patched legacy nVIDIA drivers to work with newer Linux kernels.
This repository includes patched legacy/dropped support nVIDIA drivers for newer Linux kernels.

## Which versions and kernels are supported ?
- 340.108 (5.8, 5.10, 5.15, 5.17, **5.18**)
- ~~390.147 (5.17)~~ (removed)
- 390.151 (**5.18**)
- 418.113 (5.8, 5.10, **5.11**)
- 435.21 (5.4, **5.11**)

***Bold**: latest patch for that kernel*
## How to use:
1. Select your driver version from the `branch` menu:
For example I'll use 340.108:

![image](https://user-images.githubusercontent.com/70711319/168417538-97d1ae05-2877-440c-948b-08d40fb306e7.png)


2. Browse for your current kernel:
In this case, I'm running 5.17 kernel:

![image](https://user-images.githubusercontent.com/70711319/168422038-bc52e0d6-72b9-4083-84a1-985caaf3939f.png)

3. Download the patched `.run` file and install it.

![image](https://user-images.githubusercontent.com/70711319/168417619-adc7a601-5ea7-4222-94af-fdde2345b2f0.png)

```
$ chmod +x <filename>
# ./<filename>
```

## Don't know if your GPU is out of date ?
See [nVIDIA Legacy GPU/Drivers list](https://www.nvidia.com/en-us/drivers/unix/legacy-gpu/)

## Notes:
- [Blacklist `nouveau driver`](https://linuxconfig.org/how-to-disable-blacklist-nouveau-nvidia-driver-on-ubuntu-20-04-focal-fossa-linux) before continue installation. This applies for most Linux distro.
- If installation failed, retry without DKMS: choose the default option `No`.
- Run `nvidia-xconfig` for it to generate config file (`xorg.conf`).
- Run `nvidia-settings` to config your drivers if you don't see it in the DE's launcher.
