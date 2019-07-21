#!/bin/bash

if [[ -f "~/.config/autostart/kubuntuAutoSetup.sh.desktop" ]]; then
rm "~/.config/autostart/kubuntuAutoSetup.sh.desktop"
sudo apt install curl -y
sudo apt install git -y
sudo apt install vim -y
sudo snap install discord -y
sudo snap install spotify -y

#clone ckb and install it
git clone https://github.com/ckb-next/ckb-next.git
cd ckb-next
./quickinstall

cd ..


else
sudo apt upgrade
touch "~/.config/autostart/kubuntuAutoSetup.sh.desktop"
echo "[Desktop Entry]" >> ~/.config/autostart/kubuntuAutoSetup.sh.desktop
echo "Type=Application" >> ~/.config/autostart/kubuntuAutoSetup.sh.desktop
echo "Name=AutoStartup" >> ~/.config/autostart/kubuntuAutoSetup.sh.desktop
echo "Exec=./kubuntuAutoSetup" >> ~/.config/autostart/kubuntuAutoSetup.sh.desktop
/sbin/shutdown -r now

fi