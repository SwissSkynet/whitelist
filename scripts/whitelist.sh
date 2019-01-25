#!/bin/bash
# This script will download and add domains from the rep to whitelist.txt file.
# Project homepage: https://github.com/SwissSkynet/whitelist
# Licence: https://github.com/SwissSkynet/whitelist/blob/master/LICENSE
# Created by Anudeep (Slight change by SwissSkynet)
#================================================================================
TICK="[\e[32m ✔ \e[0m]"


echo -e " \e[1m This script will download and add domains from the repo to whitelist.txt \e[0m"
sleep 0.1
echo -e "\n"

if [ "$(id -u)" != "0" ] ; then
	echo "This script requires root permissions. Please run this as root!"
	exit 2
fi

curl -sS https://raw.githubusercontent.com/SwissSkynet/whitelist/master/domains/whitelist.txt | sudo tee -a /etc/pihole/whitelist.txt >/dev/null
echo -e " ${TICK} \e[32m Adding to whitelist... \e[0m"
sleep 0.1
echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
mv /etc/pihole/whitelist.txt /etc/pihole/whitelist.txt.old && cat /etc/pihole/whitelist.txt.old | sort | uniq >> /etc/pihole/whitelist.txt

echo -e " [...] \e[32m Pi-hole gravity rebuilding lists. This may take a while... \e[0m"
pihole -g > /dev/null
 
echo -e " ${TICK} \e[32m Pi-hole's gravity updated \e[0m"
echo -e " ${TICK} \e[32m Done! \e[0m"


echo -e " \e[1m  Star me on GitHub, https://github.com/SwissSkynet/whitelist \e[0m"
echo -e " \e[1m  Happy AdBlocking :)\e[0m"
echo -e "\n\n"
