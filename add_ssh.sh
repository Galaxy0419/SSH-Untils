#!/bin/bash
read -p "Server IP:" ip
if [ ! $(echo $ip | grep -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}") ];then
	echo "Wrong IPV4 format!"
	exit 4
fi

read -p "SSH Port:" port
if [ "$port" -lt 0 ] || [ "$port" -gt 65536 ];then
	echo "Wrong port number!"
	exit 5
fi

read -p "Login User:" user

echo "$ip,$port,$user" >> ssh_servers.csv
echo "$ip added."
