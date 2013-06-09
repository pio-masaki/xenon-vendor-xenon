# Specify phone tech before including full_phone
$(call inherit-product, vendor/xenonhd/configs/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := dlx

$(call inherit-product, vendor/xenonhd/products/common.mk)

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/xenonhd/configs/vzw.mk)

# Inherit device configuration
$(call inherit-product, device/htc/dlx/device_dlx.mk)

# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk

# Device naming
PRODUCT_DEVICE := dlx
PRODUCT_NAME := xenonhd_dlx
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Droid DNA
PRODUCT_MANUFACTURER := HTC


# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_dlx BUILD_FINGERPRINT=verizon_wwe/dlx/dlx:4.1.1/JRO03C/147796.1:user/release-keys PRIVATE_BUILD_DESC="2.06.605.1 CL147796 release-keys" BUILD_NUMBER=123160

PRODUCT_COPY_FILES += \
    vendor/xenonhd/proprietary/dlx/media/bootanimation.zip:system/media/bootanimation.zip
    
 
