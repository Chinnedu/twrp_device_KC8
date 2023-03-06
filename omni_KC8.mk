#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-KC8 device
$(call inherit-product, device/tecno/KC8/device.mk)

PRODUCT_DEVICE := KC8
PRODUCT_NAME := omni_KC8
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KC8
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion-tecno-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_kc8_h6110-user 10 QP1A.190711.020 127972 release-keys"

BUILD_FINGERPRINT := TECNO/H6110/TECNO-KC8:10/QP1A.190711.020/LMN-OP-210708V261:user/release-keys
