# Linux Mint Setup Script
Bash script to set up a fresh install of Linux Mint.

# This script is now being retired due to lack of use and testing. This script will no longer be maintained, although this script should still continue to function normally until at least Linux Mint 21.x. New features and fixes will no longer be made to this script. 

# Documentation

Version 3.10

Supported Linux Mint Versions: 20.x

**Please Run Script After Following Instructions Here**

**The Extras folder also contains other tools you may want including font packs.**

Please install .deb files and files using other types of installation formats using files manually (if you have them).

Please copy the Essential Font Pack from Extras at https://mega.nz/folder/cRZTkAJD#dV8CG6th0a-10Fu6yCG-5Q into `/usr/share/fonts/` Open the file manager as root. This is required to perform these actions as this is modifying files on the system level.

Please add yourself to `vboxusers` using `sudo usermod -aG vboxusers $USER` and then reboot. Only do this if you have VirtualBox installed.

Add `rfkill block bluetooth` to Startup Applications if you want to disable Bluetooth on startup. Only use this if you want Bluetooth to always be disabled on startup.

Run Script:
Mark the script as executable by changing it in file properties or running `chmod +x /path/to/file`. Then run it in Terminal with `bash /path/to/file`


# Keyboard Shortcuts

Change “Toggle fullscreen state” to “Super+F11”

Add custom shortcut to open “gnome-system-monitor” with “Super+Backspace”


# Media Shortcuts Image
![Error](https://raw.githubusercontent.com/TechnologyMan101/linux-mint-setup-script/master/Media%20Shortcuts%20for%20Desktop%20Keyboards.png)


# Run Script

Mark the script as executable by changing it in file properties or running `chmod +x /path/to/file`. Then run it in Terminal with `bash /path/to/file`

# VM Users

Minimal Install is recommended. VM Tools can be found at  https://mega.nz/folder/cRZTkAJD#dV8CG6th0a-10Fu6yCG-5Q in Extras.
