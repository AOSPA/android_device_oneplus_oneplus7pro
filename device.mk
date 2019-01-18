#
# Copyright (C) 2019 The Paranoid Android Project
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

ifneq ($(TARGET_IS_ONEPLUS_T_DEVICE),true)
PRODUCT_SHIPPING_API_LEVEL := 28
else
PRODUCT_SHIPPING_API_LEVEL := 29
endif

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/oneplus/oneplus7pro/oneplus7pro-vendor.mk)

# Camera
PRODUCT_PACKAGES += \
    OnePlusCameraHelper

# Display
PRODUCT_PACKAGES += \
	init.display.oneplus7pro.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-pa

ifneq ($(TARGET_IS_ONEPLUS_T_DEVICE),true)
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-specific/op7
else
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-specific/op7t
endif

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from sm8150-common
$(call inherit-product, device/oneplus/sm8150-common/sm8150.mk)
