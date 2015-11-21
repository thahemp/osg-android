LOCAL_PATH := $(call my-dir)

GEOS_PATH := geos-3.3.4
PROJ4_PATH := proj-4.7.0
SQLITE_PATH := sqlite-autoconf-3071401

include $(LOCAL_PATH)/proj4.mk
include $(LOCAL_PATH)/geos-3.3.4.mk
include $(LOCAL_PATH)/sqlite.mk
