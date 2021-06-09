#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
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

COMMON_PATH := device/huawei/t2-common

TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

BUILD_BROKEN_DUP_RULES := true
#ALLOW_MISSING_DEPENDENCIES=true

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
#BOARD_BOOTIMG_HEADER_VERSION := 0

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Apex
TARGET_FLATTEN_APEX := true

# Audio
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
#QCOM_BT_USE_BTNV := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_PROCESS_SDK_VERSION_OVERRIDE += \
    /vendor/bin/cameraserver=23 \
    /vendor/bin/mediaserver=23 \
    /vendor/bin/mm-qcamera-daemon=23

# DexPreopt debug info
WITH_DEXPREOPT_DEBUG_INFO := false

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_CHARGER_ENABLE_SUSPEND := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Display
TARGET_HAS_HDR_DISPLAY := false
TARGET_HAS_WIDE_COLOR_DISPLAY := false

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x2000U | 0x02000000U

TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_ION := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
##TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
# blockdev --getbsz /dev/block/mmcblk0p19
BOARD_FLASH_BLOCK_SIZE := 131072
# /proc/partitions * 2 * BLOCK_SIZE (512) = size in bytes
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11490278400
BOARD_ROOT_EXTRA_FOLDERS := firmware persist cust log

# FM
#AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
#BOARD_HAVE_QCOM_FM := true
#TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXCLUDE_SERIF_FONTS := true
SMALLER_FONT_FOOTPRINT := true

# GPS
#TARGET_NO_RPC := true

# Lineage Hardware
JAVA_SOURCE_OVERLAYS := org.lineageos.hardware|$(COMMON_PATH)/lineagehw|**/*.java

# LMKD stats logging
TARGET_LMKD_STATS_LOG := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_DTBTOOL_ARGS := -2
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/huawei/t2-common/

# Power
TARGET_HAS_NO_POWER_STATS := true
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(COMMON_PATH)/power/power_ext.c
TARGET_TAP_TO_WAKE_NODE := "/sys/touch_screen/tap_to_wake"
#TARGET_TAP_TO_WAKE_NODE := "/sys/touch_screen/easy_wakeup_gesture"

# Properties
#TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop

# QCOM
BOARD_USES_QCOM_HARDWARE := true

# Radio
MALLOC_SVELTE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.qcom
BOARD_NO_SECURE_DISCARD := true
LZMA_RAMDISK_TARGETS := recovery
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_t2

# Releasetools
#TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)
#Release tools
#TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)/releasetools

# Security patch level
VENDOR_SECURITY_PATCH := 2017-04-01

# SELinux
#BOARD_SEPOLICY_VERS := $(PLATFORM_SDK_VERSION).0
#SELINUX_IGNORE_NEVERALLOWS := true
include device/qcom/sepolicy-legacy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    $(COMMON_PATH)/sepolicy_tmp

# Shims
TARGET_LD_SHIM_LIBS := \
    /vendor/lib64/libflp.so|libshims_flp.so \
    /vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /vendor/lib64/libwcnss_qmi.so|liboeminfo.so
#    /vendor/lib64/libril-qc-qmi-1.so|libshim_hwril.so \

# ExFat Support
TARGET_EXFAT_DRIVER := sdfat

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn

PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_USES_WCNSS_CTRL := true
TARGET_PROVIDES_WCNSS_QMI := true

WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_HIDL_FEATURE_DISABLE_AP_MAC_RANDOMIZATION := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
include vendor/huawei/federer/BoardConfigVendor.mk
