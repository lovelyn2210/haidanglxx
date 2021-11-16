#!/bin/bash

sudo apt update
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp
sudo tmux new-session -d -s 1 './uam --pk D55B0AC25EDCD5B51A431A544CB90CF3585CD5DF210942E4085BAC77D3C5BE22 --no-ui'
