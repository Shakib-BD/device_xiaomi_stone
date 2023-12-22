#
# Copyright (C) 2023 droidxOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/stone/device.mk)

# Inherit some common SuperiorOS stuff
$(call inherit-product, vendor/superior/config/common.mk)

# Maintainer Flag (one word only/no spacing)
MAINTAINER := SHAKIB(@David_Nill)

# GAPPS build flag, if not defined build type is vanilla
SUPERIOR_GAPPS = core

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Disable/Enable Blur Support, default is false
TARGET_ENABLE_BLUR := false

# Officialify 
SUPERIOR_OFFICIAL := false

# Superior Prebuilts
USE_QUICKPIC := false
USE_DUCKDUCKGO := false
USE_MOTO_CALCULATOR := true

# Quick Tap Feature
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_DEVICE := stone
PRODUCT_NAME := superior_stone
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 22071219CG
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT :=POCO/stone_p_id/stone:13/TP1A.220624.014/V14.0.5.0.TLUIDXM:user/release-keys
PRIVATE_BUILD_DESC="stone_p_global-user 13 TP1A.220624.014 V14.0.5.0.TLUIDXM release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
