#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/asus/rog5s/device.mk)

# Inherit from the Lineage configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := rog5s
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := ASUS_I005D
PRODUCT_NAME := lineage_rog5s

PRODUCT_GMS_CLIENTID_BASE := android-asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_I005D \
    TARGET_PRODUCT=WW_I005D

BUILD_FINGERPRINT := asus/WW_I005D/ASUS_I005D:13/TKQ1.220807.001/33.0210.0210.200:user/release-keys

# Disable build-time VINTF manifest checks for development builds
PRODUCT_ENFORCE_VINTF_MANIFEST := false
