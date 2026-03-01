#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from plato device
$(call inherit-product, device/xiaomi/plato/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := plato
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_MODEL := 22071212AG
PRODUCT_NAME := lineage_plato
PRODUCT_SYSTEM_NAME := plato_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="plato-user 15 AP3A.240905.015.A2 OS2.0.212.0.VLQMIXM release-keys" \
    BuildFingerprint=Xiaomi/plato/plato:15/AP3A.240905.015.A2/OS2.0.212.0.VLQMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)