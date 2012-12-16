ifneq ($(TARGET_BOOTANIMATION_NAME),)
    PRODUCT_COPY_FILES += \
        vendor/jbmp/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
    vendor/jbmp/CHANGELOG.mkdn:system/etc/ChangeLog-JBMP.txt

# Bootaudio
PRODUCT_COPY_FILES += \
    vendor/jbmp/prebuilt/common/media/boot_audio.mp3:system/media/boot_audio.mp3

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/cm/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/cm/prebuilt/common/bin/50-cm.sh:system/addon.d/50-cm.sh

# init.d support
PRODUCT_COPY_FILES += \
    vendor/jbmp/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/jbmp/prebuilt/common/etc/init.d/02recversion:system/etc/init.d/02recversion \
    vendor/cm/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Compcache/Zram support
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/cm/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/cm/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache

# Nam configuration script
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bin/modelid_cfg.sh:system/bin/modelid_cfg.sh

PRODUCT_COPY_FILES +=  \
    vendor/jbmp/prebuilt/common/app/Nova.apk:system/app/Nova.apk \
    vendor/jbmp/proprietary/Term.apk:system/app/Term.apk \
    vendor/jbmp/proprietary/lib/armeabi/libjackpal-androidterm4.so:system/lib/libjackpal-androidterm4.so

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# This is CM!
PRODUCT_COPY_FILES += \
    vendor/cm/config/permissions/com.cyanogenmod.android.xml:system/etc/permissions/com.cyanogenmod.android.xml

# T-Mobile theme engine
include vendor/cm/config/themes_common.mk

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME \
    Superuser \
    Provision \
    su

# Optional CM packages
PRODUCT_PACKAGES += \
    VoiceDialer \
    SoundRecorder \
    LiveWallpapersPicker \
    LiveWallpapers \
    Galaxy4 \
    PhaseBeam \

# Custom packages
PRODUCT_PACKAGES += \
    libcyanogen-dsp \
    DSPManager \
    Apollo \
    CMFileManager \
    JBMPWallpapers \
    librs_jni

# Extra tools in CM
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    vim \
    nano \
    htop \
    powertop \
    lsof

PRODUCT_BUILDTYPE := RC

JBMP_VERSION := $(PRODUCT_BUILDTYPE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)
JBMP_NAMEVER := JBMP-$(PRODUCT_BUILDTYPE)$(PRODUCT_VERSION_DEVICE_SPECIFIC)

PRODUCT_PROPERTY_OVERRIDES += \
  ro.modversion=$(JBMP_VERSION) \
  ro.modnamever=$(JBMP_NAMEVER)
