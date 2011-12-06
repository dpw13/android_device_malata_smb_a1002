# Release name
PRODUCT_RELEASE_NAME := smb_a1002

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/malata/smb_a1002/smb_a1002.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := smb_a1002
PRODUCT_NAME := cm_smb_a1002
PRODUCT_BRAND := Malata
PRODUCT_MODEL := Harmony

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=ITL41D BUILD_DISPLAY_ID=ITL41D BUILD_FINGERPRINT="google/malata/smb_a1002:4.0.1/ITL41D/223971:user/release-keys" PRVIATE_BUILD_DESC="malata-user 4.0.1 ITL41D 223971 release-keys"
