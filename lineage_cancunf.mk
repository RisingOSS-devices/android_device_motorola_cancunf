#
# Copyright (C) 2024 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/motorola/cancunf/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_cancunf
PRODUCT_DEVICE := cancunf
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g54 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cancunf_g_sysq \
    PRIVATE_BUILD_DESC="cancunf_g_sysq-user 14 U1TDS34.94-12-7-6 42110d-b0bf58 release-keys"

BUILD_FINGERPRINT := motorola/cancunf_g_sysq/cancunf:14/U1TDS34.94-12-7-6/42110d-b0bf58:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Mtk 7020" \
    RISING_MAINTAINER="Ayan"
TARGET_ENABLE_BLUR := true
RISING_OFFICIAL := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
RISING_MAINTAINER=Ayan
