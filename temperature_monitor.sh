#!/usr/bin/env bash

# Monitor system temperatures on Chromium OS / CloudReady by Neverware

# Find out available devices with temperature data:
# find /sys/ 2>/dev/null | grep temp

# Used motherboard: GA-G31M-ES2L rev 1.x 
# https://www.gigabyte.com/Motherboard/GA-G31M-ES2L-rev-1x/sp#sp

# This script can be run in the shell with:
# watch /bin/bash temperature_monitor.sh

degree_symbol=" $(echo -n $'\xe2\x84\x83')"

cpu_0="$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp2_input)"
cpu_1="$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon1/temp3_input)"
pci_0="$(cat /sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/hwmon/hwmon0/temp1_input)"

echo 'CPU 0: ' $(($cpu_0/1000)) $degree_symbol
echo 'CPU 1: ' $(($cpu_1/1000)) $degree_symbol
echo 'PCI device: ' $(($pci_0/1000)) $degree_symbol
