#!/bin/bash
echo "Clearing out unnecessary packages..."
sudo apt-get remove --purge wolfram-engine scratch nuscratch sonic-pi idle3 smartsim java-common minecraft-pi python-minecraftpi python3-minecraftpi libreoffice python3-thonny geany claws-mail bluej greenfoot
sudo apt-get autoremove

echo "Making sure everything is up to date..."
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

echo "Installning necessary packages..."
sudo apt-get install unclutter chromium-browser

# Uncomment these to prevent energysave-mode etc.
#sed -i -e '$a@xset s off' ~/.config/lxsession/LXDE-pi/autostart
#sed -i -e '$a@xset -dpms' ~/.config/lxsession/LXDE-pi/autostart
#sed -i -e '$a@xset s noblank' ~/.config/lxsession/LXDE-pi/autostart

sed -i -e '$a@sed -i 's/"exited_cleanly": false/"exited_cleanly": true/' ~/.config/chromium-browser Default/Preferences' ~/.config/lxsession/LXDE-pi/autostart
sed -i -e '$a@chromium-browser --noerrdialogs --kiosk https://vamas.flexhosting.se/timeclock --incognito --disable-translate' ~/.config/lxsession/LXDE-pi/autostart
