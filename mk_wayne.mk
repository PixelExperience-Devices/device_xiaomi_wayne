#
# Copyright (C) 2018 The Mokee Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)
$(call inherit-product-if-exists, vendor/xiaomi/MiuiCamera/wayne.mk)

# Inherit from wayne device
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Inherit some common Mokee stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_NAME := mk_wayne
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := wayne
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := MI 6X

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="wayne" \
    PRODUCT_NAME="wayne" \
    BUILD_FINGERPRINT="xiaomi/wayne/wayne:9/PKQ1.180904.001/9.4.18:user/release-keys" \
    PRIVATE_BUILD_DESC="wayne-user 9 PKQ1.180904.001 9.4.18 release-keys"

TARGET_VENDOR := Xiaomi
