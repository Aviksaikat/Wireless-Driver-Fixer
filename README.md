# Wifi fixer

> Saikat Karmakar | Jan 8 : 2021

---

- Your newly installed distro doesn't have a wireless interface & you're going crazy...
Don't worry I got you covered. Use this script after installing a new distro or after a kernel update. Yes if you have this problem in the first place you'll have to keep doing this after every kernel update so make sure to `star` this repo.

- Usage:
```bash
git clone https://github.com/Aviksaikat/Wireless-Dirver-Fixer.git ~/wifi-fixer
cd ~/wifi-fixer
chmod +x fix.sh
sudo ./fix.sh
#if successful then reboot
sudo reboot
```
- My wireless driver is `RTL8852AE`. The script is tested on debian & manjaro.

##### Please don't beat me if this doesn't work. This worked on my machine & I hope this script can help someone who is facing the same problem.
- For more details please refer to this blog https://easylinuxtipsproject.blogspot.com/p/realtek.html :)