#
# Copyright (C) 2023 LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/stone/device.mk)

# set viper4fx
$(call inherit-product, vendor/v4afx/config.mk)

# Inherit some common PixelOs stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64
TARGET_USE_PIXEL_FINGERPRINT := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := stone
PRODUCT_NAME := aosp_stone
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22071219CG
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230605.012/10204971:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230605.012 10204971 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
