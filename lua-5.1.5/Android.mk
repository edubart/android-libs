LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := lua
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_CFLAGS += -O2 -DLUA_USE_POSIX
LOCAL_SRC_FILES := $(subst $(LOCAL_PATH)/,, $(wildcard $(LOCAL_PATH)/src/*.c))

include $(BUILD_SHARED_LIBRARY)
