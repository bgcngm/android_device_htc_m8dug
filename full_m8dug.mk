#
# Copyright (C) 2015 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#

# Inherit m8-specific vendor tree
# (let's share proprietary files with other m8 variants)
$(call inherit-product-if-exists, vendor/htc/m8/m8-vendor.mk)

# Inherit from m8dug
$(call inherit-product, device/htc/m8dug/device.mk)

PRODUCT_NAME := full_m8dug
PRODUCT_DEVICE := m8dug
PRODUCT_BRAND := htc
PRODUCT_MANUFACTURER := htc
PRODUCT_MODEL := m8dug
