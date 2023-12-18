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

# Inherit some common AfterLifeProject stuff
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# AfterLife flags
AFTERLIFE_MAINTAINER := Shakib

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Offline Charging
USE_PIXEL_CHARGING := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := false

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_DEVICE := stone
PRODUCT_NAME := afterlife_stone
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22071219CG
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT :=POCO/stone_p_id/stone:13/TP1A.220624.014/V14.0.5.0.TLUIDXM:user/release-keys
PRIVATE_BUILD_DESC="stone_p_global-user 13 TP1A.220624.014 V14.0.5.0.TLUIDXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
