## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := GNexus
PRODUCT_VERSION_MAINTENANCE := 0

# Boot animation	
TARGET_BOOTANIMATION_NAME := vertical-720x1280

$(call inherit-product, vendor/osr/products/asian.mk)

$(call inherit-product, vendor/osr/products/high_telephony_device.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ROMControl

#Add bootanimation SuperOSR
PRODUCT_COPY_FILES += \
device/samsung/maguro/bootanimation.zip:system/media/bootanimation.zip

# Tuna overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/osr/overlay/maguro

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := osr_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=Gnexus BUILD_FINGERPRINT="google/GNexus/maguro:4.0.4/IMM76D/299849:user/release-keys" PRIVATE_BUILD_DESC="GNexus-user 4.0.4 IMM76D 299849 release-keys"

# Inherit drm blobs
-include vendor/osr/products/drm.mk

# Inherit Facelock blobs
-include vendor/osr/products/facelock.mk

# Inherit Gapps blobs
-include vendor/osr/products/common_gapps.mk
