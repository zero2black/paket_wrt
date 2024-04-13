#
# Net Monitor Software Codes picked form NetData
# 
# This is free software, licensed under the Apache License, Version 2.0
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI Net Monitor Lite
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+netdata

PKG_NAME:=luci-app-netmonitor
PKG_VERSION:=2.1
PKG_RELEASE:=1

define Package/$(PKG_NAME)
	$(call Package/luci/webtemplate)
	TITLE:=$(LUCI_TITLE)
	DEPENDS:=$(LUCI_DEPENDS)
endef

define Package/$(PKG_NAME)/description
	LuCI Network Monitor
	Simple network monitor using netdata package, with some addition sites.
endef

define Package/$(PKG_NAME)/install
endef

define Package/$(PKG_NAME)/postinst
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
	export NAMAPAKET="netmon"
	if [ -d /www/$NAMAPAKET ] ; then
		rm -rf /www/$NAMAPAKET
	fi
	unset NAMAPAKET
exit 0
endef

include $(TOPDIR)/feeds/luci/luci.mk

#$(eval $(call BuildPackage,$(PKG_NAME)))