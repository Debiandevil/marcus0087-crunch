#!/bin/bash
trap '' INT
trap "" SIGTSTP
clear
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
printf "$blue"
echo "Checking your internet connection.........."
echo "wait........."
sleep 2
if ping -q -c 1 -W 1 1.1.1.1 > /dev/null;
then
printf "$red"
echo "Your internet is working"
sleep 1
echo "Now you can continue"
bash 1.sh
echo "$(rm -f setup.sh.x)"
echo "$(rm -f setup.sh.x.c)"
cp -f opt/c.txt /opt
echo "DONE."
exit 0
else
sleep 1
printf "$red"
echo "You are not connected"
echo "Check your internet connection and try again"
echo "------Good Bye-------"
exit 0
fi

