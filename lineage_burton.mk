#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from burton device
$(call inherit-product, device/motorola/burton/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_burton
PRODUCT_DEVICE := burton
PRODUCT_MODEL := Motorola Edge Plus

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="burton_retail-user 12 S1PBS32.41-10-17-3 6dc27f-b604a release-keys" \
    BuildFingerprint=motorola/burton_retail/burton:12/S1PBS32.41-10-17-3/6dc27f-b604a:user/release-keys \
    DeviceProduct=burton_retail \
    SystemName=burton_retail
