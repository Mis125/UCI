#!/bin/sh


uci batch << EOF
	del_list network.@device[0].ports="eth0"
	set network.wan.ports=interface	
	set network.wan.ifname="eth0"
	set network.wan.ipaddr="192.168.1.244"
	set network.wan.netmask="255.255.255.0"
	set network.wan.gateway="192.168.1.1"
	set network.wan.dns="8.8.8.8 8.8.4.4"
	commit
EOF

