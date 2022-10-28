#
# Copyright (C) 2020 The ConquerOS Project
#				2021 a xdroid Prjkt
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

SWIFT_HOST_TIME := $(shell date +"%d%m%y")

ifndef SWIFT_BUILD_TYPE
   SWIFT_BUILD_TYPE := COMMUNITY
endif

SWIFT_VERSION := 3.1
SWIFT_CODENAME := Savoiardi
SWIFT_BUILD_VERSION := SwiftAOSP-v$(SWIFT_VERSION)-$(SWIFT_BUILD)-$(SWIFT_HOST_TIME)-$(SWIFT_BUILD_TYPE)
SWIFT_BUILD_NUMBER := $(SWIFT_VERSION)-$(SWIFT_HOST_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.swift.version=$(SWIFT_VERSION) \
   ro.swift.build.version=$(SWIFT_BUILD_VERSION) \
   ro.swift.build.number=$(SWIFT_BUILD_NUMBER) \
   ro.swift.build.type=$(SWIFT_BUILD_TYPE)
