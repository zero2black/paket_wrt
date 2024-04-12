module("luci.controller.netmon", package.seeall)

function index()
	entry({"admin", "status", "netmon"}, alias("admin", "status", "netmon", "netmonstat"), _("Network Monitor"), 10).dependent = false

	entry({"admin", "status", "netmon", "netmonstat"}, cbi("netmon/netmonstat"), _("Network Monitor"), 1).leaf = true
	entry({"admin", "status", "netmon", "netmontraff"}, cbi("netmon/netmontraff"), _("Traffic Monitor"), 2).leaf = true
	entry({"admin", "status", "netmon", "netmonconfig"}, cbi("netmon/netmonconfig"), _("Config"), 3).leaf = true
end
