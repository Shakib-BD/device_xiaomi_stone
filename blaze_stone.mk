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

# Inherit some common Project-Blaze stuff
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Blaze Stuff
BLAZE_BUILD_TYPE := UNOFFICIAL
BLAZE_MAINTAINER := Shakib (@Shakib_BD)
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := stone
PRODUCT_NAME := blaze_stone
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22071219CG
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT :=POCO/stone_p_id/stone:13/TP1A.220624.014/V14.0.5.0.TLUIDXM:user/release-keys
PRIVATE_BUILD_DESC="stone_p_global-user 13 TP1A.220624.014 V14.0.5.0.TLUIDXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
