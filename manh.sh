#!/bin/bash

sudo apt update
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp
sudo tmux new-session -d -s 1 './uam --pk 34B89378DCD762AE0A5EBF825E32317700A4C09A2734278092408E1742043B4E --no-ui'
