#!/bin/bash

filepath=$1

# Using only awk, sort, uniq and tail.
echo "Past 10-days 4XX results of Apache's access log file: "
echo "------------------------------------------------------"
echo " Date			IP				Status Code"
echo "-------------------------------------------------------"
result=$(awk -vDate=`date -d'now-10 days' +[%d/%b/%Y:%H:%M:%S` ' { if ($4 > Date && $9~/^[4]/) print $4 "        " $1  "             " $9}' $filepath | sort -nr)
echo "$result"
