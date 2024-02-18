#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from chatora device
$(call inherit-product, device/kyocera/chatora/device.mk)

PRODUCT_DEVICE := chatora
PRODUCT_NAME := lineage_chatora
PRODUCT_BRAND := KYOCERA
PRODUCT_MODEL := X3-KC
PRODUCT_MANUFACTURER := kyocera

PRODUCT_GMS_CLIENTID_BASE := android-kyocera

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="X3-KC-user 10 3.350MI.0334.a 3.350MI.0334.a release-keys"

BUILD_FINGERPRINT := KYOCERA/X3-KC/X3-KC_sprout:10/3.350MI.0334.a/3.350MI.0334.a:user/release-keys
