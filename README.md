# linux-mint-setup-script
Bash Script to Set Up a Fresh Install of Linux Mint 20 and above.


# Documentation

Version 2.5

Supported Linux Mint Versions: 20

Please install .deb files and files using other types of installation formats using files manually.

Please copy the TTF Essential Font Pack from Extras into `/usr/share/fonts/` Open the file manager as root. This is required to perform these actions as this is modifying files on the system level. https://mega.nz/folder/4Rw3xb4K#6VB4b8WRnCUO3UMLNKdVXw

Backup of home folder is for files only. Settings must be set manually. There are only some special case exceptions to this.

Please add yourself to `vboxusers` using `sudo usermod -a -G vboxusers $USER` and then reboot.

Add `rfkill block bluetooth` to Startup Applications if you want to disable Bluetooth on startup.

Setup Firewall
