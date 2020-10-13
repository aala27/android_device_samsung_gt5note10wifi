# Inherit from common
$(call inherit-product, device/samsung/gte-common/rr.mk)

$(call inherit-product, device/samsung/gt5note10wifi/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 768

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gt5note10wifi
PRODUCT_NAME := rr_gt5note10wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-P550
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-samsung


# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
  TARGET_DEVICE=gt5note10wifi \
  PRODUCT_NAME=gt5note10wifixx \
  PRIVATE_BUILD_DESC="gt5note10wifixx-user 7.1.1 NMF26X P550XXU1CQI8 release-keys"


BUILD_FINGERPRINT=samsung/gt5note10wifixx/gt5note10wifi:7.1.1/NMF26X/P550XXU1CQI8:user/release-keys
