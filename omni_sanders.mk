#
# Copyright (C) 2015 The CyanogenMod Project
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

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from sanders device
$(call inherit-product, device/motorola/sanders/device.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# CarrierConfig
PRODUCT_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sanders
PRODUCT_NAME := lineage_sanders
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto G5S Plus"

# for specific
$(call inherit-product, vendor/motorola/sanders/sanders-vendor.mk)
