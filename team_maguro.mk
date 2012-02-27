## Specify phone tech before including full_phone
$(call inherit-product, vendor/osr/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := GNexus

$(call inherit-product, vendor/osr/config/asian.mk)

$(call inherit-product, vendor/osr/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ROMControl

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/maguro

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := team_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GNexus BUILD_ID=IML74K BUILD_DISPLAY_ID=IML74K BUILD_FINGERPRINT="google/Gnexus/maguro:4.0.2/ICL53F/235179:user/release-keys" PRIVATE_BUILD_DESC="GNexus-user 4.0.2 ICL53F 235179 release-keys"

# Inherit drm blobs
-include vendor/osr/config/common_drm.mk

# Inherit Facelock blobs
-include vendor/osr/config/common_facelock.mk

# Inherit Gapps blobs
-include vendor/osr/config/common_gapps.mk
