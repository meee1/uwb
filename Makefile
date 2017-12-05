BOARD ?= org.proficnc.uwb_1.0

CSRC = $(shell find src -name "*.c")
INCDIR = ./include

MODULES_ENABLED = chibios_sys_init chibios_hal_init can can_autobaud can_driver_stm32 pubsub param uavcan flash driver_dw1000 spi_device ext_irq timing app_descriptor boot_msg worker_thread uavcan_param_interface uavcan_debug uavcan_restart system uavcan_nodestatus_publisher uavcan_getnodeinfo_server uavcan_beginfirmwareupdate_server

MESSAGES_ENABLED = uavcan.protocol.debug.LogMessage uavcan.protocol.GetNodeInfo

-include framework/include.mk

framework/include.mk: PRE_BUILD_RULE
	git submodule init && git submodule update
