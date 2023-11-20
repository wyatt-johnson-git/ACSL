#!/bin/sh

sudo apt-get update
sudo apt-get upgrade -y

#change hostname

sudo hostnamectl set-hostname SynologyBox

#spoof MAC address

ifconfig eth0 down hw ether 90:09:D0:9E:13:A1
ifconfig eth0 up

#install dependencies

sudo apt-get install --yes samba \
			   python3-dev \
			   python3-pip \
			   python3-virtualenv \
			   python3-venv \
			   python3-scapy \
			   libssl-dev \
			   libpcap-dev

#start virtual env

python3 -m venv canary/
. canary/bin/activate

#install opencanary and dependencies in virtual environment

sudo pip3 install opencanary
sudo pip3 install scapy pcapy
sudo pip3 install -Iv Markupsafe==2.0.1

#create and edit custom config file

if [ $1 -e "copy" ] ; then
	sudo mkdir /etc/opencanaryd/
	sudo mv opencanary.conf /etc/opencanaryd/
else
	opencanaryd --copyconfig
	sudo nano /etc/opencanaryd/opencanary.conf
fi

#start opencanary

opencanaryd --start

exit 0