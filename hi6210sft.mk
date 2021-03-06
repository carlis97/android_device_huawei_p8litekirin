# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Charger Off
PRODUCT_PACKAGES += \
	charger_res_images

# Codecs
PRODUCT_COPY_FILES += \
    	frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    	frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
	frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# File System
PRODUCT_PACKAGES += \
    	make_ext4fs \
    	setup_fs

# Graphics
PRODUCT_PACKAGES += \
	gralloc.hi6210sft \
	libGLES_android \
	libGLES_mali \
	libion

PRODUCT_PROPERTY_OVERRIDES += \
    	debug.hwui.render_dirty_regions=false \
	hw.lcd.lcd_density=320 \
    	persist.sys.strictmode.disable=1 \
    	persist.sys.use_dithering=2 \
    	ro.opengles.version=131072 \
    	ro.sf.lcd_density=320 \

# Lights
PRODUCT_PACKAGES += \
	lights.default \
	lights.hi6210sft

# Live Wallpapers
PRODUCT_PACKAGES += \
    	LiveWallpapersPicker \
    	librs_jni

# Overlays
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    	frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    	frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
 	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
 	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    	frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    	frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
 	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
 	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
 	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
 	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Ramdisk
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root \
        $(LOCAL_PATH)/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s \
        $(LOCAL_PATH)/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation \
        $(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
        $(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
        $(LOCAL_PATH)/ramdisk/sbin/ntfs-3gd:root/sbin/ntfs-3gd \
        $(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
        $(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
        $(LOCAL_PATH)/ramdisk/init:root/init \
        $(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc \
        $(LOCAL_PATH)/ramdisk/init.6165.rc:root/init.6165.rc \
        $(LOCAL_PATH)/ramdisk/init.10106.rc:root/init.10106.rc \
        $(LOCAL_PATH)/ramdisk/init.51054.rc:root/init.51054.rc \
        $(LOCAL_PATH)/ramdisk/init.102173.rc:root/init.102173.rc \
        $(LOCAL_PATH)/ramdisk/init.142782.rc:root/init.142782.rc \
        $(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
        $(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
        $(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc \
        $(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
        $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc \
        $(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
        $(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc \
        $(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc \
        $(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
        $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
        $(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \

# Recovery
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/etc/erecovery.cfg:recovery/etc/erecovery.cfg \
        $(LOCAL_PATH)/recovery/etc/recovery.fstab:recovery/etc/recovery.fstab \
        $(LOCAL_PATH)/recovery/etc/resetFactory.cfg:recovery/etc/resetFactory.cfg \

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/sbin/check_root:recovery/sbin/check_root \
        $(LOCAL_PATH)/recovery/sbin/curl:recovery/sbin/curl \
        $(LOCAL_PATH)/recovery/sbin/e2fsck_s:recovery/sbin/e2fsck_s \
        $(LOCAL_PATH)/recovery/sbin/emmc_partation:recovery/sbin/emmc_partation \
        $(LOCAL_PATH)/recovery/sbin/kmsgcat:recovery/sbin/kmsgcat \
        $(LOCAL_PATH)/recovery/sbin/logctl_service:recovery/sbin/logctl_service \
        $(LOCAL_PATH)/recovery/sbin/ntfs-3gd:recovery/sbin/ntfs-3gd \
        $(LOCAL_PATH)/recovery/sbin/oeminfo_nvm_server:recovery/sbin/oeminfo_nvm_server \
        $(LOCAL_PATH)/recovery/sbin/recovery:recovery/sbin/recovery \
        $(LOCAL_PATH)/recovery/sbin/teecd:recovery/sbin/teecd \
        $(LOCAL_PATH)/recovery/sbin/wpa_cli:recovery/sbin/wpa_cli \
        $(LOCAL_PATH)/recovery/sbin/wpa_cli_hisi:recovery/sbin/wpa_cli_hisi \
        $(LOCAL_PATH)/recovery/sbin/wpa_supplicant:recovery/sbin/wpa_supplicant \
        $(LOCAL_PATH)/recovery/sbin/wpa_supplicant_hisi:recovery/sbin/wpa_supplicant_hisi \

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/recovery/fstab.hi6210sft:recovery/fstab.hi6210sft \
        $(LOCAL_PATH)/recovery/init:recovery/init \
        $(LOCAL_PATH)/recovery/init.chip.usb.rc:recovery/init.chip.usb.rc \
        $(LOCAL_PATH)/recovery/init.rc:recovery/init.rc \
        $(LOCAL_PATH)/recovery/init.recovery.hi110x.rc:recovery/init.recovery.hi110x.rc \
        $(LOCAL_PATH)/recovery/init.recovery.hi6210sft.rc:recovery/init.recovery.hi6210sft.rc \
        $(LOCAL_PATH)/recovery/ueventd.5801.rc:recovery/ueventd.5801.rc \
        $(LOCAL_PATH)/recovery/ueventd.6165.rc:recovery/ueventd.6165.rc \
        $(LOCAL_PATH)/recovery/ueventd.10106.rc:recovery/ueventd.10106.rc \
        $(LOCAL_PATH)/recovery/ueventd.51054.rc:recovery/ueventd.51054.rc \
        $(LOCAL_PATH)/recovery/ueventd.102173.rc:recovery/ueventd.102173.rc \
        $(LOCAL_PATH)/recovery/ueventd.142782.rc:recovery/ueventd.142782.rc \
        $(LOCAL_PATH)/recovery/ueventd.hi6210sft.rc:recovery/ueventd.hi6210sft.rc

# Sensors
PRODUCT_PACKAGES += \
	keystore.default \
	local_time.default \
	power.default \
	vibrator.default
	
# USB
PRODUCT_PACKAGES += \
	com.android.future.usb.accessory

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    	persist.sys.usb.config=mtp

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.isUsbOtgEnabled=true

# Wifi
PRODUCT_PACKAGES := \
	libwpa_client \
	wpa_supplicant

# Zygote
ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.zygote=zygote64_32

PRODUCT_COPY_FILES += \
	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.zygote=zygote64_32
