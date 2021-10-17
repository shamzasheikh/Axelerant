#!/bin/bash
path=$1
for host in `more host.txt`
do
	result=`ssh $host "sudo du -h $path | sort -nr | head -n10"`
	echo "-------------------------------------------------------"
	echo "HostName"
	echo "$host"
	echo "$result"
	echo ""

done
