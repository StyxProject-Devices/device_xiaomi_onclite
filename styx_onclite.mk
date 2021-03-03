#
# Copyright (C) 2020-2021 The PixelPlusUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from onclite device
$(call inherit-product, device/xiaomi/onclite/device.mk)

# Inherit some PixelPlusUI stuff.
$(call inherit-product, vendor/styx/config/common.mk)
TARGET_BOOT_ANIMATION_RES := 720
STYX_BUILD_VARIANT := ALPHA

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := styx_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210305.006 7119741 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
