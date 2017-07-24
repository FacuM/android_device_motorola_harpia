$(call inherit-product, device/motorola/harpia/full_harpia.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk) -- only for 64bit phones
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/harpia/device.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
#BOARD_VENDOR := 
#PRODUCT_BRAND := 
#PRODUCT_DEVICE := 
#PRODUCT_NAME := xenonhd_harpia
#PRODUCT_MANUFACTURER := 
#PRODUCT_MODEL := 
#TARGET_VENDOR := 

# Root options
ROOT_METHOD=magisk
# Without any of these flags the builds will be unrooted and won't include Adaway & KernelAdiutor

# 3rd party apps - choose which you want to build
PRODUCT_PACKAGES += \
    AdAway \
    KernelAdiutor \
    MiXplorer \
    Camera2

# Use the latest approved GMS identifiers unless running a signed build
#ifneq ($(SIGN_BUILD),true)
#PRODUCT_BUILD_PROP_OVERRIDES += \
#    BUILD_FINGERPRINT=specific for your device \
#    PRIVATE_BUILD_DESC="specific for your device"
#endif

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := harpia
PRODUCT_NAME := xenonhd_harpia
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := harpia
