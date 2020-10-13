#
# Copyright (C) 2018 The LineageOS Open Source Project
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
#

LOCAL_PATH := device/samsung/gt5note10wifi
PRODUCT_MAKEFILES := $(LOCAL_DIR)/rr_gt5note10wifi.mk

COMMON_LUNCH_CHOICES := \
    rr_gt5note10wifi-user \
    rr_gt5note10wifi-userdebug \
    rr_gt5note10wifi-eng
