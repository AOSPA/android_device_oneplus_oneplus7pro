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

# Inherit from oneplus sm8150-common
-include device/oneplus/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/oneplus7pro

ifeq ($(TARGET_IS_ONEPLUS_T_DEVICE),true)
TARGET_OTA_ASSERT_DEVICE := oneplus7tpro,OnePlus7TPro
else
TARGET_OTA_ASSERT_DEVICE := oneplus7pro,OnePlus7Pro
endif

# Display
TARGET_SCREEN_DENSITY := 560

# Recovery
ifneq ($(TARGET_IS_ONEPLUS_T_DEVICE),true)
TARGET_PREBUILT_RECOVERY_RAMDISK_CPIO := $(DEVICE_PATH)/ramdisk-recovery.cpio
endif

# Fingerprint
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_X = 610
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_POS_Y = 2618
SOONG_CONFIG_ONEPLUS_MSMNILE_FOD_SIZE = 220

# Sensors
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_X := 1000
SOONG_CONFIG_ONEPLUS_MSMNILE_SENSORS_ALS_POS_Y := 260

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# inherit from the proprietary version
-include vendor/oneplus/oneplus7pro/BoardConfigVendor.mk
