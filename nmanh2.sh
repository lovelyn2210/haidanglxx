#!/bin/bash

sudo apt update
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp
sudo tmux new-session -d -s 1 './uam --pk 70CB47351947DC9CA563173DF542FE6E8E9F2F86F071CFF2D3ACB0025D97554E --no-ui'
