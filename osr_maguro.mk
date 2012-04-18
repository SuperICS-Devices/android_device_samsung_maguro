## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := GNexus
PRODUCT_VERSION_MAINTENANCE := 2

# Boot animation	
TARGET_BOOTANIMATION_NAME := vertical-720x1280

$(call inherit-product, vendor/osr/products/asian.mk)

$(call inherit-product, vendor/osr/products/dspmanager.mk)

$(call inherit-product, vendor/osr/products/xhdpi.mk)

$(call inherit-product, vendor/osr/products/high_telephony_device.mk)

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

VENDOR_COPY_USER_DATA := false
VENDOR_WIPE_USER_DATA := false

PRODUCT_LOCALES := es_ES fr_FR it_IT de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO en_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN
