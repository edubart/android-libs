LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := openssl

subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		crypto \
		ssl \
	))

include $(subdirs)
