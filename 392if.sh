#!/bin/bash

# Check if the script is run with sudo
if [ "$EUID" -ne 0 ]; then
    echo "Run as sudo!"
    exit 1
fi
clear
echo Installing dependencies...
sudo apt update
sudo apt-get install -y git python3 python3-numpy websockify nmap masscan iptables
wget -q -O - https://git.io/vQhTU | bash -s -- --version 1.18
echo Cloning VNCJew...
git clone https://github.com/jsteel2/vncjew
cd vncjew

read -p "Please enter your input: " userInput
