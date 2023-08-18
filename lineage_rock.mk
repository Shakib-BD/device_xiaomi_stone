#
# Copyright (C) 2019 Potato Open Sauce Project
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/rock/device.mk)

# Inherit some common Pixel-Experience stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rock
PRODUCT_NAME := lineage_rock
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := POCO M5
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

BUILD_FINGERPRINT :=Xiaomi/missi/missi:13/TP1A.220624.014/V14.0.7.0.TLUMIXM:user/release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phoneext4_global-user 13 TP1A.220624.014 V14.0.7.0.TLUMIXM release-keys"
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
RISING_MAINTAINER := "RAFI_X"
TARGET_ENABLE_BLUR := true
WITH_GMS := true
TARGET_CORE_GMS := true
