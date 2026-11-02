#
# Copyright (C) 2023 The LineageOS Project
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

# NFC
TARGET_USES_SLSI_NFC := true

# Inherit device configuration
$(call inherit-product, device/samsung/m31/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Client-id base
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	BuildDesc="m31nsxx-user 12 SP1A.210812.016 M315FXXU3CWA2 release-keys" \
	BuildFingerprint="samsung/m31nsxx/m31:12/SP1A.210812.016/M315FXXU3CWA2:user/release-keys"

## Device configuration
PRODUCT_NAME := lineage_m31
PRODUCT_DEVICE := m31
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := Galaxy M31
PRODUCT_MANUFACTURER := samsung

#DerpFest-AOSP
DERPFEST_BUILD_TYPE := Official
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_NOT_USES_BLUR := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_ACCORD ?= false
TARGET_SUPPORTS_OMX_SERVICE := false
BYPASS_CHARGE_SUPPORTED := true
TARGET_USES_DOLBY := true
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true

#GMS
WITH_GMS := true
WITH_GAPPS := true
WITH_GMS_COMMS_SUITE := false

PRODUCT_COPY_FILES += \
      vendor/pixel/gms/common/proprietary/product/etc/permissions/com.google.android.dialer.support.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.google.android.dialer.support.xml

PRODUCT_PACKAGES += \
      GoogleDialer \
      PrebuiltBugle \
      com.google.android.dialer.support
      
# Boot Properties 
TARGET_BOOT_ANIMATION_RES := 1080
USE_LEGACY_BOOTANIMATION := true

# Charging Animation 
TARGET_INCLUDE_PIXEL_CHARGER := true

# Disable UDFPS animations ( unsupported )
EXTRA_UDFPS_ICONS := false

# Enable Material Design 3 Expressive
PRODUCT_PRODUCT_PROPERTIES += \
    is_expressive_design_enabled=true