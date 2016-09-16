$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

$(call inherit-product, device/huawei/p8litekirin/p8litekirin.mk)

PRODUCT_NAME := full_p8litekirin
PRODUCT_DEVICE := p8litekirin
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on P8Lite
PRODUCT_MANUFACTURER := HUAWEI


