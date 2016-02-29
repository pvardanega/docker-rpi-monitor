#!/bin/bash
echo "web.addons.1.name=Shellinabox" >> /etc/rpimonitor/data.conf
echo "web.addons.1.addons=shellinabox" >> /etc/rpimonitor/data.conf
echo "include=/etc/rpimonitor/template/storage.conf" >> /etc/rpimonitor/data.conf
echo "include=/etc/rpimonitor/template/services.conf" >> /etc/rpimonitor/data.conf
echo "include=/etc/rpimonitor/template/wlan.conf" >> /etc/rpimonitor/data.conf
echo "include=/etc/rpimonitor/template/dht11.conf" >> /etc/rpimonitor/data.conf
