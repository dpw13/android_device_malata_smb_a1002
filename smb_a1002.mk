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
    $(LOCAL_PATH)/wifi/fw_bcm4329.bin:system/lib/hw/wlan/fw_bcm4329.bin \
    $(LOCAL_PATH)/wifi/nvram.txt:system/lib/hw/wlan/nvram.txt

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/at168_touch.idc:system/usr/idc/at168_touch.idc

PRODUCT_PACKAGES += \
    libreference-ril \
    libaudio.primary.$(TARGET_BOOTLOADER_BOARD_NAME) \
    audio_policy.$(TARGET_BOOTLOADER_BOARD_NAME)
