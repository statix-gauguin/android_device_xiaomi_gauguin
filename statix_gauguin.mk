#
# Copyright (C) 2023 StatiXOS
# Copyright (C) 2023 Hridaya Prajapati
#
# SPDX-License-Identifer: GPL-2.0-only

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Disable GApps for bringup
TARGET_DOES_NOT_USE_GAPPS := true

# Inherit statix common configuration
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/gauguin/device.mk)

# Target specifications
PRODUCT_NAME := statix_gauguin
PRODUCT_DEVICE := gauguin
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
