--[[
put script in /etc/lighttpd or whereever
and then put this in your lighttpd.conf
$HTTP["url"] =~ "^/search" {
	magnet.attract-physical-path-to = ("/etc/lighttpd/searx.lua")
}
]]--
instances = {
	"xo.wtf",
	"ooglester.com",
	"baresearch.org",
	"search.bus-hit.me",
	"searxng.site",
	"opnxg.com",
	"searx.be"
}
local r = lighty.r
r.resp_header["Location"] = "https://" .. instances[math.random(#instances)] .. "/search?" .. r.req_attr["uri.query"]
return 307
