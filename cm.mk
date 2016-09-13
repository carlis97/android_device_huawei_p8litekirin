# Cyanogen Mod
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Device
$(call inherit-product, device/huawei/p8litekirin/p8litekirin.mk)

PRODUCT_DEVICE := p8litekirin
PRODUCT_NAME := cm_p8litekirin
PRODUCT_BRAND := huawei
PRODUCT_MODEL := P8 Lite
PRODUCT_MANUFACTURER := HUAWEI