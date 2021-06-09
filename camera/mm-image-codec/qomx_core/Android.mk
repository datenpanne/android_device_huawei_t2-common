LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS := -Werror \
                   -g -O0

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../qexif

LOCAL_INC_FILES := qomx_core.h \
                   QOMX_JpegExtensions.h

LOCAL_SRC_FILES := qomx_core.c

LOCAL_MODULE           := libqomx_core
LOCAL_32_BIT_ONLY := true
LOCAL_SHARED_LIBRARIES := libcutils libdl liblog
LOCAL_HEADER_LIBRARIES += libutils_headers
LOCAL_HEADER_LIBRARIES += media_plugin_headers
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
