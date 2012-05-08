## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := GNexus
PRODUCT_VERSION_MAINTENANCE := 8

# Boot animation	
TARGET_BOOTANIMATION_NAME := vertical-720x1280

#$(call inherit-product, vendor/osr/products/asian.mk)

$(call inherit-product, vendor/osr/products/dspmanager.mk)

$(call inherit-product, vendor/osr/products/nfc_enhanced.mk)

$(call inherit-product, vendor/osr/products/xhdpi.mk)

$(call inherit-product, vendor/osr/products/high_telephony_device.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ROMControl

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := osr_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Gnexus BUILD_FINGERPRINT="google/GNexus/maguro:4.0.4/IMM76D/299849:user/release-keys" PRIVATE_BUILD_DESC="GNexus-user 4.0.4 IMM76D 299849 release-keys"

# Inherit drm blobs
#-include vendor/osr/products/drm.mk

# Inherit Facelock blobs
-include vendor/osr/products/facelock.mk

# T-Mobile theme engine
include vendor/osr/products/themes_common.mk

VENDOR_COPY_USER_DATA := false
VENDOR_WIPE_USER_DATA := false

PRODUCT_LOCALES := es_ES fr_FR it_IT de_DE en_US pt_PT ca_ES en_GB
#PRODUCT_LOCALES := es_ES fr_FR it_IT de_DE nl_NL pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR en_US pt_PT ca_ES en_GB ro_RO
