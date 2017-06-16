#!/bin/bash 
#script to retrieve the public ip of your internet connection
#Author: Luca Radaelli <lradaelli85@users.noreply.github.com>

DIG=`which dig`
   if [ $? -eq 0 ]
    then
     HOST="myip.opendns.com"
     DNS="resolver1.opendns.com"
     OPTIONS="+short +time=3 +tries=1"
     RES=`$DIG $OPTIONS $HOST @$DNS 2> /dev/null`
     if [ -z $RES ]
       then
        echo "NoInternet"
       else
        echo $RES
     fi
   fi

