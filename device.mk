#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/gt5note10wifi/gt5note10wifi-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/gte-common/device-common.mk)

LOCAL_PATH := device/samsung/gt5note10wifi

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Audio
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
	$(LOCAL_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-uart"

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
    $(LOCAL_PATH)/configs/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/A05QF_sr544_module_info.xml \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/B05QF_sr544_module_info.xml \
    $(LOCAL_PATH)/configs/camera/A05QF_sr544_module_info.xml:system/etc/C05QF_sr544_module_info.xml

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gt5note10wifi/overlay

# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap
