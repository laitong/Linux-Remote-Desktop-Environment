#!/bin/bash


echo -e "\n"
cd /root
echo "Start creating Swaps Memory, please wait..."
dd if=/dev/zero of=/var/swapd bs=1024 count=3145728
mkswap /var/swapd
chmod 0644 /var/swapd
swapon /var/swapd
echo '/var/swapd   swap   swap   default 0 0' >> /etc/fstab
apt-get update -y
apt-get dist-upgrade -y
apt-get install sudo curl wget patch -y
apt --fix-broken install -y
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Swaps Memory is Created And Mirror Updated  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"


echo -e "\n"
cd /root
apt-get install snapd filezilla -y
snap install remmina
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remmina FileZilla Firefox Already installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"



apt install xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils xrdp vnc4server tightvncserver -y
echo “xfce4-session” >~/.xsession 
sudo service xrdp restart
echo "---------------------------------------------------------------------------------------------------------------------"
echo -e "\033[32m Remote connection RDP is installed  is [OK] \033[0m"
echo "---------------------------------------------------------------------------------------------------------------------"

sleep 5s
reboot
echo -e "\n"
