# Copyright (C) 2023 StatixOS
# Copyright (C) 2023 Hridaya Prajapati
#
# SPDX-License-Identifer: GPL-2.0-only

#
# Top level guard makefile
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),gauguin)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
