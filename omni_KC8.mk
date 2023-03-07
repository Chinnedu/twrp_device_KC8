#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_DEVICE := KC8
PRODUCT_NAME := omni_KC8
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Tecno Spark 4
PRODUCT_MANUFACTURER := tecno

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.boot@1.1-impl-recovery \
    android.hardware.boot@1.1-impl

PRODUCT_GMS_CLIENTID_BASE := android-transsion-tecno-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_kc8_h6110-user 10 QP1A.190711.020 127972 release-keys"

BUILD_FINGERPRINT := TECNO/H6110/TECNO-KC8:10/QP1A.190711.020/LMN-OP-210708V261:user/release-keys

# Define Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_TARGET_VNDK_VERSION := 28
PRODUCT_SHIPPING_API_LEVEL := 28
