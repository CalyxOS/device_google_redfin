# Inherit some common stuff.
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Device specific overlay
DEVICE_PACKAGE_OVERLAYS += device/google/redfin/overlay-calyx

# Inherit device configuration
$(call inherit-product, device/google/redfin/device-calyx.mk)
$(call inherit-product, device/google/redbull/device-calyx.mk)
$(call inherit-product, device/google/redfin/aosp_redfin.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := calyx_redfin
PRODUCT_MODEL := Pixel 5
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES := \
    BuildDesc=redfin-user[[:space:]]15[[:space:]]UP1A.231105.001.B2[[:space:]]11260668[[:space:]]release-keys \
    BuildFingerprint=google/redfin/redfin:15/UP1A.231105.001.B2/11260668:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/google/redfin/redfin-vendor.mk)
