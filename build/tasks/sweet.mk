# Copyright (C) 2020 The ConquerOS Project
# Copyright (C) 2021 a xdroid Prjkt
# Copyright (C) 2022 SwiftAOSP
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

SWIFT_TARGET_PACKAGE := $(PRODUCT_OUT)/SwiftAOSP-$(SWIFT_BUILD_VERSION).zip
MD5 := prebuilts/build-tools/path/$(HOST_OS)-x86/md5sum

.PHONY: sweet
sweet: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(SWIFT_TARGET_PACKAGE)
	$(hide) $(MD5) $(SWIFT_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(SWIFT_TARGET_PACKAGE).md5sum
	@echo "Done"
	@echo -e "File: $(SWIFT_TARGET_PACKAGE)"
	@echo -e "MD5: `cat $(SWIFT_TARGET_PACKAGE).md5sum | awk '{print $$1}' `"
	@echo -e "============================ SwiftAOSP ============================"
