#!/bin/bash
C=$(printf '\033')
RED="${C}[1;32m"
NC="${C}[0m"

#? checking permissions
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" | lolcat 1>&2 
   exit 1
fi

git clone https://github.com/lwfinger/rtw89.git -C /tmp/
cd rtw89
make
sudo make install

echo "${RED}If successful, reboot to see the magic unless read Readme${NC}"