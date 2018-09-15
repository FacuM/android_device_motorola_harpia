#
# Copyright (C) 2016 The CyanogenMod Project
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

include device/motorola/msm8916-common/BoardConfigCommon.mk

-include vendor/motorola/harpia/BoardConfigVendor.mk

DEVICE_PATH := device/motorola/harpia

# Asserts
TARGET_OTA_ASSERT_DEVICE := harpia,harpia_retail

# Audio
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
# AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_RECORD_PLAY_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_harpia
TARGET_RECOVERY_DEVICE_MODULES := libinit_harpia

# Kernel
TARGET_KERNEL_CONFIG := harpia_defconfig
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/kernel/motorola/msm8916/toolchain/gcc-linaro-7.3.1-2018.05-x86_64_arm-linux-gnueabihf/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-gnueabihf-

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216     # 16384 * 1024 mmcblk0p31
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456   # 262144 * 1024 mmcblk0p38
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616 # 16484 * 1024 mmcblk0p32
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560 # 2621440 * 1024 mmcblk0p41
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608   # 8192 * 1024 mmcblk0p29
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11775377408 # 11499392 * 1024 mmcblk0p42

# Power
TARGET_POWERHAL_HEADER_PATH := $(DEVICE_PATH)/power

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8916
TARGET_QCOM_AUDIO_VARIANT := caf-msm8916
TARGET_QCOM_MEDIA_VARIANT := caf-msm8916
TARGET_QCOM_BLUETOOTH_VARIANT := caf-msm8916

#TW_THEME := portrait_xhdpi
