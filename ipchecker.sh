#!/bin/bash
clear
read -p "enter ur current checking here : " ip
for x in $ip;
do
  if ping -q -c 2 -W 1 $x > /dev/null; then
    sleep 3
    echo "$x is up"
  else
   echo "$x is down"
  fi
done
