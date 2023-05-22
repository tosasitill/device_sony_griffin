#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from griffin device
$(call inherit-product, device/sony/griffin/device.mk)

PRODUCT_DEVICE := griffin
PRODUCT_NAME := omni_griffin
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia 1
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="J9110_CN-user 11 55.2.A.4.154 055002A004015404257406098 release-keys"

BUILD_FINGERPRINT := Sony/J9110_CN/J9110:11/55.2.A.4.154/055002A004015404257406098:user/release-keys
