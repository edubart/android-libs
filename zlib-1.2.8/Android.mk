LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE 		:= zlib
LOCAL_C_INCLUDES 	:= $(LOCAL_PATH)/include
LOCAL_CFLAGS += -O3 -DUSE_MMAP
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := $(subst $(LOCAL_PATH)/,, $(wildcard $(LOCAL_PATH)/src/*.c))

include $(BUILD_SHARED_LIBRARY)
