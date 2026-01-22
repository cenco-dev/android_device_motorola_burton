#
# Copyright (C) 2022-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/motorola/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/burton

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := burton

# Display
TARGET_SCREEN_DENSITY := 420

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/device_framework_matrix.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/ext_config/burton-default.config
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)

# Security patch level
VENDOR_SECURITY_PATCH := 2022-05-01

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600


# Touch
SOONG_CONFIG_NAMESPACES += MOTO_KONA_TOUCH
SOONG_CONFIG_MOTO_KONA_TOUCH := USE_TOUCH_POLLING_RATE
SOONG_CONFIG_MOTO_KONA_TOUCH_USE_TOUCH_POLLING_RATE := true

# Inherit from the proprietary version
-include vendor/motorola/burton/BoardConfigVendor.mk
