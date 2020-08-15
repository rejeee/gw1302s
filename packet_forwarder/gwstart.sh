#!/bin/sh

cd /home/pi/gw1302s/bin
./update_gwid.sh ./global_conf.json
./lora_pkt_fwd 

