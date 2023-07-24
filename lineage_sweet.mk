#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

RISING_MAINTAINER := Harikumar
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
SUSHI_BOOTANIMATION := 1080
WITH_GMS := false
TARGET_CORE_GMS := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_BUILD_GRAPHENEOS_CAMERA := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
