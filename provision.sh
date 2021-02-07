#!/usr/bin/env bash

apt-get update
apt-get install tinyproxy -y
echo "Allow 0.0.0.0/0" >> /etc/tinyproxy/tinyproxy.conf
/etc/init.d/tinyproxy restart