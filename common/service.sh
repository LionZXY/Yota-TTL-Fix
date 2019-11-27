#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
echo "Start applying TTL. Using echo method"
echo 63 > /proc/sys/net/ipv4/ip_default_ttl

echo "Start applying TTL. Using iptables"
iptables -t mangle -A POSTROUTING -j TTL --ttl-set 63
echo "Current ttl: $(cat /proc/sys/net/ipv4/ip_default_ttl)"
