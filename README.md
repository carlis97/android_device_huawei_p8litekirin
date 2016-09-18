## Compiling Cyanogen Mod
Well, if you want to wait my builds, here the following instruction to compile CyanogenMod 12.1.

## Requirements:
- [x] Ubuntu Linux 64 Bit.
- [x] gigs of ram but i reccomend more for faster compilation.
- [x] big hard drive to store Android source.

## Configure Ubuntu
Install developments package by the following command in console.

	sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache  libgl1-mesa-dev libxml2-utils xsltproc unzip

	see here  to install java http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html

	sudo apt-get install android-tools-adb android-tools-fastboot

## Download Cyanogen Mod 12.1
	mkdir cm-12.1
	cd cm-12.1
	repo init -u https://github.com/CyanogenMod/android -b cm-12.1
	repo sync

## Clone Repos
	git clone https://github.com/hak86/android_device_huawei_p8litekirin -b cm-12.1 device/huawei/p8litekirin

	git clone https://github.com/hak86/android_vendor_huawei_p8litekirin -b cm-12.1 vendor/huawei/p8litekirin

## Compile Cyanogen Mod 12.1
	. build/envsetup.sh
	breakfast p8litekirin
	brunch p8litekirin

## Spec Sheet

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Octa Cores 1.2 GHz                |
| Chipset                 | HiSilicon Kirin 620		      |
| GPU                     | Mali 450                          |
| Memory                  | 2048MB RAM                        |
| Shipped Android Version | 5.0.1 can be updated to 6.0       |
| Storage                 | 16 GB                             |
| MicroSD                 | Up to 128GB                       |
| Battery                 | 2200 mAh                          |
| Display                 | 720 x 1200 pixels                 |
| Camera                  | 13 MP(Back), 5.0MP(Front)         |
| Release Date | April 2015 			              |
