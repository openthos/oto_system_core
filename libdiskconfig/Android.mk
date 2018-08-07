LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	diskconfig.c \
	diskutils.c \
	write_lst.c \
	config_mbr.c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_C_INCLUDES)
LOCAL_MODULE := libdiskconfig_host
LOCAL_MODULE_TAGS := optional
LOCAL_CFLAGS := -O2 -g -W -Wall -Werror -D_LARGEFILE64_SOURCE -DHOST_BUILD
include $(BUILD_HOST_STATIC_LIBRARY)
