#!/bin/bash
while :
do
trap '' INT
trap "" SIGTSTP
clear
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
printf "$blue"
echo "Appcrunch installer is beginning........"
echo "First of all mention your os."
printf "$red"
echo "1:Kali-linux(arm64,amd64,armel,armhf,i386)"
echo "2:Ubuntu"
echo "3:Debian(Stretch,Wheezy,Jessie)"
echo "4:Check your Os."
echo "5:Exit"
read -p "Enter your choice [ 1 -5 ] :" choice
case $choice in
        1)      printf "$red"
                echo "U are sure so what we can do beginning the installer."
                bash kali-linux/h.sh
                exit 0
                ;;
        2)      printf "$red"
                echo "U are sure so what we can do beginning the installer."
                bash ubuntu/u.sh
                exit 0
                ;;
        3)      printf "$red"
                echo "U are sure so what we can do beginning the installer."
                bash Debian/d.sh
                exit 0
                ;;
        4)      printf "$red"
                echo "Yo beatch u don't even know about your OS."
                echo "Let me check it checkingggg......."
                sleep 2
                cat /etc/os-release
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
        5)      exit 0
                ;;
        *)      printf "$red"
                echo "Error: Invalid option..."
                echo "Bitch u even don't know how to use this fucking software."
                echo "Yeah yeah i got u now step out bitch."
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
esac
done
