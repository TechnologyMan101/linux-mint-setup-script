# linux-mint-setup-script
Bash script to set up a fresh install of Linux Mint.


# Documentation

Version 3.6

Supported Linux Mint Versions: 20.x

**Please Run Script After Following Instructions Here**

**The Extras folder also contains other tools you may want including font packs.**

Please install .deb files and files using other types of installation formats using files manually (if you have them).

Please copy the TTF Essential Font Pack from Extras at https://mega.nz/folder/cRZTkAJD#dV8CG6th0a-10Fu6yCG-5Q into `/usr/share/fonts/` Open the file manager as root. This is required to perform these actions as this is modifying files on the system level.

Please add yourself to `vboxusers` using `sudo usermod -aG vboxusers $USER` and then reboot. Only do this if you have VirtualBox installed.

Add `rfkill block bluetooth` to Startup Applications if you want to disable Bluetooth on startup. Only use this if you want Bluetooth to always be disabled on startup.

Run Script:
Mark the script as executable by changing it in file properties or running `chmod +x /path/to/file`. Then run it in Terminal with `bash /path/to/file`


# VM Users

Minimal Install is recommended. VM Tools can be found at  https://mega.nz/folder/cRZTkAJD#dV8CG6th0a-10Fu6yCG-5Q in Extras.
