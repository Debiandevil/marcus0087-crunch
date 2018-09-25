#!/bin/bash
while :
do
clear
echo "Checking whether zipalign is installed or not ......"
dpkg -s $1 &> /dev/null
if [ $? -eq 0 ]; then
    echo "Zipalign is installed."
exit 0
else
echo "Zipalign is not installed"
fi
echo "Do you want to install zipalign?"
echo "*Press [y] to install or [n] to exit:"
read t
if [ "$t" == "y" ]
then
echo "Choose your OS architecture.."
echo "1:Check your os architecture"
echo "2:arm64"
echo "3:amd64"
echo "4:i386"
echo "5:armhf"
echo "6:armel"
echo "7:Exit"
read -p "Enter your choice [ 1 -7 ] : " choice
case $choice in
        1)      echo "Your architecture is."
                echo "$(dpkg --print-architecture)"
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
        2)      echo "You have selected arm64 architecture."
                echo "Now installing Zipalign."
                echo "$(dpkg -i zipalign/arm64/zipalign_7.0.0+r33-1_arm64.deb)"
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
        3)      echo "You have selected amd64 architecture."
                echo "Now installing Zipalign."
                echo "$(dpkg -i zipalign/amd64/zipalign_7.0.0+r33-1_amd64.deb)"
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
        4)      echo "You have selected i386 architecture."
                echo "Now installing Zipalign."
                echo "$(dpkg -i zipalign/i386/zipalign_7.0.0+r33-1_i386.deb)"
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
        5)      echo "You have selected armhf architecture."
                echo "Now installing Zipalign."
                echo "$(dpkg -i zipalign/armhf/zipalign_7.0.0+r33-1_armhf.deb)"
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
        6)      echo "You have selected armel architecture."
                echo "Now installing Zipalign."
                echo "$(dpkg -i zipalign/armel/zipalign_7.0.0+r33-1_armel.deb)"
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
        7)      echo "Don't u like this script no worries i am exiting"
                echo "$(exit)"
                echo "Bye"
                ;;
        *)      echo "Invalid option..."
                read -p "Press [Enter] key to continue..." readEnterKey
                ;;
esac
elif [ "$t" == "n" ]
then
exit 0
else
echo "Invalid command.."
read -p "Press [Enter] key to continue..." readEnterKey
fi
done
