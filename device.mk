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

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/oneplus/oneplus7pro/oneplus7pro-vendor.mk)

# Camera
PRODUCT_PACKAGES += \
    vendor.pa.camera.motor@1.0 \
    vendor.pa.camera.motor@1.0-service.oneplus_oneplus7pro \
    OnePlusCameraHelper

# ParanoidDoze
PRODUCT_PACKAGES += ParanoidDoze

# Display
PRODUCT_PACKAGES += \
	init.display.oneplus7pro.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-pa

# Properties
-include $(LOCAL_PATH)/device-props.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit from sm8150-common
$(call inherit-product, device/oneplus/sm8150-common/sm8150.mk)
