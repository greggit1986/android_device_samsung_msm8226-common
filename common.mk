#
# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018,2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/samsung \
    hardware/qcom-caf/bt/libbt-vendor \
    vendor/qcom/opensource/power

# Advanced Display
PRODUCT_PACKAGES += \
    AdvancedDisplay

# APEX
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/ld.config.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/swcodec/ld.config.txt

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@7.1-impl:32 \
    android.hardware.audio.effect@7.0-impl:32 \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing

# Audio-lin21
PRODUCT_PACKAGES += \
android.hardware.soundtrigger@2.3-impl

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration_7_0.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration_7_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration_7_0.xml \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \

# Binder
PRODUCT_PACKAGES += \
    libhwbinder \
    libhidltransport \
    libjson \
    vndservicemanager

# Bluetooth
PRODUCT_PACKAGES += \
    audio.bluetooth.default \
    android.hardware.bluetooth.audio@2.0-impl \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
TARGET_BOOTANIMATION_HALF_RES := true

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider-service.lineage \
    camera.device@1.0-impl \
    camera.legacy.msm8226 \
    camera.msm8226 \
    libcamera_compat \
    libxml2 \
    GrapheneCamera

PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.hal3on1.use_hwcomposer=1 \
    persist.camera.hal3on1.use_sysfs_torch=1

# Camera-Experimental
PRODUCT_PACKAGES += \
    android.frameworks.sensorservice@1.0.vendor \

# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# CPUSETS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/cpuset.sh:$(TARGET_COPY_OUT_VENDOR)/bin/hw/cpuset.sh \
    $(LOCAL_PATH)/configs/cpuset.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/cpuset.sh

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226 \
    libqdMetaData \
    libui.vendor

# Doze
PRODUCT_PACKAGES += \
    SamsungDoze

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm-service.clearkey

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# FlipFlap
PRODUCT_PACKAGES += \
    FlipFlap

# FM
PRODUCT_PACKAGES += \
    FMRadio

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-service.software

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service \
    gps.msm8226

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# HIDL
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Kernel
PRODUCT_ENABLE_UFFD_GC := false

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/keylayout/synaptics_rmi4_i2c.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_rmi4_i2c.kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# libstdc++ for vendor blobs
PRODUCT_PACKAGES += \
    libstdc++_vendor

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.lineage

# Lineage Health
PRODUCT_PACKAGES += \
    vendor.lineage.health-service.default

$(call soong_config_set,lineage_health,charging_control_charging_disabled,1)
$(call soong_config_set,lineage_health,charging_control_charging_enabled,0)
$(call soong_config_set,lineage_health,charging_control_charging_path,/sys/class/power_supply/battery/batt_slate_mode)
$(call soong_config_set,lineage_health,charging_control_supports_bypass,false)

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay-service.samsung-qcom

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \

# Offline Charger
PRODUCT_PACKAGES += \
    charger_res_images

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libminijail:32 \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libmm-omxcore \
    android.hardware.cas@1.2-service-lazy \
    libavservices_minijail.vendor

# OMX-Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    vendor.mediacodec.binder.size=4 \
    media.stagefright.thumbnail.prefer_hw_codecs=true

PRODUCT_COPY_FILES += \
    system/core/libprocessgroup/profiles/cgroups_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    system/core/libprocessgroup/profiles/task_profiles_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage
PRODUCT_ENFORCE_RRO_TARGETS := *
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(LOCAL_PATH)/overlay/hardware/samsung/AdvancedDisplay

# Partitions
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power-service-qti \
    android.hardware.power.stats@1.0-service.mock \
    libpower.vendor \
    libsqlite.vendor

$(call soong_config_set,qcom_power,set_interactive_ext_lib,power-ext-afyon)

PRODUCT_COPY_FILES += \
    system/core/libprocessgroup/profiles/cgroups_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    system/core/libprocessgroup/profiles/task_profiles_28.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Radio
PRODUCT_PACKAGES += \
    CarrierConfigOverlay \
    libsecnativefeature \
    libnetutils.vendor

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc \
    init.qcom.bt.sh

#PRODUCT_PACKAGES += \
#    fstab.qcom \
#    init.target.rc
#    init.qcom.power.rc \
#    init.qcom.rc \
#    init.qcom.usb.rc \
#    init.recovery.qcom.rc \
#    ueventd.qcom.rc

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Reduce
PRODUCT_DEXPREOPT_SPEED_APPS += SystemUI

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediaswcodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaswcodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_SYSTEM)/apex/com.android.media/etc/seccomp_policy/mediaextractor.policy \
    $(LOCAL_PATH)/seccomp/mediaswcodec-seccomp.policy:$(TARGET_COPY_OUT_SYSTEM)/apex/com.android.media/etc/seccomp_policy/mediaswcodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.samsung8226 \
    android.hardware.sensors@1.0-service.samsung8226

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/_hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/_hals.conf

# Shims
PRODUCT_PACKAGES += \
    libshim_binder

# Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_k.mk)

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8226.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-8226.conf

# TimeKeep
PRODUCT_PACKAGES += \
    timekeep \
    TimeKeep

# Touch features
#PRODUCT_PACKAGES += \
#    vendor.lineage.touch@1.0-service.samsung

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# VNDK
PRODUCT_PACKAGES += \
    libcrypto-v33 \
    libutils-v33 \
    libhidlbase-v32 \
    libprotobuf-cpp-lite-v29

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi-service-lazy \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf \
    libwpa_client \
    android.hardware.wifi.supplicant-V1-ndk \
    android.hardware.wifi.hostapd-V1-ndk

PRODUCT_PACKAGES += \
    libcurl \
    libwcnss_qmi \
    wcnss_service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/hostapd_default.conf:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd_default.conf \
    $(LOCAL_PATH)/prima/WCNSS_cfg.dat:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/prima/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/prima/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/afyonlte-common/afyonlte-common-vendor.mk)
$(call inherit-product, vendor/samsung/msm8226-common/msm8226-common-vendor.mk)
