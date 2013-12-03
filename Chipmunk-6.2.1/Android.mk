LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := chipmunk
LOCAL_C_INCLUDES 	:= $(LOCAL_PATH)/include/chipmunk
LOCAL_ARM_MODE := arm
LOCAL_CFLAGS += -std=gnu99
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := $(subst $(LOCAL_PATH)/,, $(wildcard $(LOCAL_PATH)/src/*.c) $(wildcard $(LOCAL_PATH)/src/constraints/*.c))

include $(BUILD_STATIC_LIBRARY)
