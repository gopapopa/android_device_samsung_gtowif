$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifneq ($(wildcard $(SRC_TARGET_DIR)/product/non_ab_device.mk),)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)
endif

$(call inherit-product, $(LOCAL_PATH)/device.mk)

$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := gtowifi
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_gtowifi
PRODUCT_MODEL := SM-T290

PRODUCT_SYSTEM_NAME := gtowifixx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := gtowifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="gtowifixx-user 11 RP1A.200720.012 T290XXU3CVG3 release-keys" \
    BuildFingerprint="samsung/gtowifixx/gtowifi:11/RP1A.200720.012/T290XXU3CVG3:user/release-keys"
