#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2018 Alberto97
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

# ADSP
include $(CLEAR_VARS)
LOCAL_C_INCLUDES := external/tinyalsa/include
LOCAL_SRC_FILES := mixer.c
LOCAL_MODULE := libshim_adsp
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libqsap_shim.c
LOCAL_SHARED_LIBRARIES := libqsap_sdk liblog
LOCAL_C_INCLUDES := $(TOP)/system/qcom/softap/sdk
LOCAL_HEADER_LIBRARIES += libhardware_headers
LOCAL_MODULE := libqsap_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := justshoot_shim.cpp
LOCAL_SHARED_LIBRARIES := libutils
LOCAL_MODULE := libjustshoot_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gpu_mapper_shim.cpp
LOCAL_SHARED_LIBRARIES := libui libutils
LOCAL_MODULE := libgpu_mapper_shim
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	strdup16to8.cpp \
	strdup8to16.cpp
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE := libcutils_shim
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := libshims_camera
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := camera_shim.cpp
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
