$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Otherwise, If you have 64-bit device, add the below line instead of above line
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)


# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace ${_CODENAME_} with your Device Name's Value.
# Replace ${_VENDORNAME_} with your Brand's / Manufacturer's Value.
PRODUCT_COPY_FILES += device/Vortex/HD65/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := $HD65
PRODUCT_NAME := omni_HD65
PRODUCT_BRAND := Vortex
PRODUCT_MODEL := HD65
PRODUCT_MANUFACTURER := Vortex

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Vortex/HD65/HD65:13/TP1A.220624.014/20230630:user/release-keys" \
    PRIVATE_BUILD_DESC="sys_mssi_64_cn-user 13 TP1A.220624.014 20230630 release-keys"
