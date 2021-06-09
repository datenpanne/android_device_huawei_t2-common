#
# system.prop for T2 common
#

# ADB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.sys.usb.config=adb \
    ro.secure=0 \
    ro.adb.secure=0

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    vendor.audio.av.streaming.offload.enable=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio_hal.period_size=192 \
    vendor.voice.path.for.pcm.voip=true \
    ro.config.media_vol_steps=20 \
    ro.config.vc_call_vol_steps=7 \
    ro.qc.sdk.audio.ssr=false \
    ro.vendor.audio.sdk.fluencetype=none \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.fluence.speaker=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.bluetooth.soc=pronto \
    vendor.qcom.bluetooth.soc=pronto \
    ro.bluetooth.dun=true \
    ro.bluetooth.hfp.ver=1.7 \
    ro.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd

# Boot
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500 \
    ro.build.shutdown_timeout=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.hal.debug=0 \
    ro.hwcamera.clearbuffer.need=true \
    ro.hwcamera.voicereg.threshold=38,31,-10 \
    ro.config.mimetype_pad=true \
    camera2.portability.force_api=1

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=16m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

# Dexopt
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_buffer_age=false \
    debug.mdpcomp.idletime=600 \
    debug.enable.sglscale=1 \
    debug.sf.disable_backpressure=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.recomputecrop=0 \
    persist.hwc.mdpcomp.enable=true \
    persist.hwc.ptor.enable=true \
    ro.config.immediate_brightness=true \
    ro.opengles.version=196610 \
    ro.qcom.ad=1 \
    ro.qcom.ad.calib.data=/vendor/etc/calib_fdr.cfg \
    ro.qcom.ad.sensortype=2 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    vendor.display.enable_default_color_mode=1

#ro.surface_flinger.use_smart_90_for_video=true \
#ro.surface_flinger.set_display_power_timer_ms=10000 \
#ro.surface_flinger.set_touch_timer_ms=5000 \
#ro.surface_flinger.set_idle_timer_ms=9000 \
#    debug.sf.hw=1 \
#    debug.egl.hw=1 \

PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_buffer_age=false \
    persist.graphics.vulkan.disable=true

# Factory reset protection
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.frp.pst=/dev/block/bootdevice/by-name/config

# FM
PRODUCT_PROPERTY_OVERRIDES += \
	ro.fm.transmitter=false

# LMKD
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.low=1001 \
    ro.lmk.medium=800 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100

# Fastbootd
#PRODUCT_PROPERTY_OVERRIDES += \
#ro.fastbootd.available=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0 \
    vendor.mediacodec.binder.size=6 \
    vidc.enc.narrow.searchrange=1 \
    persist.media.treble_omx=false

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.am.reschedule_service=true \
    ro.vendor.qti.sys.fw.bservice_enable=true \
    ro.config.avoid_gfx_accel=true
#    ro.config.low_ram=true

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.use_data_netmgrd=true \
    persist.vendor.data.netmgrd.qos.enable=true \
    persist.vendor.data.mode=concurrent

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.rild.nitz_plmn="" \
    persist.vendor.rild.nitz_long_ons_0="" \
    persist.vendor.rild.nitz_long_ons_1="" \
    persist.vendor.rild.nitz_long_ons_2="" \
    persist.vendor.rild.nitz_long_ons_3="" \
    persist.vendor.rild.nitz_short_ons_0="" \
    persist.vendor.rild.nitz_short_ons_1="" \
    persist.vendor.rild.nitz_short_ons_2="" \
    persist.vendor.rild.nitz_short_ons_3=""

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=8 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.core_ctl_min_cpu=0 \
    ro.core_ctl_max_cpu=4 \
    ro.min_freq_0=960000 \
    ro.min_freq_4=800000

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    ro.multi.rild=false \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    telephony.lteOnCdmaDevice=1 \
    ro.check.modem_network=true \
    ro.ril.ecclist=112,911,#911,*911
    persist.vendor.data.qmi.adb_logmask=0 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.add_power_save=0 \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.sys.fflag.override.settings_network_and_internet_v2=true \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.use_old_mnc_mcc_format=true

# WFD
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=1

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0
