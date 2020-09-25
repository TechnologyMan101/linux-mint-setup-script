#!/bin/bash
# Start of Function Cluster
mainmenu () {
	clear
 	tput setaf 3
	echo "======================================="
	echo " --- Linux Mint Setup Script 3.4.2 ---"
	echo "======================================="
	echo "Supported Linux Mint Versions: 20.x"
	echo "Script may prompt you or ask you for your password once in a while. Please monitor your computer until the script is done."
	tput setaf 10
	echo "Script created by Nathan Viroonchatapan."
	tput setaf 3
	echo "You can open this script in a text editor to see packages to be installed in detail."
	tput setaf 9
	echo "System will automatically reboot after the script is run!!!"
	echo "It is not recommended to run this script more than once!!!"
	echo "Make sure you have a stable and fast Internet connection before proceeding!!!"
	tput setaf 3
	echo "Press 1 to perform a Full Install (All User Packages)"
	echo "Press 2 to perform a Minimal Install (Essentials)"
	tput setaf 9
	echo "Press Q to quit"
	tput sgr0
	echo "Enter your selection followed by <return>:"
	read answer
	case "$answer" in
		1) menu1;;
		2) menu2;;
		q) quitscript;;
		Q) quitscript;;
	esac
	badoption
}
menu1 () {
	clear
	tput setaf 3
	echo "==============================="
	echo " --- Full Install Options ---"
	echo "==============================="
	echo "Choose the option appropiate for your configuration."
	echo "Press 1 to select the script for Cinnamon."
	echo "Press 2 to select the script for Other DEs."
	tput setaf 9
	echo "Press Q to go back to Main Menu."
	tput sgr0
	echo "Enter your selection followed by <return>:"
	read answer
	case "$answer" in
		1) full;;
		2) fullalt;;
		q) returntomain;;
		Q) returntomain;;
	esac
}
menu2 () {
	clear
	tput setaf 3
	echo "================================="
	echo " --- Minimal Install Options ---"
	echo "================================="
	echo "Choose the option appropiate for your configuration."
	echo "Press 1 to select the script for Cinnamon."
	echo "Press 2 to select the script for Other DEs."
	tput setaf 9
	echo "Press Q to go back to Main Menu."
	tput sgr0
	echo "Enter your selection followed by <return>:"
	read answer
	case "$answer" in
		1) minimal;;
		2) minimalalt;;
		q) returntomain;;
		Q) returntomain;;
	esac
}
returntomain () {
	clear
	tput sgr0
	mainmenu
}
quitscript () {
	tput sgr0
	clear
	exit
}
badoption () {
	clear
	tput setaf 9
	echo "Invalid Option!"
	tput setaf 3
	echo "Returning to Main Menu..."
	tput sgr0
	sleep 3
	mainmenu
}
finish () {
	clear
	tput setaf 10
	echo "Done..."
	tput setaf 9
	echo "Rebooting..."
	tput sgr0
	sleep 3
	clear
	sudo reboot
}
fullcommon () {
	sudo apt install -y gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-plugins-good libavcodec-extra gstreamer1.0-libav chromium-codecs-ffmpeg-extra libdvd-pkg
	sudo dpkg-reconfigure libdvd-pkg
	sudo dpkg --add-architecture i386
	sudo apt update -y
	sudo apt install -y libc6-i386 libx11-6:i386 libegl1-mesa:i386 zlib1g:i386 libstdc++6:i386 libgl1-mesa-dri:i386 libasound2:i386 libpulse0:i386
	sudo add-apt-repository -y ppa:linuxuprising/java
	sudo apt update -y
	sudo apt install -y oracle-java14-installer
	java --version
	sleep 3
	java -version
	sleep 3
	sudo add-apt-repository -y ppa:mkusb/ppa
	sudo apt update -y
	sudo apt install -y mkusb mkusb-nox usb-pack-efi gparted
	sudo add-apt-repository -y ppa:obsproject/obs-studio
	sudo apt update -y
	sudo apt install -y obs-studio
	sudo add-apt-repository -y ppa:minetestdevs/stable
	sudo apt update -y
	sudo apt install -y minetest
	curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
	echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
	sudo apt update -y
	sudo apt install -y spotify-client
	sudo apt update -y
	sudo apt full-upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	finish
}
minimalcommon () {
	sudo apt install -y gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-plugins-good libavcodec-extra gstreamer1.0-libav chromium-codecs-ffmpeg-extra libdvd-pkg
	sudo dpkg-reconfigure libdvd-pkg
	sudo dpkg --add-architecture i386
	sudo apt update -y
	sudo apt install -y libc6-i386 libx11-6:i386 libegl1-mesa:i386 zlib1g:i386 libstdc++6:i386 libgl1-mesa-dri:i386 libasound2:i386 libpulse0:i386
	sudo apt update -y
	sudo apt full-upgrade -y
	sudo apt autoremove -y
	sudo apt autoclean -y
	finish
}
full () {
	clear
	tput setaf 3
	echo "Full Install/All User Packages (Cinnamon)..."
	tput sgr0
	sleep 3
	clear
	sudo apt update -y
	sudo apt install -y ubuntu-restricted-extras synaptic remmina bleachbit frozen-bubble musescore3 asunder brasero k3b pavucontrol pulseeffects rhythmbox rhythmbox-plugin-alternative-toolbar shotwell solaar gparted vlc p7zip-full p7zip-rar lame gpart speedtest-cli neofetch ffmpeg httraqt lsp-plugins tree audacity telegram-desktop easytag android-tools-adb android-tools-fastboot gnome-sound-recorder cheese nikwi supertux dconf-editor deja-dup gnome-todo pitivi fonts-cantarell gnome-books numlockx gnome-firmware gnome-weather krita gnome-clocks gimp htop nemo-image-converter nemo-media-columns nemo-audio-tab nemo-seahorse transmission
	fullcommon
}
minimal () {
	clear
	tput setaf 3
	echo "Minimal Install/Essentials (Cinnamon)..."
	tput sgr0
	sleep 3
	clear
	sudo apt update -y
	sudo apt install -y ubuntu-restricted-extras synaptic pavucontrol rhythmbox rhythmbox-plugin-alternative-toolbar gparted p7zip-full p7zip-rar gpart network-manager-openvpn-gnome ffmpeg gufw dconf-editor deja-dup fonts-cantarell numlockx gnome-firmware htop nemo-image-converter nemo-media-columns nemo-audio-tab nemo-seahorse
	minimalcommon
}
fullalt () {
	clear
	tput setaf 3
	echo "Full Install/All User Packages (Other DEs)..."
	tput sgr0
	sleep 3
	clear
	sudo apt update -y
	sudo apt install -y ubuntu-restricted-extras synaptic remmina bleachbit frozen-bubble musescore3 asunder brasero k3b pavucontrol pulseeffects rhythmbox rhythmbox-plugin-alternative-toolbar shotwell solaar gparted vlc p7zip-full p7zip-rar lame gpart speedtest-cli neofetch ffmpeg httraqt lsp-plugins tree audacity telegram-desktop easytag android-tools-adb android-tools-fastboot gnome-sound-recorder cheese nikwi supertux dconf-editor deja-dup gnome-todo pitivi fonts-cantarell gnome-books numlockx gnome-firmware gnome-weather krita gnome-clocks gimp htop transmission
	fullcommon
}
minimalalt () {
	clear
	tput setaf 3
	echo "Minimal Install/Essentials (Other DEs)..."
	tput sgr0
	sleep 3
	clear
	sudo apt update -y
	sudo apt install -y ubuntu-restricted-extras synaptic pavucontrol rhythmbox rhythmbox-plugin-alternative-toolbar gparted p7zip-full p7zip-rar gpart network-manager-openvpn-gnome ffmpeg gufw dconf-editor deja-dup fonts-cantarell numlockx gnome-firmware htop
	minimalcommon
}
# End of Function Cluster
# Start of Main Script
while true
do
	mainmenu
done
# End of Main Script
