LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE 		:= chipmunk
LOCAL_C_INCLUDES 	:= $(LOCAL_PATH)/include/chipmunk
LOCAL_CFLAGS += -O2 -DCHIPMUNK_FFI -std=gnu99 -O3 -DNDEBUG -ffast-math
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_SRC_FILES := $(subst $(LOCAL_PATH)/,, $(wildcard $(LOCAL_PATH)/src/*.c) $(wildcard $(LOCAL_PATH)/src/constraints/*.c))

include $(BUILD_SHARED_LIBRARY)
