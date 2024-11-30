module("luci.controller.tinyfilemanager", package.seeall)
function index()
	entry({"admin", "services"}, firstchild(), "Services", 99).dependent=false
	entry({"admin", "services", "tinyfilemanager"}, template("tinyfilemanager"), _("Tiny File Manager"), 99).dependent=true
end
