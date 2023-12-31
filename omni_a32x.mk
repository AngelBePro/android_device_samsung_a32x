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

# Inherit from a32x device
$(call inherit-product, device/samsung/a32x/device.mk)

PRODUCT_DEVICE := a32x
PRODUCT_NAME := omni_a32x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A326B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a32xxx-user 12 SP1A.210812.016 A326BXXS7CWI4 release-keys"

BUILD_FINGERPRINT := samsung/a32xxx/a32x:12/SP1A.210812.016/A326BXXS7CWI4:user/release-keys
