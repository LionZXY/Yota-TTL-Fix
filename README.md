# Magisk Yota TTL Fix

Magisk module for auto set TTL to *63*. Using for bypass tethering detection in Yota mobile operator

# Installation

1. Download zip archive from [releases](https://github.com/LionZXY/Yota-TTL-Fix/releases/) to phone
2. Open Magisk application -> Modules and select .zip 
3. Reboot phone

# What it do

On startup execute two command:
```
echo 63 > /proc/sys/net/ipv4/ip_default_ttl
```
```
iptables -t mangle -A POSTROUTING -j TTL --ttl-set 63
```
