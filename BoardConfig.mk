# 64 Bit
ANDROID_64=true
TARGET_USES_64_BIT_BINDER := true
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Arch
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_VARIANT := cortex-a15
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi

# Blobs
-include vendor/huawei/p8litekirin/BoardConfigVendor.mk

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/p8litekirin/bluetooth
BOARD_CUSTOM_BT_CONFIG := device/huawei/p8litekirin/bluetooth/libbt_p8litekirin.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# Board
BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := hi6210sft
TARGET_BOARD_INFO_FILE := device/huawei/p8litekirin/board-info.txt
TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOARD_PLATFORM_GPU := mali-450m

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_NO_BOOTLOADER := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Chromium
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Display
DEVICE_RESOLUTION := 720x1280

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Graphics
ANDROID_ENABLE_RENDERSCRIPT := true
TARGET_HARDWARE_3D := true
USE_OPENGL_RENDERER := true

# Kernel
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 no_irq_affinity androidboot.selinux=disabled
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000

TARGET_PREBUILT_KERNEL := device/huawei/p8litekirin/kernel

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168

# Ramdisk
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# Recovery
BOARD_RECOVERY_NEEDS_FBIOPAN_DISPLAY := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_FSTAB_VERSION := 2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/huawei/p8litekirin/ramdisk/fstab.hi6210sft
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888

# RIL
BOARD_RIL_CLASS := ../../../device/huawei/p8litekirin/ril/

# UserIMAGES
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_HISI_DTIMAGE := true

# Wifi
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WLAN_DEVICE_REV            := bcm4343s
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_BAND 			 := 802_11_ABG
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcm4343s_apsta_hw.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/system/vendor/firmware/fw_bcm4343s_p2p_hw.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcm4343s_hw.bin"
WPA_SUPPLICANT_VERSION           := VER_0_8_X
