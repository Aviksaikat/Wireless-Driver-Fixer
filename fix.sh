#!/bin/bash
C=$(printf '\033')
RED="${C}[1;32m"
NC="${C}[0m"

#? checking permissions
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" | lolcat 1>&2 
   exit 1
fi

if [ $(hostname) == "hp-pavilion-15" ];
then 
   cd /home/avik/tools/rtw89
   make
   sudo make install
   sudo reboot
else
   git clone https://github.com/lwfinger/rtw89.git /tmp/rtw89
   cd /tmp/rtw89
   make
   sudo make install
fi

echo "${RED}If successful, reboot to see the magic unless read Readme${NC}"