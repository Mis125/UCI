#!/bin/sh


uci batch <<EOF
	set system.@system[0].hostname="rpi4"
	commit
EOF

