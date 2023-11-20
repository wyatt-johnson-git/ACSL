#!/bin/bash


# MOVE BACKGROUND IMAGES TO COMPUTER, SET NEW BACKGROUND IMAGES, CONFIGURE GNOME

if [ ! -e '/home/student/.local/share/backgrounds' ]
then
	mkdir '/home/student/.local/share/backgrounds'
fi

cp /media/student/POP_Imager/Backgrounds/ACSL \
   /media/student/POP_Imager/Backgrounds/ACSL2 \
   /home/student/.local/share/backgrounds/
   
gsettings set org.gnome.desktop.background picture-uri-dark file:///home/student/.local/share/backgrounds/ACSL2

gsettings set org.gnome.desktop.background picture-uri file:///home/student/.local/share/backgrounds/ACSL

gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'


# ADD REPOS AND INSTALL DESIRED SOFTWARE

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install --yes flatpak \
			   gnome-software-plugin-flatpak \
			   cups \
			   net-tools \
			   nmap \
 		           gnome-tweaks \
			   syncthing \
			   keepassxc \
			   gimp \
			   vlc


sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub -y com.ultimaker.cura \
				org.blender.Blender \
				com.vscodium.codium \
				org.gnome.Boxes \
				com.usebottles.bottles \
				org.onlyoffice.desktopeditors \
				com.github.PintaProject.Pinta 
sudo apt-get update
sudo apt-get upgrade -y


# ADD PRINTER

lpadmin -p Lab_Printer -E -v socket://10.11.40.199/ipp/print -m drv:///hpcups.drv/hp-laserjet_4250-pcl3.ppd


# CONFIGURE SYNCTHING

systemctl --user enable syncthing.service
systemctl --user start syncthing.service

# syncthing cli config devices add --name lab_nas --device-id UTZWKVN-T3PKH4J-WSZ4WSU-QZP57V3-JSJZCAD-5FU7Z6Y-INFNQKT-EGLVVQU


echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install wireshark


# LAUNCH MOZILLA TO ACCOUNT LOGIN PAGE

firefox https://accounts.firefox.com/signin?context=fx_desktop_v3


# REBOOT PROMPT

echo
echo "Rebooting your system is recommended"
echo
echo "If not canceled your system will reboot in 2 minutes"
echo
sudo shutdown -r +2
exit 0

#while true; do
#   read -pr "Do you wish to reboot now? y/n = " yn
#   case $yn in
#       [Yy]* ) sudo reboot; break;;
#       [Nn]* ) exit 0;;
#       * ) echo "Please answer yes or no.";;
#   esac
#done
