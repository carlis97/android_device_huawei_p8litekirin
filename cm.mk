# Cyanogen Mod
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_RELEASE_NAME := p8litekirin

# Device
$(call inherit-product, device/huawei/p8litekirin/full_p8litekirin.mk)

PRODUCT_DEVICE := p8litekirin
PRODUCT_NAME := cm_p8litekirin
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := ALE-L21
PRODUCT_MANUFACTURER := Huawei
