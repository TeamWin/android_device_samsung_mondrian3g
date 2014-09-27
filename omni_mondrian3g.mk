$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/mondrian3g/overlay

LOCAL_PATH := device/samsung/mondrian3g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/file_contexts:recovery/root/prebuilt_file_contexts \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
	$(LOCAL_PATH)/init.recovery.qcom.rc:root/init.recovery.qcom.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := omni_mondrian3g
PRODUCT_DEVICE := mondrian3g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := mondrian3g
