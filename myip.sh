#!/bin/bash 
#script to retrieve the public ip of your internet connection
#Author: Luca Radaelli <lradaelli85@users.noreply.github.com>

DIG=`which dig`
if [ $? -eq 0 ]
 then
 HOST="myip.opendns.com"
 DNS="resolver1.opendns.com"
 echo -n "Your public ip is: "
 $DIG +short $HOST @$DNS
 else
  echo "dig is not installed,or not in the PATH"
  exit 1;
 fi
