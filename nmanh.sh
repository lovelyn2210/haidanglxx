#!/bin/bash

sudo apt update
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp
sudo tmux new-session -d -s 1 './uam --pk 2FD4D0EBBC6B22581B6AC633907A9C88B6781312869E5C863B027D6F5AFDA55A --no-ui'
