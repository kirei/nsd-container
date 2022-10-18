#!/bin/bash

if [ ! -d /storage/db/nsd ]; then
	install -d -g nsd -m 770 /storage/db/nsd
fi

if [ ! -f /config/nsd_control.key ]; then
	nsd-control-setup
fi

chown -R nsd:nsd /storage/db

nsd -d $NSD_OPTIONS
