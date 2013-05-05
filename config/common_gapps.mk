ifeq ($(TARGET_INCLUDE_GAPPS),true)
    PRODUCT_COPY_FILES += \
        vendor/jbmp/prebuilt/gapps/addon.d/70-gapps.sh:system/addon.d/70-gapps.sh \
        vendor/jbmp/prebuilt/gapps/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
        vendor/jbmp/prebuilt/gapps/app/GmsCore.apk:system/app/GmsCore.apk \
        vendor/jbmp/prebuilt/gapps/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
        vendor/jbmp/prebuilt/gapps/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
        vendor/jbmp/prebuilt/gapps/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
        vendor/jbmp/prebuilt/gapps/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
        vendor/jbmp/prebuilt/gapps/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
        vendor/jbmp/prebuilt/gapps/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
        vendor/jbmp/prebuilt/gapps/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
        vendor/jbmp/prebuilt/gapps/app/MediaUploader.apk:system/app/MediaUploader.apk \
        vendor/jbmp/prebuilt/gapps/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
        vendor/jbmp/prebuilt/gapps/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
        vendor/jbmp/prebuilt/gapps/app/SetupWizard.apk:system/app/SetupWizard.apk \
        vendor/jbmp/prebuilt/gapps/app/Vending.apk:system/app/Vending.apk \
        vendor/jbmp/prebuilt/gapps/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
        vendor/jbmp/prebuilt/gapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
        vendor/jbmp/prebuilt/gapps/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
        vendor/jbmp/prebuilt/gapps/etc/permissions/features.xml:system/etc/permissions/features.xml \
        vendor/jbmp/prebuilt/gapps/etc/g.prop:system/etc/g.prop \
        vendor/jbmp/prebuilt/gapps/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
        vendor/jbmp/prebuilt/gapps/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
        vendor/jbmp/prebuilt/gapps/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
        vendor/jbmp/prebuilt/gapps/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
        vendor/jbmp/prebuilt/gapps/lib/libfrsdk.so:system/lib/libfrsdk.so \
        vendor/jbmp/prebuilt/gapps/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
        vendor/jbmp/prebuilt/gapps/lib/libgoogle_recognizer_jni.so:system/lib/libgoogle_recognizer_jni.so \
        vendor/jbmp/prebuilt/gapps/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
        vendor/jbmp/prebuilt/gapps/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
        vendor/jbmp/prebuilt/gapps/lib/libvorbisencoder.so:system/lib/libvorbisencoder.so
else
    PRODUCT_PACKAGES += QuickSearchBox
endif
