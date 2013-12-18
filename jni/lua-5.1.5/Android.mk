LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := lua
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_ARM_MODE := arm
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := $(subst $(LOCAL_PATH)/,, $(wildcard $(LOCAL_PATH)/src/*.c))

include $(BUILD_STATIC_LIBRARY)
