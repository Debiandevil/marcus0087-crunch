#!/bin/bash
while :
do
echo "Installing Dependencies............."
echo "$(cd /opt && git clone https://github.com/rapid7/metasploit-framework.git && chown -R `whoami` /opt/metasploit-framework && cd metasploit-framework && gem install bundler && bundle install)"
echo "Now install all the mentioned software in order to run this software."
echo "Install java (Openjdk-10-jdk/jre), android-sdk , shcl , clang or gcc , libc6-dev , apktool and zipalign."
echo "If u r lazy then you don't deserve this software."
echo "Wanna continue (c) or not (n) :"
read ch
if [ "$ch" == "c" ]
then
echo "Yeah Good boi go and install all the softwares."
exit 0
elif [ "$ch" == "n" ]
then
exit 0
else
echo "Invalid option"
fi
read -p "Press [Enter] key to continue..." readEnterKey
done