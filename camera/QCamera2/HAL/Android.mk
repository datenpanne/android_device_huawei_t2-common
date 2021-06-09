LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    QCamera2Factory.cpp \
    QCamera2Hal.cpp \
    QCamera2HWI.cpp \
    QCameraMem.cpp \
    ../util/QCameraQueue.cpp \
    ../util/QCameraCmdThread.cpp \
    QCameraStateMachine.cpp \
    QCameraChannel.cpp \
    QCameraStream.cpp \
    QCameraPostProc.cpp \
    QCamera2HWICallbacks.cpp \
    QCameraParameters.cpp \
    QCameraThermalAdapter.cpp \
    wrapper/QualcommCamera.cpp

LOCAL_CFLAGS += -Wall -Wextra -Werror
LOCAL_CFLAGS += -DHAS_MULTIMEDIA_HINTS

#use media extension
ifeq ($(TARGET_USES_MEDIA_EXTENSIONS), true)
LOCAL_CFLAGS += -DUSE_MEDIA_EXTENSIONS
endif

#Debug logs are enabled
#LOCAL_CFLAGS += -DDISABLE_DEBUG_LOG

#ifeq ($(TARGET_USES_AOSP),true)
#LOCAL_CFLAGS += -DVANILLA_HAL
#endif

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../stack/common \
	$(LOCAL_PATH)/../../mm-image-codec/qexif \
	$(LOCAL_PATH)/../../mm-image-codec/qomx_core \
	$(LOCAL_PATH)/../util \
	$(LOCAL_PATH)/wrapper \
        $(LOCAL_PATH)/../stack/mm-camera-interface/inc \
        $(TARGET_OUT_HEADERS)/mm-camera-lib/cp/prebuilt \
        hardware/qcom-caf/msm8916/display/libgralloc \
        hardware/qcom-caf/msm8916/display/libqdutils \
        hardware/qcom-caf/msm8916/display/libqservice \
        hardware/qcom-caf/msm8916/media/libstagefrighthw \
        hardware/qcom-caf/msm8916/media/mm-core \
        system/media/camera/include


LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include/media

ifeq ($(TARGET_TS_MAKEUP),true)
LOCAL_CFLAGS += -DTARGET_TS_MAKEUP
LOCAL_C_INCLUDES += $(LOCAL_PATH)/tsMakeuplib/include
endif
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_CFLAGS += -DUSE_CAMERA_METABUFFER_UTILS

LOCAL_STATIC_LIBRARIES := android.hardware.camera.common@1.0-helper
LOCAL_C_INCLUDES += \
        $(TARGET_OUT_HEADERS)/mm-core/omxcore \
        $(TARGET_OUT_HEADERS)/qcom/display

LOCAL_SHARED_LIBRARIES := libcamera_client liblog libhardware libutils libcutils libdl libsync
LOCAL_SHARED_LIBRARIES += libmmcamera_interface libmmjpeg_interface libui libcamera_metadata
LOCAL_SHARED_LIBRARIES += libqdMetaData libqservice libbinder
LOCAL_SHARED_LIBRARIES += libbase libcutils libdl
LOCAL_SHARED_LIBRARIES += libhidlbase libhwbinder libutils android.hardware.power@1.2
LOCAL_SHARED_LIBRARIES += libtinyxml2
LOCAL_HEADER_LIBRARIES += libandroid_sensor_headers
LOCAL_HEADER_LIBRARIES += libcutils_headers
LOCAL_HEADER_LIBRARIES += libsystem_headers
LOCAL_HEADER_LIBRARIES += libhardware_headers
LOCAL_HEADER_LIBRARIES += generated_kernel_headers
LOCAL_HEADER_LIBRARIES += media_plugin_headers

ifeq ($(USE_DISPLAY_SERVICE),true)
LOCAL_SHARED_LIBRARIES += android.frameworks.displayservice@1.0 android.hidl.base@1.0 libhidlbase
else
LOCAL_SHARED_LIBRARIES += libgui
endif
ifeq ($(TARGET_TS_MAKEUP),true)
LOCAL_SHARED_LIBRARIES += libts_face_beautify_hal libts_detected_face_hal
endif

LOCAL_STATIC_LIBRARIES := android.hardware.camera.common@1.0-helper

LOCAL_MODULE_RELATIVE_PATH    := hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_32_BIT_ONLY := true
LOCAL_VENDOR_MODULE := true
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
