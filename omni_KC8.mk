#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from KC8 device
$(call inherit-product, device/tecno/KC8/device.mk)

PRODUCT_DEVICE := KC8
PRODUCT_NAME := omni_KC8
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Tecno Spark 4
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion-tecno-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_kc8_h6110-user 10 QP1A.190711.020 127972 release-keys"

BUILD_FINGERPRINT := TECNO/H6110/TECNO-KC8:10/QP1A.190711.020/LMN-OP-210708V261:user/release-keys
