$(call inherit-product, device/malata/smb-common/smb-common.mk)

$(call inherit-product-if-exists, vendor/malata/smb_a1002/smb_a1002-vendor.mk)

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
        LOCAL_KERNEL := device/malata/smb_a1002/kernel.36
else
        LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/wifi/bcm4329.36.ko:system/lib/hw/wlan/bcm4329.ko \
    $(LOCAL_PATH)/init.harmony.rc:root/init.harmony.rc

PRODUCT_PACKAGES += \
    libreference-ril

PRODUCT_NAME := full_smb_a1002
PRODUCT_DEVICE := smb_a1002
