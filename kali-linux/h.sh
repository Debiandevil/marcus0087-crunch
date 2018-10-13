#!/bin/bash
#this script will install shc a shell script compiler through which you
#can convert shell scripts to binary format or even c++ format.
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
printf "$red"
echo "----------Installing Dependencies-----------"
echo "Please wait 30-60 min based on your internet speed"
apt-get install clang gcc libc6-dev shc
apt-get install metasploit-framework apktool default-jdk android-sdk libzopfli1
bash zipalign.sh zipalign
echo "Now wait 2-5 min......."
echo "$(shc -f setup.sh)"
echo "$(gcc setup.sh.x.c)"
echo "$(mv a.out /bin/appcrunch)"
echo "$(chmod +x /bin/appcrunch)"
echo "Now you can use shc a shell script compiler as well as appcrunch a tool which allows all the professional hacks for android app."
echo "type command appcrunch"
echo "** Good Bye **"
