#
# Copyright (C) 2011 The CyanogenMod Project
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

# Also get non-open-source specific aspects if available
$(call inherit-product, vendor/samsung/skyrocket/skyrocket-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/skyrocket/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \

# Bluetooth firmware
PRODUCT_COPY_FILES += \
    device/samsung/skyrocket/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# Inherit from celox-common
$(call inherit-product, device/samsung/celox-common/celox-common.mk)
