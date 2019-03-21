#
# Copyright (C) 2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/SF16A18-P10-8M
 NAME:= SF16A18 P10 8M
 PACKAGES:=\
	iperf \
	vsftpd vsftpd-tls\
	libwebsockets ssst subcloud libcurl ndscan tc curl netdetect netdiscover\
	iwinfo luasql-sqlite3 luci-ssl luci-lib-json openssl-util tcpdump kmod-button-hotplug\
	kmod-reset-button rwnxtools wandetect kmod-sf-ts kmod-ipt-ipset ipset
endef

define Profile/SF16A18-P10-8M/Description
 Support for siflower p10m boards v1.0 which flash is 8M
endef

define Profile/SF16A18-P10-8M/Config
select BUSYBOX_DEFAULT_FEATURE_TOP_SMP_CPU
select BUSYBOX_DEFAULT_FEATURE_TOP_DECIMALS
select BUSYBOX_DEFAULT_FEATURE_TOP_SMP_PROCESS
select BUSYBOX_DEFAULT_FEATURE_TOPMEM
select BUSYBOX_DEFAULT_FEATURE_USE_TERMIOS
select BUSYBOX_DEFAULT_CKSUM
select TARGET_ROOTFS_SQUASHFS
select LUCI_LANG_zh-cn
endef

$(eval $(call Profile,SF16A18-P10-8M))