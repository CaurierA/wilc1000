obj-$(CONFIG_WILC1000) += wilc1000.o

ccflags-y += -I$(src)/ -DWILC_ASIC_A0 -DWILC_DEBUGFS
ccflags-y += -DWILC_BT_COEXISTENCE

wilc-objs := wilc_wfi_cfgoperations.o linux_wlan.o linux_mon.o \
			coreconfigurator.o host_interface.o \
			wilc_wlan_cfg.o wilc_debugfs.o \
			wilc_wlan.o sysfs.o

obj-$(CONFIG_WILC_SDIO) += wilc-sdio.o
wilc-sdio-objs += wilc_sdio.o wilc_bt.o

obj-$(CONFIG_WILC_SPI) += wilc-spi.o
wilc-spi-objs += wilc_spi.o wilc_bt.o
