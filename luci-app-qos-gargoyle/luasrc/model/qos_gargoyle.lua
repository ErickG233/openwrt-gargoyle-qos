-- Copyright 2017 Xingwang Liao <kuoruan@gmail.com>
-- Licensed to the public under the Apache License 2.0.

module("luci.model.qos_gargoyle", package.seeall)

-- 屏蔽ndpi模块
-- function has_ndpi()
-- 	return luci.sys.call("lsmod | cut -d ' ' -f1 | grep -q 'xt_ndpi'") == 0
-- end

-- 屏蔽ndpi模块
-- function cbi_add_dpi_protocols(field)
-- 	local util = require "luci.util"

-- 	local dpi_protocols = {}

-- 	for line in util.execi("iptables -m ndpi --help 2>/dev/null | grep '^--'") do
-- 		local _, _, protocol, name = line:find("%-%-([^%s]+) Match for ([^%s]+)")

-- 		if protocol and name then
-- 			dpi_protocols[protocol] = name
-- 		end
-- 	end

-- 	for p, n in util.kspairs(dpi_protocols) do
-- 		field:value(p, n)
-- 	end
-- end

function get_wan()
       local net = require "luci.model.network".init()
       -- 保留参考代码
	   -- local wan_nets = net:get_wan_networks()
	   local wan_net = net:get_wannet()
	   -- 保留参考代码
       -- return wan_nets and #wan_nets > 0 and wan_nets[1]
	   return wan_net
end
