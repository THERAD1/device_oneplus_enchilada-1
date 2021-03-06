#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
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

# Inherit from enchilada device
$(call inherit-product, device/oneplus/enchilada/device.mk)

# Inherit some cmmon corvus stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080
scr_resolution := 1080

# Gapps
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
ANCIENT_GAPPS := true

# Ancient Official-ify
#ANCIENT_OFFICIAL := true
#FORCE_OTA := true
#TARGET_FACE_UNLOCK_SUPPORTED := true

TARGET_INCLUDE_WIFI_EXT := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ancient_enchilada
PRODUCT_DEVICE := enchilada
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONEPLUS A6003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus6 \
    PRODUCT_NAME=OnePlus6 \
    PRIVATE_BUILD_DESC="OnePlus6-user 8.1.0 OPM1.171019.011 273 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.210205.004/7038034:user/release-keys
