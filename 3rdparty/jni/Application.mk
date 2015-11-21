#ANDROID APPLICATION MAKEFILE
APP_BUILD_SCRIPT := $(call my-dir)/Android.mk
APP_PROJECT_PATH := $(call my-dir)

APP_OPTIM := release

APP_PLATFORM := 19
APP_STL := gnustl_static
APP_CPPFLAGS := -fexceptions -frtti
#APP_CPPFLAGS := -Os -mthumb-interwork -fno-short-enums
#APP_CPPFLAGS := -Wl,--no-undefined

APP_ABI := armeabi armeabi-v7a

APP_MODULES      :=  geos proj sqlite3
