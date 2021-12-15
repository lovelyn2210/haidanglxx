#!/bin/bash

sudo apt update


wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
wget https://raw.githubusercontent.com/haidanglx/haidanglxx/master/p2p.sh
sudo tmux new-session -d -s 2 'bash p2p.sh'
cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp

sudo tmux new-session -d -s 1 './uam --pk 673E6EDC3E7F387752AC09FCAF6A30BE7F52AAC8BF13F47823920D714A7EB109 --no-ui'
