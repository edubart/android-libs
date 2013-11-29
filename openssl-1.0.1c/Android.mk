LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := openssl

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include
subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		crypto \
		ssl \
	))

include $(subdirs)
