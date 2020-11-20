include vendor/swift/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/swift/config/BoardConfigQcom.mk
endif

include vendor/swift/config/BoardConfigSoong.mk
