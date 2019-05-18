#!/bin/bash

if [ -f "~/.config/autostart/archStartup.sh.desktop"]; then

else 
	sudo pacman -Syu
	pacman -S curl --noconfirm
	touch archStartup.sh.desktop
	curl https://raw.githubusercontent.com/conner-s/LinuxConfigs/master/arch/archStartup.sh.desktop > archStartup.sh.desktop
	mv archStartup.sh.desktop ~/.config/autostart/
	/sbin/shutdown -r now
fi
