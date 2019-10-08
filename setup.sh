#!/bin/bash

#http://www.noveldevices.co.uk/rp-dhcp-server - Outdated?

# Assumes internet connection via wifi
# Should be run from terminal. SSH over wifi might work

apt get update
apt install isc-dhcp-server

cp ./wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf
cp ./dhcpd-server.conf /etc/dhcp/dhcpd.conf

service isc-dhcp-server restart

python3 -m pip install -r ./requirements.txt
